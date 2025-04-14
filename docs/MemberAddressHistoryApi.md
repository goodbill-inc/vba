# Vba::MemberAddressHistoryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_address_history**](MemberAddressHistoryApi.md#create_member_address_history) | **POST** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history | Create MemberAddressHistory |
| [**delete_member_address_history**](MemberAddressHistoryApi.md#delete_member_address_history) | **DELETE** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history/{MemberAddressHistory_Key} | Delete MemberAddressHistory |
| [**get_member_address_history**](MemberAddressHistoryApi.md#get_member_address_history) | **GET** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history/{MemberAddressHistory_Key} | Get MemberAddressHistory |
| [**list_member_address_history**](MemberAddressHistoryApi.md#list_member_address_history) | **GET** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history | List MemberAddressHistory |
| [**update_batch_member_address_history**](MemberAddressHistoryApi.md#update_batch_member_address_history) | **PUT** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history-batch | Create or Update Batch MemberAddressHistory |
| [**update_member_address_history**](MemberAddressHistoryApi.md#update_member_address_history) | **PUT** /subscribers/{Subscriber_ID}/members/{Member_Seq}/address-history/{MemberAddressHistory_Key} | Update MemberAddressHistory |


## create_member_address_history

> <MemberAddressHistoryVBAResponse> create_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history)

Create MemberAddressHistory

Creates a new MemberAddressHistory

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address_history = Vba::MemberAddressHistory.new({member_address_history_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberAddressHistory | 

begin
  # Create MemberAddressHistory
  result = api_instance.create_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->create_member_address_history: #{e}"
end
```

#### Using the create_member_address_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressHistoryVBAResponse>, Integer, Hash)> create_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history)

```ruby
begin
  # Create MemberAddressHistory
  data, status_code, headers = api_instance.create_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->create_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address_history** | [**MemberAddressHistory**](MemberAddressHistory.md) |  |  |

### Return type

[**MemberAddressHistoryVBAResponse**](MemberAddressHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_address_history

> delete_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)

Delete MemberAddressHistory

Deletes an MemberAddressHistory

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address_history_key = 56 # Integer | MemberAddressHistory Key

begin
  # Delete MemberAddressHistory
  api_instance.delete_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->delete_member_address_history: #{e}"
end
```

#### Using the delete_member_address_history_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)

```ruby
begin
  # Delete MemberAddressHistory
  data, status_code, headers = api_instance.delete_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->delete_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address_history_key** | **Integer** | MemberAddressHistory Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_address_history

> <MemberAddressHistoryVBAResponse> get_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)

Get MemberAddressHistory

Gets MemberAddressHistory

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address_history_key = 56 # Integer | MemberAddressHistory Key

begin
  # Get MemberAddressHistory
  result = api_instance.get_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->get_member_address_history: #{e}"
end
```

#### Using the get_member_address_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressHistoryVBAResponse>, Integer, Hash)> get_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)

```ruby
begin
  # Get MemberAddressHistory
  data, status_code, headers = api_instance.get_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->get_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address_history_key** | **Integer** | MemberAddressHistory Key |  |

### Return type

[**MemberAddressHistoryVBAResponse**](MemberAddressHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_address_history

> <MemberAddressHistoryListVBAResponse> list_member_address_history(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberAddressHistory

Lists all MemberAddressHistory for the given Subscriber_ID and Member_Seq

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List MemberAddressHistory
  result = api_instance.list_member_address_history(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->list_member_address_history: #{e}"
end
```

#### Using the list_member_address_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressHistoryListVBAResponse>, Integer, Hash)> list_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberAddressHistory
  data, status_code, headers = api_instance.list_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressHistoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->list_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**MemberAddressHistoryListVBAResponse**](MemberAddressHistoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_address_history

> <MultiCodeResponseListVBAResponse> update_batch_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history)

Create or Update Batch MemberAddressHistory

Create or Update multiple MemberAddressHistory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address_history = [Vba::MemberAddressHistory.new({member_address_history_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberAddressHistory> | 

begin
  # Create or Update Batch MemberAddressHistory
  result = api_instance.update_batch_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->update_batch_member_address_history: #{e}"
end
```

#### Using the update_batch_member_address_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history)

```ruby
begin
  # Create or Update Batch MemberAddressHistory
  data, status_code, headers = api_instance.update_batch_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->update_batch_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address_history** | [**Array&lt;MemberAddressHistory&gt;**](MemberAddressHistory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_address_history

> <MemberAddressHistoryVBAResponse> update_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key, member_address_history)

Update MemberAddressHistory

Updates a specific MemberAddressHistory.

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

api_instance = Vba::MemberAddressHistoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address_history_key = 56 # Integer | MemberAddressHistory Key
member_address_history = Vba::MemberAddressHistory.new({member_address_history_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberAddressHistory | 

begin
  # Update MemberAddressHistory
  result = api_instance.update_member_address_history(vbasoftware_database, subscriber_id, member_seq, member_address_history_key, member_address_history)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->update_member_address_history: #{e}"
end
```

#### Using the update_member_address_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressHistoryVBAResponse>, Integer, Hash)> update_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key, member_address_history)

```ruby
begin
  # Update MemberAddressHistory
  data, status_code, headers = api_instance.update_member_address_history_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address_history_key, member_address_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressHistoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressHistoryApi->update_member_address_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address_history_key** | **Integer** | MemberAddressHistory Key |  |
| **member_address_history** | [**MemberAddressHistory**](MemberAddressHistory.md) |  |  |

### Return type

[**MemberAddressHistoryVBAResponse**](MemberAddressHistoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

