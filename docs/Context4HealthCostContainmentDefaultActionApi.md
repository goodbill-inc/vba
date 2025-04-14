# Vba::Context4HealthCostContainmentDefaultActionApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#create_cost_contain_context4_default_action) | **POST** /context4health-cost-containment-default-actions | Create CostContainContext4DefaultAction |
| [**delete_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#delete_cost_contain_context4_default_action) | **DELETE** /context4health-cost-containment-default-actions/{defaultAction} | Delete CostContainContext4DefaultAction |
| [**get_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#get_cost_contain_context4_default_action) | **GET** /context4health-cost-containment-default-actions/{defaultAction} | Get CostContainContext4DefaultAction |
| [**list_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#list_cost_contain_context4_default_action) | **GET** /context4health-cost-containment-default-actions | List CostContainContext4DefaultAction |
| [**update_batch_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#update_batch_cost_contain_context4_default_action) | **PUT** /context4health-cost-containment-default-actions-batch | Create or Update Batch CostContainContext4DefaultAction |
| [**update_cost_contain_context4_default_action**](Context4HealthCostContainmentDefaultActionApi.md#update_cost_contain_context4_default_action) | **PUT** /context4health-cost-containment-default-actions/{defaultAction} | Update CostContainContext4DefaultAction |


## create_cost_contain_context4_default_action

> <CostContainContext4DefaultActionVBAResponse> create_cost_contain_context4_default_action(vbasoftware_database, cost_contain_context4_default_action)

Create CostContainContext4DefaultAction

Creates a new CostContainContext4DefaultAction

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_default_action = Vba::CostContainContext4DefaultAction.new({default_action: 'default_action_example'}) # CostContainContext4DefaultAction | 

begin
  # Create CostContainContext4DefaultAction
  result = api_instance.create_cost_contain_context4_default_action(vbasoftware_database, cost_contain_context4_default_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->create_cost_contain_context4_default_action: #{e}"
end
```

#### Using the create_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4DefaultActionVBAResponse>, Integer, Hash)> create_cost_contain_context4_default_action_with_http_info(vbasoftware_database, cost_contain_context4_default_action)

```ruby
begin
  # Create CostContainContext4DefaultAction
  data, status_code, headers = api_instance.create_cost_contain_context4_default_action_with_http_info(vbasoftware_database, cost_contain_context4_default_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4DefaultActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->create_cost_contain_context4_default_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_default_action** | [**CostContainContext4DefaultAction**](CostContainContext4DefaultAction.md) |  |  |

### Return type

[**CostContainContext4DefaultActionVBAResponse**](CostContainContext4DefaultActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_default_action

> delete_cost_contain_context4_default_action(vbasoftware_database, default_action)

Delete CostContainContext4DefaultAction

Deletes an CostContainContext4DefaultAction

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
default_action = 'default_action_example' # String | DefaultAction

begin
  # Delete CostContainContext4DefaultAction
  api_instance.delete_cost_contain_context4_default_action(vbasoftware_database, default_action)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->delete_cost_contain_context4_default_action: #{e}"
end
```

#### Using the delete_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action)

```ruby
begin
  # Delete CostContainContext4DefaultAction
  data, status_code, headers = api_instance.delete_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->delete_cost_contain_context4_default_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **default_action** | **String** | DefaultAction |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_default_action

> <CostContainContext4DefaultActionVBAResponse> get_cost_contain_context4_default_action(vbasoftware_database, default_action)

Get CostContainContext4DefaultAction

Gets CostContainContext4DefaultAction

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
default_action = 'default_action_example' # String | DefaultAction

begin
  # Get CostContainContext4DefaultAction
  result = api_instance.get_cost_contain_context4_default_action(vbasoftware_database, default_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->get_cost_contain_context4_default_action: #{e}"
end
```

#### Using the get_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4DefaultActionVBAResponse>, Integer, Hash)> get_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action)

```ruby
begin
  # Get CostContainContext4DefaultAction
  data, status_code, headers = api_instance.get_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4DefaultActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->get_cost_contain_context4_default_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **default_action** | **String** | DefaultAction |  |

### Return type

[**CostContainContext4DefaultActionVBAResponse**](CostContainContext4DefaultActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_default_action

> <CostContainContext4DefaultActionListVBAResponse> list_cost_contain_context4_default_action(vbasoftware_database, opts)

List CostContainContext4DefaultAction

Lists all CostContainContext4DefaultAction

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4DefaultAction
  result = api_instance.list_cost_contain_context4_default_action(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->list_cost_contain_context4_default_action: #{e}"
end
```

#### Using the list_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4DefaultActionListVBAResponse>, Integer, Hash)> list_cost_contain_context4_default_action_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4DefaultAction
  data, status_code, headers = api_instance.list_cost_contain_context4_default_action_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4DefaultActionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->list_cost_contain_context4_default_action_with_http_info: #{e}"
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

[**CostContainContext4DefaultActionListVBAResponse**](CostContainContext4DefaultActionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_default_action

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_default_action(vbasoftware_database, cost_contain_context4_default_action)

Create or Update Batch CostContainContext4DefaultAction

Create or Update multiple CostContainContext4DefaultAction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_default_action = [Vba::CostContainContext4DefaultAction.new({default_action: 'default_action_example'})] # Array<CostContainContext4DefaultAction> | 

begin
  # Create or Update Batch CostContainContext4DefaultAction
  result = api_instance.update_batch_cost_contain_context4_default_action(vbasoftware_database, cost_contain_context4_default_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->update_batch_cost_contain_context4_default_action: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_default_action_with_http_info(vbasoftware_database, cost_contain_context4_default_action)

```ruby
begin
  # Create or Update Batch CostContainContext4DefaultAction
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_default_action_with_http_info(vbasoftware_database, cost_contain_context4_default_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->update_batch_cost_contain_context4_default_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_default_action** | [**Array&lt;CostContainContext4DefaultAction&gt;**](CostContainContext4DefaultAction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_default_action

> <CostContainContext4DefaultActionVBAResponse> update_cost_contain_context4_default_action(vbasoftware_database, default_action, cost_contain_context4_default_action)

Update CostContainContext4DefaultAction

Updates a specific CostContainContext4DefaultAction.

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

api_instance = Vba::Context4HealthCostContainmentDefaultActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
default_action = 'default_action_example' # String | DefaultAction
cost_contain_context4_default_action = Vba::CostContainContext4DefaultAction.new({default_action: 'default_action_example'}) # CostContainContext4DefaultAction | 

begin
  # Update CostContainContext4DefaultAction
  result = api_instance.update_cost_contain_context4_default_action(vbasoftware_database, default_action, cost_contain_context4_default_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->update_cost_contain_context4_default_action: #{e}"
end
```

#### Using the update_cost_contain_context4_default_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4DefaultActionVBAResponse>, Integer, Hash)> update_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action, cost_contain_context4_default_action)

```ruby
begin
  # Update CostContainContext4DefaultAction
  data, status_code, headers = api_instance.update_cost_contain_context4_default_action_with_http_info(vbasoftware_database, default_action, cost_contain_context4_default_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4DefaultActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentDefaultActionApi->update_cost_contain_context4_default_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **default_action** | **String** | DefaultAction |  |
| **cost_contain_context4_default_action** | [**CostContainContext4DefaultAction**](CostContainContext4DefaultAction.md) |  |  |

### Return type

[**CostContainContext4DefaultActionVBAResponse**](CostContainContext4DefaultActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

