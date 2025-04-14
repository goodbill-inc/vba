# Vba::CommissionCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_category**](CommissionCategoriesApi.md#create_commission_category) | **POST** /commission-categories | Create CommissionCategory |
| [**delete_commission_category**](CommissionCategoriesApi.md#delete_commission_category) | **DELETE** /commission-categories/{commCategory} | Delete CommissionCategory |
| [**get_commission_category**](CommissionCategoriesApi.md#get_commission_category) | **GET** /commission-categories/{commCategory} | Get CommissionCategory |
| [**list_commission_category**](CommissionCategoriesApi.md#list_commission_category) | **GET** /commission-categories | List CommissionCategory |
| [**update_batch_commission_category**](CommissionCategoriesApi.md#update_batch_commission_category) | **PUT** /commission-categories-batch | Create or Update Batch CommissionCategory |
| [**update_commission_category**](CommissionCategoriesApi.md#update_commission_category) | **PUT** /commission-categories/{commCategory} | Update CommissionCategory |


## create_commission_category

> <CommissionCategoryVBAResponse> create_commission_category(vbasoftware_database, commission_category)

Create CommissionCategory

Creates a new CommissionCategory

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_category = Vba::CommissionCategory.new({commission_category: 'commission_category_example'}) # CommissionCategory | 

begin
  # Create CommissionCategory
  result = api_instance.create_commission_category(vbasoftware_database, commission_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->create_commission_category: #{e}"
end
```

#### Using the create_commission_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCategoryVBAResponse>, Integer, Hash)> create_commission_category_with_http_info(vbasoftware_database, commission_category)

```ruby
begin
  # Create CommissionCategory
  data, status_code, headers = api_instance.create_commission_category_with_http_info(vbasoftware_database, commission_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->create_commission_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_category** | [**CommissionCategory**](CommissionCategory.md) |  |  |

### Return type

[**CommissionCategoryVBAResponse**](CommissionCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_category

> delete_commission_category(vbasoftware_database, comm_category)

Delete CommissionCategory

Deletes an CommissionCategory

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_category = 'comm_category_example' # String | Commission Category

begin
  # Delete CommissionCategory
  api_instance.delete_commission_category(vbasoftware_database, comm_category)
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->delete_commission_category: #{e}"
end
```

#### Using the delete_commission_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_category_with_http_info(vbasoftware_database, comm_category)

```ruby
begin
  # Delete CommissionCategory
  data, status_code, headers = api_instance.delete_commission_category_with_http_info(vbasoftware_database, comm_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->delete_commission_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_category** | **String** | Commission Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_category

> <CommissionCategoryVBAResponse> get_commission_category(vbasoftware_database, comm_category)

Get CommissionCategory

Gets CommissionCategory

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_category = 'comm_category_example' # String | Commission Category

begin
  # Get CommissionCategory
  result = api_instance.get_commission_category(vbasoftware_database, comm_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->get_commission_category: #{e}"
end
```

#### Using the get_commission_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCategoryVBAResponse>, Integer, Hash)> get_commission_category_with_http_info(vbasoftware_database, comm_category)

```ruby
begin
  # Get CommissionCategory
  data, status_code, headers = api_instance.get_commission_category_with_http_info(vbasoftware_database, comm_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->get_commission_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_category** | **String** | Commission Category |  |

### Return type

[**CommissionCategoryVBAResponse**](CommissionCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_category

> <CommissionCategoryListVBAResponse> list_commission_category(vbasoftware_database, opts)

List CommissionCategory

Lists all CommissionCategory

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionCategory
  result = api_instance.list_commission_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->list_commission_category: #{e}"
end
```

#### Using the list_commission_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCategoryListVBAResponse>, Integer, Hash)> list_commission_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionCategory
  data, status_code, headers = api_instance.list_commission_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->list_commission_category_with_http_info: #{e}"
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

[**CommissionCategoryListVBAResponse**](CommissionCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_category

> <MultiCodeResponseListVBAResponse> update_batch_commission_category(vbasoftware_database, commission_category)

Create or Update Batch CommissionCategory

Create or Update multiple CommissionCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_category = [Vba::CommissionCategory.new({commission_category: 'commission_category_example'})] # Array<CommissionCategory> | 

begin
  # Create or Update Batch CommissionCategory
  result = api_instance.update_batch_commission_category(vbasoftware_database, commission_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->update_batch_commission_category: #{e}"
end
```

#### Using the update_batch_commission_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_category_with_http_info(vbasoftware_database, commission_category)

```ruby
begin
  # Create or Update Batch CommissionCategory
  data, status_code, headers = api_instance.update_batch_commission_category_with_http_info(vbasoftware_database, commission_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->update_batch_commission_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_category** | [**Array&lt;CommissionCategory&gt;**](CommissionCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_category

> <CommissionCategoryVBAResponse> update_commission_category(vbasoftware_database, comm_category, commission_category)

Update CommissionCategory

Updates a specific CommissionCategory.

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

api_instance = Vba::CommissionCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_category = 'comm_category_example' # String | Commission Category
commission_category = Vba::CommissionCategory.new({commission_category: 'commission_category_example'}) # CommissionCategory | 

begin
  # Update CommissionCategory
  result = api_instance.update_commission_category(vbasoftware_database, comm_category, commission_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->update_commission_category: #{e}"
end
```

#### Using the update_commission_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionCategoryVBAResponse>, Integer, Hash)> update_commission_category_with_http_info(vbasoftware_database, comm_category, commission_category)

```ruby
begin
  # Update CommissionCategory
  data, status_code, headers = api_instance.update_commission_category_with_http_info(vbasoftware_database, comm_category, commission_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionCategoriesApi->update_commission_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_category** | **String** | Commission Category |  |
| **commission_category** | [**CommissionCategory**](CommissionCategory.md) |  |  |

### Return type

[**CommissionCategoryVBAResponse**](CommissionCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

