# Vba::UserNoteAccessApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_note_access**](UserNoteAccessApi.md#create_user_note_access) | **POST** /users/{userID}/note-access | Create User Note Access |
| [**delete_user_note_access**](UserNoteAccessApi.md#delete_user_note_access) | **DELETE** /users/{userID}/note-access/{userNoteAccessKey} | Delete User Note Access |
| [**get_user_note_access**](UserNoteAccessApi.md#get_user_note_access) | **GET** /users/{userID}/note-access/{userNoteAccessKey} | Get User Note Access |
| [**list_user_note_access**](UserNoteAccessApi.md#list_user_note_access) | **GET** /users/{userID}/note-access | List User Note Access |
| [**update_batch_user_note_access**](UserNoteAccessApi.md#update_batch_user_note_access) | **PUT** /users/{userID}/note-access-batch | Create or Update Batch User Note Access |
| [**update_user_note_access**](UserNoteAccessApi.md#update_user_note_access) | **PUT** /users/{userID}/note-access/{userNoteAccessKey} | Update User Note Access |


## create_user_note_access

> <UserNoteAccessVBAResponse> create_user_note_access(vbasoftware_database, user_id, user_note_access)

Create User Note Access

Creates a new User Note Access

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_note_access = Vba::UserNoteAccess.new({user_note_access_key: 37, note_access: 37, user_id: 'user_id_example'}) # UserNoteAccess | 

begin
  # Create User Note Access
  result = api_instance.create_user_note_access(vbasoftware_database, user_id, user_note_access)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->create_user_note_access: #{e}"
end
```

#### Using the create_user_note_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserNoteAccessVBAResponse>, Integer, Hash)> create_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access)

```ruby
begin
  # Create User Note Access
  data, status_code, headers = api_instance.create_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserNoteAccessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->create_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_note_access** | [**UserNoteAccess**](UserNoteAccess.md) |  |  |

### Return type

[**UserNoteAccessVBAResponse**](UserNoteAccessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_user_note_access

> delete_user_note_access(vbasoftware_database, user_id, user_note_access_key)

Delete User Note Access

Deletes an User Note Access

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_note_access_key = 56 # Integer | User Note Access Key

begin
  # Delete User Note Access
  api_instance.delete_user_note_access(vbasoftware_database, user_id, user_note_access_key)
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->delete_user_note_access: #{e}"
end
```

#### Using the delete_user_note_access_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key)

```ruby
begin
  # Delete User Note Access
  data, status_code, headers = api_instance.delete_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->delete_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_note_access_key** | **Integer** | User Note Access Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_note_access

> <UserNoteAccessVBAResponse> get_user_note_access(vbasoftware_database, user_id, user_note_access_key)

Get User Note Access

Gets User Note Access

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_note_access_key = 56 # Integer | UserNoteAccess Key

begin
  # Get User Note Access
  result = api_instance.get_user_note_access(vbasoftware_database, user_id, user_note_access_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->get_user_note_access: #{e}"
end
```

#### Using the get_user_note_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserNoteAccessVBAResponse>, Integer, Hash)> get_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key)

```ruby
begin
  # Get User Note Access
  data, status_code, headers = api_instance.get_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserNoteAccessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->get_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_note_access_key** | **Integer** | UserNoteAccess Key |  |

### Return type

[**UserNoteAccessVBAResponse**](UserNoteAccessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_note_access

> <UserNoteAccessListVBAResponse> list_user_note_access(vbasoftware_database, user_id)

List User Note Access

Lists all User Note Access given a specific userID

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List User Note Access
  result = api_instance.list_user_note_access(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->list_user_note_access: #{e}"
end
```

#### Using the list_user_note_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserNoteAccessListVBAResponse>, Integer, Hash)> list_user_note_access_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List User Note Access
  data, status_code, headers = api_instance.list_user_note_access_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserNoteAccessListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->list_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UserNoteAccessListVBAResponse**](UserNoteAccessListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_note_access

> <MultiCodeResponseListVBAResponse> update_batch_user_note_access(vbasoftware_database, user_id, user_note_access)

Create or Update Batch User Note Access

Create or Update multiple User Note Access at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_note_access = [Vba::UserNoteAccess.new({user_note_access_key: 37, note_access: 37, user_id: 'user_id_example'})] # Array<UserNoteAccess> | 

begin
  # Create or Update Batch User Note Access
  result = api_instance.update_batch_user_note_access(vbasoftware_database, user_id, user_note_access)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->update_batch_user_note_access: #{e}"
end
```

#### Using the update_batch_user_note_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access)

```ruby
begin
  # Create or Update Batch User Note Access
  data, status_code, headers = api_instance.update_batch_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->update_batch_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_note_access** | [**Array&lt;UserNoteAccess&gt;**](UserNoteAccess.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_user_note_access

> <UserNoteAccessVBAResponse> update_user_note_access(vbasoftware_database, user_id, user_note_access_key, user_note_access)

Update User Note Access

Updates a specific User Note Access.

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

api_instance = Vba::UserNoteAccessApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_note_access_key = 56 # Integer | UserNoteAccess Key
user_note_access = Vba::UserNoteAccess.new({user_note_access_key: 37, note_access: 37, user_id: 'user_id_example'}) # UserNoteAccess | 

begin
  # Update User Note Access
  result = api_instance.update_user_note_access(vbasoftware_database, user_id, user_note_access_key, user_note_access)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->update_user_note_access: #{e}"
end
```

#### Using the update_user_note_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserNoteAccessVBAResponse>, Integer, Hash)> update_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key, user_note_access)

```ruby
begin
  # Update User Note Access
  data, status_code, headers = api_instance.update_user_note_access_with_http_info(vbasoftware_database, user_id, user_note_access_key, user_note_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserNoteAccessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserNoteAccessApi->update_user_note_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_note_access_key** | **Integer** | UserNoteAccess Key |  |
| **user_note_access** | [**UserNoteAccess**](UserNoteAccess.md) |  |  |

### Return type

[**UserNoteAccessVBAResponse**](UserNoteAccessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

