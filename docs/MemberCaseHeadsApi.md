# Vba::MemberCaseHeadsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_case_head**](MemberCaseHeadsApi.md#create_member_case_head) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/case-heads | Create MemberCaseHead |
| [**delete_member_case_head**](MemberCaseHeadsApi.md#delete_member_case_head) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/case-heads/{memberCaseHeadKey} | Delete MemberCaseHead |
| [**get_member_case_head**](MemberCaseHeadsApi.md#get_member_case_head) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/case-heads/{memberCaseHeadKey} | Get MemberCaseHead |
| [**list_member_case_head**](MemberCaseHeadsApi.md#list_member_case_head) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/case-heads | List MemberCaseHead |
| [**update_batch_member_case_head**](MemberCaseHeadsApi.md#update_batch_member_case_head) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/case-heads-batch | Create or Update Batch MemberCaseHead |
| [**update_member_case_head**](MemberCaseHeadsApi.md#update_member_case_head) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/case-heads/{memberCaseHeadKey} | Update MemberCaseHead |


## create_member_case_head

> <MemberCaseHeadVBAResponse> create_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head)

Create MemberCaseHead

Creates a new MemberCaseHead

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_case_head = Vba::MemberCaseHead.new({member_case_head_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCaseHead | 

begin
  # Create MemberCaseHead
  result = api_instance.create_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->create_member_case_head: #{e}"
end
```

#### Using the create_member_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCaseHeadVBAResponse>, Integer, Hash)> create_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head)

```ruby
begin
  # Create MemberCaseHead
  data, status_code, headers = api_instance.create_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->create_member_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_case_head** | [**MemberCaseHead**](MemberCaseHead.md) |  |  |

### Return type

[**MemberCaseHeadVBAResponse**](MemberCaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_case_head

> delete_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)

Delete MemberCaseHead

Deletes an MemberCaseHead

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_case_head_key = 56 # Integer | MemberCaseHead Key

begin
  # Delete MemberCaseHead
  api_instance.delete_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->delete_member_case_head: #{e}"
end
```

#### Using the delete_member_case_head_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)

```ruby
begin
  # Delete MemberCaseHead
  data, status_code, headers = api_instance.delete_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->delete_member_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_case_head_key** | **Integer** | MemberCaseHead Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_case_head

> <MemberCaseHeadVBAResponse> get_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)

Get MemberCaseHead

Gets MemberCaseHead

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_case_head_key = 56 # Integer | MemberCaseHead Key

begin
  # Get MemberCaseHead
  result = api_instance.get_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->get_member_case_head: #{e}"
end
```

#### Using the get_member_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCaseHeadVBAResponse>, Integer, Hash)> get_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)

```ruby
begin
  # Get MemberCaseHead
  data, status_code, headers = api_instance.get_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->get_member_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_case_head_key** | **Integer** | MemberCaseHead Key |  |

### Return type

[**MemberCaseHeadVBAResponse**](MemberCaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_case_head

> <MemberCaseHeadListVBAResponse> list_member_case_head(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberCaseHead

Lists all MemberCaseHead for the given subscriberID and memberSeq

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberCaseHead
  result = api_instance.list_member_case_head(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->list_member_case_head: #{e}"
end
```

#### Using the list_member_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCaseHeadListVBAResponse>, Integer, Hash)> list_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberCaseHead
  data, status_code, headers = api_instance.list_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCaseHeadListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->list_member_case_head_with_http_info: #{e}"
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

[**MemberCaseHeadListVBAResponse**](MemberCaseHeadListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_case_head

> <MultiCodeResponseListVBAResponse> update_batch_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head)

Create or Update Batch MemberCaseHead

Create or Update multiple MemberCaseHead at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_case_head = [Vba::MemberCaseHead.new({member_case_head_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberCaseHead> | 

begin
  # Create or Update Batch MemberCaseHead
  result = api_instance.update_batch_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->update_batch_member_case_head: #{e}"
end
```

#### Using the update_batch_member_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head)

```ruby
begin
  # Create or Update Batch MemberCaseHead
  data, status_code, headers = api_instance.update_batch_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->update_batch_member_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_case_head** | [**Array&lt;MemberCaseHead&gt;**](MemberCaseHead.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_case_head

> <MemberCaseHeadVBAResponse> update_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key, member_case_head)

Update MemberCaseHead

Updates a specific MemberCaseHead.

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

api_instance = Vba::MemberCaseHeadsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_case_head_key = 56 # Integer | MemberCaseHead Key
member_case_head = Vba::MemberCaseHead.new({member_case_head_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCaseHead | 

begin
  # Update MemberCaseHead
  result = api_instance.update_member_case_head(vbasoftware_database, subscriber_id, member_seq, member_case_head_key, member_case_head)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->update_member_case_head: #{e}"
end
```

#### Using the update_member_case_head_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCaseHeadVBAResponse>, Integer, Hash)> update_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key, member_case_head)

```ruby
begin
  # Update MemberCaseHead
  data, status_code, headers = api_instance.update_member_case_head_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_case_head_key, member_case_head)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCaseHeadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCaseHeadsApi->update_member_case_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_case_head_key** | **Integer** | MemberCaseHead Key |  |
| **member_case_head** | [**MemberCaseHead**](MemberCaseHead.md) |  |  |

### Return type

[**MemberCaseHeadVBAResponse**](MemberCaseHeadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

