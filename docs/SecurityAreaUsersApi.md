# Vba::SecurityAreaUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area_user**](SecurityAreaUsersApi.md#create_security_area_user) | **POST** /security-areas/{securityArea}/users | Create SecurityAreaUser |
| [**delete_security_area_user**](SecurityAreaUsersApi.md#delete_security_area_user) | **DELETE** /security-areas/{securityArea}/users/{userID} | Delete SecurityAreaUser |
| [**get_security_area_user**](SecurityAreaUsersApi.md#get_security_area_user) | **GET** /security-areas/{securityArea}/users/{userID} | Get SecurityAreaUser |
| [**list_security_area_user**](SecurityAreaUsersApi.md#list_security_area_user) | **GET** /security-areas/{securityArea}/users | List SecurityAreaUser |
| [**list_security_areas_for_user**](SecurityAreaUsersApi.md#list_security_areas_for_user) | **GET** /security-area-users | List SecurityAreaUser for a User ID |
| [**update_batch_security_area_user**](SecurityAreaUsersApi.md#update_batch_security_area_user) | **PUT** /security-areas/{securityArea}/users-batch | Create or Update Batch SecurityAreaUser |
| [**update_security_area_user**](SecurityAreaUsersApi.md#update_security_area_user) | **PUT** /security-areas/{securityArea}/users/{userID} | Update SecurityAreaUser |


## create_security_area_user

> <SecurityAreaUserVBAResponse> create_security_area_user(vbasoftware_database, security_area, security_area_user)

Create SecurityAreaUser

Creates a new SecurityAreaUser

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_user = Vba::SecurityAreaUser.new({user_id: 'user_id_example', security_area: 'security_area_example'}) # SecurityAreaUser | 

begin
  # Create SecurityAreaUser
  result = api_instance.create_security_area_user(vbasoftware_database, security_area, security_area_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->create_security_area_user: #{e}"
end
```

#### Using the create_security_area_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserVBAResponse>, Integer, Hash)> create_security_area_user_with_http_info(vbasoftware_database, security_area, security_area_user)

```ruby
begin
  # Create SecurityAreaUser
  data, status_code, headers = api_instance.create_security_area_user_with_http_info(vbasoftware_database, security_area, security_area_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->create_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_user** | [**SecurityAreaUser**](SecurityAreaUser.md) |  |  |

### Return type

[**SecurityAreaUserVBAResponse**](SecurityAreaUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area_user

> delete_security_area_user(vbasoftware_database, security_area, user_id)

Delete SecurityAreaUser

Deletes an SecurityAreaUser

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_id = 'user_id_example' # String | User ID

begin
  # Delete SecurityAreaUser
  api_instance.delete_security_area_user(vbasoftware_database, security_area, user_id)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->delete_security_area_user: #{e}"
end
```

#### Using the delete_security_area_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_user_with_http_info(vbasoftware_database, security_area, user_id)

```ruby
begin
  # Delete SecurityAreaUser
  data, status_code, headers = api_instance.delete_security_area_user_with_http_info(vbasoftware_database, security_area, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->delete_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area_user

> <SecurityAreaUserVBAResponse> get_security_area_user(vbasoftware_database, security_area, user_id)

Get SecurityAreaUser

Gets SecurityAreaUser

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_id = 'user_id_example' # String | User ID

begin
  # Get SecurityAreaUser
  result = api_instance.get_security_area_user(vbasoftware_database, security_area, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->get_security_area_user: #{e}"
end
```

#### Using the get_security_area_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserVBAResponse>, Integer, Hash)> get_security_area_user_with_http_info(vbasoftware_database, security_area, user_id)

```ruby
begin
  # Get SecurityAreaUser
  data, status_code, headers = api_instance.get_security_area_user_with_http_info(vbasoftware_database, security_area, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->get_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_id** | **String** | User ID |  |

### Return type

[**SecurityAreaUserVBAResponse**](SecurityAreaUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area_user

> <SecurityAreaUserListVBAResponse> list_security_area_user(vbasoftware_database, security_area)

List SecurityAreaUser

Lists all SecurityAreaUser given securityArea

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # List SecurityAreaUser
  result = api_instance.list_security_area_user(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->list_security_area_user: #{e}"
end
```

#### Using the list_security_area_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserListVBAResponse>, Integer, Hash)> list_security_area_user_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # List SecurityAreaUser
  data, status_code, headers = api_instance.list_security_area_user_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->list_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

[**SecurityAreaUserListVBAResponse**](SecurityAreaUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_areas_for_user

> <SecurityAreaUserListVBAResponse> list_security_areas_for_user(vbasoftware_database, user_id)

List SecurityAreaUser for a User ID

Lists all SecurityAreaUser objects for a given User ID. This will show all of the Areas in which a User is a member.

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List SecurityAreaUser for a User ID
  result = api_instance.list_security_areas_for_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->list_security_areas_for_user: #{e}"
end
```

#### Using the list_security_areas_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserListVBAResponse>, Integer, Hash)> list_security_areas_for_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List SecurityAreaUser for a User ID
  data, status_code, headers = api_instance.list_security_areas_for_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->list_security_areas_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**SecurityAreaUserListVBAResponse**](SecurityAreaUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area_user

> <MultiCodeResponseListVBAResponse> update_batch_security_area_user(vbasoftware_database, security_area, security_area_user)

Create or Update Batch SecurityAreaUser

Create or Update multiple SecurityAreaUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_user = [Vba::SecurityAreaUser.new({user_id: 'user_id_example', security_area: 'security_area_example'})] # Array<SecurityAreaUser> | 

begin
  # Create or Update Batch SecurityAreaUser
  result = api_instance.update_batch_security_area_user(vbasoftware_database, security_area, security_area_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->update_batch_security_area_user: #{e}"
end
```

#### Using the update_batch_security_area_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_user_with_http_info(vbasoftware_database, security_area, security_area_user)

```ruby
begin
  # Create or Update Batch SecurityAreaUser
  data, status_code, headers = api_instance.update_batch_security_area_user_with_http_info(vbasoftware_database, security_area, security_area_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->update_batch_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_user** | [**Array&lt;SecurityAreaUser&gt;**](SecurityAreaUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area_user

> <SecurityAreaUserVBAResponse> update_security_area_user(vbasoftware_database, security_area, user_id, security_area_user)

Update SecurityAreaUser

Updates a specific SecurityAreaUser.

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

api_instance = Vba::SecurityAreaUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_id = 'user_id_example' # String | User ID
security_area_user = Vba::SecurityAreaUser.new({user_id: 'user_id_example', security_area: 'security_area_example'}) # SecurityAreaUser | 

begin
  # Update SecurityAreaUser
  result = api_instance.update_security_area_user(vbasoftware_database, security_area, user_id, security_area_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->update_security_area_user: #{e}"
end
```

#### Using the update_security_area_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserVBAResponse>, Integer, Hash)> update_security_area_user_with_http_info(vbasoftware_database, security_area, user_id, security_area_user)

```ruby
begin
  # Update SecurityAreaUser
  data, status_code, headers = api_instance.update_security_area_user_with_http_info(vbasoftware_database, security_area, user_id, security_area_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUsersApi->update_security_area_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_id** | **String** | User ID |  |
| **security_area_user** | [**SecurityAreaUser**](SecurityAreaUser.md) |  |  |

### Return type

[**SecurityAreaUserVBAResponse**](SecurityAreaUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

