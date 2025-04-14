# Vba::CarePlanCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_category**](CarePlanCategoriesApi.md#create_care_plan_category) | **POST** /care-plan-categories | Create CarePlanCategory |
| [**delete_care_plan_category**](CarePlanCategoriesApi.md#delete_care_plan_category) | **DELETE** /care-plan-categories/{carePlanCategory} | Delete CarePlanCategory |
| [**get_care_plan_category**](CarePlanCategoriesApi.md#get_care_plan_category) | **GET** /care-plan-categories/{carePlanCategory} | Get CarePlanCategory |
| [**list_care_plan_category**](CarePlanCategoriesApi.md#list_care_plan_category) | **GET** /care-plan-categories | List CarePlanCategory |
| [**update_batch_care_plan_category**](CarePlanCategoriesApi.md#update_batch_care_plan_category) | **PUT** /care-plan-categories-batch | Create or Update Batch CarePlanCategory |
| [**update_care_plan_category**](CarePlanCategoriesApi.md#update_care_plan_category) | **PUT** /care-plan-categories/{carePlanCategory} | Update CarePlanCategory |


## create_care_plan_category

> <CarePlanCategoryVBAResponse> create_care_plan_category(vbasoftware_database, care_plan_category)

Create CarePlanCategory

Creates a new CarePlanCategory

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_category = Vba::CarePlanCategory.new({care_plan_category: 'care_plan_category_example'}) # CarePlanCategory | 

begin
  # Create CarePlanCategory
  result = api_instance.create_care_plan_category(vbasoftware_database, care_plan_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->create_care_plan_category: #{e}"
end
```

#### Using the create_care_plan_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCategoryVBAResponse>, Integer, Hash)> create_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)

```ruby
begin
  # Create CarePlanCategory
  data, status_code, headers = api_instance.create_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->create_care_plan_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_category** | [**CarePlanCategory**](CarePlanCategory.md) |  |  |

### Return type

[**CarePlanCategoryVBAResponse**](CarePlanCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_category

> delete_care_plan_category(vbasoftware_database, care_plan_category)

Delete CarePlanCategory

Deletes an CarePlanCategory

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_category = 'care_plan_category_example' # String | CarePlan Category

begin
  # Delete CarePlanCategory
  api_instance.delete_care_plan_category(vbasoftware_database, care_plan_category)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->delete_care_plan_category: #{e}"
end
```

#### Using the delete_care_plan_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)

```ruby
begin
  # Delete CarePlanCategory
  data, status_code, headers = api_instance.delete_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->delete_care_plan_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_category** | **String** | CarePlan Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_category

> <CarePlanCategoryVBAResponse> get_care_plan_category(vbasoftware_database, care_plan_category)

Get CarePlanCategory

Gets CarePlanCategory

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_category = 'care_plan_category_example' # String | CarePlan Category

begin
  # Get CarePlanCategory
  result = api_instance.get_care_plan_category(vbasoftware_database, care_plan_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->get_care_plan_category: #{e}"
end
```

#### Using the get_care_plan_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCategoryVBAResponse>, Integer, Hash)> get_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)

```ruby
begin
  # Get CarePlanCategory
  data, status_code, headers = api_instance.get_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->get_care_plan_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_category** | **String** | CarePlan Category |  |

### Return type

[**CarePlanCategoryVBAResponse**](CarePlanCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_category

> <CarePlanCategoryListVBAResponse> list_care_plan_category(vbasoftware_database, opts)

List CarePlanCategory

Lists all CarePlanCategory

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanCategory
  result = api_instance.list_care_plan_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->list_care_plan_category: #{e}"
end
```

#### Using the list_care_plan_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCategoryListVBAResponse>, Integer, Hash)> list_care_plan_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CarePlanCategory
  data, status_code, headers = api_instance.list_care_plan_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->list_care_plan_category_with_http_info: #{e}"
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

[**CarePlanCategoryListVBAResponse**](CarePlanCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_category

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_category(vbasoftware_database, care_plan_category)

Create or Update Batch CarePlanCategory

Create or Update multiple CarePlanCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_category = [Vba::CarePlanCategory.new({care_plan_category: 'care_plan_category_example'})] # Array<CarePlanCategory> | 

begin
  # Create or Update Batch CarePlanCategory
  result = api_instance.update_batch_care_plan_category(vbasoftware_database, care_plan_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->update_batch_care_plan_category: #{e}"
end
```

#### Using the update_batch_care_plan_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)

```ruby
begin
  # Create or Update Batch CarePlanCategory
  data, status_code, headers = api_instance.update_batch_care_plan_category_with_http_info(vbasoftware_database, care_plan_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->update_batch_care_plan_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_category** | [**Array&lt;CarePlanCategory&gt;**](CarePlanCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_category

> <CarePlanCategoryVBAResponse> update_care_plan_category(vbasoftware_database, care_plan_category, care_plan_category2)

Update CarePlanCategory

Updates a specific CarePlanCategory.

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

api_instance = Vba::CarePlanCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_category = 'care_plan_category_example' # String | CarePlan Category
care_plan_category2 = Vba::CarePlanCategory.new({care_plan_category: 'care_plan_category_example'}) # CarePlanCategory | 

begin
  # Update CarePlanCategory
  result = api_instance.update_care_plan_category(vbasoftware_database, care_plan_category, care_plan_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->update_care_plan_category: #{e}"
end
```

#### Using the update_care_plan_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCategoryVBAResponse>, Integer, Hash)> update_care_plan_category_with_http_info(vbasoftware_database, care_plan_category, care_plan_category2)

```ruby
begin
  # Update CarePlanCategory
  data, status_code, headers = api_instance.update_care_plan_category_with_http_info(vbasoftware_database, care_plan_category, care_plan_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCategoriesApi->update_care_plan_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_category** | **String** | CarePlan Category |  |
| **care_plan_category2** | [**CarePlanCategory**](CarePlanCategory.md) |  |  |

### Return type

[**CarePlanCategoryVBAResponse**](CarePlanCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

