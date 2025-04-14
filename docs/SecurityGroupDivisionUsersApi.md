# Vba::SecurityGroupDivisionUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_group_division_user**](SecurityGroupDivisionUsersApi.md#create_security_group_division_user) | **POST** /security-group-division-users | Create SecurityGroupDivisionUser |
| [**delete_security_group_division_user**](SecurityGroupDivisionUsersApi.md#delete_security_group_division_user) | **DELETE** /security-group-division-users/{securityGroupDivisionUserKey} | Delete SecurityGroupDivisionUser |
| [**get_security_group_division_user**](SecurityGroupDivisionUsersApi.md#get_security_group_division_user) | **GET** /security-group-division-users/{securityGroupDivisionUserKey} | Get SecurityGroupDivisionUser |
| [**list_security_group_division_user**](SecurityGroupDivisionUsersApi.md#list_security_group_division_user) | **GET** /security-group-division-users | List SecurityGroupDivisionUser |
| [**update_batch_security_group_division_user**](SecurityGroupDivisionUsersApi.md#update_batch_security_group_division_user) | **PUT** /security-group-division-users-batch | Create or Update Batch SecurityGroupDivisionUser |
| [**update_security_group_division_user**](SecurityGroupDivisionUsersApi.md#update_security_group_division_user) | **PUT** /security-group-division-users/{securityGroupDivisionUserKey} | Update SecurityGroupDivisionUser |


## create_security_group_division_user

> <SecurityGroupDivisionUserVBAResponse> create_security_group_division_user(vbasoftware_database, security_group_division_user)

Create SecurityGroupDivisionUser

Creates a new SecurityGroupDivisionUser

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user = Vba::SecurityGroupDivisionUser.new({security_group_division_user_key: 37, excluded: false, group_id: 'group_id_example', user_id: 'user_id_example'}) # SecurityGroupDivisionUser | 

begin
  # Create SecurityGroupDivisionUser
  result = api_instance.create_security_group_division_user(vbasoftware_database, security_group_division_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->create_security_group_division_user: #{e}"
end
```

#### Using the create_security_group_division_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserVBAResponse>, Integer, Hash)> create_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user)

```ruby
begin
  # Create SecurityGroupDivisionUser
  data, status_code, headers = api_instance.create_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->create_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user** | [**SecurityGroupDivisionUser**](SecurityGroupDivisionUser.md) |  |  |

### Return type

[**SecurityGroupDivisionUserVBAResponse**](SecurityGroupDivisionUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_group_division_user

> delete_security_group_division_user(vbasoftware_database, security_group_division_user_key)

Delete SecurityGroupDivisionUser

Deletes an SecurityGroupDivisionUser

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_key = 56 # Integer | SecurityGroupDivisionUser Key

begin
  # Delete SecurityGroupDivisionUser
  api_instance.delete_security_group_division_user(vbasoftware_database, security_group_division_user_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->delete_security_group_division_user: #{e}"
end
```

#### Using the delete_security_group_division_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key)

```ruby
begin
  # Delete SecurityGroupDivisionUser
  data, status_code, headers = api_instance.delete_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->delete_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_key** | **Integer** | SecurityGroupDivisionUser Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_group_division_user

> <SecurityGroupDivisionUserVBAResponse> get_security_group_division_user(vbasoftware_database, security_group_division_user_key)

Get SecurityGroupDivisionUser

Gets SecurityGroupDivisionUser

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_key = 56 # Integer | SecurityGroupDivisionUser Key

begin
  # Get SecurityGroupDivisionUser
  result = api_instance.get_security_group_division_user(vbasoftware_database, security_group_division_user_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->get_security_group_division_user: #{e}"
end
```

#### Using the get_security_group_division_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserVBAResponse>, Integer, Hash)> get_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key)

```ruby
begin
  # Get SecurityGroupDivisionUser
  data, status_code, headers = api_instance.get_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->get_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_key** | **Integer** | SecurityGroupDivisionUser Key |  |

### Return type

[**SecurityGroupDivisionUserVBAResponse**](SecurityGroupDivisionUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_group_division_user

> <SecurityGroupDivisionUserListVBAResponse> list_security_group_division_user(vbasoftware_database, opts)

List SecurityGroupDivisionUser

Lists all SecurityGroupDivisionUser with optional userID and groupID filters

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  user_id: 'user_id_example', # String | User ID Filter
  group_id: 'group_id_example', # String | Group ID Filter
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SecurityGroupDivisionUser
  result = api_instance.list_security_group_division_user(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->list_security_group_division_user: #{e}"
end
```

#### Using the list_security_group_division_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserListVBAResponse>, Integer, Hash)> list_security_group_division_user_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityGroupDivisionUser
  data, status_code, headers = api_instance.list_security_group_division_user_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->list_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID Filter | [optional] |
| **group_id** | **String** | Group ID Filter | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SecurityGroupDivisionUserListVBAResponse**](SecurityGroupDivisionUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_group_division_user

> <MultiCodeResponseListVBAResponse> update_batch_security_group_division_user(vbasoftware_database, security_group_division_user)

Create or Update Batch SecurityGroupDivisionUser

Create or Update multiple SecurityGroupDivisionUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user = [Vba::SecurityGroupDivisionUser.new({security_group_division_user_key: 37, excluded: false, group_id: 'group_id_example', user_id: 'user_id_example'})] # Array<SecurityGroupDivisionUser> | 

begin
  # Create or Update Batch SecurityGroupDivisionUser
  result = api_instance.update_batch_security_group_division_user(vbasoftware_database, security_group_division_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->update_batch_security_group_division_user: #{e}"
end
```

#### Using the update_batch_security_group_division_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user)

```ruby
begin
  # Create or Update Batch SecurityGroupDivisionUser
  data, status_code, headers = api_instance.update_batch_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->update_batch_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user** | [**Array&lt;SecurityGroupDivisionUser&gt;**](SecurityGroupDivisionUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_group_division_user

> <SecurityGroupDivisionUserVBAResponse> update_security_group_division_user(vbasoftware_database, security_group_division_user_key, security_group_division_user)

Update SecurityGroupDivisionUser

Updates a specific SecurityGroupDivisionUser.

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

api_instance = Vba::SecurityGroupDivisionUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_key = 56 # Integer | SecurityGroupDivisionUser Key
security_group_division_user = Vba::SecurityGroupDivisionUser.new({security_group_division_user_key: 37, excluded: false, group_id: 'group_id_example', user_id: 'user_id_example'}) # SecurityGroupDivisionUser | 

begin
  # Update SecurityGroupDivisionUser
  result = api_instance.update_security_group_division_user(vbasoftware_database, security_group_division_user_key, security_group_division_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->update_security_group_division_user: #{e}"
end
```

#### Using the update_security_group_division_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserVBAResponse>, Integer, Hash)> update_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key, security_group_division_user)

```ruby
begin
  # Update SecurityGroupDivisionUser
  data, status_code, headers = api_instance.update_security_group_division_user_with_http_info(vbasoftware_database, security_group_division_user_key, security_group_division_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUsersApi->update_security_group_division_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_key** | **Integer** | SecurityGroupDivisionUser Key |  |
| **security_group_division_user** | [**SecurityGroupDivisionUser**](SecurityGroupDivisionUser.md) |  |  |

### Return type

[**SecurityGroupDivisionUserVBAResponse**](SecurityGroupDivisionUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

