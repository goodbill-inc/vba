# Vba::UserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_group**](UserGroupsApi.md#create_user_group) | **POST** /user-groups | Create UserGroup |
| [**delete_user_group**](UserGroupsApi.md#delete_user_group) | **DELETE** /user-groups/{userGroupKey} | Delete UserGroup |
| [**get_user_group**](UserGroupsApi.md#get_user_group) | **GET** /user-groups/{userGroupKey} | Get UserGroup |
| [**list_user_group**](UserGroupsApi.md#list_user_group) | **GET** /user-groups | List UserGroup |
| [**update_batch_user_group**](UserGroupsApi.md#update_batch_user_group) | **PUT** /user-groups-batch | Create or Update Batch UserGroup |
| [**update_user_group**](UserGroupsApi.md#update_user_group) | **PUT** /user-groups/{userGroupKey} | Update UserGroup |


## create_user_group

> <UserGroupVBAResponse> create_user_group(vbasoftware_database, user_group)

Create UserGroup

Creates a new UserGroup

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group = Vba::UserGroup.new({user_group_key: 37}) # UserGroup | 

begin
  # Create UserGroup
  result = api_instance.create_user_group(vbasoftware_database, user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->create_user_group: #{e}"
end
```

#### Using the create_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupVBAResponse>, Integer, Hash)> create_user_group_with_http_info(vbasoftware_database, user_group)

```ruby
begin
  # Create UserGroup
  data, status_code, headers = api_instance.create_user_group_with_http_info(vbasoftware_database, user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->create_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group** | [**UserGroup**](UserGroup.md) |  |  |

### Return type

[**UserGroupVBAResponse**](UserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_user_group

> delete_user_group(vbasoftware_database, user_group_key)

Delete UserGroup

Deletes an UserGroup

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key

begin
  # Delete UserGroup
  api_instance.delete_user_group(vbasoftware_database, user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->delete_user_group: #{e}"
end
```

#### Using the delete_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_group_with_http_info(vbasoftware_database, user_group_key)

```ruby
begin
  # Delete UserGroup
  data, status_code, headers = api_instance.delete_user_group_with_http_info(vbasoftware_database, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->delete_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_group

> <UserGroupVBAResponse> get_user_group(vbasoftware_database, user_group_key)

Get UserGroup

Gets UserGroup

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key

begin
  # Get UserGroup
  result = api_instance.get_user_group(vbasoftware_database, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->get_user_group: #{e}"
end
```

#### Using the get_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupVBAResponse>, Integer, Hash)> get_user_group_with_http_info(vbasoftware_database, user_group_key)

```ruby
begin
  # Get UserGroup
  data, status_code, headers = api_instance.get_user_group_with_http_info(vbasoftware_database, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->get_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**UserGroupVBAResponse**](UserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_group

> <UserGroupListVBAResponse> list_user_group(vbasoftware_database)

List UserGroup

Lists all UserGroup 

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List UserGroup
  result = api_instance.list_user_group(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->list_user_group: #{e}"
end
```

#### Using the list_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupListVBAResponse>, Integer, Hash)> list_user_group_with_http_info(vbasoftware_database)

```ruby
begin
  # List UserGroup
  data, status_code, headers = api_instance.list_user_group_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->list_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**UserGroupListVBAResponse**](UserGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_group

> <MultiCodeResponseListVBAResponse> update_batch_user_group(vbasoftware_database, user_group)

Create or Update Batch UserGroup

Create or Update multiple UserGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group = [Vba::UserGroup.new({user_group_key: 37})] # Array<UserGroup> | 

begin
  # Create or Update Batch UserGroup
  result = api_instance.update_batch_user_group(vbasoftware_database, user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->update_batch_user_group: #{e}"
end
```

#### Using the update_batch_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_group_with_http_info(vbasoftware_database, user_group)

```ruby
begin
  # Create or Update Batch UserGroup
  data, status_code, headers = api_instance.update_batch_user_group_with_http_info(vbasoftware_database, user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->update_batch_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group** | [**Array&lt;UserGroup&gt;**](UserGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_user_group

> <UserGroupVBAResponse> update_user_group(vbasoftware_database, user_group_key, user_group)

Update UserGroup

Updates a specific UserGroup.

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

api_instance = Vba::UserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key
user_group = Vba::UserGroup.new({user_group_key: 37}) # UserGroup | 

begin
  # Update UserGroup
  result = api_instance.update_user_group(vbasoftware_database, user_group_key, user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->update_user_group: #{e}"
end
```

#### Using the update_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupVBAResponse>, Integer, Hash)> update_user_group_with_http_info(vbasoftware_database, user_group_key, user_group)

```ruby
begin
  # Update UserGroup
  data, status_code, headers = api_instance.update_user_group_with_http_info(vbasoftware_database, user_group_key, user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupsApi->update_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **user_group** | [**UserGroup**](UserGroup.md) |  |  |

### Return type

[**UserGroupVBAResponse**](UserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

