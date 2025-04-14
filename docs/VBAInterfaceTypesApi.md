# Vba::VBAInterfaceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface_type**](VBAInterfaceTypesApi.md#create_vba_interface_type) | **POST** /vba-interface-types | Create VBAInterfaceType |
| [**delete_vba_interface_type**](VBAInterfaceTypesApi.md#delete_vba_interface_type) | **DELETE** /vba-interface-types/{vBAInterfaceType} | Delete VBAInterfaceType |
| [**get_vba_interface_type**](VBAInterfaceTypesApi.md#get_vba_interface_type) | **GET** /vba-interface-types/{vBAInterfaceType} | Get VBAInterfaceType |
| [**list_vba_interface_type**](VBAInterfaceTypesApi.md#list_vba_interface_type) | **GET** /vba-interface-types | List VBAInterfaceType |
| [**update_batch_vba_interface_type**](VBAInterfaceTypesApi.md#update_batch_vba_interface_type) | **PUT** /vba-interface-types-batch | Create or Update Batch VBAInterfaceType |
| [**update_vba_interface_type**](VBAInterfaceTypesApi.md#update_vba_interface_type) | **PUT** /vba-interface-types/{vBAInterfaceType} | Update VBAInterfaceType |


## create_vba_interface_type

> <VBAInterfaceTypeVBAResponse> create_vba_interface_type(vbasoftware_database, vba_interface_type)

Create VBAInterfaceType

Creates a new VBAInterfaceType

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_type = Vba::VBAInterfaceType.new({vba_interface_type: 'vba_interface_type_example'}) # VBAInterfaceType | 

begin
  # Create VBAInterfaceType
  result = api_instance.create_vba_interface_type(vbasoftware_database, vba_interface_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->create_vba_interface_type: #{e}"
end
```

#### Using the create_vba_interface_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceTypeVBAResponse>, Integer, Hash)> create_vba_interface_type_with_http_info(vbasoftware_database, vba_interface_type)

```ruby
begin
  # Create VBAInterfaceType
  data, status_code, headers = api_instance.create_vba_interface_type_with_http_info(vbasoftware_database, vba_interface_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->create_vba_interface_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_type** | [**VBAInterfaceType**](VBAInterfaceType.md) |  |  |

### Return type

[**VBAInterfaceTypeVBAResponse**](VBAInterfaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface_type

> delete_vba_interface_type(vbasoftware_database, v_ba_interface_type)

Delete VBAInterfaceType

Deletes an VBAInterfaceType

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_type = 'v_ba_interface_type_example' # String | VBAInterface Type

begin
  # Delete VBAInterfaceType
  api_instance.delete_vba_interface_type(vbasoftware_database, v_ba_interface_type)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->delete_vba_interface_type: #{e}"
end
```

#### Using the delete_vba_interface_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type)

```ruby
begin
  # Delete VBAInterfaceType
  data, status_code, headers = api_instance.delete_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->delete_vba_interface_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_type** | **String** | VBAInterface Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface_type

> <VBAInterfaceTypeVBAResponse> get_vba_interface_type(vbasoftware_database, v_ba_interface_type)

Get VBAInterfaceType

Gets VBAInterfaceType

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_type = 'v_ba_interface_type_example' # String | VBAInterface Type

begin
  # Get VBAInterfaceType
  result = api_instance.get_vba_interface_type(vbasoftware_database, v_ba_interface_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->get_vba_interface_type: #{e}"
end
```

#### Using the get_vba_interface_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceTypeVBAResponse>, Integer, Hash)> get_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type)

```ruby
begin
  # Get VBAInterfaceType
  data, status_code, headers = api_instance.get_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->get_vba_interface_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_type** | **String** | VBAInterface Type |  |

### Return type

[**VBAInterfaceTypeVBAResponse**](VBAInterfaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_type

> <VBAInterfaceTypeListVBAResponse> list_vba_interface_type(vbasoftware_database, opts)

List VBAInterfaceType

Lists all VBAInterfaceType

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterfaceType
  result = api_instance.list_vba_interface_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->list_vba_interface_type: #{e}"
end
```

#### Using the list_vba_interface_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceTypeListVBAResponse>, Integer, Hash)> list_vba_interface_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAInterfaceType
  data, status_code, headers = api_instance.list_vba_interface_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->list_vba_interface_type_with_http_info: #{e}"
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

[**VBAInterfaceTypeListVBAResponse**](VBAInterfaceTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface_type

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface_type(vbasoftware_database, vba_interface_type)

Create or Update Batch VBAInterfaceType

Create or Update multiple VBAInterfaceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_type = [Vba::VBAInterfaceType.new({vba_interface_type: 'vba_interface_type_example'})] # Array<VBAInterfaceType> | 

begin
  # Create or Update Batch VBAInterfaceType
  result = api_instance.update_batch_vba_interface_type(vbasoftware_database, vba_interface_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->update_batch_vba_interface_type: #{e}"
end
```

#### Using the update_batch_vba_interface_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_type_with_http_info(vbasoftware_database, vba_interface_type)

```ruby
begin
  # Create or Update Batch VBAInterfaceType
  data, status_code, headers = api_instance.update_batch_vba_interface_type_with_http_info(vbasoftware_database, vba_interface_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->update_batch_vba_interface_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_type** | [**Array&lt;VBAInterfaceType&gt;**](VBAInterfaceType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface_type

> <VBAInterfaceTypeVBAResponse> update_vba_interface_type(vbasoftware_database, v_ba_interface_type, vba_interface_type)

Update VBAInterfaceType

Updates a specific VBAInterfaceType.

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

api_instance = Vba::VBAInterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_type = 'v_ba_interface_type_example' # String | VBAInterface Type
vba_interface_type = Vba::VBAInterfaceType.new({vba_interface_type: 'vba_interface_type_example'}) # VBAInterfaceType | 

begin
  # Update VBAInterfaceType
  result = api_instance.update_vba_interface_type(vbasoftware_database, v_ba_interface_type, vba_interface_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->update_vba_interface_type: #{e}"
end
```

#### Using the update_vba_interface_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceTypeVBAResponse>, Integer, Hash)> update_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type, vba_interface_type)

```ruby
begin
  # Update VBAInterfaceType
  data, status_code, headers = api_instance.update_vba_interface_type_with_http_info(vbasoftware_database, v_ba_interface_type, vba_interface_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceTypesApi->update_vba_interface_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_type** | **String** | VBAInterface Type |  |
| **vba_interface_type** | [**VBAInterfaceType**](VBAInterfaceType.md) |  |  |

### Return type

[**VBAInterfaceTypeVBAResponse**](VBAInterfaceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

