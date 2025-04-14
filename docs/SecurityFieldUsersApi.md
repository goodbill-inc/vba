# Vba::SecurityFieldUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_field_user**](SecurityFieldUsersApi.md#create_security_field_user) | **POST** /security-field-users | Create SecurityFieldUser |
| [**delete_security_field_user**](SecurityFieldUsersApi.md#delete_security_field_user) | **DELETE** /security-field-users/{SecurityFieldUser_Key} | Delete SecurityFieldUser |
| [**get_security_field_user**](SecurityFieldUsersApi.md#get_security_field_user) | **GET** /security-field-users/{SecurityFieldUser_Key} | Get SecurityFieldUser |
| [**list_security_field_user**](SecurityFieldUsersApi.md#list_security_field_user) | **GET** /security-field-users | List SecurityFieldUser |
| [**update_batch_security_field_user**](SecurityFieldUsersApi.md#update_batch_security_field_user) | **PUT** /security-field-users-batch | Create or Update Batch SecurityFieldUser |
| [**update_security_field_user**](SecurityFieldUsersApi.md#update_security_field_user) | **PUT** /security-field-users/{SecurityFieldUser_Key} | Update SecurityFieldUser |


## create_security_field_user

> <SecurityFieldUserVBAResponse> create_security_field_user(vbasoftware_database, security_field_user)

Create SecurityFieldUser

Creates a new SecurityFieldUser

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user = Vba::SecurityFieldUser.new({security_field_user_key: 37, user_id: 'user_id_example'}) # SecurityFieldUser | 

begin
  # Create SecurityFieldUser
  result = api_instance.create_security_field_user(vbasoftware_database, security_field_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->create_security_field_user: #{e}"
end
```

#### Using the create_security_field_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserVBAResponse>, Integer, Hash)> create_security_field_user_with_http_info(vbasoftware_database, security_field_user)

```ruby
begin
  # Create SecurityFieldUser
  data, status_code, headers = api_instance.create_security_field_user_with_http_info(vbasoftware_database, security_field_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->create_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user** | [**SecurityFieldUser**](SecurityFieldUser.md) |  |  |

### Return type

[**SecurityFieldUserVBAResponse**](SecurityFieldUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_field_user

> delete_security_field_user(vbasoftware_database, security_field_user_key)

Delete SecurityFieldUser

Deletes an SecurityFieldUser

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_key = 56 # Integer | SecurityFieldUser Key

begin
  # Delete SecurityFieldUser
  api_instance.delete_security_field_user(vbasoftware_database, security_field_user_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->delete_security_field_user: #{e}"
end
```

#### Using the delete_security_field_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_field_user_with_http_info(vbasoftware_database, security_field_user_key)

```ruby
begin
  # Delete SecurityFieldUser
  data, status_code, headers = api_instance.delete_security_field_user_with_http_info(vbasoftware_database, security_field_user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->delete_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_key** | **Integer** | SecurityFieldUser Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_field_user

> <SecurityFieldUserVBAResponse> get_security_field_user(vbasoftware_database, security_field_user_key)

Get SecurityFieldUser

Gets SecurityFieldUser

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_key = 56 # Integer | SecurityFieldUser Key

begin
  # Get SecurityFieldUser
  result = api_instance.get_security_field_user(vbasoftware_database, security_field_user_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->get_security_field_user: #{e}"
end
```

#### Using the get_security_field_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserVBAResponse>, Integer, Hash)> get_security_field_user_with_http_info(vbasoftware_database, security_field_user_key)

```ruby
begin
  # Get SecurityFieldUser
  data, status_code, headers = api_instance.get_security_field_user_with_http_info(vbasoftware_database, security_field_user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->get_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_key** | **Integer** | SecurityFieldUser Key |  |

### Return type

[**SecurityFieldUserVBAResponse**](SecurityFieldUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_field_user

> <SecurityFieldUserListVBAResponse> list_security_field_user(vbasoftware_database, opts)

List SecurityFieldUser

Lists all SecurityFieldUser

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SecurityFieldUser
  result = api_instance.list_security_field_user(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->list_security_field_user: #{e}"
end
```

#### Using the list_security_field_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserListVBAResponse>, Integer, Hash)> list_security_field_user_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityFieldUser
  data, status_code, headers = api_instance.list_security_field_user_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->list_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SecurityFieldUserListVBAResponse**](SecurityFieldUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_field_user

> <MultiCodeResponseListVBAResponse> update_batch_security_field_user(vbasoftware_database, security_field_user)

Create or Update Batch SecurityFieldUser

Create or Update multiple SecurityFieldUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user = [Vba::SecurityFieldUser.new({security_field_user_key: 37, user_id: 'user_id_example'})] # Array<SecurityFieldUser> | 

begin
  # Create or Update Batch SecurityFieldUser
  result = api_instance.update_batch_security_field_user(vbasoftware_database, security_field_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->update_batch_security_field_user: #{e}"
end
```

#### Using the update_batch_security_field_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_field_user_with_http_info(vbasoftware_database, security_field_user)

```ruby
begin
  # Create or Update Batch SecurityFieldUser
  data, status_code, headers = api_instance.update_batch_security_field_user_with_http_info(vbasoftware_database, security_field_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->update_batch_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user** | [**Array&lt;SecurityFieldUser&gt;**](SecurityFieldUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_field_user

> <SecurityFieldUserVBAResponse> update_security_field_user(vbasoftware_database, security_field_user_key, security_field_user)

Update SecurityFieldUser

Updates a specific SecurityFieldUser.

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

api_instance = Vba::SecurityFieldUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_key = 56 # Integer | SecurityFieldUser Key
security_field_user = Vba::SecurityFieldUser.new({security_field_user_key: 37, user_id: 'user_id_example'}) # SecurityFieldUser | 

begin
  # Update SecurityFieldUser
  result = api_instance.update_security_field_user(vbasoftware_database, security_field_user_key, security_field_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->update_security_field_user: #{e}"
end
```

#### Using the update_security_field_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserVBAResponse>, Integer, Hash)> update_security_field_user_with_http_info(vbasoftware_database, security_field_user_key, security_field_user)

```ruby
begin
  # Update SecurityFieldUser
  data, status_code, headers = api_instance.update_security_field_user_with_http_info(vbasoftware_database, security_field_user_key, security_field_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUsersApi->update_security_field_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_key** | **Integer** | SecurityFieldUser Key |  |
| **security_field_user** | [**SecurityFieldUser**](SecurityFieldUser.md) |  |  |

### Return type

[**SecurityFieldUserVBAResponse**](SecurityFieldUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

