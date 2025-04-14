# Vba::MemberAccountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_account**](MemberAccountsApi.md#create_member_account) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/accounts | Create MemberAccount |
| [**delete_member_account**](MemberAccountsApi.md#delete_member_account) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey} | Delete MemberAccount |
| [**get_member_account**](MemberAccountsApi.md#get_member_account) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey} | Get MemberAccount |
| [**list_member_account**](MemberAccountsApi.md#list_member_account) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts | List MemberAccount |
| [**update_batch_member_account**](MemberAccountsApi.md#update_batch_member_account) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts-batch | Create or Update Batch MemberAccount |
| [**update_member_account**](MemberAccountsApi.md#update_member_account) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey} | Update MemberAccount |


## create_member_account

> <MemberAccountVBAResponse> create_member_account(vbasoftware_database, subscriber_id, member_seq, member_account)

Create MemberAccount

Creates a new MemberAccount

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account = Vba::MemberAccount.new({member_account_key: 37, pre_note_sent: false, wire_transfer: false}) # MemberAccount | 

begin
  # Create MemberAccount
  result = api_instance.create_member_account(vbasoftware_database, subscriber_id, member_seq, member_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->create_member_account: #{e}"
end
```

#### Using the create_member_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountVBAResponse>, Integer, Hash)> create_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account)

```ruby
begin
  # Create MemberAccount
  data, status_code, headers = api_instance.create_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->create_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account** | [**MemberAccount**](MemberAccount.md) |  |  |

### Return type

[**MemberAccountVBAResponse**](MemberAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_account

> delete_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key)

Delete MemberAccount

Deletes an MemberAccount

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key

begin
  # Delete MemberAccount
  api_instance.delete_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->delete_member_account: #{e}"
end
```

#### Using the delete_member_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key)

```ruby
begin
  # Delete MemberAccount
  data, status_code, headers = api_instance.delete_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->delete_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_account

> <MemberAccountVBAResponse> get_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key)

Get MemberAccount

Gets MemberAccount

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key

begin
  # Get MemberAccount
  result = api_instance.get_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->get_member_account: #{e}"
end
```

#### Using the get_member_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountVBAResponse>, Integer, Hash)> get_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key)

```ruby
begin
  # Get MemberAccount
  data, status_code, headers = api_instance.get_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->get_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |

### Return type

[**MemberAccountVBAResponse**](MemberAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_account

> <MemberAccountListVBAResponse> list_member_account(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberAccount

Lists all MemberAccount for the given member

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberAccount
  result = api_instance.list_member_account(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->list_member_account: #{e}"
end
```

#### Using the list_member_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountListVBAResponse>, Integer, Hash)> list_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberAccount
  data, status_code, headers = api_instance.list_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->list_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberAccountListVBAResponse**](MemberAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_account

> <MultiCodeResponseListVBAResponse> update_batch_member_account(vbasoftware_database, subscriber_id, member_seq, member_account)

Create or Update Batch MemberAccount

Create or Update multiple MemberAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account = [Vba::MemberAccount.new({member_account_key: 37, pre_note_sent: false, wire_transfer: false})] # Array<MemberAccount> | 

begin
  # Create or Update Batch MemberAccount
  result = api_instance.update_batch_member_account(vbasoftware_database, subscriber_id, member_seq, member_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->update_batch_member_account: #{e}"
end
```

#### Using the update_batch_member_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account)

```ruby
begin
  # Create or Update Batch MemberAccount
  data, status_code, headers = api_instance.update_batch_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->update_batch_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account** | [**Array&lt;MemberAccount&gt;**](MemberAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_account

> <MemberAccountVBAResponse> update_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account)

Update MemberAccount

Updates a specific MemberAccount.

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

api_instance = Vba::MemberAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
member_account = Vba::MemberAccount.new({member_account_key: 37, pre_note_sent: false, wire_transfer: false}) # MemberAccount | 

begin
  # Update MemberAccount
  result = api_instance.update_member_account(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->update_member_account: #{e}"
end
```

#### Using the update_member_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountVBAResponse>, Integer, Hash)> update_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account)

```ruby
begin
  # Update MemberAccount
  data, status_code, headers = api_instance.update_member_account_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountsApi->update_member_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **member_account** | [**MemberAccount**](MemberAccount.md) |  |  |

### Return type

[**MemberAccountVBAResponse**](MemberAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

