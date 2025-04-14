# Vba::GroupSelfAdminSettingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_self_admin**](GroupSelfAdminSettingsApi.md#create_group_self_admin) | **POST** /group-self-admins | Create GroupSelfAdmin |
| [**delete_group_self_admin**](GroupSelfAdminSettingsApi.md#delete_group_self_admin) | **DELETE** /group-self-admins/{groupSelfAdminKey} | Delete GroupSelfAdmin |
| [**get_group_self_admin**](GroupSelfAdminSettingsApi.md#get_group_self_admin) | **GET** /group-self-admins/{groupSelfAdminKey} | Get GroupSelfAdmin |
| [**list_group_self_admin**](GroupSelfAdminSettingsApi.md#list_group_self_admin) | **GET** /group-self-admins | List GroupSelfAdmin |
| [**update_batch_group_self_admin**](GroupSelfAdminSettingsApi.md#update_batch_group_self_admin) | **PUT** /group-self-admins-batch | Create or Update Batch GroupSelfAdmin |
| [**update_group_self_admin**](GroupSelfAdminSettingsApi.md#update_group_self_admin) | **PUT** /group-self-admins/{groupSelfAdminKey} | Update GroupSelfAdmin |


## create_group_self_admin

> <GroupSelfAdminVBAResponse> create_group_self_admin(vbasoftware_database, group_self_admin)

Create GroupSelfAdmin

Creates a new GroupSelfAdmin

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_self_admin = Vba::GroupSelfAdmin.new({group_self_admin_key: 37, active: false, group_id: 'group_id_example', use_volume_scale: false}) # GroupSelfAdmin | 

begin
  # Create GroupSelfAdmin
  result = api_instance.create_group_self_admin(vbasoftware_database, group_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->create_group_self_admin: #{e}"
end
```

#### Using the create_group_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupSelfAdminVBAResponse>, Integer, Hash)> create_group_self_admin_with_http_info(vbasoftware_database, group_self_admin)

```ruby
begin
  # Create GroupSelfAdmin
  data, status_code, headers = api_instance.create_group_self_admin_with_http_info(vbasoftware_database, group_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->create_group_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_self_admin** | [**GroupSelfAdmin**](GroupSelfAdmin.md) |  |  |

### Return type

[**GroupSelfAdminVBAResponse**](GroupSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_self_admin

> delete_group_self_admin(vbasoftware_database, group_self_admin_key)

Delete GroupSelfAdmin

Deletes an GroupSelfAdmin

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_self_admin_key = 56 # Integer | GroupSelfAdmin Key

begin
  # Delete GroupSelfAdmin
  api_instance.delete_group_self_admin(vbasoftware_database, group_self_admin_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->delete_group_self_admin: #{e}"
end
```

#### Using the delete_group_self_admin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key)

```ruby
begin
  # Delete GroupSelfAdmin
  data, status_code, headers = api_instance.delete_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->delete_group_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_self_admin_key** | **Integer** | GroupSelfAdmin Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_self_admin

> <GroupSelfAdminVBAResponse> get_group_self_admin(vbasoftware_database, group_self_admin_key)

Get GroupSelfAdmin

Gets GroupSelfAdmin

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_self_admin_key = 56 # Integer | GroupSelfAdmin Key

begin
  # Get GroupSelfAdmin
  result = api_instance.get_group_self_admin(vbasoftware_database, group_self_admin_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->get_group_self_admin: #{e}"
end
```

#### Using the get_group_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupSelfAdminVBAResponse>, Integer, Hash)> get_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key)

```ruby
begin
  # Get GroupSelfAdmin
  data, status_code, headers = api_instance.get_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->get_group_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_self_admin_key** | **Integer** | GroupSelfAdmin Key |  |

### Return type

[**GroupSelfAdminVBAResponse**](GroupSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_self_admin

> <GroupSelfAdminListVBAResponse> list_group_self_admin(vbasoftware_database, opts)

List GroupSelfAdmin

Lists all GroupSelfAdmin

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupSelfAdmin
  result = api_instance.list_group_self_admin(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->list_group_self_admin: #{e}"
end
```

#### Using the list_group_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupSelfAdminListVBAResponse>, Integer, Hash)> list_group_self_admin_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupSelfAdmin
  data, status_code, headers = api_instance.list_group_self_admin_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupSelfAdminListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->list_group_self_admin_with_http_info: #{e}"
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

[**GroupSelfAdminListVBAResponse**](GroupSelfAdminListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_self_admin

> <MultiCodeResponseListVBAResponse> update_batch_group_self_admin(vbasoftware_database, group_self_admin)

Create or Update Batch GroupSelfAdmin

Create or Update multiple GroupSelfAdmin at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_self_admin = [Vba::GroupSelfAdmin.new({group_self_admin_key: 37, active: false, group_id: 'group_id_example', use_volume_scale: false})] # Array<GroupSelfAdmin> | 

begin
  # Create or Update Batch GroupSelfAdmin
  result = api_instance.update_batch_group_self_admin(vbasoftware_database, group_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->update_batch_group_self_admin: #{e}"
end
```

#### Using the update_batch_group_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_self_admin_with_http_info(vbasoftware_database, group_self_admin)

```ruby
begin
  # Create or Update Batch GroupSelfAdmin
  data, status_code, headers = api_instance.update_batch_group_self_admin_with_http_info(vbasoftware_database, group_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->update_batch_group_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_self_admin** | [**Array&lt;GroupSelfAdmin&gt;**](GroupSelfAdmin.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_self_admin

> <GroupSelfAdminVBAResponse> update_group_self_admin(vbasoftware_database, group_self_admin_key, group_self_admin)

Update GroupSelfAdmin

Updates a specific GroupSelfAdmin.

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

api_instance = Vba::GroupSelfAdminSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_self_admin_key = 56 # Integer | GroupSelfAdmin Key
group_self_admin = Vba::GroupSelfAdmin.new({group_self_admin_key: 37, active: false, group_id: 'group_id_example', use_volume_scale: false}) # GroupSelfAdmin | 

begin
  # Update GroupSelfAdmin
  result = api_instance.update_group_self_admin(vbasoftware_database, group_self_admin_key, group_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->update_group_self_admin: #{e}"
end
```

#### Using the update_group_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupSelfAdminVBAResponse>, Integer, Hash)> update_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key, group_self_admin)

```ruby
begin
  # Update GroupSelfAdmin
  data, status_code, headers = api_instance.update_group_self_admin_with_http_info(vbasoftware_database, group_self_admin_key, group_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSelfAdminSettingsApi->update_group_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_self_admin_key** | **Integer** | GroupSelfAdmin Key |  |
| **group_self_admin** | [**GroupSelfAdmin**](GroupSelfAdmin.md) |  |  |

### Return type

[**GroupSelfAdminVBAResponse**](GroupSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

