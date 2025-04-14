# Vba::Context4HealthCostContainmentOptionPricingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#create_cost_contain_context4_option_pricing) | **POST** /context4health-cost-containment-option-pricing | Create CostContainContext4OptionPricing |
| [**delete_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#delete_cost_contain_context4_option_pricing) | **DELETE** /context4health-cost-containment-option-pricing/{optionKey} | Delete CostContainContext4OptionPricing |
| [**get_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#get_cost_contain_context4_option_pricing) | **GET** /context4health-cost-containment-option-pricing/{optionKey} | Get CostContainContext4OptionPricing |
| [**list_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#list_cost_contain_context4_option_pricing) | **GET** /context4health-cost-containment-option-pricing | List CostContainContext4OptionPricing |
| [**update_batch_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#update_batch_cost_contain_context4_option_pricing) | **PUT** /context4health-cost-containment-option-pricing-batch | Create or Update Batch CostContainContext4OptionPricing |
| [**update_cost_contain_context4_option_pricing**](Context4HealthCostContainmentOptionPricingApi.md#update_cost_contain_context4_option_pricing) | **PUT** /context4health-cost-containment-option-pricing/{optionKey} | Update CostContainContext4OptionPricing |


## create_cost_contain_context4_option_pricing

> <CostContainContext4OptionPricingVBAResponse> create_cost_contain_context4_option_pricing(vbasoftware_database, cost_contain_context4_option_pricing)

Create CostContainContext4OptionPricing

Creates a new CostContainContext4OptionPricing

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_option_pricing = Vba::CostContainContext4OptionPricing.new({option_key: 37, plan_id: 'plan_id_example'}) # CostContainContext4OptionPricing | 

begin
  # Create CostContainContext4OptionPricing
  result = api_instance.create_cost_contain_context4_option_pricing(vbasoftware_database, cost_contain_context4_option_pricing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->create_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the create_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionPricingVBAResponse>, Integer, Hash)> create_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, cost_contain_context4_option_pricing)

```ruby
begin
  # Create CostContainContext4OptionPricing
  data, status_code, headers = api_instance.create_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, cost_contain_context4_option_pricing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionPricingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->create_cost_contain_context4_option_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_option_pricing** | [**CostContainContext4OptionPricing**](CostContainContext4OptionPricing.md) |  |  |

### Return type

[**CostContainContext4OptionPricingVBAResponse**](CostContainContext4OptionPricingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_option_pricing

> delete_cost_contain_context4_option_pricing(vbasoftware_database, option_key)

Delete CostContainContext4OptionPricing

Deletes an CostContainContext4OptionPricing

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key

begin
  # Delete CostContainContext4OptionPricing
  api_instance.delete_cost_contain_context4_option_pricing(vbasoftware_database, option_key)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->delete_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the delete_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key)

```ruby
begin
  # Delete CostContainContext4OptionPricing
  data, status_code, headers = api_instance.delete_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->delete_cost_contain_context4_option_pricing_with_http_info: #{e}"
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


## get_cost_contain_context4_option_pricing

> <CostContainContext4OptionPricingVBAResponse> get_cost_contain_context4_option_pricing(vbasoftware_database, option_key)

Get CostContainContext4OptionPricing

Gets CostContainContext4OptionPricing

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key

begin
  # Get CostContainContext4OptionPricing
  result = api_instance.get_cost_contain_context4_option_pricing(vbasoftware_database, option_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->get_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the get_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionPricingVBAResponse>, Integer, Hash)> get_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key)

```ruby
begin
  # Get CostContainContext4OptionPricing
  data, status_code, headers = api_instance.get_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionPricingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->get_cost_contain_context4_option_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **option_key** | **Integer** | Option Key |  |

### Return type

[**CostContainContext4OptionPricingVBAResponse**](CostContainContext4OptionPricingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_option_pricing

> <CostContainContext4OptionPricingListVBAResponse> list_cost_contain_context4_option_pricing(vbasoftware_database, opts)

List CostContainContext4OptionPricing

Lists all CostContainContext4OptionPricing

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  plan_id: 'plan_id_example', # String | Plan ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4OptionPricing
  result = api_instance.list_cost_contain_context4_option_pricing(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->list_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the list_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionPricingListVBAResponse>, Integer, Hash)> list_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4OptionPricing
  data, status_code, headers = api_instance.list_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionPricingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->list_cost_contain_context4_option_pricing_with_http_info: #{e}"
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

[**CostContainContext4OptionPricingListVBAResponse**](CostContainContext4OptionPricingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_option_pricing

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_option_pricing(vbasoftware_database, cost_contain_context4_option_pricing)

Create or Update Batch CostContainContext4OptionPricing

Create or Update multiple CostContainContext4OptionPricing at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_option_pricing = [Vba::CostContainContext4OptionPricing.new({option_key: 37, plan_id: 'plan_id_example'})] # Array<CostContainContext4OptionPricing> | 

begin
  # Create or Update Batch CostContainContext4OptionPricing
  result = api_instance.update_batch_cost_contain_context4_option_pricing(vbasoftware_database, cost_contain_context4_option_pricing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->update_batch_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, cost_contain_context4_option_pricing)

```ruby
begin
  # Create or Update Batch CostContainContext4OptionPricing
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, cost_contain_context4_option_pricing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->update_batch_cost_contain_context4_option_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_option_pricing** | [**Array&lt;CostContainContext4OptionPricing&gt;**](CostContainContext4OptionPricing.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_option_pricing

> <CostContainContext4OptionPricingVBAResponse> update_cost_contain_context4_option_pricing(vbasoftware_database, option_key, cost_contain_context4_option_pricing)

Update CostContainContext4OptionPricing

Updates a specific CostContainContext4OptionPricing.

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

api_instance = Vba::Context4HealthCostContainmentOptionPricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
option_key = 56 # Integer | Option Key
cost_contain_context4_option_pricing = Vba::CostContainContext4OptionPricing.new({option_key: 37, plan_id: 'plan_id_example'}) # CostContainContext4OptionPricing | 

begin
  # Update CostContainContext4OptionPricing
  result = api_instance.update_cost_contain_context4_option_pricing(vbasoftware_database, option_key, cost_contain_context4_option_pricing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->update_cost_contain_context4_option_pricing: #{e}"
end
```

#### Using the update_cost_contain_context4_option_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4OptionPricingVBAResponse>, Integer, Hash)> update_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key, cost_contain_context4_option_pricing)

```ruby
begin
  # Update CostContainContext4OptionPricing
  data, status_code, headers = api_instance.update_cost_contain_context4_option_pricing_with_http_info(vbasoftware_database, option_key, cost_contain_context4_option_pricing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4OptionPricingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentOptionPricingApi->update_cost_contain_context4_option_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **option_key** | **Integer** | Option Key |  |
| **cost_contain_context4_option_pricing** | [**CostContainContext4OptionPricing**](CostContainContext4OptionPricing.md) |  |  |

### Return type

[**CostContainContext4OptionPricingVBAResponse**](CostContainContext4OptionPricingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

