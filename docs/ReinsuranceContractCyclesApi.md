# Vba::ReinsuranceContractCyclesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#create_reins_contract_cycle) | **POST** /reinsurance-contract-cycles | Create ReinsContractCycle |
| [**delete_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#delete_reins_contract_cycle) | **DELETE** /reinsurance-contract-cycles/{contractCycle} | Delete ReinsContractCycle |
| [**get_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#get_reins_contract_cycle) | **GET** /reinsurance-contract-cycles/{contractCycle} | Get ReinsContractCycle |
| [**list_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#list_reins_contract_cycle) | **GET** /reinsurance-contract-cycles | List ReinsContractCycle |
| [**update_batch_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#update_batch_reins_contract_cycle) | **PUT** /reinsurance-contract-cycles-batch | Create or Update Batch ReinsContractCycle |
| [**update_reins_contract_cycle**](ReinsuranceContractCyclesApi.md#update_reins_contract_cycle) | **PUT** /reinsurance-contract-cycles/{contractCycle} | Update ReinsContractCycle |


## create_reins_contract_cycle

> <ReinsContractCycleVBAResponse> create_reins_contract_cycle(vbasoftware_database, reins_contract_cycle)

Create ReinsContractCycle

Creates a new ReinsContractCycle

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_cycle = Vba::ReinsContractCycle.new({contract_cycle: 'contract_cycle_example'}) # ReinsContractCycle | 

begin
  # Create ReinsContractCycle
  result = api_instance.create_reins_contract_cycle(vbasoftware_database, reins_contract_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->create_reins_contract_cycle: #{e}"
end
```

#### Using the create_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCycleVBAResponse>, Integer, Hash)> create_reins_contract_cycle_with_http_info(vbasoftware_database, reins_contract_cycle)

```ruby
begin
  # Create ReinsContractCycle
  data, status_code, headers = api_instance.create_reins_contract_cycle_with_http_info(vbasoftware_database, reins_contract_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->create_reins_contract_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_cycle** | [**ReinsContractCycle**](ReinsContractCycle.md) |  |  |

### Return type

[**ReinsContractCycleVBAResponse**](ReinsContractCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_cycle

> delete_reins_contract_cycle(vbasoftware_database, contract_cycle)

Delete ReinsContractCycle

Deletes an ReinsContractCycle

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_cycle = 'contract_cycle_example' # String | Contract Cycle

begin
  # Delete ReinsContractCycle
  api_instance.delete_reins_contract_cycle(vbasoftware_database, contract_cycle)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->delete_reins_contract_cycle: #{e}"
end
```

#### Using the delete_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle)

```ruby
begin
  # Delete ReinsContractCycle
  data, status_code, headers = api_instance.delete_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->delete_reins_contract_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_cycle** | **String** | Contract Cycle |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_cycle

> <ReinsContractCycleVBAResponse> get_reins_contract_cycle(vbasoftware_database, contract_cycle)

Get ReinsContractCycle

Gets ReinsContractCycle

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_cycle = 'contract_cycle_example' # String | Contract Cycle

begin
  # Get ReinsContractCycle
  result = api_instance.get_reins_contract_cycle(vbasoftware_database, contract_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->get_reins_contract_cycle: #{e}"
end
```

#### Using the get_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCycleVBAResponse>, Integer, Hash)> get_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle)

```ruby
begin
  # Get ReinsContractCycle
  data, status_code, headers = api_instance.get_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->get_reins_contract_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_cycle** | **String** | Contract Cycle |  |

### Return type

[**ReinsContractCycleVBAResponse**](ReinsContractCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_cycle

> <ReinsContractCycleListVBAResponse> list_reins_contract_cycle(vbasoftware_database, opts)

List ReinsContractCycle

Lists all ReinsContractCycle

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractCycle
  result = api_instance.list_reins_contract_cycle(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->list_reins_contract_cycle: #{e}"
end
```

#### Using the list_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCycleListVBAResponse>, Integer, Hash)> list_reins_contract_cycle_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContractCycle
  data, status_code, headers = api_instance.list_reins_contract_cycle_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCycleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->list_reins_contract_cycle_with_http_info: #{e}"
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

[**ReinsContractCycleListVBAResponse**](ReinsContractCycleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_cycle

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_cycle(vbasoftware_database, reins_contract_cycle)

Create or Update Batch ReinsContractCycle

Create or Update multiple ReinsContractCycle at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_cycle = [Vba::ReinsContractCycle.new({contract_cycle: 'contract_cycle_example'})] # Array<ReinsContractCycle> | 

begin
  # Create or Update Batch ReinsContractCycle
  result = api_instance.update_batch_reins_contract_cycle(vbasoftware_database, reins_contract_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->update_batch_reins_contract_cycle: #{e}"
end
```

#### Using the update_batch_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_cycle_with_http_info(vbasoftware_database, reins_contract_cycle)

```ruby
begin
  # Create or Update Batch ReinsContractCycle
  data, status_code, headers = api_instance.update_batch_reins_contract_cycle_with_http_info(vbasoftware_database, reins_contract_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->update_batch_reins_contract_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_cycle** | [**Array&lt;ReinsContractCycle&gt;**](ReinsContractCycle.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_cycle

> <ReinsContractCycleVBAResponse> update_reins_contract_cycle(vbasoftware_database, contract_cycle, reins_contract_cycle)

Update ReinsContractCycle

Updates a specific ReinsContractCycle.

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

api_instance = Vba::ReinsuranceContractCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_cycle = 'contract_cycle_example' # String | Contract Cycle
reins_contract_cycle = Vba::ReinsContractCycle.new({contract_cycle: 'contract_cycle_example'}) # ReinsContractCycle | 

begin
  # Update ReinsContractCycle
  result = api_instance.update_reins_contract_cycle(vbasoftware_database, contract_cycle, reins_contract_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->update_reins_contract_cycle: #{e}"
end
```

#### Using the update_reins_contract_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCycleVBAResponse>, Integer, Hash)> update_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle, reins_contract_cycle)

```ruby
begin
  # Update ReinsContractCycle
  data, status_code, headers = api_instance.update_reins_contract_cycle_with_http_info(vbasoftware_database, contract_cycle, reins_contract_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCyclesApi->update_reins_contract_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_cycle** | **String** | Contract Cycle |  |
| **reins_contract_cycle** | [**ReinsContractCycle**](ReinsContractCycle.md) |  |  |

### Return type

[**ReinsContractCycleVBAResponse**](ReinsContractCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

