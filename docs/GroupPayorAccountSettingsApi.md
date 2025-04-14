# Vba::GroupPayorAccountSettingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account**](GroupPayorAccountSettingsApi.md#create_group_payor_account) | **POST** /groups/{groupID}/payor-account-settings | Create GroupPayorAccount |
| [**delete_group_payor_account**](GroupPayorAccountSettingsApi.md#delete_group_payor_account) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID} | Delete GroupPayorAccount |
| [**get_group_payor_account**](GroupPayorAccountSettingsApi.md#get_group_payor_account) | **GET** /groups/{groupID}/payor-account-settings/{settingID} | Get GroupPayorAccount |
| [**list_group_payor_account**](GroupPayorAccountSettingsApi.md#list_group_payor_account) | **GET** /groups/{groupID}/payor-account-settings | List GroupPayorAccount |
| [**update_batch_group_payor_account**](GroupPayorAccountSettingsApi.md#update_batch_group_payor_account) | **PUT** /groups/{groupID}/payor-account-settings-batch | Create or Update Batch GroupPayorAccount |
| [**update_group_payor_account**](GroupPayorAccountSettingsApi.md#update_group_payor_account) | **PUT** /groups/{groupID}/payor-account-settings/{settingID} | Update GroupPayorAccount |


## create_group_payor_account

> <GroupPayorAccountVBAResponse> create_group_payor_account(vbasoftware_database, group_id, group_payor_account)

Create GroupPayorAccount

Creates a new GroupPayorAccount

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_payor_account = Vba::GroupPayorAccount.new({group_id: 'group_id_example', setting_id: 'setting_id_example', check_incurred: false, check_received: false}) # GroupPayorAccount | 

begin
  # Create GroupPayorAccount
  result = api_instance.create_group_payor_account(vbasoftware_database, group_id, group_payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->create_group_payor_account: #{e}"
end
```

#### Using the create_group_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountVBAResponse>, Integer, Hash)> create_group_payor_account_with_http_info(vbasoftware_database, group_id, group_payor_account)

```ruby
begin
  # Create GroupPayorAccount
  data, status_code, headers = api_instance.create_group_payor_account_with_http_info(vbasoftware_database, group_id, group_payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->create_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_payor_account** | [**GroupPayorAccount**](GroupPayorAccount.md) |  |  |

### Return type

[**GroupPayorAccountVBAResponse**](GroupPayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account

> delete_group_payor_account(vbasoftware_database, group_id, setting_id)

Delete GroupPayorAccount

Deletes an GroupPayorAccount

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID

begin
  # Delete GroupPayorAccount
  api_instance.delete_group_payor_account(vbasoftware_database, group_id, setting_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->delete_group_payor_account: #{e}"
end
```

#### Using the delete_group_payor_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id)

```ruby
begin
  # Delete GroupPayorAccount
  data, status_code, headers = api_instance.delete_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->delete_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account

> <GroupPayorAccountVBAResponse> get_group_payor_account(vbasoftware_database, group_id, setting_id)

Get GroupPayorAccount

Gets GroupPayorAccount

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID

begin
  # Get GroupPayorAccount
  result = api_instance.get_group_payor_account(vbasoftware_database, group_id, setting_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->get_group_payor_account: #{e}"
end
```

#### Using the get_group_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountVBAResponse>, Integer, Hash)> get_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id)

```ruby
begin
  # Get GroupPayorAccount
  data, status_code, headers = api_instance.get_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->get_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |

### Return type

[**GroupPayorAccountVBAResponse**](GroupPayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account

> <GroupPayorAccountListVBAResponse> list_group_payor_account(vbasoftware_database, group_id, opts)

List GroupPayorAccount

Lists all GroupPayorAccount for the given groupID

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccount
  result = api_instance.list_group_payor_account(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->list_group_payor_account: #{e}"
end
```

#### Using the list_group_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountListVBAResponse>, Integer, Hash)> list_group_payor_account_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupPayorAccount
  data, status_code, headers = api_instance.list_group_payor_account_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->list_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountListVBAResponse**](GroupPayorAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account(vbasoftware_database, group_id, group_payor_account)

Create or Update Batch GroupPayorAccount

Create or Update multiple GroupPayorAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_payor_account = [Vba::GroupPayorAccount.new({group_id: 'group_id_example', setting_id: 'setting_id_example', check_incurred: false, check_received: false})] # Array<GroupPayorAccount> | 

begin
  # Create or Update Batch GroupPayorAccount
  result = api_instance.update_batch_group_payor_account(vbasoftware_database, group_id, group_payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->update_batch_group_payor_account: #{e}"
end
```

#### Using the update_batch_group_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_with_http_info(vbasoftware_database, group_id, group_payor_account)

```ruby
begin
  # Create or Update Batch GroupPayorAccount
  data, status_code, headers = api_instance.update_batch_group_payor_account_with_http_info(vbasoftware_database, group_id, group_payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->update_batch_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_payor_account** | [**Array&lt;GroupPayorAccount&gt;**](GroupPayorAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_payor_account

> <GroupPayorAccountVBAResponse> update_group_payor_account(vbasoftware_database, group_id, setting_id, group_payor_account)

Update GroupPayorAccount

Updates a specific GroupPayorAccount.

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

api_instance = Vba::GroupPayorAccountSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account = Vba::GroupPayorAccount.new({group_id: 'group_id_example', setting_id: 'setting_id_example', check_incurred: false, check_received: false}) # GroupPayorAccount | 

begin
  # Update GroupPayorAccount
  result = api_instance.update_group_payor_account(vbasoftware_database, group_id, setting_id, group_payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->update_group_payor_account: #{e}"
end
```

#### Using the update_group_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountVBAResponse>, Integer, Hash)> update_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account)

```ruby
begin
  # Update GroupPayorAccount
  data, status_code, headers = api_instance.update_group_payor_account_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSettingsApi->update_group_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account** | [**GroupPayorAccount**](GroupPayorAccount.md) |  |  |

### Return type

[**GroupPayorAccountVBAResponse**](GroupPayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

