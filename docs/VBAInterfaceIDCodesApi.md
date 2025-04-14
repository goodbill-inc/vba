# Vba::VBAInterfaceIDCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#create_vba_interface_id_code) | **POST** /vba-interfaces/{vBAInterfaceKey}/id-codes | Create VBAInterfaceIDCode |
| [**delete_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#delete_vba_interface_id_code) | **DELETE** /vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode} | Delete VBAInterfaceIDCode |
| [**get_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#get_vba_interface_id_code) | **GET** /vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode} | Get VBAInterfaceIDCode |
| [**list_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#list_vba_interface_id_code) | **GET** /vba-interfaces/{vBAInterfaceKey}/id-codes | List VBAInterfaceIDCode |
| [**update_batch_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#update_batch_vba_interface_id_code) | **PUT** /vba-interfaces/{vBAInterfaceKey}/id-codes-batch | Create or Update Batch VBAInterfaceIDCode |
| [**update_vba_interface_id_code**](VBAInterfaceIDCodesApi.md#update_vba_interface_id_code) | **PUT** /vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode} | Update VBAInterfaceIDCode |


## create_vba_interface_id_code

> <VBAInterfaceIDCodeVBAResponse> create_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)

Create VBAInterfaceIDCode

Creates a new VBAInterfaceIDCode

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
vba_interface_id_code = Vba::VBAInterfaceIDCode.new({vba_interface_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'}) # VBAInterfaceIDCode | 

begin
  # Create VBAInterfaceIDCode
  result = api_instance.create_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->create_vba_interface_id_code: #{e}"
end
```

#### Using the create_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceIDCodeVBAResponse>, Integer, Hash)> create_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)

```ruby
begin
  # Create VBAInterfaceIDCode
  data, status_code, headers = api_instance.create_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->create_vba_interface_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **vba_interface_id_code** | [**VBAInterfaceIDCode**](VBAInterfaceIDCode.md) |  |  |

### Return type

[**VBAInterfaceIDCodeVBAResponse**](VBAInterfaceIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface_id_code

> delete_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code)

Delete VBAInterfaceIDCode

Deletes an VBAInterfaceIDCode

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
type = 'type_example' # String | Type
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Delete VBAInterfaceIDCode
  api_instance.delete_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->delete_vba_interface_id_code: #{e}"
end
```

#### Using the delete_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code)

```ruby
begin
  # Delete VBAInterfaceIDCode
  data, status_code, headers = api_instance.delete_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->delete_vba_interface_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **type** | **String** | Type |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface_id_code

> <VBAInterfaceIDCodeVBAResponse> get_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code)

Get VBAInterfaceIDCode

Gets VBAInterfaceIDCode

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
type = 'type_example' # String | Type
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Get VBAInterfaceIDCode
  result = api_instance.get_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->get_vba_interface_id_code: #{e}"
end
```

#### Using the get_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceIDCodeVBAResponse>, Integer, Hash)> get_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code)

```ruby
begin
  # Get VBAInterfaceIDCode
  data, status_code, headers = api_instance.get_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->get_vba_interface_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **type** | **String** | Type |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

[**VBAInterfaceIDCodeVBAResponse**](VBAInterfaceIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_id_code

> <VBAInterfaceIDCodeListVBAResponse> list_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, opts)

List VBAInterfaceIDCode

Lists all VBAInterfaceIDCode for the given vBAInterfaceKey

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterfaceIDCode
  result = api_instance.list_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->list_vba_interface_id_code: #{e}"
end
```

#### Using the list_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceIDCodeListVBAResponse>, Integer, Hash)> list_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, opts)

```ruby
begin
  # List VBAInterfaceIDCode
  data, status_code, headers = api_instance.list_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceIDCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->list_vba_interface_id_code_with_http_info: #{e}"
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

[**VBAInterfaceIDCodeListVBAResponse**](VBAInterfaceIDCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface_id_code

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)

Create or Update Batch VBAInterfaceIDCode

Create or Update multiple VBAInterfaceIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
vba_interface_id_code = [Vba::VBAInterfaceIDCode.new({vba_interface_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'})] # Array<VBAInterfaceIDCode> | 

begin
  # Create or Update Batch VBAInterfaceIDCode
  result = api_instance.update_batch_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->update_batch_vba_interface_id_code: #{e}"
end
```

#### Using the update_batch_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)

```ruby
begin
  # Create or Update Batch VBAInterfaceIDCode
  data, status_code, headers = api_instance.update_batch_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->update_batch_vba_interface_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **vba_interface_id_code** | [**Array&lt;VBAInterfaceIDCode&gt;**](VBAInterfaceIDCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface_id_code

> <VBAInterfaceIDCodeVBAResponse> update_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code)

Update VBAInterfaceIDCode

Updates a specific VBAInterfaceIDCode.

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

api_instance = Vba::VBAInterfaceIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
type = 'type_example' # String | Type
i_d_code = 'i_d_code_example' # String | ID Code
vba_interface_id_code = Vba::VBAInterfaceIDCode.new({vba_interface_key: 37, i_d_code: 'i_d_code_example', type: 'type_example'}) # VBAInterfaceIDCode | 

begin
  # Update VBAInterfaceIDCode
  result = api_instance.update_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->update_vba_interface_id_code: #{e}"
end
```

#### Using the update_vba_interface_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceIDCodeVBAResponse>, Integer, Hash)> update_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code)

```ruby
begin
  # Update VBAInterfaceIDCode
  data, status_code, headers = api_instance.update_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceIDCodesApi->update_vba_interface_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **type** | **String** | Type |  |
| **i_d_code** | **String** | ID Code |  |
| **vba_interface_id_code** | [**VBAInterfaceIDCode**](VBAInterfaceIDCode.md) |  |  |

### Return type

[**VBAInterfaceIDCodeVBAResponse**](VBAInterfaceIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

