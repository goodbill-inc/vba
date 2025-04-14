# Vba::Context4HealthCostContainmentOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#create_cost_contain_context4_option) | **POST** /context4health-cost-containment-options | Create CostContainContext4Option |
| [**delete_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#delete_cost_contain_context4_option) | **DELETE** /context4health-cost-containment-options/{optionKey} | Delete CostContainContext4Option |
| [**get_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#get_cost_contain_context4_option) | **GET** /context4health-cost-containment-options/{optionKey} | Get CostContainContext4Option |
| [**list_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#list_cost_contain_context4_option) | **GET** /context4health-cost-containment-options | List CostContainContext4Option |
| [**update_batch_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#update_batch_cost_contain_context4_option) | **PUT** /context4health-cost-containment-options-batch | Create or Update Batch CostContainContext4Option |
| [**update_cost_contain_context4_option**](Context4HealthCostContainmentOptionsApi.md#update_cost_contain_context4_option) | **PUT** /context4health-cost-containment-options/{optionKey} | Update CostContainContext4Option |


## create_cost_contain_context4_option

> <CostContainContext4OptionVBAResponse> create_cost_contain_context4_option(vbasoftware_database, cost_contain_context4_option)

Create CostContainContext4Option

Creates a new CostContainContext4Option

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_option = Vba::CostContainContext4Option.new({option_key: 37, context_option: 'context_option_example', exclude: false, from_value: 'from_value_example', plan_id: 'plan_id_example'}) # CostContainContext4Option | 

begin
  # Create CostContainContext4Option
  result = api_instance.create_cost_contain_context4_option(vbasoftware_database, cost_contain_context4_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->create_cost_contain_context4_option: #{e}"
end
```

#### Using the create_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionVBAResponse>, Integer, Hash)> create_cost_contain_context4_option_with_http_info(vbasoftware_database, cost_contain_context4_option)

```ruby
begin
  # Create CostContainContext4Option
  data, status_code, headers = api_instance.create_cost_contain_context4_option_with_http_info(vbasoftware_database, cost_contain_context4_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->create_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_option** | [**CostContainContext4Option**](CostContainContext4Option.md) |  |  |

### Return type

[**CostContainContext4OptionVBAResponse**](CostContainContext4OptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_option

> delete_cost_contain_context4_option(vbasoftware_database, option_key)

Delete CostContainContext4Option

Deletes an CostContainContext4Option

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key

begin
  # Delete CostContainContext4Option
  api_instance.delete_cost_contain_context4_option(vbasoftware_database, option_key)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->delete_cost_contain_context4_option: #{e}"
end
```

#### Using the delete_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key)

```ruby
begin
  # Delete CostContainContext4Option
  data, status_code, headers = api_instance.delete_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->delete_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **option_key** | **Integer** | Option Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_option

> <CostContainContext4OptionVBAResponse> get_cost_contain_context4_option(vbasoftware_database, option_key)

Get CostContainContext4Option

Gets CostContainContext4Option

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key

begin
  # Get CostContainContext4Option
  result = api_instance.get_cost_contain_context4_option(vbasoftware_database, option_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->get_cost_contain_context4_option: #{e}"
end
```

#### Using the get_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionVBAResponse>, Integer, Hash)> get_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key)

```ruby
begin
  # Get CostContainContext4Option
  data, status_code, headers = api_instance.get_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->get_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **option_key** | **Integer** | Option Key |  |

### Return type

[**CostContainContext4OptionVBAResponse**](CostContainContext4OptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_option

> <CostContainContext4OptionListVBAResponse> list_cost_contain_context4_option(vbasoftware_database, opts)

List CostContainContext4Option

Lists all CostContainContext4Option

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  plan_id: 'plan_id_example', # String | Plan ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4Option
  result = api_instance.list_cost_contain_context4_option(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->list_cost_contain_context4_option: #{e}"
end
```

#### Using the list_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionListVBAResponse>, Integer, Hash)> list_cost_contain_context4_option_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4Option
  data, status_code, headers = api_instance.list_cost_contain_context4_option_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->list_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CostContainContext4OptionListVBAResponse**](CostContainContext4OptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_option

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_option(vbasoftware_database, cost_contain_context4_option)

Create or Update Batch CostContainContext4Option

Create or Update multiple CostContainContext4Option at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_option = [Vba::CostContainContext4Option.new({option_key: 37, context_option: 'context_option_example', exclude: false, from_value: 'from_value_example', plan_id: 'plan_id_example'})] # Array<CostContainContext4Option> | 

begin
  # Create or Update Batch CostContainContext4Option
  result = api_instance.update_batch_cost_contain_context4_option(vbasoftware_database, cost_contain_context4_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->update_batch_cost_contain_context4_option: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_option_with_http_info(vbasoftware_database, cost_contain_context4_option)

```ruby
begin
  # Create or Update Batch CostContainContext4Option
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_option_with_http_info(vbasoftware_database, cost_contain_context4_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->update_batch_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_option** | [**Array&lt;CostContainContext4Option&gt;**](CostContainContext4Option.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_option

> <CostContainContext4OptionVBAResponse> update_cost_contain_context4_option(vbasoftware_database, option_key, cost_contain_context4_option)

Update CostContainContext4Option

Updates a specific CostContainContext4Option.

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

api_instance = Vba::Context4HealthCostContainmentOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key
cost_contain_context4_option = Vba::CostContainContext4Option.new({option_key: 37, context_option: 'context_option_example', exclude: false, from_value: 'from_value_example', plan_id: 'plan_id_example'}) # CostContainContext4Option | 

begin
  # Update CostContainContext4Option
  result = api_instance.update_cost_contain_context4_option(vbasoftware_database, option_key, cost_contain_context4_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->update_cost_contain_context4_option: #{e}"
end
```

#### Using the update_cost_contain_context4_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionVBAResponse>, Integer, Hash)> update_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key, cost_contain_context4_option)

```ruby
begin
  # Update CostContainContext4Option
  data, status_code, headers = api_instance.update_cost_contain_context4_option_with_http_info(vbasoftware_database, option_key, cost_contain_context4_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionsApi->update_cost_contain_context4_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **option_key** | **Integer** | Option Key |  |
| **cost_contain_context4_option** | [**CostContainContext4Option**](CostContainContext4Option.md) |  |  |

### Return type

[**CostContainContext4OptionVBAResponse**](CostContainContext4OptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

