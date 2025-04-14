# Vba::Context4HealthCostContainmentExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#create_cost_contain_context4_ex_code) | **POST** /context4health-cost-containment-ex-codes | Create CostContainContext4ExCode |
| [**delete_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#delete_cost_contain_context4_ex_code) | **DELETE** /context4health-cost-containment-ex-codes/{exCodeKey} | Delete CostContainContext4ExCode |
| [**get_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#get_cost_contain_context4_ex_code) | **GET** /context4health-cost-containment-ex-codes/{exCodeKey} | Get CostContainContext4ExCode |
| [**list_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#list_cost_contain_context4_ex_code) | **GET** /context4health-cost-containment-ex-codes | List CostContainContext4ExCode |
| [**update_batch_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#update_batch_cost_contain_context4_ex_code) | **PUT** /context4health-cost-containment-ex-codes-batch | Create or Update Batch CostContainContext4ExCode |
| [**update_cost_contain_context4_ex_code**](Context4HealthCostContainmentExCodesApi.md#update_cost_contain_context4_ex_code) | **PUT** /context4health-cost-containment-ex-codes/{exCodeKey} | Update CostContainContext4ExCode |


## create_cost_contain_context4_ex_code

> <CostContainContext4ExCodeVBAResponse> create_cost_contain_context4_ex_code(vbasoftware_database, cost_contain_context4_ex_code)

Create CostContainContext4ExCode

Creates a new CostContainContext4ExCode

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_ex_code = Vba::CostContainContext4ExCode.new({ex_code_key: 37}) # CostContainContext4ExCode | 

begin
  # Create CostContainContext4ExCode
  result = api_instance.create_cost_contain_context4_ex_code(vbasoftware_database, cost_contain_context4_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->create_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the create_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ExCodeVBAResponse>, Integer, Hash)> create_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, cost_contain_context4_ex_code)

```ruby
begin
  # Create CostContainContext4ExCode
  data, status_code, headers = api_instance.create_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, cost_contain_context4_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->create_cost_contain_context4_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_ex_code** | [**CostContainContext4ExCode**](CostContainContext4ExCode.md) |  |  |

### Return type

[**CostContainContext4ExCodeVBAResponse**](CostContainContext4ExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_ex_code

> delete_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key)

Delete CostContainContext4ExCode

Deletes an CostContainContext4ExCode

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code_key = 56 # Integer | ExCode Key

begin
  # Delete CostContainContext4ExCode
  api_instance.delete_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->delete_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the delete_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key)

```ruby
begin
  # Delete CostContainContext4ExCode
  data, status_code, headers = api_instance.delete_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->delete_cost_contain_context4_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code_key** | **Integer** | ExCode Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_ex_code

> <CostContainContext4ExCodeVBAResponse> get_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key)

Get CostContainContext4ExCode

Gets CostContainContext4ExCode

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code_key = 56 # Integer | ExCode Key

begin
  # Get CostContainContext4ExCode
  result = api_instance.get_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->get_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the get_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ExCodeVBAResponse>, Integer, Hash)> get_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key)

```ruby
begin
  # Get CostContainContext4ExCode
  data, status_code, headers = api_instance.get_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->get_cost_contain_context4_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code_key** | **Integer** | ExCode Key |  |

### Return type

[**CostContainContext4ExCodeVBAResponse**](CostContainContext4ExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_ex_code

> <CostContainContext4ExCodeListVBAResponse> list_cost_contain_context4_ex_code(vbasoftware_database, opts)

List CostContainContext4ExCode

Lists all CostContainContext4ExCode

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4ExCode
  result = api_instance.list_cost_contain_context4_ex_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->list_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the list_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ExCodeListVBAResponse>, Integer, Hash)> list_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4ExCode
  data, status_code, headers = api_instance.list_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->list_cost_contain_context4_ex_code_with_http_info: #{e}"
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

[**CostContainContext4ExCodeListVBAResponse**](CostContainContext4ExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_ex_code(vbasoftware_database, cost_contain_context4_ex_code)

Create or Update Batch CostContainContext4ExCode

Create or Update multiple CostContainContext4ExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_ex_code = [Vba::CostContainContext4ExCode.new({ex_code_key: 37})] # Array<CostContainContext4ExCode> | 

begin
  # Create or Update Batch CostContainContext4ExCode
  result = api_instance.update_batch_cost_contain_context4_ex_code(vbasoftware_database, cost_contain_context4_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->update_batch_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, cost_contain_context4_ex_code)

```ruby
begin
  # Create or Update Batch CostContainContext4ExCode
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, cost_contain_context4_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->update_batch_cost_contain_context4_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_ex_code** | [**Array&lt;CostContainContext4ExCode&gt;**](CostContainContext4ExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_ex_code

> <CostContainContext4ExCodeVBAResponse> update_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key, cost_contain_context4_ex_code)

Update CostContainContext4ExCode

Updates a specific CostContainContext4ExCode.

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

api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code_key = 56 # Integer | ExCode Key
cost_contain_context4_ex_code = Vba::CostContainContext4ExCode.new({ex_code_key: 37}) # CostContainContext4ExCode | 

begin
  # Update CostContainContext4ExCode
  result = api_instance.update_cost_contain_context4_ex_code(vbasoftware_database, ex_code_key, cost_contain_context4_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->update_cost_contain_context4_ex_code: #{e}"
end
```

#### Using the update_cost_contain_context4_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4ExCodeVBAResponse>, Integer, Hash)> update_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key, cost_contain_context4_ex_code)

```ruby
begin
  # Update CostContainContext4ExCode
  data, status_code, headers = api_instance.update_cost_contain_context4_ex_code_with_http_info(vbasoftware_database, ex_code_key, cost_contain_context4_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4ExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentExCodesApi->update_cost_contain_context4_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code_key** | **Integer** | ExCode Key |  |
| **cost_contain_context4_ex_code** | [**CostContainContext4ExCode**](CostContainContext4ExCode.md) |  |  |

### Return type

[**CostContainContext4ExCodeVBAResponse**](CostContainContext4ExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

