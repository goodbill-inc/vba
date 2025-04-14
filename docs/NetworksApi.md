# Vba::NetworksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network**](NetworksApi.md#create_network) | **POST** /networks | Create Network |
| [**create_or_update_batch_networks**](NetworksApi.md#create_or_update_batch_networks) | **PUT** /networks-batch | Create or Update Batch Network |
| [**delete_network**](NetworksApi.md#delete_network) | **DELETE** /networks/{networkID} | Delete Network |
| [**get_network**](NetworksApi.md#get_network) | **GET** /networks/{networkID} | Get Network |
| [**list_networks**](NetworksApi.md#list_networks) | **GET** /networks | List Networks |
| [**update_network**](NetworksApi.md#update_network) | **PUT** /networks/{networkID} | Update Network |


## create_network

> <NetworksVBAResponse> create_network(vbasoftware_database, networks)

Create Network

Creates a new Network

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
networks = Vba::Networks.new({network_id: 'network_id_example'}) # Networks | 

begin
  # Create Network
  result = api_instance.create_network(vbasoftware_database, networks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->create_network: #{e}"
end
```

#### Using the create_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworksVBAResponse>, Integer, Hash)> create_network_with_http_info(vbasoftware_database, networks)

```ruby
begin
  # Create Network
  data, status_code, headers = api_instance.create_network_with_http_info(vbasoftware_database, networks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->create_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **networks** | [**Networks**](Networks.md) |  |  |

### Return type

[**NetworksVBAResponse**](NetworksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_or_update_batch_networks

> <MultiCodeResponseListVBAResponse> create_or_update_batch_networks(vbasoftware_database, networks)

Create or Update Batch Network

Creates or Updates multiple Networks

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
networks = [Vba::Networks.new({network_id: 'network_id_example'})] # Array<Networks> | 

begin
  # Create or Update Batch Network
  result = api_instance.create_or_update_batch_networks(vbasoftware_database, networks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->create_or_update_batch_networks: #{e}"
end
```

#### Using the create_or_update_batch_networks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_or_update_batch_networks_with_http_info(vbasoftware_database, networks)

```ruby
begin
  # Create or Update Batch Network
  data, status_code, headers = api_instance.create_or_update_batch_networks_with_http_info(vbasoftware_database, networks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->create_or_update_batch_networks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **networks** | [**Array&lt;Networks&gt;**](Networks.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network

> delete_network(vbasoftware_database, network_id)

Delete Network

Deletes a specific Network

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | NetworkID

begin
  # Delete Network
  api_instance.delete_network(vbasoftware_database, network_id)
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->delete_network: #{e}"
end
```

#### Using the delete_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_with_http_info(vbasoftware_database, network_id)

```ruby
begin
  # Delete Network
  data, status_code, headers = api_instance.delete_network_with_http_info(vbasoftware_database, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->delete_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | NetworkID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network

> <NetworksVBAResponse> get_network(vbasoftware_database, network_id)

Get Network

Gets a specific Network

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID

begin
  # Get Network
  result = api_instance.get_network(vbasoftware_database, network_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->get_network: #{e}"
end
```

#### Using the get_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworksVBAResponse>, Integer, Hash)> get_network_with_http_info(vbasoftware_database, network_id)

```ruby
begin
  # Get Network
  data, status_code, headers = api_instance.get_network_with_http_info(vbasoftware_database, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->get_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |

### Return type

[**NetworksVBAResponse**](NetworksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_networks

> <NetworksListVBAResponse> list_networks(vbasoftware_database, opts)

List Networks

List all available Networks

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Networks
  result = api_instance.list_networks(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->list_networks: #{e}"
end
```

#### Using the list_networks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworksListVBAResponse>, Integer, Hash)> list_networks_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Networks
  data, status_code, headers = api_instance.list_networks_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworksListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->list_networks_with_http_info: #{e}"
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

[**NetworksListVBAResponse**](NetworksListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_network

> <NetworksVBAResponse> update_network(vbasoftware_database, network_id, networks)

Update Network

Updates a specific Network

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

api_instance = Vba::NetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | NetworkID
networks = Vba::Networks.new({network_id: 'network_id_example'}) # Networks | 

begin
  # Update Network
  result = api_instance.update_network(vbasoftware_database, network_id, networks)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->update_network: #{e}"
end
```

#### Using the update_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworksVBAResponse>, Integer, Hash)> update_network_with_http_info(vbasoftware_database, network_id, networks)

```ruby
begin
  # Update Network
  data, status_code, headers = api_instance.update_network_with_http_info(vbasoftware_database, network_id, networks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworksApi->update_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | NetworkID |  |
| **networks** | [**Networks**](Networks.md) |  |  |

### Return type

[**NetworksVBAResponse**](NetworksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

