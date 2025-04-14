# Vba::Context4HealthCostContainmentCategoryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#create_cost_contain_context4_category) | **POST** /context4health-cost-containment-categories | Create CostContainContext4Category |
| [**delete_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#delete_cost_contain_context4_category) | **DELETE** /context4health-cost-containment-categories/{category} | Delete CostContainContext4Category |
| [**get_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#get_cost_contain_context4_category) | **GET** /context4health-cost-containment-categories/{category} | Get CostContainContext4Category |
| [**list_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#list_cost_contain_context4_category) | **GET** /context4health-cost-containment-categories | List CostContainContext4Category |
| [**update_batch_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#update_batch_cost_contain_context4_category) | **PUT** /context4health-cost-containment-categories-batch | Create or Update Batch CostContainContext4Category |
| [**update_cost_contain_context4_category**](Context4HealthCostContainmentCategoryApi.md#update_cost_contain_context4_category) | **PUT** /context4health-cost-containment-categories/{category} | Update CostContainContext4Category |


## create_cost_contain_context4_category

> <CostContainContext4CategoryVBAResponse> create_cost_contain_context4_category(vbasoftware_database, cost_contain_context4_category)

Create CostContainContext4Category

Creates a new CostContainContext4Category

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_category = Vba::CostContainContext4Category.new({category: 'category_example'}) # CostContainContext4Category | 

begin
  # Create CostContainContext4Category
  result = api_instance.create_cost_contain_context4_category(vbasoftware_database, cost_contain_context4_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->create_cost_contain_context4_category: #{e}"
end
```

#### Using the create_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CategoryVBAResponse>, Integer, Hash)> create_cost_contain_context4_category_with_http_info(vbasoftware_database, cost_contain_context4_category)

```ruby
begin
  # Create CostContainContext4Category
  data, status_code, headers = api_instance.create_cost_contain_context4_category_with_http_info(vbasoftware_database, cost_contain_context4_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->create_cost_contain_context4_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_category** | [**CostContainContext4Category**](CostContainContext4Category.md) |  |  |

### Return type

[**CostContainContext4CategoryVBAResponse**](CostContainContext4CategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_category

> delete_cost_contain_context4_category(vbasoftware_database, category)

Delete CostContainContext4Category

Deletes an CostContainContext4Category

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category

begin
  # Delete CostContainContext4Category
  api_instance.delete_cost_contain_context4_category(vbasoftware_database, category)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->delete_cost_contain_context4_category: #{e}"
end
```

#### Using the delete_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_category_with_http_info(vbasoftware_database, category)

```ruby
begin
  # Delete CostContainContext4Category
  data, status_code, headers = api_instance.delete_cost_contain_context4_category_with_http_info(vbasoftware_database, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->delete_cost_contain_context4_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category** | **String** | Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_category

> <CostContainContext4CategoryVBAResponse> get_cost_contain_context4_category(vbasoftware_database, category)

Get CostContainContext4Category

Gets CostContainContext4Category

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category

begin
  # Get CostContainContext4Category
  result = api_instance.get_cost_contain_context4_category(vbasoftware_database, category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->get_cost_contain_context4_category: #{e}"
end
```

#### Using the get_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CategoryVBAResponse>, Integer, Hash)> get_cost_contain_context4_category_with_http_info(vbasoftware_database, category)

```ruby
begin
  # Get CostContainContext4Category
  data, status_code, headers = api_instance.get_cost_contain_context4_category_with_http_info(vbasoftware_database, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->get_cost_contain_context4_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category** | **String** | Category |  |

### Return type

[**CostContainContext4CategoryVBAResponse**](CostContainContext4CategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_category

> <CostContainContext4CategoryListVBAResponse> list_cost_contain_context4_category(vbasoftware_database, opts)

List CostContainContext4Category

Lists all CostContainContext4Category

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4Category
  result = api_instance.list_cost_contain_context4_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->list_cost_contain_context4_category: #{e}"
end
```

#### Using the list_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CategoryListVBAResponse>, Integer, Hash)> list_cost_contain_context4_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4Category
  data, status_code, headers = api_instance.list_cost_contain_context4_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->list_cost_contain_context4_category_with_http_info: #{e}"
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

[**CostContainContext4CategoryListVBAResponse**](CostContainContext4CategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_category

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_category(vbasoftware_database, cost_contain_context4_category)

Create or Update Batch CostContainContext4Category

Create or Update multiple CostContainContext4Category at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_category = [Vba::CostContainContext4Category.new({category: 'category_example'})] # Array<CostContainContext4Category> | 

begin
  # Create or Update Batch CostContainContext4Category
  result = api_instance.update_batch_cost_contain_context4_category(vbasoftware_database, cost_contain_context4_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->update_batch_cost_contain_context4_category: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_category_with_http_info(vbasoftware_database, cost_contain_context4_category)

```ruby
begin
  # Create or Update Batch CostContainContext4Category
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_category_with_http_info(vbasoftware_database, cost_contain_context4_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->update_batch_cost_contain_context4_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_category** | [**Array&lt;CostContainContext4Category&gt;**](CostContainContext4Category.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_category

> <CostContainContext4CategoryVBAResponse> update_cost_contain_context4_category(vbasoftware_database, category, cost_contain_context4_category)

Update CostContainContext4Category

Updates a specific CostContainContext4Category.

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

api_instance = Vba::Context4HealthCostContainmentCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category
cost_contain_context4_category = Vba::CostContainContext4Category.new({category: 'category_example'}) # CostContainContext4Category | 

begin
  # Update CostContainContext4Category
  result = api_instance.update_cost_contain_context4_category(vbasoftware_database, category, cost_contain_context4_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->update_cost_contain_context4_category: #{e}"
end
```

#### Using the update_cost_contain_context4_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4CategoryVBAResponse>, Integer, Hash)> update_cost_contain_context4_category_with_http_info(vbasoftware_database, category, cost_contain_context4_category)

```ruby
begin
  # Update CostContainContext4Category
  data, status_code, headers = api_instance.update_cost_contain_context4_category_with_http_info(vbasoftware_database, category, cost_contain_context4_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4CategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentCategoryApi->update_cost_contain_context4_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category** | **String** | Category |  |
| **cost_contain_context4_category** | [**CostContainContext4Category**](CostContainContext4Category.md) |  |  |

### Return type

[**CostContainContext4CategoryVBAResponse**](CostContainContext4CategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

