# Vba::NetworkProfileNetworksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_profile_network**](NetworkProfileNetworksApi.md#create_network_profile_network) | **POST** /network-profile-networks | Create NetworkProfileNetwork |
| [**delete_network_profile_network**](NetworkProfileNetworksApi.md#delete_network_profile_network) | **DELETE** /network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date} | Delete NetworkProfileNetwork |
| [**get_network_profile_network**](NetworkProfileNetworksApi.md#get_network_profile_network) | **GET** /network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date} | Get NetworkProfileNetwork |
| [**list_network_profile_network**](NetworkProfileNetworksApi.md#list_network_profile_network) | **GET** /network-profiles/{Profile_ID}/networks | List NetworkProfileNetwork |
| [**update_batch_network_profile_network**](NetworkProfileNetworksApi.md#update_batch_network_profile_network) | **PUT** /network-profile-networks-batch | Create or Update Batch NetworkProfileNetwork |
| [**update_network_profile_network**](NetworkProfileNetworksApi.md#update_network_profile_network) | **PUT** /network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date} | Update NetworkProfileNetwork |


## create_network_profile_network

> <NetworkProfileNetworkVBAResponse> create_network_profile_network(vbasoftware_database, network_profile_network)

Create NetworkProfileNetwork

Creates a new NetworkProfileNetwork

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile_network = Vba::NetworkProfileNetwork.new({profile_id: 'profile_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false}) # NetworkProfileNetwork | 

begin
  # Create NetworkProfileNetwork
  result = api_instance.create_network_profile_network(vbasoftware_database, network_profile_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->create_network_profile_network: #{e}"
end
```

#### Using the create_network_profile_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileNetworkVBAResponse>, Integer, Hash)> create_network_profile_network_with_http_info(vbasoftware_database, network_profile_network)

```ruby
begin
  # Create NetworkProfileNetwork
  data, status_code, headers = api_instance.create_network_profile_network_with_http_info(vbasoftware_database, network_profile_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->create_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile_network** | [**NetworkProfileNetwork**](NetworkProfileNetwork.md) |  |  |

### Return type

[**NetworkProfileNetworkVBAResponse**](NetworkProfileNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_profile_network

> delete_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date)

Delete NetworkProfileNetwork

Deletes an NetworkProfileNetwork

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
network_id = 'network_id_example' # String | Network ID
eff_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Eff Date

begin
  # Delete NetworkProfileNetwork
  api_instance.delete_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date)
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->delete_network_profile_network: #{e}"
end
```

#### Using the delete_network_profile_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date)

```ruby
begin
  # Delete NetworkProfileNetwork
  data, status_code, headers = api_instance.delete_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->delete_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **network_id** | **String** | Network ID |  |
| **eff_date** | **Time** | Eff Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_profile_network

> <NetworkProfileNetworkVBAResponse> get_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date)

Get NetworkProfileNetwork

Gets NetworkProfileNetwork

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
network_id = 'network_id_example' # String | Network ID
eff_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Eff Date

begin
  # Get NetworkProfileNetwork
  result = api_instance.get_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->get_network_profile_network: #{e}"
end
```

#### Using the get_network_profile_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileNetworkVBAResponse>, Integer, Hash)> get_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date)

```ruby
begin
  # Get NetworkProfileNetwork
  data, status_code, headers = api_instance.get_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->get_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **network_id** | **String** | Network ID |  |
| **eff_date** | **Time** | Eff Date |  |

### Return type

[**NetworkProfileNetworkVBAResponse**](NetworkProfileNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_profile_network

> <NetworkProfileNetworkListVBAResponse> list_network_profile_network(vbasoftware_database, profile_id, opts)

List NetworkProfileNetwork

Lists all NetworkProfileNetwork for the given Profile_ID

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List NetworkProfileNetwork
  result = api_instance.list_network_profile_network(vbasoftware_database, profile_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->list_network_profile_network: #{e}"
end
```

#### Using the list_network_profile_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileNetworkListVBAResponse>, Integer, Hash)> list_network_profile_network_with_http_info(vbasoftware_database, profile_id, opts)

```ruby
begin
  # List NetworkProfileNetwork
  data, status_code, headers = api_instance.list_network_profile_network_with_http_info(vbasoftware_database, profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->list_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**NetworkProfileNetworkListVBAResponse**](NetworkProfileNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_profile_network

> <MultiCodeResponseListVBAResponse> update_batch_network_profile_network(vbasoftware_database, network_profile_network)

Create or Update Batch NetworkProfileNetwork

Create or Update multiple NetworkProfileNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile_network = [Vba::NetworkProfileNetwork.new({profile_id: 'profile_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false})] # Array<NetworkProfileNetwork> | 

begin
  # Create or Update Batch NetworkProfileNetwork
  result = api_instance.update_batch_network_profile_network(vbasoftware_database, network_profile_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->update_batch_network_profile_network: #{e}"
end
```

#### Using the update_batch_network_profile_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_profile_network_with_http_info(vbasoftware_database, network_profile_network)

```ruby
begin
  # Create or Update Batch NetworkProfileNetwork
  data, status_code, headers = api_instance.update_batch_network_profile_network_with_http_info(vbasoftware_database, network_profile_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->update_batch_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile_network** | [**Array&lt;NetworkProfileNetwork&gt;**](NetworkProfileNetwork.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_profile_network

> <NetworkProfileNetworkVBAResponse> update_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network)

Update NetworkProfileNetwork

Updates a specific NetworkProfileNetwork.

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

api_instance = Vba::NetworkProfileNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
network_id = 'network_id_example' # String | Network ID
eff_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Eff Date
network_profile_network = Vba::NetworkProfileNetwork.new({profile_id: 'profile_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false}) # NetworkProfileNetwork | 

begin
  # Update NetworkProfileNetwork
  result = api_instance.update_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->update_network_profile_network: #{e}"
end
```

#### Using the update_network_profile_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileNetworkVBAResponse>, Integer, Hash)> update_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network)

```ruby
begin
  # Update NetworkProfileNetwork
  data, status_code, headers = api_instance.update_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileNetworksApi->update_network_profile_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **network_id** | **String** | Network ID |  |
| **eff_date** | **Time** | Eff Date |  |
| **network_profile_network** | [**NetworkProfileNetwork**](NetworkProfileNetwork.md) |  |  |

### Return type

[**NetworkProfileNetworkVBAResponse**](NetworkProfileNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

