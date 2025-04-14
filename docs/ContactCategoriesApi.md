# Vba::ContactCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_category**](ContactCategoriesApi.md#create_contact_category) | **POST** /contact-categories | Create ContactCategory |
| [**delete_contact_category**](ContactCategoriesApi.md#delete_contact_category) | **DELETE** /contact-categories/{contactCategory} | Delete ContactCategory |
| [**get_contact_category**](ContactCategoriesApi.md#get_contact_category) | **GET** /contact-categories/{contactCategory} | Get ContactCategory |
| [**list_contact_category**](ContactCategoriesApi.md#list_contact_category) | **GET** /contact-categories | List ContactCategory |
| [**update_batch_contact_category**](ContactCategoriesApi.md#update_batch_contact_category) | **PUT** /contact-categories-batch | Create or Update Batch ContactCategory |
| [**update_contact_category**](ContactCategoriesApi.md#update_contact_category) | **PUT** /contact-categories/{contactCategory} | Update ContactCategory |


## create_contact_category

> <ContactCategoryVBAResponse> create_contact_category(vbasoftware_database, contact_category)

Create ContactCategory

Creates a new ContactCategory

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_category = Vba::ContactCategory.new({contact_category: 'contact_category_example'}) # ContactCategory | 

begin
  # Create ContactCategory
  result = api_instance.create_contact_category(vbasoftware_database, contact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->create_contact_category: #{e}"
end
```

#### Using the create_contact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCategoryVBAResponse>, Integer, Hash)> create_contact_category_with_http_info(vbasoftware_database, contact_category)

```ruby
begin
  # Create ContactCategory
  data, status_code, headers = api_instance.create_contact_category_with_http_info(vbasoftware_database, contact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->create_contact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_category** | [**ContactCategory**](ContactCategory.md) |  |  |

### Return type

[**ContactCategoryVBAResponse**](ContactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_category

> delete_contact_category(vbasoftware_database, contact_category)

Delete ContactCategory

Deletes an ContactCategory

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_category = 'contact_category_example' # String | Contact Category

begin
  # Delete ContactCategory
  api_instance.delete_contact_category(vbasoftware_database, contact_category)
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->delete_contact_category: #{e}"
end
```

#### Using the delete_contact_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_category_with_http_info(vbasoftware_database, contact_category)

```ruby
begin
  # Delete ContactCategory
  data, status_code, headers = api_instance.delete_contact_category_with_http_info(vbasoftware_database, contact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->delete_contact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_category** | **String** | Contact Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_category

> <ContactCategoryVBAResponse> get_contact_category(vbasoftware_database, contact_category)

Get ContactCategory

Gets ContactCategory

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_category = 'contact_category_example' # String | Contact Category

begin
  # Get ContactCategory
  result = api_instance.get_contact_category(vbasoftware_database, contact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->get_contact_category: #{e}"
end
```

#### Using the get_contact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCategoryVBAResponse>, Integer, Hash)> get_contact_category_with_http_info(vbasoftware_database, contact_category)

```ruby
begin
  # Get ContactCategory
  data, status_code, headers = api_instance.get_contact_category_with_http_info(vbasoftware_database, contact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->get_contact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_category** | **String** | Contact Category |  |

### Return type

[**ContactCategoryVBAResponse**](ContactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_category

> <ContactCategoryListVBAResponse> list_contact_category(vbasoftware_database, opts)

List ContactCategory

Lists all ContactCategory

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactCategory
  result = api_instance.list_contact_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->list_contact_category: #{e}"
end
```

#### Using the list_contact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCategoryListVBAResponse>, Integer, Hash)> list_contact_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactCategory
  data, status_code, headers = api_instance.list_contact_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->list_contact_category_with_http_info: #{e}"
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

[**ContactCategoryListVBAResponse**](ContactCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_category

> <MultiCodeResponseListVBAResponse> update_batch_contact_category(vbasoftware_database, contact_category)

Create or Update Batch ContactCategory

Create or Update multiple ContactCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_category = [Vba::ContactCategory.new({contact_category: 'contact_category_example'})] # Array<ContactCategory> | 

begin
  # Create or Update Batch ContactCategory
  result = api_instance.update_batch_contact_category(vbasoftware_database, contact_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->update_batch_contact_category: #{e}"
end
```

#### Using the update_batch_contact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_category_with_http_info(vbasoftware_database, contact_category)

```ruby
begin
  # Create or Update Batch ContactCategory
  data, status_code, headers = api_instance.update_batch_contact_category_with_http_info(vbasoftware_database, contact_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->update_batch_contact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_category** | [**Array&lt;ContactCategory&gt;**](ContactCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact_category

> <ContactCategoryVBAResponse> update_contact_category(vbasoftware_database, contact_category, contact_category2)

Update ContactCategory

Updates a specific ContactCategory.

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

api_instance = Vba::ContactCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_category = 'contact_category_example' # String | Contact Category
contact_category2 = Vba::ContactCategory.new({contact_category: 'contact_category_example'}) # ContactCategory | 

begin
  # Update ContactCategory
  result = api_instance.update_contact_category(vbasoftware_database, contact_category, contact_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->update_contact_category: #{e}"
end
```

#### Using the update_contact_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCategoryVBAResponse>, Integer, Hash)> update_contact_category_with_http_info(vbasoftware_database, contact_category, contact_category2)

```ruby
begin
  # Update ContactCategory
  data, status_code, headers = api_instance.update_contact_category_with_http_info(vbasoftware_database, contact_category, contact_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactCategoriesApi->update_contact_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_category** | **String** | Contact Category |  |
| **contact_category2** | [**ContactCategory**](ContactCategory.md) |  |  |

### Return type

[**ContactCategoryVBAResponse**](ContactCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

