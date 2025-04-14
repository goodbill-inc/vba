# Vba::UCNetworkApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_uc_network**](UCNetworkApi.md#create_uc_network) | **POST** /uc-networks | Create UCNetwork |
| [**delete_uc_network**](UCNetworkApi.md#delete_uc_network) | **DELETE** /uc-networks/{groupID}/{divisionID}/{planID}/{state}/{feeSched} | Delete UCNetwork |
| [**get_uc_network**](UCNetworkApi.md#get_uc_network) | **GET** /uc-networks/{groupID}/{divisionID}/{planID}/{state}/{feeSched} | Get UCNetwork |
| [**list_uc_network**](UCNetworkApi.md#list_uc_network) | **GET** /uc-networks | List UCNetwork |
| [**update_uc_network**](UCNetworkApi.md#update_uc_network) | **PUT** /uc-networks/{groupID}/{divisionID}/{planID}/{state}/{feeSched} | Update UCNetwork |


## create_uc_network

> <UCNetworkVBAResponse> create_uc_network(vbasoftware_database, uc_network)

Create UCNetwork

Creates a new UCNetwork

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

api_instance = Vba::UCNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
uc_network = Vba::UCNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', plan_id: 'plan_id_example', state: 'state_example', fee_sched: 'fee_sched_example'}) # UCNetwork | 

begin
  # Create UCNetwork
  result = api_instance.create_uc_network(vbasoftware_database, uc_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->create_uc_network: #{e}"
end
```

#### Using the create_uc_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UCNetworkVBAResponse>, Integer, Hash)> create_uc_network_with_http_info(vbasoftware_database, uc_network)

```ruby
begin
  # Create UCNetwork
  data, status_code, headers = api_instance.create_uc_network_with_http_info(vbasoftware_database, uc_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UCNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->create_uc_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **uc_network** | [**UCNetwork**](UCNetwork.md) |  |  |

### Return type

[**UCNetworkVBAResponse**](UCNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_uc_network

> delete_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)

Delete UCNetwork

Deletes an UCNetwork

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

api_instance = Vba::UCNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_id = 'plan_id_example' # String | Plan ID
state = 'state_example' # String | State
fee_sched = 'fee_sched_example' # String | Fee Sched

begin
  # Delete UCNetwork
  api_instance.delete_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->delete_uc_network: #{e}"
end
```

#### Using the delete_uc_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)

```ruby
begin
  # Delete UCNetwork
  data, status_code, headers = api_instance.delete_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->delete_uc_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_id** | **String** | Plan ID |  |
| **state** | **String** | State |  |
| **fee_sched** | **String** | Fee Sched |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_uc_network

> <UCNetworkVBAResponse> get_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)

Get UCNetwork

Gets UCNetwork

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

api_instance = Vba::UCNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_id = 'plan_id_example' # String | Plan ID
state = 'state_example' # String | State
fee_sched = 'fee_sched_example' # String | Fee Sched

begin
  # Get UCNetwork
  result = api_instance.get_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->get_uc_network: #{e}"
end
```

#### Using the get_uc_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UCNetworkVBAResponse>, Integer, Hash)> get_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)

```ruby
begin
  # Get UCNetwork
  data, status_code, headers = api_instance.get_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UCNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->get_uc_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_id** | **String** | Plan ID |  |
| **state** | **String** | State |  |
| **fee_sched** | **String** | Fee Sched |  |

### Return type

[**UCNetworkVBAResponse**](UCNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_uc_network

> <UCNetworkListVBAResponse> list_uc_network(vbasoftware_database, opts)

List UCNetwork

Lists all UCNetwork for the given groupID and divisionID and planID and state and feeSched

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

api_instance = Vba::UCNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example', # String | Group ID
  division_id: 'division_id_example', # String | Division ID
  plan_id: 'plan_id_example', # String | Plan ID
  state: 'state_example', # String | State
  fee_sched: 'fee_sched_example', # String | Fee Sched
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List UCNetwork
  result = api_instance.list_uc_network(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->list_uc_network: #{e}"
end
```

#### Using the list_uc_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UCNetworkListVBAResponse>, Integer, Hash)> list_uc_network_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List UCNetwork
  data, status_code, headers = api_instance.list_uc_network_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UCNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->list_uc_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |
| **division_id** | **String** | Division ID | [optional] |
| **plan_id** | **String** | Plan ID | [optional] |
| **state** | **String** | State | [optional] |
| **fee_sched** | **String** | Fee Sched | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**UCNetworkListVBAResponse**](UCNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_uc_network

> <UCNetworkVBAResponse> update_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched, uc_network)

Update UCNetwork

Updates a specific UCNetwork.

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

api_instance = Vba::UCNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_id = 'plan_id_example' # String | Plan ID
state = 'state_example' # String | State
fee_sched = 'fee_sched_example' # String | Fee Sched
uc_network = Vba::UCNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', plan_id: 'plan_id_example', state: 'state_example', fee_sched: 'fee_sched_example'}) # UCNetwork | 

begin
  # Update UCNetwork
  result = api_instance.update_uc_network(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched, uc_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->update_uc_network: #{e}"
end
```

#### Using the update_uc_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UCNetworkVBAResponse>, Integer, Hash)> update_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched, uc_network)

```ruby
begin
  # Update UCNetwork
  data, status_code, headers = api_instance.update_uc_network_with_http_info(vbasoftware_database, group_id, division_id, plan_id, state, fee_sched, uc_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UCNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UCNetworkApi->update_uc_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_id** | **String** | Plan ID |  |
| **state** | **String** | State |  |
| **fee_sched** | **String** | Fee Sched |  |
| **uc_network** | [**UCNetwork**](UCNetwork.md) |  |  |

### Return type

[**UCNetworkVBAResponse**](UCNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

