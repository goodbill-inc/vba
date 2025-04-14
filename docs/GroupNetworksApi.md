# Vba::GroupNetworksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_network**](GroupNetworksApi.md#create_group_network) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks | Create GroupNetwork |
| [**delete_group_network**](GroupNetworksApi.md#delete_group_network) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state} | Delete GroupNetwork |
| [**get_group_network**](GroupNetworksApi.md#get_group_network) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state} | Get GroupNetwork |
| [**list_group_network**](GroupNetworksApi.md#list_group_network) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks | List GroupNetwork |
| [**update_batch_group_network**](GroupNetworksApi.md#update_batch_group_network) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks-batch | Create or Update Batch GroupNetwork |
| [**update_group_network**](GroupNetworksApi.md#update_group_network) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state} | Update GroupNetwork |


## create_group_network

> <GroupNetworkVBAResponse> create_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network)

Create GroupNetwork

Creates a new GroupNetwork

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_network = Vba::GroupNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, network_id: 'network_id_example', state: 'state_example', process_as_oon: false}) # GroupNetwork | 

begin
  # Create GroupNetwork
  result = api_instance.create_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->create_group_network: #{e}"
end
```

#### Using the create_group_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkVBAResponse>, Integer, Hash)> create_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network)

```ruby
begin
  # Create GroupNetwork
  data, status_code, headers = api_instance.create_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->create_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_network** | [**GroupNetwork**](GroupNetwork.md) |  |  |

### Return type

[**GroupNetworkVBAResponse**](GroupNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_network

> delete_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)

Delete GroupNetwork

Deletes an GroupNetwork

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State

begin
  # Delete GroupNetwork
  api_instance.delete_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->delete_group_network: #{e}"
end
```

#### Using the delete_group_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)

```ruby
begin
  # Delete GroupNetwork
  data, status_code, headers = api_instance.delete_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->delete_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_network

> <GroupNetworkVBAResponse> get_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)

Get GroupNetwork

Gets GroupNetwork

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State

begin
  # Get GroupNetwork
  result = api_instance.get_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->get_group_network: #{e}"
end
```

#### Using the get_group_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkVBAResponse>, Integer, Hash)> get_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)

```ruby
begin
  # Get GroupNetwork
  data, status_code, headers = api_instance.get_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->get_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |

### Return type

[**GroupNetworkVBAResponse**](GroupNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_network

> <GroupNetworkListVBAResponse> list_group_network(vbasoftware_database, group_id, division_id, coverage_start, opts)

List GroupNetwork

Lists all GroupNetwork for the given groupID and divisionID and coverageStart

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupNetwork
  result = api_instance.list_group_network(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->list_group_network: #{e}"
end
```

#### Using the list_group_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkListVBAResponse>, Integer, Hash)> list_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)

```ruby
begin
  # List GroupNetwork
  data, status_code, headers = api_instance.list_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->list_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupNetworkListVBAResponse**](GroupNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_network

> <MultiCodeResponseListVBAResponse> update_batch_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network)

Create or Update Batch GroupNetwork

Create or Update multiple GroupNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_network = [Vba::GroupNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, network_id: 'network_id_example', state: 'state_example', process_as_oon: false})] # Array<GroupNetwork> | 

begin
  # Create or Update Batch GroupNetwork
  result = api_instance.update_batch_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->update_batch_group_network: #{e}"
end
```

#### Using the update_batch_group_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network)

```ruby
begin
  # Create or Update Batch GroupNetwork
  data, status_code, headers = api_instance.update_batch_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->update_batch_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_network** | [**Array&lt;GroupNetwork&gt;**](GroupNetwork.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_network

> <GroupNetworkVBAResponse> update_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network)

Update GroupNetwork

Updates a specific GroupNetwork.

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

api_instance = Vba::GroupNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network = Vba::GroupNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, network_id: 'network_id_example', state: 'state_example', process_as_oon: false}) # GroupNetwork | 

begin
  # Update GroupNetwork
  result = api_instance.update_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->update_group_network: #{e}"
end
```

#### Using the update_group_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkVBAResponse>, Integer, Hash)> update_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network)

```ruby
begin
  # Update GroupNetwork
  data, status_code, headers = api_instance.update_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworksApi->update_group_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network** | [**GroupNetwork**](GroupNetwork.md) |  |  |

### Return type

[**GroupNetworkVBAResponse**](GroupNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

