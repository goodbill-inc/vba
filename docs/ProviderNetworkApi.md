# Vba::ProviderNetworkApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_network**](ProviderNetworkApi.md#create_provider_network) | **POST** /providers/{providerId}/networks/{networkId} | Create ProviderNetwork |
| [**delete_provider_network**](ProviderNetworkApi.md#delete_provider_network) | **DELETE** /providers/{providerId}/networks/{networkId}/effective-date/{effectiveDate} | Delete ProviderNetwork |
| [**get_provider_network**](ProviderNetworkApi.md#get_provider_network) | **GET** /providers/{providerId}/networks/{networkId}/effective-date/{effectiveDate} | Get ProviderNetwork |
| [**list_provider_networks_for_provider**](ProviderNetworkApi.md#list_provider_networks_for_provider) | **GET** /providers/{providerId}/networks | List ProviderNetworks by Provider |
| [**update_batch_provider_network**](ProviderNetworkApi.md#update_batch_provider_network) | **PUT** /providers/{providerId}/networks | Update Batch ProviderNetwork |
| [**update_provider_network**](ProviderNetworkApi.md#update_provider_network) | **PUT** /providers/{providerId}/networks/{networkId}/effective-date/{effectiveDate} | Update ProviderNetwork |


## create_provider_network

> <ProviderNetworkVBAResponse> create_provider_network(vbasoftware_database, provider_id, network_id, provider_network)

Create ProviderNetwork

Creates a new ProviderNetwork by assigning an existing Network to a Provider for a given Effective Date.

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
provider_network = Vba::ProviderNetwork.new({provider_id: 'provider_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false}) # ProviderNetwork | 

begin
  # Create ProviderNetwork
  result = api_instance.create_provider_network(vbasoftware_database, provider_id, network_id, provider_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->create_provider_network: #{e}"
end
```

#### Using the create_provider_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkVBAResponse>, Integer, Hash)> create_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, provider_network)

```ruby
begin
  # Create ProviderNetwork
  data, status_code, headers = api_instance.create_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, provider_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->create_provider_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **provider_network** | [**ProviderNetwork**](ProviderNetwork.md) |  |  |

### Return type

[**ProviderNetworkVBAResponse**](ProviderNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_network

> delete_provider_network(vbasoftware_database, provider_id, network_id, effective_date)

Delete ProviderNetwork

Deletes an ProviderNetwork

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
effective_date = Date.parse('2013-10-20') # Date | Effective Date

begin
  # Delete ProviderNetwork
  api_instance.delete_provider_network(vbasoftware_database, provider_id, network_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->delete_provider_network: #{e}"
end
```

#### Using the delete_provider_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date)

```ruby
begin
  # Delete ProviderNetwork
  data, status_code, headers = api_instance.delete_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->delete_provider_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **effective_date** | **Date** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_network

> <ProviderNetworkVBAResponse> get_provider_network(vbasoftware_database, provider_id, network_id, effective_date)

Get ProviderNetwork

Gets ProviderNetwork

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
effective_date = Date.parse('2013-10-20') # Date | Effective Date

begin
  # Get ProviderNetwork
  result = api_instance.get_provider_network(vbasoftware_database, provider_id, network_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->get_provider_network: #{e}"
end
```

#### Using the get_provider_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkVBAResponse>, Integer, Hash)> get_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date)

```ruby
begin
  # Get ProviderNetwork
  data, status_code, headers = api_instance.get_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->get_provider_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **effective_date** | **Date** | Effective Date |  |

### Return type

[**ProviderNetworkVBAResponse**](ProviderNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_networks_for_provider

> <ProviderNetworkListVBAResponse> list_provider_networks_for_provider(vbasoftware_database, provider_id)

List ProviderNetworks by Provider

Gets a List of ProviderNetworks for a given Provider ID

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderNetworks by Provider
  result = api_instance.list_provider_networks_for_provider(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->list_provider_networks_for_provider: #{e}"
end
```

#### Using the list_provider_networks_for_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkListVBAResponse>, Integer, Hash)> list_provider_networks_for_provider_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderNetworks by Provider
  data, status_code, headers = api_instance.list_provider_networks_for_provider_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->list_provider_networks_for_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderNetworkListVBAResponse**](ProviderNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_network

> <MultiCodeResponseListVBAResponse> update_batch_provider_network(vbasoftware_database, provider_id, provider_network)

Update Batch ProviderNetwork

Updates a multiple ProviderNetwork.

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_network = [Vba::ProviderNetwork.new({provider_id: 'provider_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false})] # Array<ProviderNetwork> | 

begin
  # Update Batch ProviderNetwork
  result = api_instance.update_batch_provider_network(vbasoftware_database, provider_id, provider_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->update_batch_provider_network: #{e}"
end
```

#### Using the update_batch_provider_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_network_with_http_info(vbasoftware_database, provider_id, provider_network)

```ruby
begin
  # Update Batch ProviderNetwork
  data, status_code, headers = api_instance.update_batch_provider_network_with_http_info(vbasoftware_database, provider_id, provider_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->update_batch_provider_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_network** | [**Array&lt;ProviderNetwork&gt;**](ProviderNetwork.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_network

> <ProviderNetworkVBAResponse> update_provider_network(vbasoftware_database, provider_id, network_id, effective_date, provider_network)

Update ProviderNetwork

Updates a specific ProviderNetwork. Note: The Provider ID, Network ID and Effective Date cannot be changed.

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

api_instance = Vba::ProviderNetworkApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
effective_date = Date.parse('2013-10-20') # Date | Effective Date
provider_network = Vba::ProviderNetwork.new({provider_id: 'provider_id_example', network_id: 'network_id_example', eff_date: Time.now, use_no_proc_in_fee: false}) # ProviderNetwork | 

begin
  # Update ProviderNetwork
  result = api_instance.update_provider_network(vbasoftware_database, provider_id, network_id, effective_date, provider_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->update_provider_network: #{e}"
end
```

#### Using the update_provider_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkVBAResponse>, Integer, Hash)> update_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date, provider_network)

```ruby
begin
  # Update ProviderNetwork
  data, status_code, headers = api_instance.update_provider_network_with_http_info(vbasoftware_database, provider_id, network_id, effective_date, provider_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkApi->update_provider_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **effective_date** | **Date** | Effective Date |  |
| **provider_network** | [**ProviderNetwork**](ProviderNetwork.md) |  |  |

### Return type

[**ProviderNetworkVBAResponse**](ProviderNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

