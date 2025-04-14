# Vba::VBAInterfaceMapTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#create_vba_interface_map_type) | **POST** /vba-interfaces/{vBAInterfaceKey}/map-types | Create VBAInterfaceMapType |
| [**delete_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#delete_vba_interface_map_type) | **DELETE** /vba-interfaces/{vBAInterfaceKey}/map-types/{mapType} | Delete VBAInterfaceMapType |
| [**get_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#get_vba_interface_map_type) | **GET** /vba-interfaces/{vBAInterfaceKey}/map-types/{mapType} | Get VBAInterfaceMapType |
| [**list_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#list_vba_interface_map_type) | **GET** /vba-interfaces/{vBAInterfaceKey}/map-types | List VBAInterfaceMapType |
| [**update_batch_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#update_batch_vba_interface_map_type) | **PUT** /vba-interfaces/{vBAInterfaceKey}/map-types-batch | Create or Update Batch VBAInterfaceMapType |
| [**update_vba_interface_map_type**](VBAInterfaceMapTypesApi.md#update_vba_interface_map_type) | **PUT** /vba-interfaces/{vBAInterfaceKey}/map-types/{mapType} | Update VBAInterfaceMapType |


## create_vba_interface_map_type

> <VBAInterfaceMapTypeVBAResponse> create_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)

Create VBAInterfaceMapType

Creates a new VBAInterfaceMapType

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
vba_interface_map_type = Vba::VBAInterfaceMapType.new({vba_interface_key: 37, map_type: 'map_type_example'}) # VBAInterfaceMapType | 

begin
  # Create VBAInterfaceMapType
  result = api_instance.create_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->create_vba_interface_map_type: #{e}"
end
```

#### Using the create_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceMapTypeVBAResponse>, Integer, Hash)> create_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)

```ruby
begin
  # Create VBAInterfaceMapType
  data, status_code, headers = api_instance.create_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceMapTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->create_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **vba_interface_map_type** | [**VBAInterfaceMapType**](VBAInterfaceMapType.md) |  |  |

### Return type

[**VBAInterfaceMapTypeVBAResponse**](VBAInterfaceMapTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface_map_type

> delete_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type)

Delete VBAInterfaceMapType

Deletes an VBAInterfaceMapType

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
map_type = 'map_type_example' # String | Map Type

begin
  # Delete VBAInterfaceMapType
  api_instance.delete_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->delete_vba_interface_map_type: #{e}"
end
```

#### Using the delete_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type)

```ruby
begin
  # Delete VBAInterfaceMapType
  data, status_code, headers = api_instance.delete_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->delete_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **map_type** | **String** | Map Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface_map_type

> <VBAInterfaceMapTypeVBAResponse> get_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type)

Get VBAInterfaceMapType

Gets VBAInterfaceMapType

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
map_type = 'map_type_example' # String | Map Type

begin
  # Get VBAInterfaceMapType
  result = api_instance.get_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->get_vba_interface_map_type: #{e}"
end
```

#### Using the get_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceMapTypeVBAResponse>, Integer, Hash)> get_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type)

```ruby
begin
  # Get VBAInterfaceMapType
  data, status_code, headers = api_instance.get_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceMapTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->get_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **map_type** | **String** | Map Type |  |

### Return type

[**VBAInterfaceMapTypeVBAResponse**](VBAInterfaceMapTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_map_type

> <VBAInterfaceMapTypeListVBAResponse> list_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, opts)

List VBAInterfaceMapType

Lists all VBAInterfaceMapType for the given vBAInterfaceKey

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterfaceMapType
  result = api_instance.list_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->list_vba_interface_map_type: #{e}"
end
```

#### Using the list_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceMapTypeListVBAResponse>, Integer, Hash)> list_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, opts)

```ruby
begin
  # List VBAInterfaceMapType
  data, status_code, headers = api_instance.list_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceMapTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->list_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**VBAInterfaceMapTypeListVBAResponse**](VBAInterfaceMapTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface_map_type

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)

Create or Update Batch VBAInterfaceMapType

Create or Update multiple VBAInterfaceMapType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
vba_interface_map_type = [Vba::VBAInterfaceMapType.new({vba_interface_key: 37, map_type: 'map_type_example'})] # Array<VBAInterfaceMapType> | 

begin
  # Create or Update Batch VBAInterfaceMapType
  result = api_instance.update_batch_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->update_batch_vba_interface_map_type: #{e}"
end
```

#### Using the update_batch_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)

```ruby
begin
  # Create or Update Batch VBAInterfaceMapType
  data, status_code, headers = api_instance.update_batch_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_map_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->update_batch_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **vba_interface_map_type** | [**Array&lt;VBAInterfaceMapType&gt;**](VBAInterfaceMapType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface_map_type

> <VBAInterfaceMapTypeVBAResponse> update_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type, vba_interface_map_type)

Update VBAInterfaceMapType

Updates a specific VBAInterfaceMapType.

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

api_instance = Vba::VBAInterfaceMapTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
map_type = 'map_type_example' # String | Map Type
vba_interface_map_type = Vba::VBAInterfaceMapType.new({vba_interface_key: 37, map_type: 'map_type_example'}) # VBAInterfaceMapType | 

begin
  # Update VBAInterfaceMapType
  result = api_instance.update_vba_interface_map_type(vbasoftware_database, v_ba_interface_key, map_type, vba_interface_map_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->update_vba_interface_map_type: #{e}"
end
```

#### Using the update_vba_interface_map_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceMapTypeVBAResponse>, Integer, Hash)> update_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type, vba_interface_map_type)

```ruby
begin
  # Update VBAInterfaceMapType
  data, status_code, headers = api_instance.update_vba_interface_map_type_with_http_info(vbasoftware_database, v_ba_interface_key, map_type, vba_interface_map_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceMapTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceMapTypesApi->update_vba_interface_map_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **map_type** | **String** | Map Type |  |
| **vba_interface_map_type** | [**VBAInterfaceMapType**](VBAInterfaceMapType.md) |  |  |

### Return type

[**VBAInterfaceMapTypeVBAResponse**](VBAInterfaceMapTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

