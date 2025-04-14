# Vba::CareTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_type**](CareTypesApi.md#create_care_type) | **POST** /care-types | Create CareType |
| [**delete_care_type**](CareTypesApi.md#delete_care_type) | **DELETE** /care-types/{careType} | Delete CareType |
| [**get_care_type**](CareTypesApi.md#get_care_type) | **GET** /care-types/{careType} | Get CareType |
| [**list_care_type**](CareTypesApi.md#list_care_type) | **GET** /care-types | List CareType |
| [**update_batch_care_type**](CareTypesApi.md#update_batch_care_type) | **PUT** /care-types-batch | Create or Update Batch CareType |
| [**update_care_type**](CareTypesApi.md#update_care_type) | **PUT** /care-types/{careType} | Update CareType |


## create_care_type

> <CareTypeVBAResponse> create_care_type(vbasoftware_database, care_type)

Create CareType

Creates a new CareType

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_type = Vba::CareType.new({care_type: 'care_type_example'}) # CareType | 

begin
  # Create CareType
  result = api_instance.create_care_type(vbasoftware_database, care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->create_care_type: #{e}"
end
```

#### Using the create_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareTypeVBAResponse>, Integer, Hash)> create_care_type_with_http_info(vbasoftware_database, care_type)

```ruby
begin
  # Create CareType
  data, status_code, headers = api_instance.create_care_type_with_http_info(vbasoftware_database, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->create_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_type** | [**CareType**](CareType.md) |  |  |

### Return type

[**CareTypeVBAResponse**](CareTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_type

> delete_care_type(vbasoftware_database, care_type)

Delete CareType

Deletes an CareType

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_type = 'care_type_example' # String | Care Type

begin
  # Delete CareType
  api_instance.delete_care_type(vbasoftware_database, care_type)
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->delete_care_type: #{e}"
end
```

#### Using the delete_care_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_type_with_http_info(vbasoftware_database, care_type)

```ruby
begin
  # Delete CareType
  data, status_code, headers = api_instance.delete_care_type_with_http_info(vbasoftware_database, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->delete_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_type** | **String** | Care Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_type

> <CareTypeVBAResponse> get_care_type(vbasoftware_database, care_type)

Get CareType

Gets CareType

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_type = 'care_type_example' # String | Care Type

begin
  # Get CareType
  result = api_instance.get_care_type(vbasoftware_database, care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->get_care_type: #{e}"
end
```

#### Using the get_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareTypeVBAResponse>, Integer, Hash)> get_care_type_with_http_info(vbasoftware_database, care_type)

```ruby
begin
  # Get CareType
  data, status_code, headers = api_instance.get_care_type_with_http_info(vbasoftware_database, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->get_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_type** | **String** | Care Type |  |

### Return type

[**CareTypeVBAResponse**](CareTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_type

> <CareTypeListVBAResponse> list_care_type(vbasoftware_database, opts)

List CareType

Lists all CareType

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareType
  result = api_instance.list_care_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->list_care_type: #{e}"
end
```

#### Using the list_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareTypeListVBAResponse>, Integer, Hash)> list_care_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareType
  data, status_code, headers = api_instance.list_care_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->list_care_type_with_http_info: #{e}"
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

[**CareTypeListVBAResponse**](CareTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_type

> <MultiCodeResponseListVBAResponse> update_batch_care_type(vbasoftware_database, care_type)

Create or Update Batch CareType

Create or Update multiple CareType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_type = [Vba::CareType.new({care_type: 'care_type_example'})] # Array<CareType> | 

begin
  # Create or Update Batch CareType
  result = api_instance.update_batch_care_type(vbasoftware_database, care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->update_batch_care_type: #{e}"
end
```

#### Using the update_batch_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_type_with_http_info(vbasoftware_database, care_type)

```ruby
begin
  # Create or Update Batch CareType
  data, status_code, headers = api_instance.update_batch_care_type_with_http_info(vbasoftware_database, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->update_batch_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_type** | [**Array&lt;CareType&gt;**](CareType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_type

> <CareTypeVBAResponse> update_care_type(vbasoftware_database, care_type, care_type2)

Update CareType

Updates a specific CareType.

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

api_instance = Vba::CareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_type = 'care_type_example' # String | Care Type
care_type2 = Vba::CareType.new({care_type: 'care_type_example'}) # CareType | 

begin
  # Update CareType
  result = api_instance.update_care_type(vbasoftware_database, care_type, care_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->update_care_type: #{e}"
end
```

#### Using the update_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareTypeVBAResponse>, Integer, Hash)> update_care_type_with_http_info(vbasoftware_database, care_type, care_type2)

```ruby
begin
  # Update CareType
  data, status_code, headers = api_instance.update_care_type_with_http_info(vbasoftware_database, care_type, care_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareTypesApi->update_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_type** | **String** | Care Type |  |
| **care_type2** | [**CareType**](CareType.md) |  |  |

### Return type

[**CareTypeVBAResponse**](CareTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

