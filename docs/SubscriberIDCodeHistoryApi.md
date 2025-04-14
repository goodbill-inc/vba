# Vba::SubscriberIDCodeHistoryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#create_subscriber_id_history) | **POST** /subscribers/{newSubscriberID}/id-codes-history | Create SubscriberIDHistory |
| [**delete_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#delete_subscriber_id_history) | **DELETE** /subscribers/{newSubscriberID}/id-codes-history/{changeID} | Delete SubscriberIDHistory |
| [**get_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#get_subscriber_id_history) | **GET** /subscribers/{newSubscriberID}/id-codes-history/{changeID} | Get SubscriberIDHistory |
| [**list_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#list_subscriber_id_history) | **GET** /subscribers/{newSubscriberID}/id-codes-history | List SubscriberIDHistory |
| [**update_batch_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#update_batch_subscriber_id_history) | **PUT** /subscribers/{newSubscriberID}/id-codes-history-batch | Create or Update Batch SubscriberIDHistory |
| [**update_subscriber_id_history**](SubscriberIDCodeHistoryApi.md#update_subscriber_id_history) | **PUT** /subscribers/{newSubscriberID}/id-codes-history/{changeID} | Update SubscriberIDHistory |


## create_subscriber_id_history

> <SubscriberIDHistoryVBAResponse> create_subscriber_id_history(vbasoftware_database, new_subscriber_id, subscriber_id_history)

Create SubscriberIDHistory

Creates a new SubscriberIDHistory

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
subscriber_id_history = Vba::SubscriberIDHistory.new({change_id: 37}) # SubscriberIDHistory | 

begin
  # Create SubscriberIDHistory
  result = api_instance.create_subscriber_id_history(vbasoftware_database, new_subscriber_id, subscriber_id_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->create_subscriber_id_history: #{e}"
end
```

#### Using the create_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDHistoryVBAResponse>, Integer, Hash)> create_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, subscriber_id_history)

```ruby
begin
  # Create SubscriberIDHistory
  data, status_code, headers = api_instance.create_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, subscriber_id_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->create_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **subscriber_id_history** | [**SubscriberIDHistory**](SubscriberIDHistory.md) |  |  |

### Return type

[**SubscriberIDHistoryVBAResponse**](SubscriberIDHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_id_history

> delete_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id)

Delete SubscriberIDHistory

Deletes an SubscriberIDHistory

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
change_id = 56 # Integer | Change ID

begin
  # Delete SubscriberIDHistory
  api_instance.delete_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->delete_subscriber_id_history: #{e}"
end
```

#### Using the delete_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id)

```ruby
begin
  # Delete SubscriberIDHistory
  data, status_code, headers = api_instance.delete_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->delete_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **change_id** | **Integer** | Change ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_id_history

> <SubscriberIDHistoryVBAResponse> get_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id)

Get SubscriberIDHistory

Gets SubscriberIDHistory

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
change_id = 56 # Integer | Change ID

begin
  # Get SubscriberIDHistory
  result = api_instance.get_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->get_subscriber_id_history: #{e}"
end
```

#### Using the get_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDHistoryVBAResponse>, Integer, Hash)> get_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id)

```ruby
begin
  # Get SubscriberIDHistory
  data, status_code, headers = api_instance.get_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->get_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **change_id** | **Integer** | Change ID |  |

### Return type

[**SubscriberIDHistoryVBAResponse**](SubscriberIDHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_id_history

> <SubscriberIDHistoryListVBAResponse> list_subscriber_id_history(vbasoftware_database, new_subscriber_id, opts)

List SubscriberIDHistory

Lists all SubscriberIDHistory for the given newSubscriberID

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberIDHistory
  result = api_instance.list_subscriber_id_history(vbasoftware_database, new_subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->list_subscriber_id_history: #{e}"
end
```

#### Using the list_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDHistoryListVBAResponse>, Integer, Hash)> list_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, opts)

```ruby
begin
  # List SubscriberIDHistory
  data, status_code, headers = api_instance.list_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDHistoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->list_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberIDHistoryListVBAResponse**](SubscriberIDHistoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_id_history

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_id_history(vbasoftware_database, new_subscriber_id, subscriber_id_history)

Create or Update Batch SubscriberIDHistory

Create or Update multiple SubscriberIDHistory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
subscriber_id_history = [Vba::SubscriberIDHistory.new({change_id: 37})] # Array<SubscriberIDHistory> | 

begin
  # Create or Update Batch SubscriberIDHistory
  result = api_instance.update_batch_subscriber_id_history(vbasoftware_database, new_subscriber_id, subscriber_id_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->update_batch_subscriber_id_history: #{e}"
end
```

#### Using the update_batch_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, subscriber_id_history)

```ruby
begin
  # Create or Update Batch SubscriberIDHistory
  data, status_code, headers = api_instance.update_batch_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, subscriber_id_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->update_batch_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **subscriber_id_history** | [**Array&lt;SubscriberIDHistory&gt;**](SubscriberIDHistory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_id_history

> <SubscriberIDHistoryVBAResponse> update_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id, subscriber_id_history)

Update SubscriberIDHistory

Updates a specific SubscriberIDHistory.

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

api_instance = Vba::SubscriberIDCodeHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
new_subscriber_id = 'new_subscriber_id_example' # String | New Subscriber ID
change_id = 56 # Integer | Change ID
subscriber_id_history = Vba::SubscriberIDHistory.new({change_id: 37}) # SubscriberIDHistory | 

begin
  # Update SubscriberIDHistory
  result = api_instance.update_subscriber_id_history(vbasoftware_database, new_subscriber_id, change_id, subscriber_id_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->update_subscriber_id_history: #{e}"
end
```

#### Using the update_subscriber_id_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDHistoryVBAResponse>, Integer, Hash)> update_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id, subscriber_id_history)

```ruby
begin
  # Update SubscriberIDHistory
  data, status_code, headers = api_instance.update_subscriber_id_history_with_http_info(vbasoftware_database, new_subscriber_id, change_id, subscriber_id_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodeHistoryApi->update_subscriber_id_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **new_subscriber_id** | **String** | New Subscriber ID |  |
| **change_id** | **Integer** | Change ID |  |
| **subscriber_id_history** | [**SubscriberIDHistory**](SubscriberIDHistory.md) |  |  |

### Return type

[**SubscriberIDHistoryVBAResponse**](SubscriberIDHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

