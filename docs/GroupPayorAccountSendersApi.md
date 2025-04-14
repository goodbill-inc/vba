# Vba::GroupPayorAccountSendersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_sender**](GroupPayorAccountSendersApi.md#create_group_payor_account_sender) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/senders | Create GroupPayorAccountSender |
| [**delete_group_payor_account_sender**](GroupPayorAccountSendersApi.md#delete_group_payor_account_sender) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/senders/{senderID} | Delete GroupPayorAccountSender |
| [**get_group_payor_account_sender**](GroupPayorAccountSendersApi.md#get_group_payor_account_sender) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/senders/{senderID} | Get GroupPayorAccountSender |
| [**list_group_payor_account_sender**](GroupPayorAccountSendersApi.md#list_group_payor_account_sender) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/senders | List GroupPayorAccountSender |
| [**update_batch_group_payor_account_sender**](GroupPayorAccountSendersApi.md#update_batch_group_payor_account_sender) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/senders-batch | Create or Update Batch GroupPayorAccountSender |


## create_group_payor_account_sender

> <GroupPayorAccountSenderVBAResponse> create_group_payor_account_sender(vbasoftware_database, group_id, setting_id, group_payor_account_sender)

Create GroupPayorAccountSender

Creates a new GroupPayorAccountSender

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

api_instance = Vba::GroupPayorAccountSendersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_sender = Vba::GroupPayorAccountSender.new({group_id: 'group_id_example', setting_id: 'setting_id_example', sender_id: 'sender_id_example'}) # GroupPayorAccountSender | 

begin
  # Create GroupPayorAccountSender
  result = api_instance.create_group_payor_account_sender(vbasoftware_database, group_id, setting_id, group_payor_account_sender)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->create_group_payor_account_sender: #{e}"
end
```

#### Using the create_group_payor_account_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountSenderVBAResponse>, Integer, Hash)> create_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_sender)

```ruby
begin
  # Create GroupPayorAccountSender
  data, status_code, headers = api_instance.create_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_sender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountSenderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->create_group_payor_account_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_sender** | [**GroupPayorAccountSender**](GroupPayorAccountSender.md) |  |  |

### Return type

[**GroupPayorAccountSenderVBAResponse**](GroupPayorAccountSenderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_sender

> delete_group_payor_account_sender(vbasoftware_database, group_id, setting_id, sender_id)

Delete GroupPayorAccountSender

Deletes an GroupPayorAccountSender

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

api_instance = Vba::GroupPayorAccountSendersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
sender_id = 'sender_id_example' # String | Sender ID

begin
  # Delete GroupPayorAccountSender
  api_instance.delete_group_payor_account_sender(vbasoftware_database, group_id, setting_id, sender_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->delete_group_payor_account_sender: #{e}"
end
```

#### Using the delete_group_payor_account_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, sender_id)

```ruby
begin
  # Delete GroupPayorAccountSender
  data, status_code, headers = api_instance.delete_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->delete_group_payor_account_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **sender_id** | **String** | Sender ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_sender

> <GroupPayorAccountSenderVBAResponse> get_group_payor_account_sender(vbasoftware_database, group_id, setting_id, sender_id)

Get GroupPayorAccountSender

Gets GroupPayorAccountSender

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

api_instance = Vba::GroupPayorAccountSendersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
sender_id = 'sender_id_example' # String | Sender ID

begin
  # Get GroupPayorAccountSender
  result = api_instance.get_group_payor_account_sender(vbasoftware_database, group_id, setting_id, sender_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->get_group_payor_account_sender: #{e}"
end
```

#### Using the get_group_payor_account_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountSenderVBAResponse>, Integer, Hash)> get_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, sender_id)

```ruby
begin
  # Get GroupPayorAccountSender
  data, status_code, headers = api_instance.get_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountSenderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->get_group_payor_account_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **sender_id** | **String** | Sender ID |  |

### Return type

[**GroupPayorAccountSenderVBAResponse**](GroupPayorAccountSenderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_sender

> <GroupPayorAccountSenderListVBAResponse> list_group_payor_account_sender(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountSender

Lists all GroupPayorAccountSender for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountSendersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountSender
  result = api_instance.list_group_payor_account_sender(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->list_group_payor_account_sender: #{e}"
end
```

#### Using the list_group_payor_account_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountSenderListVBAResponse>, Integer, Hash)> list_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountSender
  data, status_code, headers = api_instance.list_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountSenderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->list_group_payor_account_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountSenderListVBAResponse**](GroupPayorAccountSenderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_sender

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_sender(vbasoftware_database, group_id, setting_id, group_payor_account_sender)

Create or Update Batch GroupPayorAccountSender

Create or Update multiple GroupPayorAccountSender at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountSendersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_sender = [Vba::GroupPayorAccountSender.new({group_id: 'group_id_example', setting_id: 'setting_id_example', sender_id: 'sender_id_example'})] # Array<GroupPayorAccountSender> | 

begin
  # Create or Update Batch GroupPayorAccountSender
  result = api_instance.update_batch_group_payor_account_sender(vbasoftware_database, group_id, setting_id, group_payor_account_sender)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->update_batch_group_payor_account_sender: #{e}"
end
```

#### Using the update_batch_group_payor_account_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_sender)

```ruby
begin
  # Create or Update Batch GroupPayorAccountSender
  data, status_code, headers = api_instance.update_batch_group_payor_account_sender_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_sender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountSendersApi->update_batch_group_payor_account_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_sender** | [**Array&lt;GroupPayorAccountSender&gt;**](GroupPayorAccountSender.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

