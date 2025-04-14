# Vba::SecurityFieldUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_field_user_group**](SecurityFieldUserGroupsApi.md#create_security_field_user_group) | **POST** /security-field-user-groups | Create SecurityFieldUserGroup |
| [**delete_security_field_user_group**](SecurityFieldUserGroupsApi.md#delete_security_field_user_group) | **DELETE** /security-field-user-groups/{SecurityFieldUserGroup_Key} | Delete SecurityFieldUserGroup |
| [**get_security_field_user_group**](SecurityFieldUserGroupsApi.md#get_security_field_user_group) | **GET** /security-field-user-groups/{SecurityFieldUserGroup_Key} | Get SecurityFieldUserGroup |
| [**list_security_field_user_group**](SecurityFieldUserGroupsApi.md#list_security_field_user_group) | **GET** /security-field-user-groups | List SecurityFieldUserGroup |
| [**update_batch_security_field_user_group**](SecurityFieldUserGroupsApi.md#update_batch_security_field_user_group) | **PUT** /security-field-user-groups-batch | Create or Update Batch SecurityFieldUserGroup |
| [**update_security_field_user_group**](SecurityFieldUserGroupsApi.md#update_security_field_user_group) | **PUT** /security-field-user-groups/{SecurityFieldUserGroup_Key} | Update SecurityFieldUserGroup |


## create_security_field_user_group

> <SecurityFieldUserGroupVBAResponse> create_security_field_user_group(vbasoftware_database, security_field_user_group)

Create SecurityFieldUserGroup

Creates a new SecurityFieldUserGroup

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_group = Vba::SecurityFieldUserGroup.new({security_field_user_group_key: 37, user_group_key: 37}) # SecurityFieldUserGroup | 

begin
  # Create SecurityFieldUserGroup
  result = api_instance.create_security_field_user_group(vbasoftware_database, security_field_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->create_security_field_user_group: #{e}"
end
```

#### Using the create_security_field_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserGroupVBAResponse>, Integer, Hash)> create_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group)

```ruby
begin
  # Create SecurityFieldUserGroup
  data, status_code, headers = api_instance.create_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->create_security_field_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_group** | [**SecurityFieldUserGroup**](SecurityFieldUserGroup.md) |  |  |

### Return type

[**SecurityFieldUserGroupVBAResponse**](SecurityFieldUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_field_user_group

> delete_security_field_user_group(vbasoftware_database, security_field_user_group_key)

Delete SecurityFieldUserGroup

Deletes an SecurityFieldUserGroup

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_group_key = 56 # Integer | SecurityFieldUserGroup Key

begin
  # Delete SecurityFieldUserGroup
  api_instance.delete_security_field_user_group(vbasoftware_database, security_field_user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->delete_security_field_user_group: #{e}"
end
```

#### Using the delete_security_field_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key)

```ruby
begin
  # Delete SecurityFieldUserGroup
  data, status_code, headers = api_instance.delete_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->delete_security_field_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_group_key** | **Integer** | SecurityFieldUserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_field_user_group

> <SecurityFieldUserGroupVBAResponse> get_security_field_user_group(vbasoftware_database, security_field_user_group_key)

Get SecurityFieldUserGroup

Gets SecurityFieldUserGroup

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_group_key = 56 # Integer | SecurityFieldUserGroup Key

begin
  # Get SecurityFieldUserGroup
  result = api_instance.get_security_field_user_group(vbasoftware_database, security_field_user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->get_security_field_user_group: #{e}"
end
```

#### Using the get_security_field_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserGroupVBAResponse>, Integer, Hash)> get_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key)

```ruby
begin
  # Get SecurityFieldUserGroup
  data, status_code, headers = api_instance.get_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->get_security_field_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_group_key** | **Integer** | SecurityFieldUserGroup Key |  |

### Return type

[**SecurityFieldUserGroupVBAResponse**](SecurityFieldUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_field_user_group

> <SecurityFieldUserGroupListVBAResponse> list_security_field_user_group(vbasoftware_database, opts)

List SecurityFieldUserGroup

Lists all SecurityFieldUserGroup

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SecurityFieldUserGroup
  result = api_instance.list_security_field_user_group(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->list_security_field_user_group: #{e}"
end
```

#### Using the list_security_field_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserGroupListVBAResponse>, Integer, Hash)> list_security_field_user_group_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityFieldUserGroup
  data, status_code, headers = api_instance.list_security_field_user_group_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->list_security_field_user_group_with_http_info: #{e}"
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

[**SecurityFieldUserGroupListVBAResponse**](SecurityFieldUserGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_field_user_group

> <MultiCodeResponseListVBAResponse> update_batch_security_field_user_group(vbasoftware_database, security_field_user_group)

Create or Update Batch SecurityFieldUserGroup

Create or Update multiple SecurityFieldUserGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_group = [Vba::SecurityFieldUserGroup.new({security_field_user_group_key: 37, user_group_key: 37})] # Array<SecurityFieldUserGroup> | 

begin
  # Create or Update Batch SecurityFieldUserGroup
  result = api_instance.update_batch_security_field_user_group(vbasoftware_database, security_field_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->update_batch_security_field_user_group: #{e}"
end
```

#### Using the update_batch_security_field_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group)

```ruby
begin
  # Create or Update Batch SecurityFieldUserGroup
  data, status_code, headers = api_instance.update_batch_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->update_batch_security_field_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_group** | [**Array&lt;SecurityFieldUserGroup&gt;**](SecurityFieldUserGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_field_user_group

> <SecurityFieldUserGroupVBAResponse> update_security_field_user_group(vbasoftware_database, security_field_user_group_key, security_field_user_group)

Update SecurityFieldUserGroup

Updates a specific SecurityFieldUserGroup.

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

api_instance = Vba::SecurityFieldUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_user_group_key = 56 # Integer | SecurityFieldUserGroup Key
security_field_user_group = Vba::SecurityFieldUserGroup.new({security_field_user_group_key: 37, user_group_key: 37}) # SecurityFieldUserGroup | 

begin
  # Update SecurityFieldUserGroup
  result = api_instance.update_security_field_user_group(vbasoftware_database, security_field_user_group_key, security_field_user_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->update_security_field_user_group: #{e}"
end
```

#### Using the update_security_field_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldUserGroupVBAResponse>, Integer, Hash)> update_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key, security_field_user_group)

```ruby
begin
  # Update SecurityFieldUserGroup
  data, status_code, headers = api_instance.update_security_field_user_group_with_http_info(vbasoftware_database, security_field_user_group_key, security_field_user_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldUserGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldUserGroupsApi->update_security_field_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_user_group_key** | **Integer** | SecurityFieldUserGroup Key |  |
| **security_field_user_group** | [**SecurityFieldUserGroup**](SecurityFieldUserGroup.md) |  |  |

### Return type

[**SecurityFieldUserGroupVBAResponse**](SecurityFieldUserGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

