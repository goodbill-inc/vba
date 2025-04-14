# Vba::NoteCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_category**](NoteCategoriesApi.md#create_note_category) | **POST** /note-categories | Create NoteCategory |
| [**delete_note_category**](NoteCategoriesApi.md#delete_note_category) | **DELETE** /note-categories/{noteCategory} | Delete NoteCategory |
| [**get_note_category**](NoteCategoriesApi.md#get_note_category) | **GET** /note-categories/{noteCategory} | Get NoteCategory |
| [**list_note_category**](NoteCategoriesApi.md#list_note_category) | **GET** /note-categories | List NoteCategory |
| [**update_batch_note_category**](NoteCategoriesApi.md#update_batch_note_category) | **PUT** /note-categories-batch | Create or Update Batch NoteCategory |
| [**update_note_category**](NoteCategoriesApi.md#update_note_category) | **PUT** /note-categories/{noteCategory} | Update NoteCategory |


## create_note_category

> <NoteCategoryVBAResponse> create_note_category(vbasoftware_database, note_category)

Create NoteCategory

Creates a new NoteCategory

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = Vba::NoteCategory.new({note_category: 'note_category_example', allow_note_alert: false}) # NoteCategory | 

begin
  # Create NoteCategory
  result = api_instance.create_note_category(vbasoftware_database, note_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->create_note_category: #{e}"
end
```

#### Using the create_note_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryVBAResponse>, Integer, Hash)> create_note_category_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # Create NoteCategory
  data, status_code, headers = api_instance.create_note_category_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->create_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | [**NoteCategory**](NoteCategory.md) |  |  |

### Return type

[**NoteCategoryVBAResponse**](NoteCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_category

> delete_note_category(vbasoftware_database, note_category)

Delete NoteCategory

Deletes an NoteCategory

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category

begin
  # Delete NoteCategory
  api_instance.delete_note_category(vbasoftware_database, note_category)
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->delete_note_category: #{e}"
end
```

#### Using the delete_note_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_category_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # Delete NoteCategory
  data, status_code, headers = api_instance.delete_note_category_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->delete_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_category

> <NoteCategoryVBAResponse> get_note_category(vbasoftware_database, note_category)

Get NoteCategory

Gets NoteCategory

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category

begin
  # Get NoteCategory
  result = api_instance.get_note_category(vbasoftware_database, note_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->get_note_category: #{e}"
end
```

#### Using the get_note_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryVBAResponse>, Integer, Hash)> get_note_category_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # Get NoteCategory
  data, status_code, headers = api_instance.get_note_category_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->get_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |

### Return type

[**NoteCategoryVBAResponse**](NoteCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_category

> <NoteCategoryListVBAResponse> list_note_category(vbasoftware_database)

List NoteCategory

Lists all NoteCategory 

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List NoteCategory
  result = api_instance.list_note_category(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->list_note_category: #{e}"
end
```

#### Using the list_note_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryListVBAResponse>, Integer, Hash)> list_note_category_with_http_info(vbasoftware_database)

```ruby
begin
  # List NoteCategory
  data, status_code, headers = api_instance.list_note_category_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->list_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**NoteCategoryListVBAResponse**](NoteCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_category

> <MultiCodeResponseListVBAResponse> update_batch_note_category(vbasoftware_database, note_category)

Create or Update Batch NoteCategory

Create or Update multiple NoteCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = [Vba::NoteCategory.new({note_category: 'note_category_example', allow_note_alert: false})] # Array<NoteCategory> | 

begin
  # Create or Update Batch NoteCategory
  result = api_instance.update_batch_note_category(vbasoftware_database, note_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->update_batch_note_category: #{e}"
end
```

#### Using the update_batch_note_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_category_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # Create or Update Batch NoteCategory
  data, status_code, headers = api_instance.update_batch_note_category_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->update_batch_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | [**Array&lt;NoteCategory&gt;**](NoteCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_category

> <NoteCategoryVBAResponse> update_note_category(vbasoftware_database, note_category, note_category2)

Update NoteCategory

Updates a specific NoteCategory.

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

api_instance = Vba::NoteCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category
note_category2 = Vba::NoteCategory.new({note_category: 'note_category_example', allow_note_alert: false}) # NoteCategory | 

begin
  # Update NoteCategory
  result = api_instance.update_note_category(vbasoftware_database, note_category, note_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->update_note_category: #{e}"
end
```

#### Using the update_note_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryVBAResponse>, Integer, Hash)> update_note_category_with_http_info(vbasoftware_database, note_category, note_category2)

```ruby
begin
  # Update NoteCategory
  data, status_code, headers = api_instance.update_note_category_with_http_info(vbasoftware_database, note_category, note_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoriesApi->update_note_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |
| **note_category2** | [**NoteCategory**](NoteCategory.md) |  |  |

### Return type

[**NoteCategoryVBAResponse**](NoteCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

