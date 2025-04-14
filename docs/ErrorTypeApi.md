# Vba::ErrorTypeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_error_type**](ErrorTypeApi.md#create_error_type) | **POST** /error-error-types | Create ErrorType |
| [**delete_error_type**](ErrorTypeApi.md#delete_error_type) | **DELETE** /error-error-types/{errorType} | Delete ErrorType |
| [**get_error_type**](ErrorTypeApi.md#get_error_type) | **GET** /error-error-types/{errorType} | Get ErrorType |
| [**list_error_type**](ErrorTypeApi.md#list_error_type) | **GET** /error-error-types | List ErrorType |
| [**update_batch_error_type**](ErrorTypeApi.md#update_batch_error_type) | **PUT** /error-error-types-batch | Create or Update Batch ErrorType |
| [**update_error_type**](ErrorTypeApi.md#update_error_type) | **PUT** /error-error-types/{errorType} | Update ErrorType |


## create_error_type

> <ErrorTypeVBAResponse> create_error_type(vbasoftware_database, error_type)

Create ErrorType

Creates a new ErrorType

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_type = Vba::ErrorType.new({error_type: 'error_type_example'}) # ErrorType | 

begin
  # Create ErrorType
  result = api_instance.create_error_type(vbasoftware_database, error_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->create_error_type: #{e}"
end
```

#### Using the create_error_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorTypeVBAResponse>, Integer, Hash)> create_error_type_with_http_info(vbasoftware_database, error_type)

```ruby
begin
  # Create ErrorType
  data, status_code, headers = api_instance.create_error_type_with_http_info(vbasoftware_database, error_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->create_error_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_type** | [**ErrorType**](ErrorType.md) |  |  |

### Return type

[**ErrorTypeVBAResponse**](ErrorTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_error_type

> delete_error_type(vbasoftware_database, error_type)

Delete ErrorType

Deletes an ErrorType

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_type = 'error_type_example' # String | Error Type

begin
  # Delete ErrorType
  api_instance.delete_error_type(vbasoftware_database, error_type)
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->delete_error_type: #{e}"
end
```

#### Using the delete_error_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_error_type_with_http_info(vbasoftware_database, error_type)

```ruby
begin
  # Delete ErrorType
  data, status_code, headers = api_instance.delete_error_type_with_http_info(vbasoftware_database, error_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->delete_error_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_type** | **String** | Error Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_error_type

> <ErrorTypeVBAResponse> get_error_type(vbasoftware_database, error_type)

Get ErrorType

Gets ErrorType

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_type = 'error_type_example' # String | Error Type

begin
  # Get ErrorType
  result = api_instance.get_error_type(vbasoftware_database, error_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->get_error_type: #{e}"
end
```

#### Using the get_error_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorTypeVBAResponse>, Integer, Hash)> get_error_type_with_http_info(vbasoftware_database, error_type)

```ruby
begin
  # Get ErrorType
  data, status_code, headers = api_instance.get_error_type_with_http_info(vbasoftware_database, error_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->get_error_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_type** | **String** | Error Type |  |

### Return type

[**ErrorTypeVBAResponse**](ErrorTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_error_type

> <ErrorTypeListVBAResponse> list_error_type(vbasoftware_database, opts)

List ErrorType

Lists all ErrorType

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ErrorType
  result = api_instance.list_error_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->list_error_type: #{e}"
end
```

#### Using the list_error_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorTypeListVBAResponse>, Integer, Hash)> list_error_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ErrorType
  data, status_code, headers = api_instance.list_error_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->list_error_type_with_http_info: #{e}"
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

[**ErrorTypeListVBAResponse**](ErrorTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_error_type

> <MultiCodeResponseListVBAResponse> update_batch_error_type(vbasoftware_database, error_type)

Create or Update Batch ErrorType

Create or Update multiple ErrorType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_type = [Vba::ErrorType.new({error_type: 'error_type_example'})] # Array<ErrorType> | 

begin
  # Create or Update Batch ErrorType
  result = api_instance.update_batch_error_type(vbasoftware_database, error_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->update_batch_error_type: #{e}"
end
```

#### Using the update_batch_error_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_error_type_with_http_info(vbasoftware_database, error_type)

```ruby
begin
  # Create or Update Batch ErrorType
  data, status_code, headers = api_instance.update_batch_error_type_with_http_info(vbasoftware_database, error_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->update_batch_error_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_type** | [**Array&lt;ErrorType&gt;**](ErrorType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_error_type

> <ErrorTypeVBAResponse> update_error_type(vbasoftware_database, error_type, error_type2)

Update ErrorType

Updates a specific ErrorType.

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

api_instance = Vba::ErrorTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_type = 'error_type_example' # String | Error Type
error_type2 = Vba::ErrorType.new({error_type: 'error_type_example'}) # ErrorType | 

begin
  # Update ErrorType
  result = api_instance.update_error_type(vbasoftware_database, error_type, error_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->update_error_type: #{e}"
end
```

#### Using the update_error_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorTypeVBAResponse>, Integer, Hash)> update_error_type_with_http_info(vbasoftware_database, error_type, error_type2)

```ruby
begin
  # Update ErrorType
  data, status_code, headers = api_instance.update_error_type_with_http_info(vbasoftware_database, error_type, error_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorTypeApi->update_error_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_type** | **String** | Error Type |  |
| **error_type2** | [**ErrorType**](ErrorType.md) |  |  |

### Return type

[**ErrorTypeVBAResponse**](ErrorTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

