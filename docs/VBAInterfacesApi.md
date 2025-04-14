# Vba::VBAInterfacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface**](VBAInterfacesApi.md#create_vba_interface) | **POST** /vba-interfaces | Create VBAInterface |
| [**delete_vba_interface**](VBAInterfacesApi.md#delete_vba_interface) | **DELETE** /vba-interfaces/{vBAInterfaceKey} | Delete VBAInterface |
| [**get_vba_interface**](VBAInterfacesApi.md#get_vba_interface) | **GET** /vba-interfaces/{vBAInterfaceKey} | Get VBAInterface |
| [**list_vba_interface**](VBAInterfacesApi.md#list_vba_interface) | **GET** /vba-interfaces | List VBAInterface |
| [**list_vba_interface_directions**](VBAInterfacesApi.md#list_vba_interface_directions) | **GET** /vba-interface-directions | List VBA Interface Directions |
| [**update_batch_vba_interface**](VBAInterfacesApi.md#update_batch_vba_interface) | **PUT** /vba-interfaces-batch | Create or Update Batch VBAInterface |
| [**update_vba_interface**](VBAInterfacesApi.md#update_vba_interface) | **PUT** /vba-interfaces/{vBAInterfaceKey} | Update VBAInterface |


## create_vba_interface

> <VBAInterfaceVBAResponse> create_vba_interface(vbasoftware_database, vba_interface)

Create VBAInterface

Creates a new VBAInterface

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface = Vba::VBAInterface.new({vba_interface_key: 37}) # VBAInterface | 

begin
  # Create VBAInterface
  result = api_instance.create_vba_interface(vbasoftware_database, vba_interface)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->create_vba_interface: #{e}"
end
```

#### Using the create_vba_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVBAResponse>, Integer, Hash)> create_vba_interface_with_http_info(vbasoftware_database, vba_interface)

```ruby
begin
  # Create VBAInterface
  data, status_code, headers = api_instance.create_vba_interface_with_http_info(vbasoftware_database, vba_interface)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->create_vba_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface** | [**VBAInterface**](VBAInterface.md) |  |  |

### Return type

[**VBAInterfaceVBAResponse**](VBAInterfaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface

> delete_vba_interface(vbasoftware_database, v_ba_interface_key)

Delete VBAInterface

Deletes an VBAInterface

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key

begin
  # Delete VBAInterface
  api_instance.delete_vba_interface(vbasoftware_database, v_ba_interface_key)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->delete_vba_interface: #{e}"
end
```

#### Using the delete_vba_interface_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key)

```ruby
begin
  # Delete VBAInterface
  data, status_code, headers = api_instance.delete_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->delete_vba_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface

> <VBAInterfaceVBAResponse> get_vba_interface(vbasoftware_database, v_ba_interface_key)

Get VBAInterface

Gets VBAInterface

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key

begin
  # Get VBAInterface
  result = api_instance.get_vba_interface(vbasoftware_database, v_ba_interface_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->get_vba_interface: #{e}"
end
```

#### Using the get_vba_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVBAResponse>, Integer, Hash)> get_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key)

```ruby
begin
  # Get VBAInterface
  data, status_code, headers = api_instance.get_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->get_vba_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |

### Return type

[**VBAInterfaceVBAResponse**](VBAInterfaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface

> <VBAInterfaceListVBAResponse> list_vba_interface(vbasoftware_database, opts)

List VBAInterface

Lists all VBAInterface

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterface
  result = api_instance.list_vba_interface(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->list_vba_interface: #{e}"
end
```

#### Using the list_vba_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceListVBAResponse>, Integer, Hash)> list_vba_interface_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAInterface
  data, status_code, headers = api_instance.list_vba_interface_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->list_vba_interface_with_http_info: #{e}"
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

[**VBAInterfaceListVBAResponse**](VBAInterfaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_directions

> <StringStaticOptionListVBAResponse> list_vba_interface_directions(vbasoftware_database)

List VBA Interface Directions

List VBA Interface Directions

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List VBA Interface Directions
  result = api_instance.list_vba_interface_directions(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->list_vba_interface_directions: #{e}"
end
```

#### Using the list_vba_interface_directions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_vba_interface_directions_with_http_info(vbasoftware_database)

```ruby
begin
  # List VBA Interface Directions
  data, status_code, headers = api_instance.list_vba_interface_directions_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->list_vba_interface_directions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface(vbasoftware_database, vba_interface)

Create or Update Batch VBAInterface

Create or Update multiple VBAInterface at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface = [Vba::VBAInterface.new({vba_interface_key: 37})] # Array<VBAInterface> | 

begin
  # Create or Update Batch VBAInterface
  result = api_instance.update_batch_vba_interface(vbasoftware_database, vba_interface)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->update_batch_vba_interface: #{e}"
end
```

#### Using the update_batch_vba_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_with_http_info(vbasoftware_database, vba_interface)

```ruby
begin
  # Create or Update Batch VBAInterface
  data, status_code, headers = api_instance.update_batch_vba_interface_with_http_info(vbasoftware_database, vba_interface)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->update_batch_vba_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface** | [**Array&lt;VBAInterface&gt;**](VBAInterface.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface

> <VBAInterfaceVBAResponse> update_vba_interface(vbasoftware_database, v_ba_interface_key, vba_interface)

Update VBAInterface

Updates a specific VBAInterface.

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

api_instance = Vba::VBAInterfacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_key = 56 # Integer | VBAInterface Key
vba_interface = Vba::VBAInterface.new({vba_interface_key: 37}) # VBAInterface | 

begin
  # Update VBAInterface
  result = api_instance.update_vba_interface(vbasoftware_database, v_ba_interface_key, vba_interface)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->update_vba_interface: #{e}"
end
```

#### Using the update_vba_interface_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVBAResponse>, Integer, Hash)> update_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface)

```ruby
begin
  # Update VBAInterface
  data, status_code, headers = api_instance.update_vba_interface_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfacesApi->update_vba_interface_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_key** | **Integer** | VBAInterface Key |  |
| **vba_interface** | [**VBAInterface**](VBAInterface.md) |  |  |

### Return type

[**VBAInterfaceVBAResponse**](VBAInterfaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

