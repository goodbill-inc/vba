# Vba::CommissionCyclesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_cycle**](CommissionCyclesApi.md#create_commission_cycle) | **POST** /commission-cycles | Create CommissionCycle |
| [**delete_commission_cycle**](CommissionCyclesApi.md#delete_commission_cycle) | **DELETE** /commission-cycles/{commCycle} | Delete CommissionCycle |
| [**get_commission_cycle**](CommissionCyclesApi.md#get_commission_cycle) | **GET** /commission-cycles/{commCycle} | Get CommissionCycle |
| [**list_commission_cycle**](CommissionCyclesApi.md#list_commission_cycle) | **GET** /commission-cycles | List CommissionCycle |
| [**update_batch_commission_cycle**](CommissionCyclesApi.md#update_batch_commission_cycle) | **PUT** /commission-cycles-batch | Create or Update Batch CommissionCycle |
| [**update_commission_cycle**](CommissionCyclesApi.md#update_commission_cycle) | **PUT** /commission-cycles/{commCycle} | Update CommissionCycle |


## create_commission_cycle

> <CommissionCycleVBAResponse> create_commission_cycle(vbasoftware_database, commission_cycle)

Create CommissionCycle

Creates a new CommissionCycle

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_cycle = Vba::CommissionCycle.new({commission_cycle: 'commission_cycle_example'}) # CommissionCycle | 

begin
  # Create CommissionCycle
  result = api_instance.create_commission_cycle(vbasoftware_database, commission_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->create_commission_cycle: #{e}"
end
```

#### Using the create_commission_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCycleVBAResponse>, Integer, Hash)> create_commission_cycle_with_http_info(vbasoftware_database, commission_cycle)

```ruby
begin
  # Create CommissionCycle
  data, status_code, headers = api_instance.create_commission_cycle_with_http_info(vbasoftware_database, commission_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->create_commission_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_cycle** | [**CommissionCycle**](CommissionCycle.md) |  |  |

### Return type

[**CommissionCycleVBAResponse**](CommissionCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_cycle

> delete_commission_cycle(vbasoftware_database, comm_cycle)

Delete CommissionCycle

Deletes an CommissionCycle

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_cycle = 'comm_cycle_example' # String | Commission Cycle

begin
  # Delete CommissionCycle
  api_instance.delete_commission_cycle(vbasoftware_database, comm_cycle)
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->delete_commission_cycle: #{e}"
end
```

#### Using the delete_commission_cycle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_cycle_with_http_info(vbasoftware_database, comm_cycle)

```ruby
begin
  # Delete CommissionCycle
  data, status_code, headers = api_instance.delete_commission_cycle_with_http_info(vbasoftware_database, comm_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->delete_commission_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_cycle** | **String** | Commission Cycle |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_cycle

> <CommissionCycleVBAResponse> get_commission_cycle(vbasoftware_database, comm_cycle)

Get CommissionCycle

Gets CommissionCycle

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_cycle = 'comm_cycle_example' # String | Commission Cycle

begin
  # Get CommissionCycle
  result = api_instance.get_commission_cycle(vbasoftware_database, comm_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->get_commission_cycle: #{e}"
end
```

#### Using the get_commission_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCycleVBAResponse>, Integer, Hash)> get_commission_cycle_with_http_info(vbasoftware_database, comm_cycle)

```ruby
begin
  # Get CommissionCycle
  data, status_code, headers = api_instance.get_commission_cycle_with_http_info(vbasoftware_database, comm_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->get_commission_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_cycle** | **String** | Commission Cycle |  |

### Return type

[**CommissionCycleVBAResponse**](CommissionCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_cycle

> <CommissionCycleListVBAResponse> list_commission_cycle(vbasoftware_database, opts)

List CommissionCycle

Lists all CommissionCycle

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionCycle
  result = api_instance.list_commission_cycle(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->list_commission_cycle: #{e}"
end
```

#### Using the list_commission_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCycleListVBAResponse>, Integer, Hash)> list_commission_cycle_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionCycle
  data, status_code, headers = api_instance.list_commission_cycle_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCycleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->list_commission_cycle_with_http_info: #{e}"
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

[**CommissionCycleListVBAResponse**](CommissionCycleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_cycle

> <MultiCodeResponseListVBAResponse> update_batch_commission_cycle(vbasoftware_database, commission_cycle)

Create or Update Batch CommissionCycle

Create or Update multiple CommissionCycle at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_cycle = [Vba::CommissionCycle.new({commission_cycle: 'commission_cycle_example'})] # Array<CommissionCycle> | 

begin
  # Create or Update Batch CommissionCycle
  result = api_instance.update_batch_commission_cycle(vbasoftware_database, commission_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->update_batch_commission_cycle: #{e}"
end
```

#### Using the update_batch_commission_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_cycle_with_http_info(vbasoftware_database, commission_cycle)

```ruby
begin
  # Create or Update Batch CommissionCycle
  data, status_code, headers = api_instance.update_batch_commission_cycle_with_http_info(vbasoftware_database, commission_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->update_batch_commission_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_cycle** | [**Array&lt;CommissionCycle&gt;**](CommissionCycle.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_cycle

> <CommissionCycleVBAResponse> update_commission_cycle(vbasoftware_database, comm_cycle, commission_cycle)

Update CommissionCycle

Updates a specific CommissionCycle.

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

api_instance = Vba::CommissionCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_cycle = 'comm_cycle_example' # String | Commission Cycle
commission_cycle = Vba::CommissionCycle.new({commission_cycle: 'commission_cycle_example'}) # CommissionCycle | 

begin
  # Update CommissionCycle
  result = api_instance.update_commission_cycle(vbasoftware_database, comm_cycle, commission_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->update_commission_cycle: #{e}"
end
```

#### Using the update_commission_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCycleVBAResponse>, Integer, Hash)> update_commission_cycle_with_http_info(vbasoftware_database, comm_cycle, commission_cycle)

```ruby
begin
  # Update CommissionCycle
  data, status_code, headers = api_instance.update_commission_cycle_with_http_info(vbasoftware_database, comm_cycle, commission_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCyclesApi->update_commission_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_cycle** | **String** | Commission Cycle |  |
| **commission_cycle** | [**CommissionCycle**](CommissionCycle.md) |  |  |

### Return type

[**CommissionCycleVBAResponse**](CommissionCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

