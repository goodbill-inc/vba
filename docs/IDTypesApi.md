# Vba::IDTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_type**](IDTypesApi.md#create_id_type) | **POST** /id-types | Create IDType |
| [**delete_id_type**](IDTypesApi.md#delete_id_type) | **DELETE** /id-types/{type} | Delete IDType |
| [**get_id_type**](IDTypesApi.md#get_id_type) | **GET** /id-types/{type} | Get IDType |
| [**list_id_type**](IDTypesApi.md#list_id_type) | **GET** /id-types | List IDType |
| [**update_batch_id_type**](IDTypesApi.md#update_batch_id_type) | **PUT** /id-types | Create or Update Batch IDType |
| [**update_id_type**](IDTypesApi.md#update_id_type) | **PUT** /id-types/{type} | Update IDType |


## create_id_type

> <IDTypeVBAResponse> create_id_type(vbasoftware_database, id_type)

Create IDType

Creates a new IDType

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id_type = Vba::IDType.new({type: 'type_example'}) # IDType | 

begin
  # Create IDType
  result = api_instance.create_id_type(vbasoftware_database, id_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->create_id_type: #{e}"
end
```

#### Using the create_id_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDTypeVBAResponse>, Integer, Hash)> create_id_type_with_http_info(vbasoftware_database, id_type)

```ruby
begin
  # Create IDType
  data, status_code, headers = api_instance.create_id_type_with_http_info(vbasoftware_database, id_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->create_id_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id_type** | [**IDType**](IDType.md) |  |  |

### Return type

[**IDTypeVBAResponse**](IDTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_id_type

> delete_id_type(vbasoftware_database, type)

Delete IDType

Deletes an IDType

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type

begin
  # Delete IDType
  api_instance.delete_id_type(vbasoftware_database, type)
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->delete_id_type: #{e}"
end
```

#### Using the delete_id_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_id_type_with_http_info(vbasoftware_database, type)

```ruby
begin
  # Delete IDType
  data, status_code, headers = api_instance.delete_id_type_with_http_info(vbasoftware_database, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->delete_id_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_id_type

> <IDTypeVBAResponse> get_id_type(vbasoftware_database, type)

Get IDType

Gets IDType

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type

begin
  # Get IDType
  result = api_instance.get_id_type(vbasoftware_database, type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->get_id_type: #{e}"
end
```

#### Using the get_id_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDTypeVBAResponse>, Integer, Hash)> get_id_type_with_http_info(vbasoftware_database, type)

```ruby
begin
  # Get IDType
  data, status_code, headers = api_instance.get_id_type_with_http_info(vbasoftware_database, type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->get_id_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |

### Return type

[**IDTypeVBAResponse**](IDTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_id_type

> <IDTypeListVBAResponse> list_id_type(vbasoftware_database, opts)

List IDType

Lists all IDType

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IDType
  result = api_instance.list_id_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->list_id_type: #{e}"
end
```

#### Using the list_id_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDTypeListVBAResponse>, Integer, Hash)> list_id_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List IDType
  data, status_code, headers = api_instance.list_id_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->list_id_type_with_http_info: #{e}"
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

[**IDTypeListVBAResponse**](IDTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_id_type

> <MultiCodeResponseListVBAResponse> update_batch_id_type(vbasoftware_database, id_type)

Create or Update Batch IDType

Create or Update multiple IDType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id_type = [Vba::IDType.new({type: 'type_example'})] # Array<IDType> | 

begin
  # Create or Update Batch IDType
  result = api_instance.update_batch_id_type(vbasoftware_database, id_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->update_batch_id_type: #{e}"
end
```

#### Using the update_batch_id_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_id_type_with_http_info(vbasoftware_database, id_type)

```ruby
begin
  # Create or Update Batch IDType
  data, status_code, headers = api_instance.update_batch_id_type_with_http_info(vbasoftware_database, id_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->update_batch_id_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id_type** | [**Array&lt;IDType&gt;**](IDType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_id_type

> <IDTypeVBAResponse> update_id_type(vbasoftware_database, type, id_type)

Update IDType

Updates a specific IDType.

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

api_instance = Vba::IDTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_type = Vba::IDType.new({type: 'type_example'}) # IDType | 

begin
  # Update IDType
  result = api_instance.update_id_type(vbasoftware_database, type, id_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->update_id_type: #{e}"
end
```

#### Using the update_id_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDTypeVBAResponse>, Integer, Hash)> update_id_type_with_http_info(vbasoftware_database, type, id_type)

```ruby
begin
  # Update IDType
  data, status_code, headers = api_instance.update_id_type_with_http_info(vbasoftware_database, type, id_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDTypesApi->update_id_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_type** | [**IDType**](IDType.md) |  |  |

### Return type

[**IDTypeVBAResponse**](IDTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

