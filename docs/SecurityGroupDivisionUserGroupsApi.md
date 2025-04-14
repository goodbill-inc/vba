# Vba::SecurityGroupDivisionUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#create_security_group_division_user_group) | **POST** /security-group-division-user-groups | Create SecurityGroupDivisionUserGroup |
| [**delete_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#delete_security_group_division_user_group) | **DELETE** /security-group-division-user-groups/{securityGroupDivisionUserGroupKey} | Delete SecurityGroupDivisionUserGroup |
| [**get_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#get_security_group_division_user_group) | **GET** /security-group-division-user-groups/{securityGroupDivisionUserGroupKey} | Get SecurityGroupDivisionUserGroup |
| [**list_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#list_security_group_division_user_group) | **GET** /security-group-division-user-groups | List SecurityGroupDivisionUserGroup |
| [**update_batch_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#update_batch_security_group_division_user_group) | **PUT** /security-group-division-user-groups-batch | Create or Update Batch SecurityGroupDivisionUserGroup |
| [**update_security_group_division_user_group**](SecurityGroupDivisionUserGroupsApi.md#update_security_group_division_user_group) | **PUT** /security-group-division-user-groups/{securityGroupDivisionUserGroupKey} | Update SecurityGroupDivisionUserGroup |


## create_security_group_division_user_group

> <SecurityGroupDivisionUserGroupVBAResponse> create_security_group_division_user_group(vbasoftware_database, security_group_division_user_group)

Create SecurityGroupDivisionUserGroup

Creates a new SecurityGroupDivisionUserGroup

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_group = Vba::SecurityGroupDivisionUserGroup.new({security_group_division_user_group_key: 37, group_id: 'group_id_example', user_group_key: 37}) # SecurityGroupDivisionUserGroup | 

begin
  # Create SecurityGroupDivisionUserGroup
  result = api_instance.create_security_group_division_user_group(vbasoftware_database, security_group_division_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->create_security_group_division_user_group: #{e}"
end
```

#### Using the create_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserGroupVBAResponse>, Integer, Hash)> create_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group)

```ruby
begin
  # Create SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.create_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->create_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_group** | [**SecurityGroupDivisionUserGroup**](SecurityGroupDivisionUserGroup.md) |  |  |

### Return type

[**SecurityGroupDivisionUserGroupVBAResponse**](SecurityGroupDivisionUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_group_division_user_group

> delete_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key)

Delete SecurityGroupDivisionUserGroup

Deletes an SecurityGroupDivisionUserGroup

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_group_key = 56 # Integer | SecurityGroupDivisionUserGroup Key

begin
  # Delete SecurityGroupDivisionUserGroup
  api_instance.delete_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->delete_security_group_division_user_group: #{e}"
end
```

#### Using the delete_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key)

```ruby
begin
  # Delete SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.delete_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->delete_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_group_key** | **Integer** | SecurityGroupDivisionUserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_group_division_user_group

> <SecurityGroupDivisionUserGroupVBAResponse> get_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key)

Get SecurityGroupDivisionUserGroup

Gets SecurityGroupDivisionUserGroup

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_group_key = 56 # Integer | SecurityGroupDivisionUserGroup Key

begin
  # Get SecurityGroupDivisionUserGroup
  result = api_instance.get_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->get_security_group_division_user_group: #{e}"
end
```

#### Using the get_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserGroupVBAResponse>, Integer, Hash)> get_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key)

```ruby
begin
  # Get SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.get_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->get_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_group_key** | **Integer** | SecurityGroupDivisionUserGroup Key |  |

### Return type

[**SecurityGroupDivisionUserGroupVBAResponse**](SecurityGroupDivisionUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_group_division_user_group

> <SecurityGroupDivisionUserGroupListVBAResponse> list_security_group_division_user_group(vbasoftware_database, opts)

List SecurityGroupDivisionUserGroup

Lists all SecurityGroupDivisionUserGroup with optional groupID filter

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example', # String | Group ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SecurityGroupDivisionUserGroup
  result = api_instance.list_security_group_division_user_group(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->list_security_group_division_user_group: #{e}"
end
```

#### Using the list_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserGroupListVBAResponse>, Integer, Hash)> list_security_group_division_user_group_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.list_security_group_division_user_group_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->list_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SecurityGroupDivisionUserGroupListVBAResponse**](SecurityGroupDivisionUserGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_group_division_user_group

> <MultiCodeResponseListVBAResponse> update_batch_security_group_division_user_group(vbasoftware_database, security_group_division_user_group)

Create or Update Batch SecurityGroupDivisionUserGroup

Create or Update multiple SecurityGroupDivisionUserGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_group = [Vba::SecurityGroupDivisionUserGroup.new({security_group_division_user_group_key: 37, group_id: 'group_id_example', user_group_key: 37})] # Array<SecurityGroupDivisionUserGroup> | 

begin
  # Create or Update Batch SecurityGroupDivisionUserGroup
  result = api_instance.update_batch_security_group_division_user_group(vbasoftware_database, security_group_division_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->update_batch_security_group_division_user_group: #{e}"
end
```

#### Using the update_batch_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group)

```ruby
begin
  # Create or Update Batch SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.update_batch_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->update_batch_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_group** | [**Array&lt;SecurityGroupDivisionUserGroup&gt;**](SecurityGroupDivisionUserGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_group_division_user_group

> <SecurityGroupDivisionUserGroupVBAResponse> update_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key, security_group_division_user_group)

Update SecurityGroupDivisionUserGroup

Updates a specific SecurityGroupDivisionUserGroup.

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

api_instance = Vba::SecurityGroupDivisionUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_group_division_user_group_key = 56 # Integer | SecurityGroupDivisionUserGroup Key
security_group_division_user_group = Vba::SecurityGroupDivisionUserGroup.new({security_group_division_user_group_key: 37, group_id: 'group_id_example', user_group_key: 37}) # SecurityGroupDivisionUserGroup | 

begin
  # Update SecurityGroupDivisionUserGroup
  result = api_instance.update_security_group_division_user_group(vbasoftware_database, security_group_division_user_group_key, security_group_division_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->update_security_group_division_user_group: #{e}"
end
```

#### Using the update_security_group_division_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityGroupDivisionUserGroupVBAResponse>, Integer, Hash)> update_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key, security_group_division_user_group)

```ruby
begin
  # Update SecurityGroupDivisionUserGroup
  data, status_code, headers = api_instance.update_security_group_division_user_group_with_http_info(vbasoftware_database, security_group_division_user_group_key, security_group_division_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityGroupDivisionUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityGroupDivisionUserGroupsApi->update_security_group_division_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_group_division_user_group_key** | **Integer** | SecurityGroupDivisionUserGroup Key |  |
| **security_group_division_user_group** | [**SecurityGroupDivisionUserGroup**](SecurityGroupDivisionUserGroup.md) |  |  |

### Return type

[**SecurityGroupDivisionUserGroupVBAResponse**](SecurityGroupDivisionUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

