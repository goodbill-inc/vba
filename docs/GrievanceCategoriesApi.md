# Vba::GrievanceCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance_category**](GrievanceCategoriesApi.md#create_grievance_category) | **POST** /grievance-categories | Create GrievanceCategory |
| [**delete_grievance_category**](GrievanceCategoriesApi.md#delete_grievance_category) | **DELETE** /grievance-categories/{grievanceCategory} | Delete GrievanceCategory |
| [**get_grievance_category**](GrievanceCategoriesApi.md#get_grievance_category) | **GET** /grievance-categories/{grievanceCategory} | Get GrievanceCategory |
| [**list_grievance_category**](GrievanceCategoriesApi.md#list_grievance_category) | **GET** /grievance-categories | List GrievanceCategory |
| [**update_batch_grievance_category**](GrievanceCategoriesApi.md#update_batch_grievance_category) | **PUT** /grievance-categories-batch | Create or Update Batch GrievanceCategory |
| [**update_grievance_category**](GrievanceCategoriesApi.md#update_grievance_category) | **PUT** /grievance-categories/{grievanceCategory} | Update GrievanceCategory |


## create_grievance_category

> <GrievanceCategoryVBAResponse> create_grievance_category(vbasoftware_database, grievance_category)

Create GrievanceCategory

Creates a new GrievanceCategory

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_category = Vba::GrievanceCategory.new({grievance_category: 'grievance_category_example', default_category: false}) # GrievanceCategory | 

begin
  # Create GrievanceCategory
  result = api_instance.create_grievance_category(vbasoftware_database, grievance_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->create_grievance_category: #{e}"
end
```

#### Using the create_grievance_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceCategoryVBAResponse>, Integer, Hash)> create_grievance_category_with_http_info(vbasoftware_database, grievance_category)

```ruby
begin
  # Create GrievanceCategory
  data, status_code, headers = api_instance.create_grievance_category_with_http_info(vbasoftware_database, grievance_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->create_grievance_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_category** | [**GrievanceCategory**](GrievanceCategory.md) |  |  |

### Return type

[**GrievanceCategoryVBAResponse**](GrievanceCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_grievance_category

> delete_grievance_category(vbasoftware_database, grievance_category)

Delete GrievanceCategory

Deletes an GrievanceCategory

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_category = 'grievance_category_example' # String | Grievance Category

begin
  # Delete GrievanceCategory
  api_instance.delete_grievance_category(vbasoftware_database, grievance_category)
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->delete_grievance_category: #{e}"
end
```

#### Using the delete_grievance_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_category_with_http_info(vbasoftware_database, grievance_category)

```ruby
begin
  # Delete GrievanceCategory
  data, status_code, headers = api_instance.delete_grievance_category_with_http_info(vbasoftware_database, grievance_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->delete_grievance_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_category** | **String** | Grievance Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_grievance_category

> <GrievanceCategoryVBAResponse> get_grievance_category(vbasoftware_database, grievance_category)

Get GrievanceCategory

Gets GrievanceCategory

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_category = 'grievance_category_example' # String | Grievance Category

begin
  # Get GrievanceCategory
  result = api_instance.get_grievance_category(vbasoftware_database, grievance_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->get_grievance_category: #{e}"
end
```

#### Using the get_grievance_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceCategoryVBAResponse>, Integer, Hash)> get_grievance_category_with_http_info(vbasoftware_database, grievance_category)

```ruby
begin
  # Get GrievanceCategory
  data, status_code, headers = api_instance.get_grievance_category_with_http_info(vbasoftware_database, grievance_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->get_grievance_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_category** | **String** | Grievance Category |  |

### Return type

[**GrievanceCategoryVBAResponse**](GrievanceCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance_category

> <GrievanceCategoryListVBAResponse> list_grievance_category(vbasoftware_database, opts)

List GrievanceCategory

Lists all GrievanceCategory

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GrievanceCategory
  result = api_instance.list_grievance_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->list_grievance_category: #{e}"
end
```

#### Using the list_grievance_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceCategoryListVBAResponse>, Integer, Hash)> list_grievance_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GrievanceCategory
  data, status_code, headers = api_instance.list_grievance_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->list_grievance_category_with_http_info: #{e}"
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

[**GrievanceCategoryListVBAResponse**](GrievanceCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance_category

> <MultiCodeResponseListVBAResponse> update_batch_grievance_category(vbasoftware_database, grievance_category)

Create or Update Batch GrievanceCategory

Create or Update multiple GrievanceCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_category = [Vba::GrievanceCategory.new({grievance_category: 'grievance_category_example', default_category: false})] # Array<GrievanceCategory> | 

begin
  # Create or Update Batch GrievanceCategory
  result = api_instance.update_batch_grievance_category(vbasoftware_database, grievance_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->update_batch_grievance_category: #{e}"
end
```

#### Using the update_batch_grievance_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_category_with_http_info(vbasoftware_database, grievance_category)

```ruby
begin
  # Create or Update Batch GrievanceCategory
  data, status_code, headers = api_instance.update_batch_grievance_category_with_http_info(vbasoftware_database, grievance_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->update_batch_grievance_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_category** | [**Array&lt;GrievanceCategory&gt;**](GrievanceCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance_category

> <GrievanceCategoryVBAResponse> update_grievance_category(vbasoftware_database, grievance_category, grievance_category2)

Update GrievanceCategory

Updates a specific GrievanceCategory.

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

api_instance = Vba::GrievanceCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_category = 'grievance_category_example' # String | Grievance Category
grievance_category2 = Vba::GrievanceCategory.new({grievance_category: 'grievance_category_example', default_category: false}) # GrievanceCategory | 

begin
  # Update GrievanceCategory
  result = api_instance.update_grievance_category(vbasoftware_database, grievance_category, grievance_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->update_grievance_category: #{e}"
end
```

#### Using the update_grievance_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceCategoryVBAResponse>, Integer, Hash)> update_grievance_category_with_http_info(vbasoftware_database, grievance_category, grievance_category2)

```ruby
begin
  # Update GrievanceCategory
  data, status_code, headers = api_instance.update_grievance_category_with_http_info(vbasoftware_database, grievance_category, grievance_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceCategoriesApi->update_grievance_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_category** | **String** | Grievance Category |  |
| **grievance_category2** | [**GrievanceCategory**](GrievanceCategory.md) |  |  |

### Return type

[**GrievanceCategoryVBAResponse**](GrievanceCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

