# Vba::PayorAccountNotificationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor_account_notify**](PayorAccountNotificationsApi.md#create_payor_account_notify) | **POST** /payor-account-notifications | Create PayorAccountNotify |
| [**delete_payor_account_notify**](PayorAccountNotificationsApi.md#delete_payor_account_notify) | **DELETE** /payor-account-notifications/{payorAccountKey}/{userID} | Delete PayorAccountNotify |
| [**get_payor_account_notify**](PayorAccountNotificationsApi.md#get_payor_account_notify) | **GET** /payor-account-notifications/{payorAccountKey}/{userID} | Get PayorAccountNotify |
| [**list_payor_account_notify**](PayorAccountNotificationsApi.md#list_payor_account_notify) | **GET** /payor-account-notifications | List PayorAccountNotify |
| [**update_batch_payor_account_notify**](PayorAccountNotificationsApi.md#update_batch_payor_account_notify) | **PUT** /payor-account-notifications-batch | Create Batch PayorAccountNotify |


## create_payor_account_notify

> <PayorAccountNotifyVBAResponse> create_payor_account_notify(vbasoftware_database, payor_account_notify)

Create PayorAccountNotify

Creates a new PayorAccountNotify

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

api_instance = Vba::PayorAccountNotificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_notify = Vba::PayorAccountNotify.new({payor_account_key: 37, user_id: 'user_id_example'}) # PayorAccountNotify | 

begin
  # Create PayorAccountNotify
  result = api_instance.create_payor_account_notify(vbasoftware_database, payor_account_notify)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->create_payor_account_notify: #{e}"
end
```

#### Using the create_payor_account_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountNotifyVBAResponse>, Integer, Hash)> create_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify)

```ruby
begin
  # Create PayorAccountNotify
  data, status_code, headers = api_instance.create_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountNotifyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->create_payor_account_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_notify** | [**PayorAccountNotify**](PayorAccountNotify.md) |  |  |

### Return type

[**PayorAccountNotifyVBAResponse**](PayorAccountNotifyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor_account_notify

> delete_payor_account_notify(vbasoftware_database, payor_account_key, user_id)

Delete PayorAccountNotify

Deletes an PayorAccountNotify

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

api_instance = Vba::PayorAccountNotificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key
user_id = 'user_id_example' # String | User ID

begin
  # Delete PayorAccountNotify
  api_instance.delete_payor_account_notify(vbasoftware_database, payor_account_key, user_id)
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->delete_payor_account_notify: #{e}"
end
```

#### Using the delete_payor_account_notify_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id)

```ruby
begin
  # Delete PayorAccountNotify
  data, status_code, headers = api_instance.delete_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->delete_payor_account_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor_account_notify

> <PayorAccountNotifyVBAResponse> get_payor_account_notify(vbasoftware_database, payor_account_key, user_id)

Get PayorAccountNotify

Gets PayorAccountNotify

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

api_instance = Vba::PayorAccountNotificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key
user_id = 'user_id_example' # String | User ID

begin
  # Get PayorAccountNotify
  result = api_instance.get_payor_account_notify(vbasoftware_database, payor_account_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->get_payor_account_notify: #{e}"
end
```

#### Using the get_payor_account_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountNotifyVBAResponse>, Integer, Hash)> get_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id)

```ruby
begin
  # Get PayorAccountNotify
  data, status_code, headers = api_instance.get_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountNotifyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->get_payor_account_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**PayorAccountNotifyVBAResponse**](PayorAccountNotifyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_account_notify

> <PayorAccountNotifyListVBAResponse> list_payor_account_notify(vbasoftware_database, opts)

List PayorAccountNotify

Lists all PayorAccountNotify

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

api_instance = Vba::PayorAccountNotificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayorAccountNotify
  result = api_instance.list_payor_account_notify(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->list_payor_account_notify: #{e}"
end
```

#### Using the list_payor_account_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountNotifyListVBAResponse>, Integer, Hash)> list_payor_account_notify_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PayorAccountNotify
  data, status_code, headers = api_instance.list_payor_account_notify_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountNotifyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->list_payor_account_notify_with_http_info: #{e}"
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

[**PayorAccountNotifyListVBAResponse**](PayorAccountNotifyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor_account_notify

> <MultiCodeResponseListVBAResponse> update_batch_payor_account_notify(vbasoftware_database, payor_account_notify)

Create Batch PayorAccountNotify

Create or Update multiple PayorAccountNotify at once.  If the entity does not exist, it will be created.  Updates are not allowed. If the entity does exist, an error message will be returned with the resultset.

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

api_instance = Vba::PayorAccountNotificationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_notify = [Vba::PayorAccountNotify.new({payor_account_key: 37, user_id: 'user_id_example'})] # Array<PayorAccountNotify> | 

begin
  # Create Batch PayorAccountNotify
  result = api_instance.update_batch_payor_account_notify(vbasoftware_database, payor_account_notify)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->update_batch_payor_account_notify: #{e}"
end
```

#### Using the update_batch_payor_account_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify)

```ruby
begin
  # Create Batch PayorAccountNotify
  data, status_code, headers = api_instance.update_batch_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountNotificationsApi->update_batch_payor_account_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_notify** | [**Array&lt;PayorAccountNotify&gt;**](PayorAccountNotify.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

