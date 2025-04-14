# Vba::NetworkTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_type**](NetworkTypesApi.md#create_network_type) | **POST** /network-types | Create NetworkType |
| [**delete_network_type**](NetworkTypesApi.md#delete_network_type) | **DELETE** /network-types/{networkType} | Delete NetworkType |
| [**get_network_type**](NetworkTypesApi.md#get_network_type) | **GET** /network-types/{networkType} | Get NetworkType |
| [**list_network_type**](NetworkTypesApi.md#list_network_type) | **GET** /network-types | List NetworkType |
| [**update_batch_network_type**](NetworkTypesApi.md#update_batch_network_type) | **PUT** /network-types-batch | Create or Update Batch NetworkType |
| [**update_network_type**](NetworkTypesApi.md#update_network_type) | **PUT** /network-types/{networkType} | Update NetworkType |


## create_network_type

> <NetworkTypeVBAResponse> create_network_type(vbasoftware_database, network_type)

Create NetworkType

Creates a new NetworkType

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_type = Vba::NetworkType.new({network_type: 'network_type_example'}) # NetworkType | 

begin
  # Create NetworkType
  result = api_instance.create_network_type(vbasoftware_database, network_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->create_network_type: #{e}"
end
```

#### Using the create_network_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkTypeVBAResponse>, Integer, Hash)> create_network_type_with_http_info(vbasoftware_database, network_type)

```ruby
begin
  # Create NetworkType
  data, status_code, headers = api_instance.create_network_type_with_http_info(vbasoftware_database, network_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->create_network_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_type** | [**NetworkType**](NetworkType.md) |  |  |

### Return type

[**NetworkTypeVBAResponse**](NetworkTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_type

> delete_network_type(vbasoftware_database, network_type)

Delete NetworkType

Deletes an NetworkType

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_type = 'network_type_example' # String | Network Type

begin
  # Delete NetworkType
  api_instance.delete_network_type(vbasoftware_database, network_type)
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->delete_network_type: #{e}"
end
```

#### Using the delete_network_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_type_with_http_info(vbasoftware_database, network_type)

```ruby
begin
  # Delete NetworkType
  data, status_code, headers = api_instance.delete_network_type_with_http_info(vbasoftware_database, network_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->delete_network_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_type** | **String** | Network Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_type

> <NetworkTypeVBAResponse> get_network_type(vbasoftware_database, network_type)

Get NetworkType

Gets NetworkType

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_type = 'network_type_example' # String | Network Type

begin
  # Get NetworkType
  result = api_instance.get_network_type(vbasoftware_database, network_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->get_network_type: #{e}"
end
```

#### Using the get_network_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkTypeVBAResponse>, Integer, Hash)> get_network_type_with_http_info(vbasoftware_database, network_type)

```ruby
begin
  # Get NetworkType
  data, status_code, headers = api_instance.get_network_type_with_http_info(vbasoftware_database, network_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->get_network_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_type** | **String** | Network Type |  |

### Return type

[**NetworkTypeVBAResponse**](NetworkTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_type

> <NetworkTypeListVBAResponse> list_network_type(vbasoftware_database, opts)

List NetworkType

Lists all NetworkType

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NetworkType
  result = api_instance.list_network_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->list_network_type: #{e}"
end
```

#### Using the list_network_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkTypeListVBAResponse>, Integer, Hash)> list_network_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List NetworkType
  data, status_code, headers = api_instance.list_network_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->list_network_type_with_http_info: #{e}"
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

[**NetworkTypeListVBAResponse**](NetworkTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_type

> <MultiCodeResponseListVBAResponse> update_batch_network_type(vbasoftware_database, network_type)

Create or Update Batch NetworkType

Create or Update multiple NetworkType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_type = [Vba::NetworkType.new({network_type: 'network_type_example'})] # Array<NetworkType> | 

begin
  # Create or Update Batch NetworkType
  result = api_instance.update_batch_network_type(vbasoftware_database, network_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->update_batch_network_type: #{e}"
end
```

#### Using the update_batch_network_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_type_with_http_info(vbasoftware_database, network_type)

```ruby
begin
  # Create or Update Batch NetworkType
  data, status_code, headers = api_instance.update_batch_network_type_with_http_info(vbasoftware_database, network_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->update_batch_network_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_type** | [**Array&lt;NetworkType&gt;**](NetworkType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_type

> <NetworkTypeVBAResponse> update_network_type(vbasoftware_database, network_type, network_type2)

Update NetworkType

Updates a specific NetworkType.

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

api_instance = Vba::NetworkTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_type = 'network_type_example' # String | Network Type
network_type2 = Vba::NetworkType.new({network_type: 'network_type_example'}) # NetworkType | 

begin
  # Update NetworkType
  result = api_instance.update_network_type(vbasoftware_database, network_type, network_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->update_network_type: #{e}"
end
```

#### Using the update_network_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkTypeVBAResponse>, Integer, Hash)> update_network_type_with_http_info(vbasoftware_database, network_type, network_type2)

```ruby
begin
  # Update NetworkType
  data, status_code, headers = api_instance.update_network_type_with_http_info(vbasoftware_database, network_type, network_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkTypesApi->update_network_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_type** | **String** | Network Type |  |
| **network_type2** | [**NetworkType**](NetworkType.md) |  |  |

### Return type

[**NetworkTypeVBAResponse**](NetworkTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

