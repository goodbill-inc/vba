# Vba::Context4HealthCostContainmentErrorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#create_cost_contain_context4_error) | **POST** /context4health-cost-containment-errors | Create CostContainContext4Error |
| [**delete_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#delete_cost_contain_context4_error) | **DELETE** /context4health-cost-containment-errors/{errorKey} | Delete CostContainContext4Error |
| [**get_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#get_cost_contain_context4_error) | **GET** /context4health-cost-containment-errors/{errorKey} | Get CostContainContext4Error |
| [**list_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#list_cost_contain_context4_error) | **GET** /context4health-cost-containment-errors | List CostContainContext4Error |
| [**update_batch_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#update_batch_cost_contain_context4_error) | **PUT** /context4health-cost-containment-errors-batch | Create or Update Batch CostContainContext4Error |
| [**update_cost_contain_context4_error**](Context4HealthCostContainmentErrorsApi.md#update_cost_contain_context4_error) | **PUT** /context4health-cost-containment-errors/{errorKey} | Update CostContainContext4Error |


## create_cost_contain_context4_error

> <CostContainContext4ErrorVBAResponse> create_cost_contain_context4_error(vbasoftware_database, cost_contain_context4_error)

Create CostContainContext4Error

Creates a new CostContainContext4Error

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_error = Vba::CostContainContext4Error.new({error_key: 37}) # CostContainContext4Error | 

begin
  # Create CostContainContext4Error
  result = api_instance.create_cost_contain_context4_error(vbasoftware_database, cost_contain_context4_error)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->create_cost_contain_context4_error: #{e}"
end
```

#### Using the create_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ErrorVBAResponse>, Integer, Hash)> create_cost_contain_context4_error_with_http_info(vbasoftware_database, cost_contain_context4_error)

```ruby
begin
  # Create CostContainContext4Error
  data, status_code, headers = api_instance.create_cost_contain_context4_error_with_http_info(vbasoftware_database, cost_contain_context4_error)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ErrorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->create_cost_contain_context4_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_error** | [**CostContainContext4Error**](CostContainContext4Error.md) |  |  |

### Return type

[**CostContainContext4ErrorVBAResponse**](CostContainContext4ErrorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_error

> delete_cost_contain_context4_error(vbasoftware_database, error_key)

Delete CostContainContext4Error

Deletes an CostContainContext4Error

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_key = 56 # Integer | Error Key

begin
  # Delete CostContainContext4Error
  api_instance.delete_cost_contain_context4_error(vbasoftware_database, error_key)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->delete_cost_contain_context4_error: #{e}"
end
```

#### Using the delete_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key)

```ruby
begin
  # Delete CostContainContext4Error
  data, status_code, headers = api_instance.delete_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->delete_cost_contain_context4_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_key** | **Integer** | Error Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_error

> <CostContainContext4ErrorVBAResponse> get_cost_contain_context4_error(vbasoftware_database, error_key)

Get CostContainContext4Error

Gets CostContainContext4Error

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_key = 56 # Integer | Error Key

begin
  # Get CostContainContext4Error
  result = api_instance.get_cost_contain_context4_error(vbasoftware_database, error_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->get_cost_contain_context4_error: #{e}"
end
```

#### Using the get_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ErrorVBAResponse>, Integer, Hash)> get_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key)

```ruby
begin
  # Get CostContainContext4Error
  data, status_code, headers = api_instance.get_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ErrorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->get_cost_contain_context4_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_key** | **Integer** | Error Key |  |

### Return type

[**CostContainContext4ErrorVBAResponse**](CostContainContext4ErrorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_error

> <CostContainContext4ErrorListVBAResponse> list_cost_contain_context4_error(vbasoftware_database, opts)

List CostContainContext4Error

Lists all CostContainContext4Error

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4Error
  result = api_instance.list_cost_contain_context4_error(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->list_cost_contain_context4_error: #{e}"
end
```

#### Using the list_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ErrorListVBAResponse>, Integer, Hash)> list_cost_contain_context4_error_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4Error
  data, status_code, headers = api_instance.list_cost_contain_context4_error_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ErrorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->list_cost_contain_context4_error_with_http_info: #{e}"
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

[**CostContainContext4ErrorListVBAResponse**](CostContainContext4ErrorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_error

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_error(vbasoftware_database, cost_contain_context4_error)

Create or Update Batch CostContainContext4Error

Create or Update multiple CostContainContext4Error at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_error = [Vba::CostContainContext4Error.new({error_key: 37})] # Array<CostContainContext4Error> | 

begin
  # Create or Update Batch CostContainContext4Error
  result = api_instance.update_batch_cost_contain_context4_error(vbasoftware_database, cost_contain_context4_error)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->update_batch_cost_contain_context4_error: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_error_with_http_info(vbasoftware_database, cost_contain_context4_error)

```ruby
begin
  # Create or Update Batch CostContainContext4Error
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_error_with_http_info(vbasoftware_database, cost_contain_context4_error)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->update_batch_cost_contain_context4_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_error** | [**Array&lt;CostContainContext4Error&gt;**](CostContainContext4Error.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_error

> <CostContainContext4ErrorVBAResponse> update_cost_contain_context4_error(vbasoftware_database, error_key, cost_contain_context4_error)

Update CostContainContext4Error

Updates a specific CostContainContext4Error.

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

api_instance = Vba::Context4HealthCostContainmentErrorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_key = 56 # Integer | Error Key
cost_contain_context4_error = Vba::CostContainContext4Error.new({error_key: 37}) # CostContainContext4Error | 

begin
  # Update CostContainContext4Error
  result = api_instance.update_cost_contain_context4_error(vbasoftware_database, error_key, cost_contain_context4_error)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->update_cost_contain_context4_error: #{e}"
end
```

#### Using the update_cost_contain_context4_error_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ErrorVBAResponse>, Integer, Hash)> update_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key, cost_contain_context4_error)

```ruby
begin
  # Update CostContainContext4Error
  data, status_code, headers = api_instance.update_cost_contain_context4_error_with_http_info(vbasoftware_database, error_key, cost_contain_context4_error)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ErrorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentErrorsApi->update_cost_contain_context4_error_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_key** | **Integer** | Error Key |  |
| **cost_contain_context4_error** | [**CostContainContext4Error**](CostContainContext4Error.md) |  |  |

### Return type

[**CostContainContext4ErrorVBAResponse**](CostContainContext4ErrorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

