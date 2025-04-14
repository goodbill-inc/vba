# Vba::IDCodeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_code_type**](IDCodeTypesApi.md#create_id_code_type) | **POST** /id-types/{type}/id-codes | Create IDCodeType |
| [**delete_id_code_type**](IDCodeTypesApi.md#delete_id_code_type) | **DELETE** /id-types/{type}/id-codes/{idCode} | Delete IDCodeType |
| [**get_id_code_type**](IDCodeTypesApi.md#get_id_code_type) | **GET** /id-types/{type}/id-codes/{idCode} | Get IDCodeType |
| [**list_id_code_type**](IDCodeTypesApi.md#list_id_code_type) | **GET** /id-types/{type}/id-codes | List IDCodeType |
| [**update_batch_id_code_type**](IDCodeTypesApi.md#update_batch_id_code_type) | **PUT** /id-types/{type}/id-codes-batch | Create or Update Batch IDCodeType |
| [**update_id_code_type**](IDCodeTypesApi.md#update_id_code_type) | **PUT** /id-types/{type}/id-codes/{idCode} | Update IDCodeType |


## create_id_code_type

> <IDCodeTypeVBAResponse> create_id_code_type(vbasoftware_database, type, id_code_type)

Create IDCodeType

Creates a new IDCodeType

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code_type = Vba::IDCodeType.new({i_d_code: 'i_d_code_example', type: 'type_example', ed_i_code: false, system_code: false, type_default: false}) # IDCodeType | 

begin
  # Create IDCodeType
  result = api_instance.create_id_code_type(vbasoftware_database, type, id_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->create_id_code_type: #{e}"
end
```

#### Using the create_id_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeTypeVBAResponse>, Integer, Hash)> create_id_code_type_with_http_info(vbasoftware_database, type, id_code_type)

```ruby
begin
  # Create IDCodeType
  data, status_code, headers = api_instance.create_id_code_type_with_http_info(vbasoftware_database, type, id_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->create_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code_type** | [**IDCodeType**](IDCodeType.md) |  |  |

### Return type

[**IDCodeTypeVBAResponse**](IDCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_id_code_type

> delete_id_code_type(vbasoftware_database, type, id_code)

Delete IDCodeType

Deletes an IDCodeType

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code

begin
  # Delete IDCodeType
  api_instance.delete_id_code_type(vbasoftware_database, type, id_code)
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->delete_id_code_type: #{e}"
end
```

#### Using the delete_id_code_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_id_code_type_with_http_info(vbasoftware_database, type, id_code)

```ruby
begin
  # Delete IDCodeType
  data, status_code, headers = api_instance.delete_id_code_type_with_http_info(vbasoftware_database, type, id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->delete_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_id_code_type

> <IDCodeTypeVBAResponse> get_id_code_type(vbasoftware_database, type, id_code)

Get IDCodeType

Gets IDCodeType

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code

begin
  # Get IDCodeType
  result = api_instance.get_id_code_type(vbasoftware_database, type, id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->get_id_code_type: #{e}"
end
```

#### Using the get_id_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeTypeVBAResponse>, Integer, Hash)> get_id_code_type_with_http_info(vbasoftware_database, type, id_code)

```ruby
begin
  # Get IDCodeType
  data, status_code, headers = api_instance.get_id_code_type_with_http_info(vbasoftware_database, type, id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->get_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |

### Return type

[**IDCodeTypeVBAResponse**](IDCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_id_code_type

> <IDCodeTypeListVBAResponse> list_id_code_type(vbasoftware_database, type, opts)

List IDCodeType

Lists all IDCodeType for the given type

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IDCodeType
  result = api_instance.list_id_code_type(vbasoftware_database, type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->list_id_code_type: #{e}"
end
```

#### Using the list_id_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeTypeListVBAResponse>, Integer, Hash)> list_id_code_type_with_http_info(vbasoftware_database, type, opts)

```ruby
begin
  # List IDCodeType
  data, status_code, headers = api_instance.list_id_code_type_with_http_info(vbasoftware_database, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->list_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**IDCodeTypeListVBAResponse**](IDCodeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_id_code_type

> <MultiCodeResponseListVBAResponse> update_batch_id_code_type(vbasoftware_database, type, id_code_type)

Create or Update Batch IDCodeType

Create or Update multiple IDCodeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code_type = [Vba::IDCodeType.new({i_d_code: 'i_d_code_example', type: 'type_example', ed_i_code: false, system_code: false, type_default: false})] # Array<IDCodeType> | 

begin
  # Create or Update Batch IDCodeType
  result = api_instance.update_batch_id_code_type(vbasoftware_database, type, id_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->update_batch_id_code_type: #{e}"
end
```

#### Using the update_batch_id_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_id_code_type_with_http_info(vbasoftware_database, type, id_code_type)

```ruby
begin
  # Create or Update Batch IDCodeType
  data, status_code, headers = api_instance.update_batch_id_code_type_with_http_info(vbasoftware_database, type, id_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->update_batch_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code_type** | [**Array&lt;IDCodeType&gt;**](IDCodeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_id_code_type

> <IDCodeTypeVBAResponse> update_id_code_type(vbasoftware_database, type, id_code, id_code_type)

Update IDCodeType

Updates a specific IDCodeType.

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

api_instance = Vba::IDCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type = 'type_example' # String | Type
id_code = 'id_code_example' # String | ID Code
id_code_type = Vba::IDCodeType.new({i_d_code: 'i_d_code_example', type: 'type_example', ed_i_code: false, system_code: false, type_default: false}) # IDCodeType | 

begin
  # Update IDCodeType
  result = api_instance.update_id_code_type(vbasoftware_database, type, id_code, id_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->update_id_code_type: #{e}"
end
```

#### Using the update_id_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCodeTypeVBAResponse>, Integer, Hash)> update_id_code_type_with_http_info(vbasoftware_database, type, id_code, id_code_type)

```ruby
begin
  # Update IDCodeType
  data, status_code, headers = api_instance.update_id_code_type_with_http_info(vbasoftware_database, type, id_code, id_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IDCodeTypesApi->update_id_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type** | **String** | Type |  |
| **id_code** | **String** | ID Code |  |
| **id_code_type** | [**IDCodeType**](IDCodeType.md) |  |  |

### Return type

[**IDCodeTypeVBAResponse**](IDCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

