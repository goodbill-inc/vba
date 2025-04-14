# Vba::Context4HealthCostContainmentCaseIndexApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#create_cost_contain_context4_case_index) | **POST** /context4health-cost-containment-case-indexes | Create CostContainContext4CaseIndex |
| [**delete_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#delete_cost_contain_context4_case_index) | **DELETE** /context4health-cost-containment-case-indexes/{caseIndex} | Delete CostContainContext4CaseIndex |
| [**get_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#get_cost_contain_context4_case_index) | **GET** /context4health-cost-containment-case-indexes/{caseIndex} | Get CostContainContext4CaseIndex |
| [**list_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#list_cost_contain_context4_case_index) | **GET** /context4health-cost-containment-case-indexes | List CostContainContext4CaseIndex |
| [**update_batch_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#update_batch_cost_contain_context4_case_index) | **PUT** /context4health-cost-containment-case-indexes-batch | Create or Update Batch CostContainContext4CaseIndex |
| [**update_cost_contain_context4_case_index**](Context4HealthCostContainmentCaseIndexApi.md#update_cost_contain_context4_case_index) | **PUT** /context4health-cost-containment-case-indexes/{caseIndex} | Update CostContainContext4CaseIndex |


## create_cost_contain_context4_case_index

> <CostContainContext4CaseIndexVBAResponse> create_cost_contain_context4_case_index(vbasoftware_database, cost_contain_context4_case_index)

Create CostContainContext4CaseIndex

Creates a new CostContainContext4CaseIndex

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_case_index = Vba::CostContainContext4CaseIndex.new({case_index: 'case_index_example'}) # CostContainContext4CaseIndex | 

begin
  # Create CostContainContext4CaseIndex
  result = api_instance.create_cost_contain_context4_case_index(vbasoftware_database, cost_contain_context4_case_index)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->create_cost_contain_context4_case_index: #{e}"
end
```

#### Using the create_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CaseIndexVBAResponse>, Integer, Hash)> create_cost_contain_context4_case_index_with_http_info(vbasoftware_database, cost_contain_context4_case_index)

```ruby
begin
  # Create CostContainContext4CaseIndex
  data, status_code, headers = api_instance.create_cost_contain_context4_case_index_with_http_info(vbasoftware_database, cost_contain_context4_case_index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CaseIndexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->create_cost_contain_context4_case_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_case_index** | [**CostContainContext4CaseIndex**](CostContainContext4CaseIndex.md) |  |  |

### Return type

[**CostContainContext4CaseIndexVBAResponse**](CostContainContext4CaseIndexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_case_index

> delete_cost_contain_context4_case_index(vbasoftware_database, case_index)

Delete CostContainContext4CaseIndex

Deletes an CostContainContext4CaseIndex

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_index = 'case_index_example' # String | CaseIndex

begin
  # Delete CostContainContext4CaseIndex
  api_instance.delete_cost_contain_context4_case_index(vbasoftware_database, case_index)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->delete_cost_contain_context4_case_index: #{e}"
end
```

#### Using the delete_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index)

```ruby
begin
  # Delete CostContainContext4CaseIndex
  data, status_code, headers = api_instance.delete_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->delete_cost_contain_context4_case_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_index** | **String** | CaseIndex |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_case_index

> <CostContainContext4CaseIndexVBAResponse> get_cost_contain_context4_case_index(vbasoftware_database, case_index)

Get CostContainContext4CaseIndex

Gets CostContainContext4CaseIndex

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_index = 'case_index_example' # String | CaseIndex

begin
  # Get CostContainContext4CaseIndex
  result = api_instance.get_cost_contain_context4_case_index(vbasoftware_database, case_index)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->get_cost_contain_context4_case_index: #{e}"
end
```

#### Using the get_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CaseIndexVBAResponse>, Integer, Hash)> get_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index)

```ruby
begin
  # Get CostContainContext4CaseIndex
  data, status_code, headers = api_instance.get_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CaseIndexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->get_cost_contain_context4_case_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_index** | **String** | CaseIndex |  |

### Return type

[**CostContainContext4CaseIndexVBAResponse**](CostContainContext4CaseIndexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_case_index

> <CostContainContext4CaseIndexListVBAResponse> list_cost_contain_context4_case_index(vbasoftware_database, opts)

List CostContainContext4CaseIndex

Lists all CostContainContext4CaseIndex

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4CaseIndex
  result = api_instance.list_cost_contain_context4_case_index(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->list_cost_contain_context4_case_index: #{e}"
end
```

#### Using the list_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CaseIndexListVBAResponse>, Integer, Hash)> list_cost_contain_context4_case_index_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4CaseIndex
  data, status_code, headers = api_instance.list_cost_contain_context4_case_index_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CaseIndexListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->list_cost_contain_context4_case_index_with_http_info: #{e}"
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

[**CostContainContext4CaseIndexListVBAResponse**](CostContainContext4CaseIndexListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_case_index

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_case_index(vbasoftware_database, cost_contain_context4_case_index)

Create or Update Batch CostContainContext4CaseIndex

Create or Update multiple CostContainContext4CaseIndex at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_case_index = [Vba::CostContainContext4CaseIndex.new({case_index: 'case_index_example'})] # Array<CostContainContext4CaseIndex> | 

begin
  # Create or Update Batch CostContainContext4CaseIndex
  result = api_instance.update_batch_cost_contain_context4_case_index(vbasoftware_database, cost_contain_context4_case_index)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->update_batch_cost_contain_context4_case_index: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_case_index_with_http_info(vbasoftware_database, cost_contain_context4_case_index)

```ruby
begin
  # Create or Update Batch CostContainContext4CaseIndex
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_case_index_with_http_info(vbasoftware_database, cost_contain_context4_case_index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->update_batch_cost_contain_context4_case_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_case_index** | [**Array&lt;CostContainContext4CaseIndex&gt;**](CostContainContext4CaseIndex.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_case_index

> <CostContainContext4CaseIndexVBAResponse> update_cost_contain_context4_case_index(vbasoftware_database, case_index, cost_contain_context4_case_index)

Update CostContainContext4CaseIndex

Updates a specific CostContainContext4CaseIndex.

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

api_instance = Vba::Context4HealthCostContainmentCaseIndexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_index = 'case_index_example' # String | CaseIndex
cost_contain_context4_case_index = Vba::CostContainContext4CaseIndex.new({case_index: 'case_index_example'}) # CostContainContext4CaseIndex | 

begin
  # Update CostContainContext4CaseIndex
  result = api_instance.update_cost_contain_context4_case_index(vbasoftware_database, case_index, cost_contain_context4_case_index)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->update_cost_contain_context4_case_index: #{e}"
end
```

#### Using the update_cost_contain_context4_case_index_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CaseIndexVBAResponse>, Integer, Hash)> update_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index, cost_contain_context4_case_index)

```ruby
begin
  # Update CostContainContext4CaseIndex
  data, status_code, headers = api_instance.update_cost_contain_context4_case_index_with_http_info(vbasoftware_database, case_index, cost_contain_context4_case_index)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CaseIndexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCaseIndexApi->update_cost_contain_context4_case_index_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_index** | **String** | CaseIndex |  |
| **cost_contain_context4_case_index** | [**CostContainContext4CaseIndex**](CostContainContext4CaseIndex.md) |  |  |

### Return type

[**CostContainContext4CaseIndexVBAResponse**](CostContainContext4CaseIndexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

