# Vba::SuspenseTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_suspense_type**](SuspenseTypesApi.md#create_suspense_type) | **POST** /suspense-types | Create SuspenseType |
| [**delete_suspense_type**](SuspenseTypesApi.md#delete_suspense_type) | **DELETE** /suspense-types/{suspenseType} | Delete SuspenseType |
| [**get_suspense_type**](SuspenseTypesApi.md#get_suspense_type) | **GET** /suspense-types/{suspenseType} | Get SuspenseType |
| [**list_suspense_type**](SuspenseTypesApi.md#list_suspense_type) | **GET** /suspense-types | List SuspenseType |
| [**update_batch_suspense_type**](SuspenseTypesApi.md#update_batch_suspense_type) | **PUT** /suspense-types-batch | Create or Update Batch SuspenseType |
| [**update_suspense_type**](SuspenseTypesApi.md#update_suspense_type) | **PUT** /suspense-types/{suspenseType} | Update SuspenseType |


## create_suspense_type

> <SuspenseTypeVBAResponse> create_suspense_type(vbasoftware_database, suspense_type)

Create SuspenseType

Creates a new SuspenseType

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_type = Vba::SuspenseType.new({suspense_type: 'suspense_type_example'}) # SuspenseType | 

begin
  # Create SuspenseType
  result = api_instance.create_suspense_type(vbasoftware_database, suspense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->create_suspense_type: #{e}"
end
```

#### Using the create_suspense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseTypeVBAResponse>, Integer, Hash)> create_suspense_type_with_http_info(vbasoftware_database, suspense_type)

```ruby
begin
  # Create SuspenseType
  data, status_code, headers = api_instance.create_suspense_type_with_http_info(vbasoftware_database, suspense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->create_suspense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_type** | [**SuspenseType**](SuspenseType.md) |  |  |

### Return type

[**SuspenseTypeVBAResponse**](SuspenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_suspense_type

> delete_suspense_type(vbasoftware_database, suspense_type)

Delete SuspenseType

Deletes an SuspenseType

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_type = 'suspense_type_example' # String | Suspense Type

begin
  # Delete SuspenseType
  api_instance.delete_suspense_type(vbasoftware_database, suspense_type)
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->delete_suspense_type: #{e}"
end
```

#### Using the delete_suspense_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_suspense_type_with_http_info(vbasoftware_database, suspense_type)

```ruby
begin
  # Delete SuspenseType
  data, status_code, headers = api_instance.delete_suspense_type_with_http_info(vbasoftware_database, suspense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->delete_suspense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_type** | **String** | Suspense Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_suspense_type

> <SuspenseTypeVBAResponse> get_suspense_type(vbasoftware_database, suspense_type)

Get SuspenseType

Gets SuspenseType

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_type = 'suspense_type_example' # String | Suspense Type

begin
  # Get SuspenseType
  result = api_instance.get_suspense_type(vbasoftware_database, suspense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->get_suspense_type: #{e}"
end
```

#### Using the get_suspense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseTypeVBAResponse>, Integer, Hash)> get_suspense_type_with_http_info(vbasoftware_database, suspense_type)

```ruby
begin
  # Get SuspenseType
  data, status_code, headers = api_instance.get_suspense_type_with_http_info(vbasoftware_database, suspense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->get_suspense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_type** | **String** | Suspense Type |  |

### Return type

[**SuspenseTypeVBAResponse**](SuspenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_suspense_type

> <SuspenseTypeListVBAResponse> list_suspense_type(vbasoftware_database, opts)

List SuspenseType

Lists all SuspenseType

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SuspenseType
  result = api_instance.list_suspense_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->list_suspense_type: #{e}"
end
```

#### Using the list_suspense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseTypeListVBAResponse>, Integer, Hash)> list_suspense_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SuspenseType
  data, status_code, headers = api_instance.list_suspense_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->list_suspense_type_with_http_info: #{e}"
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

[**SuspenseTypeListVBAResponse**](SuspenseTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_suspense_type

> <MultiCodeResponseListVBAResponse> update_batch_suspense_type(vbasoftware_database, suspense_type)

Create or Update Batch SuspenseType

Create or Update multiple SuspenseType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_type = [Vba::SuspenseType.new({suspense_type: 'suspense_type_example'})] # Array<SuspenseType> | 

begin
  # Create or Update Batch SuspenseType
  result = api_instance.update_batch_suspense_type(vbasoftware_database, suspense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->update_batch_suspense_type: #{e}"
end
```

#### Using the update_batch_suspense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_suspense_type_with_http_info(vbasoftware_database, suspense_type)

```ruby
begin
  # Create or Update Batch SuspenseType
  data, status_code, headers = api_instance.update_batch_suspense_type_with_http_info(vbasoftware_database, suspense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->update_batch_suspense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_type** | [**Array&lt;SuspenseType&gt;**](SuspenseType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_suspense_type

> <SuspenseTypeVBAResponse> update_suspense_type(vbasoftware_database, suspense_type, suspense_type2)

Update SuspenseType

Updates a specific SuspenseType.

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

api_instance = Vba::SuspenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_type = 'suspense_type_example' # String | Suspense Type
suspense_type2 = Vba::SuspenseType.new({suspense_type: 'suspense_type_example'}) # SuspenseType | 

begin
  # Update SuspenseType
  result = api_instance.update_suspense_type(vbasoftware_database, suspense_type, suspense_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->update_suspense_type: #{e}"
end
```

#### Using the update_suspense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseTypeVBAResponse>, Integer, Hash)> update_suspense_type_with_http_info(vbasoftware_database, suspense_type, suspense_type2)

```ruby
begin
  # Update SuspenseType
  data, status_code, headers = api_instance.update_suspense_type_with_http_info(vbasoftware_database, suspense_type, suspense_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseTypesApi->update_suspense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_type** | **String** | Suspense Type |  |
| **suspense_type2** | [**SuspenseType**](SuspenseType.md) |  |  |

### Return type

[**SuspenseTypeVBAResponse**](SuspenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

