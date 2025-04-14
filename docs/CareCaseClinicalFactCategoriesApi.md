# Vba::CareCaseClinicalFactCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#create_care_case_clinical_fact_category) | **POST** /care-case-clinical-fact-categories | Create CareCaseClinicalFactCategory |
| [**delete_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#delete_care_case_clinical_fact_category) | **DELETE** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory} | Delete CareCaseClinicalFactCategory |
| [**get_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#get_care_case_clinical_fact_category) | **GET** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory} | Get CareCaseClinicalFactCategory |
| [**list_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#list_care_case_clinical_fact_category) | **GET** /care-case-clinical-fact-categories | List CareCaseClinicalFactCategory |
| [**update_batch_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#update_batch_care_case_clinical_fact_category) | **PUT** /care-case-clinical-fact-categories-batch | Create or Update Batch CareCaseClinicalFactCategory |
| [**update_care_case_clinical_fact_category**](CareCaseClinicalFactCategoriesApi.md#update_care_case_clinical_fact_category) | **PUT** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory} | Update CareCaseClinicalFactCategory |


## create_care_case_clinical_fact_category

> <CareCaseClinicalFactCategoryVBAResponse> create_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)

Create CareCaseClinicalFactCategory

Creates a new CareCaseClinicalFactCategory

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = Vba::CareCaseClinicalFactCategory.new({care_case_clinical_fact_category1: 'care_case_clinical_fact_category1_example'}) # CareCaseClinicalFactCategory | 

begin
  # Create CareCaseClinicalFactCategory
  result = api_instance.create_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->create_care_case_clinical_fact_category: #{e}"
end
```

#### Using the create_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryVBAResponse>, Integer, Hash)> create_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)

```ruby
begin
  # Create CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.create_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->create_care_case_clinical_fact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | [**CareCaseClinicalFactCategory**](CareCaseClinicalFactCategory.md) |  |  |

### Return type

[**CareCaseClinicalFactCategoryVBAResponse**](CareCaseClinicalFactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_clinical_fact_category

> delete_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)

Delete CareCaseClinicalFactCategory

Deletes an CareCaseClinicalFactCategory

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory1

begin
  # Delete CareCaseClinicalFactCategory
  api_instance.delete_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->delete_care_case_clinical_fact_category: #{e}"
end
```

#### Using the delete_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)

```ruby
begin
  # Delete CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.delete_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->delete_care_case_clinical_fact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_clinical_fact_category

> <CareCaseClinicalFactCategoryVBAResponse> get_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)

Get CareCaseClinicalFactCategory

Gets CareCaseClinicalFactCategory

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory1

begin
  # Get CareCaseClinicalFactCategory
  result = api_instance.get_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->get_care_case_clinical_fact_category: #{e}"
end
```

#### Using the get_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryVBAResponse>, Integer, Hash)> get_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)

```ruby
begin
  # Get CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.get_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->get_care_case_clinical_fact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory1 |  |

### Return type

[**CareCaseClinicalFactCategoryVBAResponse**](CareCaseClinicalFactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_clinical_fact_category

> <CareCaseClinicalFactCategoryListVBAResponse> list_care_case_clinical_fact_category(vbasoftware_database, opts)

List CareCaseClinicalFactCategory

Lists all CareCaseClinicalFactCategory

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseClinicalFactCategory
  result = api_instance.list_care_case_clinical_fact_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->list_care_case_clinical_fact_category: #{e}"
end
```

#### Using the list_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryListVBAResponse>, Integer, Hash)> list_care_case_clinical_fact_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.list_care_case_clinical_fact_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->list_care_case_clinical_fact_category_with_http_info: #{e}"
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

[**CareCaseClinicalFactCategoryListVBAResponse**](CareCaseClinicalFactCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_clinical_fact_category

> <MultiCodeResponseListVBAResponse> update_batch_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)

Create or Update Batch CareCaseClinicalFactCategory

Create or Update multiple CareCaseClinicalFactCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = [Vba::CareCaseClinicalFactCategory.new({care_case_clinical_fact_category1: 'care_case_clinical_fact_category1_example'})] # Array<CareCaseClinicalFactCategory> | 

begin
  # Create or Update Batch CareCaseClinicalFactCategory
  result = api_instance.update_batch_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->update_batch_care_case_clinical_fact_category: #{e}"
end
```

#### Using the update_batch_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)

```ruby
begin
  # Create or Update Batch CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.update_batch_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->update_batch_care_case_clinical_fact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | [**Array&lt;CareCaseClinicalFactCategory&gt;**](CareCaseClinicalFactCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_clinical_fact_category

> <CareCaseClinicalFactCategoryVBAResponse> update_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category2)

Update CareCaseClinicalFactCategory

Updates a specific CareCaseClinicalFactCategory.

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

api_instance = Vba::CareCaseClinicalFactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory1
care_case_clinical_fact_category2 = Vba::CareCaseClinicalFactCategory.new({care_case_clinical_fact_category1: 'care_case_clinical_fact_category1_example'}) # CareCaseClinicalFactCategory | 

begin
  # Update CareCaseClinicalFactCategory
  result = api_instance.update_care_case_clinical_fact_category(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->update_care_case_clinical_fact_category: #{e}"
end
```

#### Using the update_care_case_clinical_fact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryVBAResponse>, Integer, Hash)> update_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category2)

```ruby
begin
  # Update CareCaseClinicalFactCategory
  data, status_code, headers = api_instance.update_care_case_clinical_fact_category_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoriesApi->update_care_case_clinical_fact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory1 |  |
| **care_case_clinical_fact_category2** | [**CareCaseClinicalFactCategory**](CareCaseClinicalFactCategory.md) |  |  |

### Return type

[**CareCaseClinicalFactCategoryVBAResponse**](CareCaseClinicalFactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

