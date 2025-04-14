# Vba::ReportCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_category**](ReportCategoriesApi.md#create_report_category) | **POST** /report-categories | Create ReportCategory |
| [**delete_report_category**](ReportCategoriesApi.md#delete_report_category) | **DELETE** /report-categories/{reportCategory} | Delete ReportCategory |
| [**get_report_category**](ReportCategoriesApi.md#get_report_category) | **GET** /report-categories/{reportCategory} | Get ReportCategory |
| [**list_report_category**](ReportCategoriesApi.md#list_report_category) | **GET** /report-categories | List ReportCategory |
| [**update_batch_report_category**](ReportCategoriesApi.md#update_batch_report_category) | **PUT** /report-categories-batch | Create or Update Batch ReportCategory |
| [**update_report_category**](ReportCategoriesApi.md#update_report_category) | **PUT** /report-categories/{reportCategory} | Update ReportCategory |


## create_report_category

> <ReportCategoryVBAResponse> create_report_category(vbasoftware_database, report_category)

Create ReportCategory

Creates a new ReportCategory

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_category = Vba::ReportCategory.new({report_category: 'report_category_example'}) # ReportCategory | 

begin
  # Create ReportCategory
  result = api_instance.create_report_category(vbasoftware_database, report_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->create_report_category: #{e}"
end
```

#### Using the create_report_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportCategoryVBAResponse>, Integer, Hash)> create_report_category_with_http_info(vbasoftware_database, report_category)

```ruby
begin
  # Create ReportCategory
  data, status_code, headers = api_instance.create_report_category_with_http_info(vbasoftware_database, report_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->create_report_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_category** | [**ReportCategory**](ReportCategory.md) |  |  |

### Return type

[**ReportCategoryVBAResponse**](ReportCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_category

> delete_report_category(vbasoftware_database, report_category)

Delete ReportCategory

Deletes an ReportCategory

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_category = 'report_category_example' # String | Report Category

begin
  # Delete ReportCategory
  api_instance.delete_report_category(vbasoftware_database, report_category)
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->delete_report_category: #{e}"
end
```

#### Using the delete_report_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_category_with_http_info(vbasoftware_database, report_category)

```ruby
begin
  # Delete ReportCategory
  data, status_code, headers = api_instance.delete_report_category_with_http_info(vbasoftware_database, report_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->delete_report_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_category** | **String** | Report Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_category

> <ReportCategoryVBAResponse> get_report_category(vbasoftware_database, report_category)

Get ReportCategory

Gets ReportCategory

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_category = 'report_category_example' # String | Report Category

begin
  # Get ReportCategory
  result = api_instance.get_report_category(vbasoftware_database, report_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->get_report_category: #{e}"
end
```

#### Using the get_report_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportCategoryVBAResponse>, Integer, Hash)> get_report_category_with_http_info(vbasoftware_database, report_category)

```ruby
begin
  # Get ReportCategory
  data, status_code, headers = api_instance.get_report_category_with_http_info(vbasoftware_database, report_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->get_report_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_category** | **String** | Report Category |  |

### Return type

[**ReportCategoryVBAResponse**](ReportCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_category

> <ReportCategoryListVBAResponse> list_report_category(vbasoftware_database, opts)

List ReportCategory

Lists all ReportCategory

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportCategory
  result = api_instance.list_report_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->list_report_category: #{e}"
end
```

#### Using the list_report_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportCategoryListVBAResponse>, Integer, Hash)> list_report_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportCategory
  data, status_code, headers = api_instance.list_report_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->list_report_category_with_http_info: #{e}"
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

[**ReportCategoryListVBAResponse**](ReportCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_category

> <MultiCodeResponseListVBAResponse> update_batch_report_category(vbasoftware_database, report_category)

Create or Update Batch ReportCategory

Create or Update multiple ReportCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_category = [Vba::ReportCategory.new({report_category: 'report_category_example'})] # Array<ReportCategory> | 

begin
  # Create or Update Batch ReportCategory
  result = api_instance.update_batch_report_category(vbasoftware_database, report_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->update_batch_report_category: #{e}"
end
```

#### Using the update_batch_report_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_category_with_http_info(vbasoftware_database, report_category)

```ruby
begin
  # Create or Update Batch ReportCategory
  data, status_code, headers = api_instance.update_batch_report_category_with_http_info(vbasoftware_database, report_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->update_batch_report_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_category** | [**Array&lt;ReportCategory&gt;**](ReportCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_category

> <ReportCategoryVBAResponse> update_report_category(vbasoftware_database, report_category, report_category2)

Update ReportCategory

Updates a specific ReportCategory.

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

api_instance = Vba::ReportCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_category = 'report_category_example' # String | Report Category
report_category2 = Vba::ReportCategory.new({report_category: 'report_category_example'}) # ReportCategory | 

begin
  # Update ReportCategory
  result = api_instance.update_report_category(vbasoftware_database, report_category, report_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->update_report_category: #{e}"
end
```

#### Using the update_report_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportCategoryVBAResponse>, Integer, Hash)> update_report_category_with_http_info(vbasoftware_database, report_category, report_category2)

```ruby
begin
  # Update ReportCategory
  data, status_code, headers = api_instance.update_report_category_with_http_info(vbasoftware_database, report_category, report_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportCategoriesApi->update_report_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_category** | **String** | Report Category |  |
| **report_category2** | [**ReportCategory**](ReportCategory.md) |  |  |

### Return type

[**ReportCategoryVBAResponse**](ReportCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

