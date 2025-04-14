# Vba::NoteCategoryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_category_type**](NoteCategoryTypesApi.md#create_note_category_type) | **POST** /note-categories/{noteCategory}/note-types/{noteType} | Create NoteCategoryType |
| [**delete_note_category_type**](NoteCategoryTypesApi.md#delete_note_category_type) | **DELETE** /note-categories/{noteCategory}/note-types/{noteType} | Delete NoteCategoryType |
| [**get_note_category_type**](NoteCategoryTypesApi.md#get_note_category_type) | **GET** /note-categories/{noteCategory}/note-types/{noteType} | Get NoteCategoryType |
| [**list_note_category_type**](NoteCategoryTypesApi.md#list_note_category_type) | **GET** /note-categories/{noteCategory}/note-types | List NoteCategoryType |
| [**update_batch_note_category_type**](NoteCategoryTypesApi.md#update_batch_note_category_type) | **PUT** /note-categories/{noteCategory}/note-types-batch | Create multiple NoteCategoryType |


## create_note_category_type

> <NoteCategoryTypeVBAResponse> create_note_category_type(vbasoftware_database, note_category, note_type)

Create NoteCategoryType

Creates a new NoteCategoryType

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

api_instance = Vba::NoteCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category
note_type = 'note_type_example' # String | Note Type

begin
  # Create NoteCategoryType
  result = api_instance.create_note_category_type(vbasoftware_database, note_category, note_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->create_note_category_type: #{e}"
end
```

#### Using the create_note_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryTypeVBAResponse>, Integer, Hash)> create_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)

```ruby
begin
  # Create NoteCategoryType
  data, status_code, headers = api_instance.create_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->create_note_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |
| **note_type** | **String** | Note Type |  |

### Return type

[**NoteCategoryTypeVBAResponse**](NoteCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_note_category_type

> delete_note_category_type(vbasoftware_database, note_category, note_type)

Delete NoteCategoryType

Deletes an NoteCategoryType

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

api_instance = Vba::NoteCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category
note_type = 'note_type_example' # String | Note Type

begin
  # Delete NoteCategoryType
  api_instance.delete_note_category_type(vbasoftware_database, note_category, note_type)
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->delete_note_category_type: #{e}"
end
```

#### Using the delete_note_category_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)

```ruby
begin
  # Delete NoteCategoryType
  data, status_code, headers = api_instance.delete_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->delete_note_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |
| **note_type** | **String** | Note Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_category_type

> <NoteCategoryTypeVBAResponse> get_note_category_type(vbasoftware_database, note_category, note_type)

Get NoteCategoryType

Gets NoteCategoryType

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

api_instance = Vba::NoteCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category
note_type = 'note_type_example' # String | Note Type

begin
  # Get NoteCategoryType
  result = api_instance.get_note_category_type(vbasoftware_database, note_category, note_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->get_note_category_type: #{e}"
end
```

#### Using the get_note_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryTypeVBAResponse>, Integer, Hash)> get_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)

```ruby
begin
  # Get NoteCategoryType
  data, status_code, headers = api_instance.get_note_category_type_with_http_info(vbasoftware_database, note_category, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->get_note_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |
| **note_type** | **String** | Note Type |  |

### Return type

[**NoteCategoryTypeVBAResponse**](NoteCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_category_type

> <NoteCategoryTypeListVBAResponse> list_note_category_type(vbasoftware_database, note_category)

List NoteCategoryType

Lists all NoteCategoryType noteCategory

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

api_instance = Vba::NoteCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category

begin
  # List NoteCategoryType
  result = api_instance.list_note_category_type(vbasoftware_database, note_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->list_note_category_type: #{e}"
end
```

#### Using the list_note_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteCategoryTypeListVBAResponse>, Integer, Hash)> list_note_category_type_with_http_info(vbasoftware_database, note_category)

```ruby
begin
  # List NoteCategoryType
  data, status_code, headers = api_instance.list_note_category_type_with_http_info(vbasoftware_database, note_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteCategoryTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->list_note_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |

### Return type

[**NoteCategoryTypeListVBAResponse**](NoteCategoryTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_category_type

> <MultiCodeResponseListVBAResponse> update_batch_note_category_type(vbasoftware_database, note_category, note_category_type)

Create multiple NoteCategoryType

Create multiple NoteCategoryType at once.  If the entity exists, an error message will be returned.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_category = 'note_category_example' # String | Note Category
note_category_type = [Vba::NoteCategoryType.new({note_category: 'note_category_example', note_type: 'note_type_example'})] # Array<NoteCategoryType> | 

begin
  # Create multiple NoteCategoryType
  result = api_instance.update_batch_note_category_type(vbasoftware_database, note_category, note_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->update_batch_note_category_type: #{e}"
end
```

#### Using the update_batch_note_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_category_type_with_http_info(vbasoftware_database, note_category, note_category_type)

```ruby
begin
  # Create multiple NoteCategoryType
  data, status_code, headers = api_instance.update_batch_note_category_type_with_http_info(vbasoftware_database, note_category, note_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteCategoryTypesApi->update_batch_note_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_category** | **String** | Note Category |  |
| **note_category_type** | [**Array&lt;NoteCategoryType&gt;**](NoteCategoryType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

