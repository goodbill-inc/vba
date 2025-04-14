# Vba::BillingCyclesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billing_cycle**](BillingCyclesApi.md#create_billing_cycle) | **POST** /billing-cycles | Create BillingCycle |
| [**delete_billing_cycle**](BillingCyclesApi.md#delete_billing_cycle) | **DELETE** /billing-cycles/{billingCycleID} | Delete BillingCycle |
| [**get_billing_cycle**](BillingCyclesApi.md#get_billing_cycle) | **GET** /billing-cycles/{billingCycleID} | Get BillingCycle |
| [**list_billing_cycle**](BillingCyclesApi.md#list_billing_cycle) | **GET** /billing-cycles | List BillingCycle |
| [**update_batch_billing_cycle**](BillingCyclesApi.md#update_batch_billing_cycle) | **PUT** /billing-cycles-batch | Create or Update Batch BillingCycle |
| [**update_billing_cycle**](BillingCyclesApi.md#update_billing_cycle) | **PUT** /billing-cycles/{billingCycleID} | Update BillingCycle |


## create_billing_cycle

> <BillingCycleVBAResponse> create_billing_cycle(vbasoftware_database, billing_cycle)

Create BillingCycle

Creates a new BillingCycle

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_cycle = Vba::BillingCycle.new({billing_cycle_id: 'billing_cycle_id_example', individual_billing: false}) # BillingCycle | 

begin
  # Create BillingCycle
  result = api_instance.create_billing_cycle(vbasoftware_database, billing_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->create_billing_cycle: #{e}"
end
```

#### Using the create_billing_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingCycleVBAResponse>, Integer, Hash)> create_billing_cycle_with_http_info(vbasoftware_database, billing_cycle)

```ruby
begin
  # Create BillingCycle
  data, status_code, headers = api_instance.create_billing_cycle_with_http_info(vbasoftware_database, billing_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->create_billing_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_cycle** | [**BillingCycle**](BillingCycle.md) |  |  |

### Return type

[**BillingCycleVBAResponse**](BillingCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_billing_cycle

> delete_billing_cycle(vbasoftware_database, billing_cycle_id)

Delete BillingCycle

Deletes an BillingCycle

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_cycle_id = 'billing_cycle_id_example' # String | Billing Cycle ID

begin
  # Delete BillingCycle
  api_instance.delete_billing_cycle(vbasoftware_database, billing_cycle_id)
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->delete_billing_cycle: #{e}"
end
```

#### Using the delete_billing_cycle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id)

```ruby
begin
  # Delete BillingCycle
  data, status_code, headers = api_instance.delete_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->delete_billing_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_cycle_id** | **String** | Billing Cycle ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_billing_cycle

> <BillingCycleVBAResponse> get_billing_cycle(vbasoftware_database, billing_cycle_id)

Get BillingCycle

Gets BillingCycle

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_cycle_id = 'billing_cycle_id_example' # String | Billing Cycle ID

begin
  # Get BillingCycle
  result = api_instance.get_billing_cycle(vbasoftware_database, billing_cycle_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->get_billing_cycle: #{e}"
end
```

#### Using the get_billing_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingCycleVBAResponse>, Integer, Hash)> get_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id)

```ruby
begin
  # Get BillingCycle
  data, status_code, headers = api_instance.get_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->get_billing_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_cycle_id** | **String** | Billing Cycle ID |  |

### Return type

[**BillingCycleVBAResponse**](BillingCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_billing_cycle

> <BillingCycleListVBAResponse> list_billing_cycle(vbasoftware_database, opts)

List BillingCycle

Lists all BillingCycle

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List BillingCycle
  result = api_instance.list_billing_cycle(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->list_billing_cycle: #{e}"
end
```

#### Using the list_billing_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingCycleListVBAResponse>, Integer, Hash)> list_billing_cycle_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List BillingCycle
  data, status_code, headers = api_instance.list_billing_cycle_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingCycleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->list_billing_cycle_with_http_info: #{e}"
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

[**BillingCycleListVBAResponse**](BillingCycleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_billing_cycle

> <MultiCodeResponseListVBAResponse> update_batch_billing_cycle(vbasoftware_database, billing_cycle)

Create or Update Batch BillingCycle

Create or Update multiple BillingCycle at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_cycle = [Vba::BillingCycle.new({billing_cycle_id: 'billing_cycle_id_example', individual_billing: false})] # Array<BillingCycle> | 

begin
  # Create or Update Batch BillingCycle
  result = api_instance.update_batch_billing_cycle(vbasoftware_database, billing_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->update_batch_billing_cycle: #{e}"
end
```

#### Using the update_batch_billing_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_billing_cycle_with_http_info(vbasoftware_database, billing_cycle)

```ruby
begin
  # Create or Update Batch BillingCycle
  data, status_code, headers = api_instance.update_batch_billing_cycle_with_http_info(vbasoftware_database, billing_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->update_batch_billing_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_cycle** | [**Array&lt;BillingCycle&gt;**](BillingCycle.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_billing_cycle

> <BillingCycleVBAResponse> update_billing_cycle(vbasoftware_database, billing_cycle_id, billing_cycle)

Update BillingCycle

Updates a specific BillingCycle.

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

api_instance = Vba::BillingCyclesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_cycle_id = 'billing_cycle_id_example' # String | Billing Cycle ID
billing_cycle = Vba::BillingCycle.new({billing_cycle_id: 'billing_cycle_id_example', individual_billing: false}) # BillingCycle | 

begin
  # Update BillingCycle
  result = api_instance.update_billing_cycle(vbasoftware_database, billing_cycle_id, billing_cycle)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->update_billing_cycle: #{e}"
end
```

#### Using the update_billing_cycle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingCycleVBAResponse>, Integer, Hash)> update_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, billing_cycle)

```ruby
begin
  # Update BillingCycle
  data, status_code, headers = api_instance.update_billing_cycle_with_http_info(vbasoftware_database, billing_cycle_id, billing_cycle)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingCycleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingCyclesApi->update_billing_cycle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_cycle_id** | **String** | Billing Cycle ID |  |
| **billing_cycle** | [**BillingCycle**](BillingCycle.md) |  |  |

### Return type

[**BillingCycleVBAResponse**](BillingCycleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

