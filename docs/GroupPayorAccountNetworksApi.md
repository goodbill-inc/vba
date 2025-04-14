# Vba::GroupPayorAccountNetworksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_network**](GroupPayorAccountNetworksApi.md#create_group_payor_account_network) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/networks | Create GroupPayorAccountNetwork |
| [**delete_group_payor_account_network**](GroupPayorAccountNetworksApi.md#delete_group_payor_account_network) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/networks/{networkID} | Delete GroupPayorAccountNetwork |
| [**get_group_payor_account_network**](GroupPayorAccountNetworksApi.md#get_group_payor_account_network) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/networks/{networkID} | Get GroupPayorAccountNetwork |
| [**list_group_payor_account_network**](GroupPayorAccountNetworksApi.md#list_group_payor_account_network) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/networks | List GroupPayorAccountNetwork |
| [**update_batch_group_payor_account_network**](GroupPayorAccountNetworksApi.md#update_batch_group_payor_account_network) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/networks-batch | Create or Update Batch GroupPayorAccountNetwork |


## create_group_payor_account_network

> <GroupPayorAccountNetworkVBAResponse> create_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network)

Create GroupPayorAccountNetwork

Creates a new GroupPayorAccountNetwork

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

api_instance = Vba::GroupPayorAccountNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_network = Vba::GroupPayorAccountNetwork.new({group_id: 'group_id_example', setting_id: 'setting_id_example', network_id: 'network_id_example'}) # GroupPayorAccountNetwork | 

begin
  # Create GroupPayorAccountNetwork
  result = api_instance.create_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->create_group_payor_account_network: #{e}"
end
```

#### Using the create_group_payor_account_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountNetworkVBAResponse>, Integer, Hash)> create_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network)

```ruby
begin
  # Create GroupPayorAccountNetwork
  data, status_code, headers = api_instance.create_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->create_group_payor_account_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_network** | [**GroupPayorAccountNetwork**](GroupPayorAccountNetwork.md) |  |  |

### Return type

[**GroupPayorAccountNetworkVBAResponse**](GroupPayorAccountNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_network

> delete_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id)

Delete GroupPayorAccountNetwork

Deletes an GroupPayorAccountNetwork

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

api_instance = Vba::GroupPayorAccountNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
network_id = 'network_id_example' # String | Network ID

begin
  # Delete GroupPayorAccountNetwork
  api_instance.delete_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->delete_group_payor_account_network: #{e}"
end
```

#### Using the delete_group_payor_account_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id)

```ruby
begin
  # Delete GroupPayorAccountNetwork
  data, status_code, headers = api_instance.delete_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->delete_group_payor_account_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **network_id** | **String** | Network ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_network

> <GroupPayorAccountNetworkVBAResponse> get_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id)

Get GroupPayorAccountNetwork

Gets GroupPayorAccountNetwork

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

api_instance = Vba::GroupPayorAccountNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
network_id = 'network_id_example' # String | Network ID

begin
  # Get GroupPayorAccountNetwork
  result = api_instance.get_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->get_group_payor_account_network: #{e}"
end
```

#### Using the get_group_payor_account_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountNetworkVBAResponse>, Integer, Hash)> get_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id)

```ruby
begin
  # Get GroupPayorAccountNetwork
  data, status_code, headers = api_instance.get_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->get_group_payor_account_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **network_id** | **String** | Network ID |  |

### Return type

[**GroupPayorAccountNetworkVBAResponse**](GroupPayorAccountNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_network

> <GroupPayorAccountNetworkListVBAResponse> list_group_payor_account_network(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountNetwork

Lists all GroupPayorAccountNetwork for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountNetwork
  result = api_instance.list_group_payor_account_network(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->list_group_payor_account_network: #{e}"
end
```

#### Using the list_group_payor_account_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountNetworkListVBAResponse>, Integer, Hash)> list_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountNetwork
  data, status_code, headers = api_instance.list_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->list_group_payor_account_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountNetworkListVBAResponse**](GroupPayorAccountNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_network

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network)

Create or Update Batch GroupPayorAccountNetwork

Create or Update multiple GroupPayorAccountNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_network = [Vba::GroupPayorAccountNetwork.new({group_id: 'group_id_example', setting_id: 'setting_id_example', network_id: 'network_id_example'})] # Array<GroupPayorAccountNetwork> | 

begin
  # Create or Update Batch GroupPayorAccountNetwork
  result = api_instance.update_batch_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->update_batch_group_payor_account_network: #{e}"
end
```

#### Using the update_batch_group_payor_account_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network)

```ruby
begin
  # Create or Update Batch GroupPayorAccountNetwork
  data, status_code, headers = api_instance.update_batch_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountNetworksApi->update_batch_group_payor_account_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_network** | [**Array&lt;GroupPayorAccountNetwork&gt;**](GroupPayorAccountNetwork.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

