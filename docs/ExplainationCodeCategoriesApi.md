# Vba::ExplainationCodeCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_explanation_code_category**](ExplainationCodeCategoriesApi.md#create_explanation_code_category) | **POST** /explaination-code-categories | Create ExplanationCodeCategory |
| [**delete_explanation_code_category**](ExplainationCodeCategoriesApi.md#delete_explanation_code_category) | **DELETE** /explaination-code-categories/{category} | Delete ExplanationCodeCategory |
| [**get_explanation_code_category**](ExplainationCodeCategoriesApi.md#get_explanation_code_category) | **GET** /explaination-code-categories/{category} | Get ExplanationCodeCategory |
| [**list_explanation_code_category**](ExplainationCodeCategoriesApi.md#list_explanation_code_category) | **GET** /explaination-code-categories | List ExplanationCodeCategory |
| [**update_batch_explanation_code_category**](ExplainationCodeCategoriesApi.md#update_batch_explanation_code_category) | **PUT** /explaination-code-categories-batch | Create or Update Batch ExplanationCodeCategory |
| [**update_explanation_code_category**](ExplainationCodeCategoriesApi.md#update_explanation_code_category) | **PUT** /explaination-code-categories/{category} | Update ExplanationCodeCategory |


## create_explanation_code_category

> <ExplanationCodeCategoryVBAResponse> create_explanation_code_category(vbasoftware_database, explanation_code_category)

Create ExplanationCodeCategory

Creates a new ExplanationCodeCategory

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
explanation_code_category = Vba::ExplanationCodeCategory.new({category: 'category_example', invalid: false}) # ExplanationCodeCategory | 

begin
  # Create ExplanationCodeCategory
  result = api_instance.create_explanation_code_category(vbasoftware_database, explanation_code_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->create_explanation_code_category: #{e}"
end
```

#### Using the create_explanation_code_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodeCategoryVBAResponse>, Integer, Hash)> create_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category)

```ruby
begin
  # Create ExplanationCodeCategory
  data, status_code, headers = api_instance.create_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->create_explanation_code_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **explanation_code_category** | [**ExplanationCodeCategory**](ExplanationCodeCategory.md) |  |  |

### Return type

[**ExplanationCodeCategoryVBAResponse**](ExplanationCodeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_explanation_code_category

> delete_explanation_code_category(vbasoftware_database, category)

Delete ExplanationCodeCategory

Deletes an ExplanationCodeCategory

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category

begin
  # Delete ExplanationCodeCategory
  api_instance.delete_explanation_code_category(vbasoftware_database, category)
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->delete_explanation_code_category: #{e}"
end
```

#### Using the delete_explanation_code_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_explanation_code_category_with_http_info(vbasoftware_database, category)

```ruby
begin
  # Delete ExplanationCodeCategory
  data, status_code, headers = api_instance.delete_explanation_code_category_with_http_info(vbasoftware_database, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->delete_explanation_code_category_with_http_info: #{e}"
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


## get_explanation_code_category

> <ExplanationCodeCategoryVBAResponse> get_explanation_code_category(vbasoftware_database, category)

Get ExplanationCodeCategory

Gets ExplanationCodeCategory

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category

begin
  # Get ExplanationCodeCategory
  result = api_instance.get_explanation_code_category(vbasoftware_database, category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->get_explanation_code_category: #{e}"
end
```

#### Using the get_explanation_code_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodeCategoryVBAResponse>, Integer, Hash)> get_explanation_code_category_with_http_info(vbasoftware_database, category)

```ruby
begin
  # Get ExplanationCodeCategory
  data, status_code, headers = api_instance.get_explanation_code_category_with_http_info(vbasoftware_database, category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->get_explanation_code_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category** | **String** | Category |  |

### Return type

[**ExplanationCodeCategoryVBAResponse**](ExplanationCodeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_explanation_code_category

> <ExplanationCodeCategoryListVBAResponse> list_explanation_code_category(vbasoftware_database, opts)

List ExplanationCodeCategory

Lists all ExplanationCodeCategory

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ExplanationCodeCategory
  result = api_instance.list_explanation_code_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->list_explanation_code_category: #{e}"
end
```

#### Using the list_explanation_code_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodeCategoryListVBAResponse>, Integer, Hash)> list_explanation_code_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ExplanationCodeCategory
  data, status_code, headers = api_instance.list_explanation_code_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodeCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->list_explanation_code_category_with_http_info: #{e}"
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

[**ExplanationCodeCategoryListVBAResponse**](ExplanationCodeCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_explanation_code_category

> <MultiCodeResponseListVBAResponse> update_batch_explanation_code_category(vbasoftware_database, explanation_code_category)

Create or Update Batch ExplanationCodeCategory

Create or Update multiple ExplanationCodeCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
explanation_code_category = [Vba::ExplanationCodeCategory.new({category: 'category_example', invalid: false})] # Array<ExplanationCodeCategory> | 

begin
  # Create or Update Batch ExplanationCodeCategory
  result = api_instance.update_batch_explanation_code_category(vbasoftware_database, explanation_code_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->update_batch_explanation_code_category: #{e}"
end
```

#### Using the update_batch_explanation_code_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category)

```ruby
begin
  # Create or Update Batch ExplanationCodeCategory
  data, status_code, headers = api_instance.update_batch_explanation_code_category_with_http_info(vbasoftware_database, explanation_code_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->update_batch_explanation_code_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **explanation_code_category** | [**Array&lt;ExplanationCodeCategory&gt;**](ExplanationCodeCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_explanation_code_category

> <ExplanationCodeCategoryVBAResponse> update_explanation_code_category(vbasoftware_database, category, explanation_code_category)

Update ExplanationCodeCategory

Updates a specific ExplanationCodeCategory.

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

api_instance = Vba::ExplainationCodeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category = 'category_example' # String | Category
explanation_code_category = Vba::ExplanationCodeCategory.new({category: 'category_example', invalid: false}) # ExplanationCodeCategory | 

begin
  # Update ExplanationCodeCategory
  result = api_instance.update_explanation_code_category(vbasoftware_database, category, explanation_code_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->update_explanation_code_category: #{e}"
end
```

#### Using the update_explanation_code_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodeCategoryVBAResponse>, Integer, Hash)> update_explanation_code_category_with_http_info(vbasoftware_database, category, explanation_code_category)

```ruby
begin
  # Update ExplanationCodeCategory
  data, status_code, headers = api_instance.update_explanation_code_category_with_http_info(vbasoftware_database, category, explanation_code_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplainationCodeCategoriesApi->update_explanation_code_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category** | **String** | Category |  |
| **explanation_code_category** | [**ExplanationCodeCategory**](ExplanationCodeCategory.md) |  |  |

### Return type

[**ExplanationCodeCategoryVBAResponse**](ExplanationCodeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

