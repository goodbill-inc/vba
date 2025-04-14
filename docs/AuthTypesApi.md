# Vba::AuthTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_type**](AuthTypesApi.md#create_auth_type) | **POST** /auth-types | Create AuthType |
| [**delete_auth_type**](AuthTypesApi.md#delete_auth_type) | **DELETE** /auth-types/{authType} | Delete AuthType |
| [**get_auth_type**](AuthTypesApi.md#get_auth_type) | **GET** /auth-types/{authType} | Get AuthType |
| [**list_auth_type**](AuthTypesApi.md#list_auth_type) | **GET** /auth-types | List AuthType |
| [**update_auth_type**](AuthTypesApi.md#update_auth_type) | **PUT** /auth-types/{authType} | Update AuthType |
| [**update_batch_auth_type**](AuthTypesApi.md#update_batch_auth_type) | **PUT** /auth-types-batch | Create or Update Batch AuthType |


## create_auth_type

> <AuthTypeVBAResponse> create_auth_type(vbasoftware_database, auth_type)

Create AuthType

Creates a new AuthType

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = Vba::AuthType.new({auth_type: 'auth_type_example', disable_provider_match: false, ignore_procedure_modifier: false}) # AuthType | 

begin
  # Create AuthType
  result = api_instance.create_auth_type(vbasoftware_database, auth_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->create_auth_type: #{e}"
end
```

#### Using the create_auth_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypeVBAResponse>, Integer, Hash)> create_auth_type_with_http_info(vbasoftware_database, auth_type)

```ruby
begin
  # Create AuthType
  data, status_code, headers = api_instance.create_auth_type_with_http_info(vbasoftware_database, auth_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->create_auth_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | [**AuthType**](AuthType.md) |  |  |

### Return type

[**AuthTypeVBAResponse**](AuthTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_type

> delete_auth_type(vbasoftware_database, auth_type)

Delete AuthType

Deletes an AuthType

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type

begin
  # Delete AuthType
  api_instance.delete_auth_type(vbasoftware_database, auth_type)
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->delete_auth_type: #{e}"
end
```

#### Using the delete_auth_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_type_with_http_info(vbasoftware_database, auth_type)

```ruby
begin
  # Delete AuthType
  data, status_code, headers = api_instance.delete_auth_type_with_http_info(vbasoftware_database, auth_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->delete_auth_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_type

> <AuthTypeVBAResponse> get_auth_type(vbasoftware_database, auth_type)

Get AuthType

Gets AuthType

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type

begin
  # Get AuthType
  result = api_instance.get_auth_type(vbasoftware_database, auth_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->get_auth_type: #{e}"
end
```

#### Using the get_auth_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypeVBAResponse>, Integer, Hash)> get_auth_type_with_http_info(vbasoftware_database, auth_type)

```ruby
begin
  # Get AuthType
  data, status_code, headers = api_instance.get_auth_type_with_http_info(vbasoftware_database, auth_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->get_auth_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |

### Return type

[**AuthTypeVBAResponse**](AuthTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_type

> <AuthTypeListVBAResponse> list_auth_type(vbasoftware_database, opts)

List AuthType

Lists all AuthType

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthType
  result = api_instance.list_auth_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->list_auth_type: #{e}"
end
```

#### Using the list_auth_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypeListVBAResponse>, Integer, Hash)> list_auth_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthType
  data, status_code, headers = api_instance.list_auth_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->list_auth_type_with_http_info: #{e}"
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

[**AuthTypeListVBAResponse**](AuthTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_type

> <AuthTypeVBAResponse> update_auth_type(vbasoftware_database, auth_type, auth_type2)

Update AuthType

Updates a specific AuthType.

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
auth_type2 = Vba::AuthType.new({auth_type: 'auth_type_example', disable_provider_match: false, ignore_procedure_modifier: false}) # AuthType | 

begin
  # Update AuthType
  result = api_instance.update_auth_type(vbasoftware_database, auth_type, auth_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->update_auth_type: #{e}"
end
```

#### Using the update_auth_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypeVBAResponse>, Integer, Hash)> update_auth_type_with_http_info(vbasoftware_database, auth_type, auth_type2)

```ruby
begin
  # Update AuthType
  data, status_code, headers = api_instance.update_auth_type_with_http_info(vbasoftware_database, auth_type, auth_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->update_auth_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **auth_type2** | [**AuthType**](AuthType.md) |  |  |

### Return type

[**AuthTypeVBAResponse**](AuthTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_type

> <MultiCodeResponseListVBAResponse> update_batch_auth_type(vbasoftware_database, auth_type)

Create or Update Batch AuthType

Create or Update multiple AuthType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::AuthTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = [Vba::AuthType.new({auth_type: 'auth_type_example', disable_provider_match: false, ignore_procedure_modifier: false})] # Array<AuthType> | 

begin
  # Create or Update Batch AuthType
  result = api_instance.update_batch_auth_type(vbasoftware_database, auth_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->update_batch_auth_type: #{e}"
end
```

#### Using the update_batch_auth_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_type_with_http_info(vbasoftware_database, auth_type)

```ruby
begin
  # Create or Update Batch AuthType
  data, status_code, headers = api_instance.update_batch_auth_type_with_http_info(vbasoftware_database, auth_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypesApi->update_batch_auth_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | [**Array&lt;AuthType&gt;**](AuthType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

