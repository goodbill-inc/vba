# Vba::GroupPayorAccountPayToApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_pay_to**](GroupPayorAccountPayToApi.md#create_group_payor_account_pay_to) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/pay-tos | Create GroupPayorAccountPayTo |
| [**delete_group_payor_account_pay_to**](GroupPayorAccountPayToApi.md#delete_group_payor_account_pay_to) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/pay-tos/{sendCheckTo} | Delete GroupPayorAccountPayTo |
| [**get_group_payor_account_pay_to**](GroupPayorAccountPayToApi.md#get_group_payor_account_pay_to) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/pay-tos/{sendCheckTo} | Get GroupPayorAccountPayTo |
| [**list_group_payor_account_pay_to**](GroupPayorAccountPayToApi.md#list_group_payor_account_pay_to) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/pay-tos | List GroupPayorAccountPayTo |
| [**update_batch_group_payor_account_pay_to**](GroupPayorAccountPayToApi.md#update_batch_group_payor_account_pay_to) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/pay-tos-batch | Create or Update Batch GroupPayorAccountPayTo |


## create_group_payor_account_pay_to

> <GroupPayorAccountPayToVBAResponse> create_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)

Create GroupPayorAccountPayTo

Creates a new GroupPayorAccountPayTo

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

api_instance = Vba::GroupPayorAccountPayToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_pay_to = Vba::GroupPayorAccountPayTo.new({group_id: 'group_id_example', setting_id: 'setting_id_example', send_check_to: 'send_check_to_example'}) # GroupPayorAccountPayTo | 

begin
  # Create GroupPayorAccountPayTo
  result = api_instance.create_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->create_group_payor_account_pay_to: #{e}"
end
```

#### Using the create_group_payor_account_pay_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPayToVBAResponse>, Integer, Hash)> create_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)

```ruby
begin
  # Create GroupPayorAccountPayTo
  data, status_code, headers = api_instance.create_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPayToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->create_group_payor_account_pay_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_pay_to** | [**GroupPayorAccountPayTo**](GroupPayorAccountPayTo.md) |  |  |

### Return type

[**GroupPayorAccountPayToVBAResponse**](GroupPayorAccountPayToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_pay_to

> delete_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, send_check_to)

Delete GroupPayorAccountPayTo

Deletes an GroupPayorAccountPayTo

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

api_instance = Vba::GroupPayorAccountPayToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
send_check_to = 'send_check_to_example' # String | Send Check To

begin
  # Delete GroupPayorAccountPayTo
  api_instance.delete_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, send_check_to)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->delete_group_payor_account_pay_to: #{e}"
end
```

#### Using the delete_group_payor_account_pay_to_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, send_check_to)

```ruby
begin
  # Delete GroupPayorAccountPayTo
  data, status_code, headers = api_instance.delete_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, send_check_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->delete_group_payor_account_pay_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **send_check_to** | **String** | Send Check To |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_pay_to

> <GroupPayorAccountPayToVBAResponse> get_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, send_check_to)

Get GroupPayorAccountPayTo

Gets GroupPayorAccountPayTo

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

api_instance = Vba::GroupPayorAccountPayToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
send_check_to = 'send_check_to_example' # String | Send Check To

begin
  # Get GroupPayorAccountPayTo
  result = api_instance.get_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, send_check_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->get_group_payor_account_pay_to: #{e}"
end
```

#### Using the get_group_payor_account_pay_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPayToVBAResponse>, Integer, Hash)> get_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, send_check_to)

```ruby
begin
  # Get GroupPayorAccountPayTo
  data, status_code, headers = api_instance.get_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, send_check_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPayToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->get_group_payor_account_pay_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **send_check_to** | **String** | Send Check To |  |

### Return type

[**GroupPayorAccountPayToVBAResponse**](GroupPayorAccountPayToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_pay_to

> <GroupPayorAccountPayToListVBAResponse> list_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountPayTo

Lists all GroupPayorAccountPayTo for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountPayToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountPayTo
  result = api_instance.list_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->list_group_payor_account_pay_to: #{e}"
end
```

#### Using the list_group_payor_account_pay_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPayToListVBAResponse>, Integer, Hash)> list_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountPayTo
  data, status_code, headers = api_instance.list_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPayToListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->list_group_payor_account_pay_to_with_http_info: #{e}"
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

[**GroupPayorAccountPayToListVBAResponse**](GroupPayorAccountPayToListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_pay_to

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)

Create or Update Batch GroupPayorAccountPayTo

Create or Update multiple GroupPayorAccountPayTo at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountPayToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_pay_to = [Vba::GroupPayorAccountPayTo.new({group_id: 'group_id_example', setting_id: 'setting_id_example', send_check_to: 'send_check_to_example'})] # Array<GroupPayorAccountPayTo> | 

begin
  # Create or Update Batch GroupPayorAccountPayTo
  result = api_instance.update_batch_group_payor_account_pay_to(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->update_batch_group_payor_account_pay_to: #{e}"
end
```

#### Using the update_batch_group_payor_account_pay_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)

```ruby
begin
  # Create or Update Batch GroupPayorAccountPayTo
  data, status_code, headers = api_instance.update_batch_group_payor_account_pay_to_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_pay_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPayToApi->update_batch_group_payor_account_pay_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_pay_to** | [**Array&lt;GroupPayorAccountPayTo&gt;**](GroupPayorAccountPayTo.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

