# Vba::GrievanceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance_type**](GrievanceTypesApi.md#create_grievance_type) | **POST** /grievance-types | Create GrievanceType |
| [**delete_grievance_type**](GrievanceTypesApi.md#delete_grievance_type) | **DELETE** /grievance-types/{grievanceType} | Delete GrievanceType |
| [**get_grievance_type**](GrievanceTypesApi.md#get_grievance_type) | **GET** /grievance-types/{grievanceType} | Get GrievanceType |
| [**list_grievance_type**](GrievanceTypesApi.md#list_grievance_type) | **GET** /grievance-types | List GrievanceType |
| [**update_batch_grievance_type**](GrievanceTypesApi.md#update_batch_grievance_type) | **PUT** /grievance-types-batch | Create or Update Batch GrievanceType |
| [**update_grievance_type**](GrievanceTypesApi.md#update_grievance_type) | **PUT** /grievance-types/{grievanceType} | Update GrievanceType |


## create_grievance_type

> <GrievanceTypeVBAResponse> create_grievance_type(vbasoftware_database, grievance_type)

Create GrievanceType

Creates a new GrievanceType

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_type = Vba::GrievanceType.new({grievance_type: 'grievance_type_example', default_type: false}) # GrievanceType | 

begin
  # Create GrievanceType
  result = api_instance.create_grievance_type(vbasoftware_database, grievance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->create_grievance_type: #{e}"
end
```

#### Using the create_grievance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceTypeVBAResponse>, Integer, Hash)> create_grievance_type_with_http_info(vbasoftware_database, grievance_type)

```ruby
begin
  # Create GrievanceType
  data, status_code, headers = api_instance.create_grievance_type_with_http_info(vbasoftware_database, grievance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->create_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_type** | [**GrievanceType**](GrievanceType.md) |  |  |

### Return type

[**GrievanceTypeVBAResponse**](GrievanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_grievance_type

> delete_grievance_type(vbasoftware_database, grievance_type)

Delete GrievanceType

Deletes an GrievanceType

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_type = 'grievance_type_example' # String | Grievance Type

begin
  # Delete GrievanceType
  api_instance.delete_grievance_type(vbasoftware_database, grievance_type)
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->delete_grievance_type: #{e}"
end
```

#### Using the delete_grievance_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_type_with_http_info(vbasoftware_database, grievance_type)

```ruby
begin
  # Delete GrievanceType
  data, status_code, headers = api_instance.delete_grievance_type_with_http_info(vbasoftware_database, grievance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->delete_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_type** | **String** | Grievance Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_grievance_type

> <GrievanceTypeVBAResponse> get_grievance_type(vbasoftware_database, grievance_type)

Get GrievanceType

Gets GrievanceType

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_type = 'grievance_type_example' # String | Grievance Type

begin
  # Get GrievanceType
  result = api_instance.get_grievance_type(vbasoftware_database, grievance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->get_grievance_type: #{e}"
end
```

#### Using the get_grievance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceTypeVBAResponse>, Integer, Hash)> get_grievance_type_with_http_info(vbasoftware_database, grievance_type)

```ruby
begin
  # Get GrievanceType
  data, status_code, headers = api_instance.get_grievance_type_with_http_info(vbasoftware_database, grievance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->get_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_type** | **String** | Grievance Type |  |

### Return type

[**GrievanceTypeVBAResponse**](GrievanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance_type

> <GrievanceTypeListVBAResponse> list_grievance_type(vbasoftware_database, opts)

List GrievanceType

Lists all GrievanceType

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GrievanceType
  result = api_instance.list_grievance_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->list_grievance_type: #{e}"
end
```

#### Using the list_grievance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceTypeListVBAResponse>, Integer, Hash)> list_grievance_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GrievanceType
  data, status_code, headers = api_instance.list_grievance_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->list_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GrievanceTypeListVBAResponse**](GrievanceTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance_type

> <MultiCodeResponseListVBAResponse> update_batch_grievance_type(vbasoftware_database, grievance_type)

Create or Update Batch GrievanceType

Create or Update multiple GrievanceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_type = [Vba::GrievanceType.new({grievance_type: 'grievance_type_example', default_type: false})] # Array<GrievanceType> | 

begin
  # Create or Update Batch GrievanceType
  result = api_instance.update_batch_grievance_type(vbasoftware_database, grievance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->update_batch_grievance_type: #{e}"
end
```

#### Using the update_batch_grievance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_type_with_http_info(vbasoftware_database, grievance_type)

```ruby
begin
  # Create or Update Batch GrievanceType
  data, status_code, headers = api_instance.update_batch_grievance_type_with_http_info(vbasoftware_database, grievance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->update_batch_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_type** | [**Array&lt;GrievanceType&gt;**](GrievanceType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance_type

> <GrievanceTypeVBAResponse> update_grievance_type(vbasoftware_database, grievance_type, grievance_type2)

Update GrievanceType

Updates a specific GrievanceType.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::GrievanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_type = 'grievance_type_example' # String | Grievance Type
grievance_type2 = Vba::GrievanceType.new({grievance_type: 'grievance_type_example', default_type: false}) # GrievanceType | 

begin
  # Update GrievanceType
  result = api_instance.update_grievance_type(vbasoftware_database, grievance_type, grievance_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->update_grievance_type: #{e}"
end
```

#### Using the update_grievance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceTypeVBAResponse>, Integer, Hash)> update_grievance_type_with_http_info(vbasoftware_database, grievance_type, grievance_type2)

```ruby
begin
  # Update GrievanceType
  data, status_code, headers = api_instance.update_grievance_type_with_http_info(vbasoftware_database, grievance_type, grievance_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceTypesApi->update_grievance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_type** | **String** | Grievance Type |  |
| **grievance_type2** | [**GrievanceType**](GrievanceType.md) |  |  |

### Return type

[**GrievanceTypeVBAResponse**](GrievanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

