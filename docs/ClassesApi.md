# Vba::ClassesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_class**](ClassesApi.md#create_class) | **POST** /classes | Create Class |
| [**delete_class**](ClassesApi.md#delete_class) | **DELETE** /classes/{classCode} | Delete Class |
| [**get_class**](ClassesApi.md#get_class) | **GET** /classes/{classCode} | Get Class |
| [**list_class**](ClassesApi.md#list_class) | **GET** /classes | List Class |
| [**update_batch_class**](ClassesApi.md#update_batch_class) | **PUT** /classes-batch | Create or Update Batch Class |
| [**update_class**](ClassesApi.md#update_class) | **PUT** /classes/{classCode} | Update Class |


## create_class

> <ClassVBAResponse> create_class(vbasoftware_database, model_class)

Create Class

Creates a new Class

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
model_class = Vba::ModelClass.new({class_code: 'class_code_example'}) # ModelClass | 

begin
  # Create Class
  result = api_instance.create_class(vbasoftware_database, model_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->create_class: #{e}"
end
```

#### Using the create_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassVBAResponse>, Integer, Hash)> create_class_with_http_info(vbasoftware_database, model_class)

```ruby
begin
  # Create Class
  data, status_code, headers = api_instance.create_class_with_http_info(vbasoftware_database, model_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->create_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **model_class** | [**ModelClass**](ModelClass.md) |  |  |

### Return type

[**ClassVBAResponse**](ClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_class

> delete_class(vbasoftware_database, class_code)

Delete Class

Deletes an Class

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
class_code = 'class_code_example' # String | Class Code

begin
  # Delete Class
  api_instance.delete_class(vbasoftware_database, class_code)
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->delete_class: #{e}"
end
```

#### Using the delete_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_class_with_http_info(vbasoftware_database, class_code)

```ruby
begin
  # Delete Class
  data, status_code, headers = api_instance.delete_class_with_http_info(vbasoftware_database, class_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->delete_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **class_code** | **String** | Class Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_class

> <ClassVBAResponse> get_class(vbasoftware_database, class_code)

Get Class

Gets Class

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
class_code = 'class_code_example' # String | Class Code

begin
  # Get Class
  result = api_instance.get_class(vbasoftware_database, class_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->get_class: #{e}"
end
```

#### Using the get_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassVBAResponse>, Integer, Hash)> get_class_with_http_info(vbasoftware_database, class_code)

```ruby
begin
  # Get Class
  data, status_code, headers = api_instance.get_class_with_http_info(vbasoftware_database, class_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->get_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **class_code** | **String** | Class Code |  |

### Return type

[**ClassVBAResponse**](ClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_class

> <ClassListVBAResponse> list_class(vbasoftware_database, opts)

List Class

Lists all Class

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Class
  result = api_instance.list_class(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->list_class: #{e}"
end
```

#### Using the list_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassListVBAResponse>, Integer, Hash)> list_class_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Class
  data, status_code, headers = api_instance.list_class_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->list_class_with_http_info: #{e}"
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

[**ClassListVBAResponse**](ClassListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_class

> <MultiCodeResponseListVBAResponse> update_batch_class(vbasoftware_database, model_class)

Create or Update Batch Class

Create or Update multiple Class at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
model_class = [Vba::ModelClass.new({class_code: 'class_code_example'})] # Array<ModelClass> | 

begin
  # Create or Update Batch Class
  result = api_instance.update_batch_class(vbasoftware_database, model_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->update_batch_class: #{e}"
end
```

#### Using the update_batch_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_class_with_http_info(vbasoftware_database, model_class)

```ruby
begin
  # Create or Update Batch Class
  data, status_code, headers = api_instance.update_batch_class_with_http_info(vbasoftware_database, model_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->update_batch_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **model_class** | [**Array&lt;ModelClass&gt;**](ModelClass.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_class

> <ClassVBAResponse> update_class(vbasoftware_database, class_code, model_class)

Update Class

Updates a specific Class.

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

api_instance = Vba::ClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
class_code = 'class_code_example' # String | Class Code
model_class = Vba::ModelClass.new({class_code: 'class_code_example'}) # ModelClass | 

begin
  # Update Class
  result = api_instance.update_class(vbasoftware_database, class_code, model_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->update_class: #{e}"
end
```

#### Using the update_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassVBAResponse>, Integer, Hash)> update_class_with_http_info(vbasoftware_database, class_code, model_class)

```ruby
begin
  # Update Class
  data, status_code, headers = api_instance.update_class_with_http_info(vbasoftware_database, class_code, model_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClassesApi->update_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **class_code** | **String** | Class Code |  |
| **model_class** | [**ModelClass**](ModelClass.md) |  |  |

### Return type

[**ClassVBAResponse**](ClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

