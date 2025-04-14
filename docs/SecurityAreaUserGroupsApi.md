# Vba::SecurityAreaUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area_user_group**](SecurityAreaUserGroupsApi.md#create_security_area_user_group) | **POST** /security-areas/{securityArea}/user-groups | Create SecurityAreaUserGroup |
| [**delete_security_area_user_group**](SecurityAreaUserGroupsApi.md#delete_security_area_user_group) | **DELETE** /security-areas/{securityArea}/user-groups/{userGroupKey} | Delete SecurityAreaUserGroup |
| [**get_security_area_user_group**](SecurityAreaUserGroupsApi.md#get_security_area_user_group) | **GET** /security-areas/{securityArea}/user-groups/{userGroupKey} | Get SecurityAreaUserGroup |
| [**list_secure_groups_for_user_id**](SecurityAreaUserGroupsApi.md#list_secure_groups_for_user_id) | **GET** /secure-groups | List Secure Groups |
| [**list_security_area_user_group**](SecurityAreaUserGroupsApi.md#list_security_area_user_group) | **GET** /security-areas/{securityArea}/user-groups | List SecurityAreaUserGroup |
| [**update_batch_security_area_user_group**](SecurityAreaUserGroupsApi.md#update_batch_security_area_user_group) | **PUT** /security-areas/{securityArea}/user-groups | Create or Update Batch SecurityAreaUserGroup |
| [**update_security_area_user_group**](SecurityAreaUserGroupsApi.md#update_security_area_user_group) | **PUT** /security-areas/{securityArea}/user-groups/{userGroupKey} | Update SecurityAreaUserGroup |


## create_security_area_user_group

> <SecurityAreaUserGroupVBAResponse> create_security_area_user_group(vbasoftware_database, security_area, security_area_user_group)

Create SecurityAreaUserGroup

Creates a new SecurityAreaUserGroup

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_user_group = Vba::SecurityAreaUserGroup.new({security_area: 'security_area_example', user_group_key: 37, security_level: 37}) # SecurityAreaUserGroup | 

begin
  # Create SecurityAreaUserGroup
  result = api_instance.create_security_area_user_group(vbasoftware_database, security_area, security_area_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->create_security_area_user_group: #{e}"
end
```

#### Using the create_security_area_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserGroupVBAResponse>, Integer, Hash)> create_security_area_user_group_with_http_info(vbasoftware_database, security_area, security_area_user_group)

```ruby
begin
  # Create SecurityAreaUserGroup
  data, status_code, headers = api_instance.create_security_area_user_group_with_http_info(vbasoftware_database, security_area, security_area_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->create_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_user_group** | [**SecurityAreaUserGroup**](SecurityAreaUserGroup.md) |  |  |

### Return type

[**SecurityAreaUserGroupVBAResponse**](SecurityAreaUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area_user_group

> delete_security_area_user_group(vbasoftware_database, security_area, user_group_key)

Delete SecurityAreaUserGroup

Deletes an SecurityAreaUserGroup

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_group_key = 56 # Integer | UserGroup Key

begin
  # Delete SecurityAreaUserGroup
  api_instance.delete_security_area_user_group(vbasoftware_database, security_area, user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->delete_security_area_user_group: #{e}"
end
```

#### Using the delete_security_area_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key)

```ruby
begin
  # Delete SecurityAreaUserGroup
  data, status_code, headers = api_instance.delete_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->delete_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area_user_group

> <SecurityAreaUserGroupVBAResponse> get_security_area_user_group(vbasoftware_database, security_area, user_group_key)

Get SecurityAreaUserGroup

Gets SecurityAreaUserGroup

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_group_key = 56 # Integer | UserGroup Key

begin
  # Get SecurityAreaUserGroup
  result = api_instance.get_security_area_user_group(vbasoftware_database, security_area, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->get_security_area_user_group: #{e}"
end
```

#### Using the get_security_area_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserGroupVBAResponse>, Integer, Hash)> get_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key)

```ruby
begin
  # Get SecurityAreaUserGroup
  data, status_code, headers = api_instance.get_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->get_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**SecurityAreaUserGroupVBAResponse**](SecurityAreaUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_secure_groups_for_user_id

> <StringListVBAResponse> list_secure_groups_for_user_id(vbasoftware_database, user_id)

List Secure Groups

Lists all Secure Groups for a given User ID

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List Secure Groups
  result = api_instance.list_secure_groups_for_user_id(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->list_secure_groups_for_user_id: #{e}"
end
```

#### Using the list_secure_groups_for_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringListVBAResponse>, Integer, Hash)> list_secure_groups_for_user_id_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List Secure Groups
  data, status_code, headers = api_instance.list_secure_groups_for_user_id_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->list_secure_groups_for_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringListVBAResponse**](StringListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area_user_group

> <SecurityAreaUserGroupListVBAResponse> list_security_area_user_group(vbasoftware_database, security_area)

List SecurityAreaUserGroup

Lists all SecurityAreaUserGroup securityArea

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # List SecurityAreaUserGroup
  result = api_instance.list_security_area_user_group(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->list_security_area_user_group: #{e}"
end
```

#### Using the list_security_area_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserGroupListVBAResponse>, Integer, Hash)> list_security_area_user_group_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # List SecurityAreaUserGroup
  data, status_code, headers = api_instance.list_security_area_user_group_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->list_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

[**SecurityAreaUserGroupListVBAResponse**](SecurityAreaUserGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area_user_group

> <MultiCodeResponseListVBAResponse> update_batch_security_area_user_group(vbasoftware_database, security_area, security_area_user_group)

Create or Update Batch SecurityAreaUserGroup

Create or Update multiple SecurityAreaUserGroup records at once. If the entity exists, it will be updated; if it does not exist, it will be created. **Please note**: The `Security_Area` and `UserGroup_Key` fields represent the primary identifiers for these records and cannot be modified during an update. Ensure these values remain consistent with the original records when performing updates.

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_user_group = [Vba::SecurityAreaUserGroup.new({security_area: 'security_area_example', user_group_key: 37, security_level: 37})] # Array<SecurityAreaUserGroup> | 

begin
  # Create or Update Batch SecurityAreaUserGroup
  result = api_instance.update_batch_security_area_user_group(vbasoftware_database, security_area, security_area_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->update_batch_security_area_user_group: #{e}"
end
```

#### Using the update_batch_security_area_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_user_group_with_http_info(vbasoftware_database, security_area, security_area_user_group)

```ruby
begin
  # Create or Update Batch SecurityAreaUserGroup
  data, status_code, headers = api_instance.update_batch_security_area_user_group_with_http_info(vbasoftware_database, security_area, security_area_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->update_batch_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_user_group** | [**Array&lt;SecurityAreaUserGroup&gt;**](SecurityAreaUserGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area_user_group

> <SecurityAreaUserGroupVBAResponse> update_security_area_user_group(vbasoftware_database, security_area, user_group_key, security_area_user_group)

Update SecurityAreaUserGroup

Updates an existing SecurityAreaUserGroup for the specified `Security_Area` and `UserGroup_Key`. **Please note**: The `Security_Area` and `UserGroup_Key` fields represent the primary identifiers for this record and cannot be modified during an update. These fields must match the values of the existing record being updated.

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

api_instance = Vba::SecurityAreaUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
user_group_key = 56 # Integer | UserGroup Key
security_area_user_group = Vba::SecurityAreaUserGroup.new({security_area: 'security_area_example', user_group_key: 37, security_level: 37}) # SecurityAreaUserGroup | 

begin
  # Update SecurityAreaUserGroup
  result = api_instance.update_security_area_user_group(vbasoftware_database, security_area, user_group_key, security_area_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->update_security_area_user_group: #{e}"
end
```

#### Using the update_security_area_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaUserGroupVBAResponse>, Integer, Hash)> update_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key, security_area_user_group)

```ruby
begin
  # Update SecurityAreaUserGroup
  data, status_code, headers = api_instance.update_security_area_user_group_with_http_info(vbasoftware_database, security_area, user_group_key, security_area_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaUserGroupsApi->update_security_area_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **user_group_key** | **Integer** | UserGroup Key |  |
| **security_area_user_group** | [**SecurityAreaUserGroup**](SecurityAreaUserGroup.md) |  |  |

### Return type

[**SecurityAreaUserGroupVBAResponse**](SecurityAreaUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

