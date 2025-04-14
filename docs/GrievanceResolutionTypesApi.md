# Vba::GrievanceResolutionTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance_resolution_type**](GrievanceResolutionTypesApi.md#create_grievance_resolution_type) | **POST** /grievance-resolution-types | Create GrievanceResolutionType |
| [**delete_grievance_resolution_type**](GrievanceResolutionTypesApi.md#delete_grievance_resolution_type) | **DELETE** /grievance-resolution-types/{grievanceResolutionType} | Delete GrievanceResolutionType |
| [**get_grievance_resolution_type**](GrievanceResolutionTypesApi.md#get_grievance_resolution_type) | **GET** /grievance-resolution-types/{grievanceResolutionType} | Get GrievanceResolutionType |
| [**list_grievance_resolution_type**](GrievanceResolutionTypesApi.md#list_grievance_resolution_type) | **GET** /grievance-resolution-types | List GrievanceResolutionType |
| [**update_batch_grievance_resolution_type**](GrievanceResolutionTypesApi.md#update_batch_grievance_resolution_type) | **PUT** /grievance-resolution-types-batch | Create or Update Batch GrievanceResolutionType |
| [**update_grievance_resolution_type**](GrievanceResolutionTypesApi.md#update_grievance_resolution_type) | **PUT** /grievance-resolution-types/{grievanceResolutionType} | Update GrievanceResolutionType |


## create_grievance_resolution_type

> <GrievanceResolutionTypeVBAResponse> create_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)

Create GrievanceResolutionType

Creates a new GrievanceResolutionType

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_resolution_type = Vba::GrievanceResolutionType.new({grievance_resolution_type: 'grievance_resolution_type_example', default_resolution_type: false}) # GrievanceResolutionType | 

begin
  # Create GrievanceResolutionType
  result = api_instance.create_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->create_grievance_resolution_type: #{e}"
end
```

#### Using the create_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceResolutionTypeVBAResponse>, Integer, Hash)> create_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)

```ruby
begin
  # Create GrievanceResolutionType
  data, status_code, headers = api_instance.create_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceResolutionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->create_grievance_resolution_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_resolution_type** | [**GrievanceResolutionType**](GrievanceResolutionType.md) |  |  |

### Return type

[**GrievanceResolutionTypeVBAResponse**](GrievanceResolutionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_grievance_resolution_type

> delete_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)

Delete GrievanceResolutionType

Deletes an GrievanceResolutionType

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_resolution_type = 'grievance_resolution_type_example' # String | Grievance Resolution Type

begin
  # Delete GrievanceResolutionType
  api_instance.delete_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->delete_grievance_resolution_type: #{e}"
end
```

#### Using the delete_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)

```ruby
begin
  # Delete GrievanceResolutionType
  data, status_code, headers = api_instance.delete_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->delete_grievance_resolution_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_resolution_type** | **String** | Grievance Resolution Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_grievance_resolution_type

> <GrievanceResolutionTypeVBAResponse> get_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)

Get GrievanceResolutionType

Gets GrievanceResolutionType

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_resolution_type = 'grievance_resolution_type_example' # String | Grievance Resolution Type

begin
  # Get GrievanceResolutionType
  result = api_instance.get_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->get_grievance_resolution_type: #{e}"
end
```

#### Using the get_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceResolutionTypeVBAResponse>, Integer, Hash)> get_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)

```ruby
begin
  # Get GrievanceResolutionType
  data, status_code, headers = api_instance.get_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceResolutionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->get_grievance_resolution_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_resolution_type** | **String** | Grievance Resolution Type |  |

### Return type

[**GrievanceResolutionTypeVBAResponse**](GrievanceResolutionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance_resolution_type

> <GrievanceResolutionTypeListVBAResponse> list_grievance_resolution_type(vbasoftware_database, opts)

List GrievanceResolutionType

Lists all GrievanceResolutionType

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GrievanceResolutionType
  result = api_instance.list_grievance_resolution_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->list_grievance_resolution_type: #{e}"
end
```

#### Using the list_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceResolutionTypeListVBAResponse>, Integer, Hash)> list_grievance_resolution_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GrievanceResolutionType
  data, status_code, headers = api_instance.list_grievance_resolution_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceResolutionTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->list_grievance_resolution_type_with_http_info: #{e}"
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

[**GrievanceResolutionTypeListVBAResponse**](GrievanceResolutionTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance_resolution_type

> <MultiCodeResponseListVBAResponse> update_batch_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)

Create or Update Batch GrievanceResolutionType

Create or Update multiple GrievanceResolutionType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_resolution_type = [Vba::GrievanceResolutionType.new({grievance_resolution_type: 'grievance_resolution_type_example', default_resolution_type: false})] # Array<GrievanceResolutionType> | 

begin
  # Create or Update Batch GrievanceResolutionType
  result = api_instance.update_batch_grievance_resolution_type(vbasoftware_database, grievance_resolution_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->update_batch_grievance_resolution_type: #{e}"
end
```

#### Using the update_batch_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)

```ruby
begin
  # Create or Update Batch GrievanceResolutionType
  data, status_code, headers = api_instance.update_batch_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->update_batch_grievance_resolution_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_resolution_type** | [**Array&lt;GrievanceResolutionType&gt;**](GrievanceResolutionType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance_resolution_type

> <GrievanceResolutionTypeVBAResponse> update_grievance_resolution_type(vbasoftware_database, grievance_resolution_type, grievance_resolution_type2)

Update GrievanceResolutionType

Updates a specific GrievanceResolutionType.

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

api_instance = Vba::GrievanceResolutionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_resolution_type = 'grievance_resolution_type_example' # String | Grievance Resolution Type
grievance_resolution_type2 = Vba::GrievanceResolutionType.new({grievance_resolution_type: 'grievance_resolution_type_example', default_resolution_type: false}) # GrievanceResolutionType | 

begin
  # Update GrievanceResolutionType
  result = api_instance.update_grievance_resolution_type(vbasoftware_database, grievance_resolution_type, grievance_resolution_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->update_grievance_resolution_type: #{e}"
end
```

#### Using the update_grievance_resolution_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceResolutionTypeVBAResponse>, Integer, Hash)> update_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type, grievance_resolution_type2)

```ruby
begin
  # Update GrievanceResolutionType
  data, status_code, headers = api_instance.update_grievance_resolution_type_with_http_info(vbasoftware_database, grievance_resolution_type, grievance_resolution_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceResolutionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceResolutionTypesApi->update_grievance_resolution_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_resolution_type** | **String** | Grievance Resolution Type |  |
| **grievance_resolution_type2** | [**GrievanceResolutionType**](GrievanceResolutionType.md) |  |  |

### Return type

[**GrievanceResolutionTypeVBAResponse**](GrievanceResolutionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

