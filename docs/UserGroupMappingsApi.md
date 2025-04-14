# Vba::UserGroupMappingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_group_mapping**](UserGroupMappingsApi.md#create_user_group_mapping) | **POST** /user-groups/{userGroupKey}/users/{userID} | Create UserGroupMapping |
| [**delete_user_group_mapping**](UserGroupMappingsApi.md#delete_user_group_mapping) | **DELETE** /user-groups/{userGroupKey}/users/{userID} | Delete UserGroupMapping |
| [**get_user_group_mapping**](UserGroupMappingsApi.md#get_user_group_mapping) | **GET** /user-groups/{userGroupKey}/users/{userID} | Get UserGroupMapping |
| [**list_user_group_mapping**](UserGroupMappingsApi.md#list_user_group_mapping) | **GET** /user-groups/{userGroupKey}/users | List UserGroupMapping |
| [**list_user_group_mapping_filtered**](UserGroupMappingsApi.md#list_user_group_mapping_filtered) | **GET** /user-group-mappings | List UserGroupMapping |
| [**update_batch_user_group_mapping**](UserGroupMappingsApi.md#update_batch_user_group_mapping) | **PUT** /user-groups/{userGroupKey}/users-batch | Create multiple UserGroupMappings |


## create_user_group_mapping

> <UserGroupMappingVBAResponse> create_user_group_mapping(vbasoftware_database, user_group_key, user_id)

Create UserGroupMapping

Creates a new UserGroupMapping

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key
user_id = 'user_id_example' # String | User ID

begin
  # Create UserGroupMapping
  result = api_instance.create_user_group_mapping(vbasoftware_database, user_group_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->create_user_group_mapping: #{e}"
end
```

#### Using the create_user_group_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupMappingVBAResponse>, Integer, Hash)> create_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)

```ruby
begin
  # Create UserGroupMapping
  data, status_code, headers = api_instance.create_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->create_user_group_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UserGroupMappingVBAResponse**](UserGroupMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_user_group_mapping

> delete_user_group_mapping(vbasoftware_database, user_group_key, user_id)

Delete UserGroupMapping

Deletes an UserGroupMapping

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key
user_id = 'user_id_example' # String | User ID

begin
  # Delete UserGroupMapping
  api_instance.delete_user_group_mapping(vbasoftware_database, user_group_key, user_id)
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->delete_user_group_mapping: #{e}"
end
```

#### Using the delete_user_group_mapping_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)

```ruby
begin
  # Delete UserGroupMapping
  data, status_code, headers = api_instance.delete_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->delete_user_group_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_group_mapping

> <UserGroupMappingVBAResponse> get_user_group_mapping(vbasoftware_database, user_group_key, user_id)

Get UserGroupMapping

Gets UserGroupMapping

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key
user_id = 'user_id_example' # String | User ID

begin
  # Get UserGroupMapping
  result = api_instance.get_user_group_mapping(vbasoftware_database, user_group_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->get_user_group_mapping: #{e}"
end
```

#### Using the get_user_group_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupMappingVBAResponse>, Integer, Hash)> get_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)

```ruby
begin
  # Get UserGroupMapping
  data, status_code, headers = api_instance.get_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->get_user_group_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UserGroupMappingVBAResponse**](UserGroupMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_group_mapping

> <UserGroupMappingListVBAResponse> list_user_group_mapping(vbasoftware_database, user_group_key)

List UserGroupMapping

Lists all UserGroupMapping for a specific userGroupKey

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key

begin
  # List UserGroupMapping
  result = api_instance.list_user_group_mapping(vbasoftware_database, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->list_user_group_mapping: #{e}"
end
```

#### Using the list_user_group_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupMappingListVBAResponse>, Integer, Hash)> list_user_group_mapping_with_http_info(vbasoftware_database, user_group_key)

```ruby
begin
  # List UserGroupMapping
  data, status_code, headers = api_instance.list_user_group_mapping_with_http_info(vbasoftware_database, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupMappingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->list_user_group_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**UserGroupMappingListVBAResponse**](UserGroupMappingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_group_mapping_filtered

> <UserGroupMappingListVBAResponse> list_user_group_mapping_filtered(vbasoftware_database, opts)

List UserGroupMapping

Lists all UserGroupMappings with optional filter for User_ID

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  user_id: 'user_id_example' # String | User_ID
}

begin
  # List UserGroupMapping
  result = api_instance.list_user_group_mapping_filtered(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->list_user_group_mapping_filtered: #{e}"
end
```

#### Using the list_user_group_mapping_filtered_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserGroupMappingListVBAResponse>, Integer, Hash)> list_user_group_mapping_filtered_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List UserGroupMapping
  data, status_code, headers = api_instance.list_user_group_mapping_filtered_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserGroupMappingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->list_user_group_mapping_filtered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User_ID | [optional] |

### Return type

[**UserGroupMappingListVBAResponse**](UserGroupMappingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_group_mapping

> <MultiCodeResponseListVBAResponse> update_batch_user_group_mapping(vbasoftware_database, user_group_key, user_group_mapping)

Create multiple UserGroupMappings

Create multiple UserGroupMapping at once.  If the entity already exists, an error will be returned for that item. If the entity does not exist, it will be created.

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

api_instance = Vba::UserGroupMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_group_key = 56 # Integer | UserGroup Key
user_group_mapping = [Vba::UserGroupMapping.new({user_group_key: 37, user_id: 'user_id_example'})] # Array<UserGroupMapping> | 

begin
  # Create multiple UserGroupMappings
  result = api_instance.update_batch_user_group_mapping(vbasoftware_database, user_group_key, user_group_mapping)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->update_batch_user_group_mapping: #{e}"
end
```

#### Using the update_batch_user_group_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_group_mapping)

```ruby
begin
  # Create multiple UserGroupMappings
  data, status_code, headers = api_instance.update_batch_user_group_mapping_with_http_info(vbasoftware_database, user_group_key, user_group_mapping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserGroupMappingsApi->update_batch_user_group_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **user_group_mapping** | [**Array&lt;UserGroupMapping&gt;**](UserGroupMapping.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

