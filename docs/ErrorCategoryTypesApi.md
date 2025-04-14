# Vba::ErrorCategoryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_error_category_type**](ErrorCategoryTypesApi.md#create_error_category_type) | **POST** /error-category-types | Create ErrorCategoryType |
| [**delete_error_category_type**](ErrorCategoryTypesApi.md#delete_error_category_type) | **DELETE** /error-category-types/{errorCategory}/{errorType}/{errorCode} | Delete ErrorCategoryType |
| [**get_error_category_type**](ErrorCategoryTypesApi.md#get_error_category_type) | **GET** /error-category-types/{errorCategory}/{errorType}/{errorCode} | Get ErrorCategoryType |
| [**list_error_category_type**](ErrorCategoryTypesApi.md#list_error_category_type) | **GET** /error-category-types | List ErrorCategoryType |
| [**update_batch_error_category_type**](ErrorCategoryTypesApi.md#update_batch_error_category_type) | **PUT** /error-category-types-batch | Create or Update Batch ErrorCategoryType |
| [**update_error_category_type**](ErrorCategoryTypesApi.md#update_error_category_type) | **PUT** /error-category-types/{errorCategory}/{errorType}/{errorCode} | Update ErrorCategoryType |


## create_error_category_type

> <ErrorCategoryTypeVBAResponse> create_error_category_type(vbasoftware_database, error_category_type)

Create ErrorCategoryType

Creates a new ErrorCategoryType

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_category_type = Vba::ErrorCategoryType.new({error_category: 'error_category_example', error_type: 'error_type_example', error_code: 'error_code_example', error_severity: 37}) # ErrorCategoryType | 

begin
  # Create ErrorCategoryType
  result = api_instance.create_error_category_type(vbasoftware_database, error_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->create_error_category_type: #{e}"
end
```

#### Using the create_error_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorCategoryTypeVBAResponse>, Integer, Hash)> create_error_category_type_with_http_info(vbasoftware_database, error_category_type)

```ruby
begin
  # Create ErrorCategoryType
  data, status_code, headers = api_instance.create_error_category_type_with_http_info(vbasoftware_database, error_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->create_error_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_category_type** | [**ErrorCategoryType**](ErrorCategoryType.md) |  |  |

### Return type

[**ErrorCategoryTypeVBAResponse**](ErrorCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_error_category_type

> delete_error_category_type(vbasoftware_database, error_category, error_type, error_code)

Delete ErrorCategoryType

Deletes an ErrorCategoryType

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_category = 'error_category_example' # String | Error Category
error_type = 'error_type_example' # String | Error Type
error_code = 'error_code_example' # String | Error Code

begin
  # Delete ErrorCategoryType
  api_instance.delete_error_category_type(vbasoftware_database, error_category, error_type, error_code)
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->delete_error_category_type: #{e}"
end
```

#### Using the delete_error_category_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code)

```ruby
begin
  # Delete ErrorCategoryType
  data, status_code, headers = api_instance.delete_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->delete_error_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_category** | **String** | Error Category |  |
| **error_type** | **String** | Error Type |  |
| **error_code** | **String** | Error Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_error_category_type

> <ErrorCategoryTypeVBAResponse> get_error_category_type(vbasoftware_database, error_category, error_type, error_code)

Get ErrorCategoryType

Gets ErrorCategoryType

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_category = 'error_category_example' # String | Error Category
error_type = 'error_type_example' # String | Error Type
error_code = 'error_code_example' # String | Error Code

begin
  # Get ErrorCategoryType
  result = api_instance.get_error_category_type(vbasoftware_database, error_category, error_type, error_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->get_error_category_type: #{e}"
end
```

#### Using the get_error_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorCategoryTypeVBAResponse>, Integer, Hash)> get_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code)

```ruby
begin
  # Get ErrorCategoryType
  data, status_code, headers = api_instance.get_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->get_error_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_category** | **String** | Error Category |  |
| **error_type** | **String** | Error Type |  |
| **error_code** | **String** | Error Code |  |

### Return type

[**ErrorCategoryTypeVBAResponse**](ErrorCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_error_category_type

> <ErrorCategoryTypeListVBAResponse> list_error_category_type(vbasoftware_database, opts)

List ErrorCategoryType

Lists all ErrorCategoryType

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ErrorCategoryType
  result = api_instance.list_error_category_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->list_error_category_type: #{e}"
end
```

#### Using the list_error_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorCategoryTypeListVBAResponse>, Integer, Hash)> list_error_category_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ErrorCategoryType
  data, status_code, headers = api_instance.list_error_category_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorCategoryTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->list_error_category_type_with_http_info: #{e}"
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

[**ErrorCategoryTypeListVBAResponse**](ErrorCategoryTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_error_category_type

> <MultiCodeResponseListVBAResponse> update_batch_error_category_type(vbasoftware_database, error_category_type)

Create or Update Batch ErrorCategoryType

Create or Update multiple ErrorCategoryType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_category_type = [Vba::ErrorCategoryType.new({error_category: 'error_category_example', error_type: 'error_type_example', error_code: 'error_code_example', error_severity: 37})] # Array<ErrorCategoryType> | 

begin
  # Create or Update Batch ErrorCategoryType
  result = api_instance.update_batch_error_category_type(vbasoftware_database, error_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->update_batch_error_category_type: #{e}"
end
```

#### Using the update_batch_error_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_error_category_type_with_http_info(vbasoftware_database, error_category_type)

```ruby
begin
  # Create or Update Batch ErrorCategoryType
  data, status_code, headers = api_instance.update_batch_error_category_type_with_http_info(vbasoftware_database, error_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->update_batch_error_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_category_type** | [**Array&lt;ErrorCategoryType&gt;**](ErrorCategoryType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_error_category_type

> <ErrorCategoryTypeVBAResponse> update_error_category_type(vbasoftware_database, error_category, error_type, error_code, error_category_type)

Update ErrorCategoryType

Updates a specific ErrorCategoryType.

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

api_instance = Vba::ErrorCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_category = 'error_category_example' # String | Error Category
error_type = 'error_type_example' # String | Error Type
error_code = 'error_code_example' # String | Error Code
error_category_type = Vba::ErrorCategoryType.new({error_category: 'error_category_example', error_type: 'error_type_example', error_code: 'error_code_example', error_severity: 37}) # ErrorCategoryType | 

begin
  # Update ErrorCategoryType
  result = api_instance.update_error_category_type(vbasoftware_database, error_category, error_type, error_code, error_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->update_error_category_type: #{e}"
end
```

#### Using the update_error_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorCategoryTypeVBAResponse>, Integer, Hash)> update_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code, error_category_type)

```ruby
begin
  # Update ErrorCategoryType
  data, status_code, headers = api_instance.update_error_category_type_with_http_info(vbasoftware_database, error_category, error_type, error_code, error_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorCategoryTypesApi->update_error_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_category** | **String** | Error Category |  |
| **error_type** | **String** | Error Type |  |
| **error_code** | **String** | Error Code |  |
| **error_category_type** | [**ErrorCategoryType**](ErrorCategoryType.md) |  |  |

### Return type

[**ErrorCategoryTypeVBAResponse**](ErrorCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

