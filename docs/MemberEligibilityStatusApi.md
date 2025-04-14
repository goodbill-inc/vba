# Vba::MemberEligibilityStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_eligibility_status**](MemberEligibilityStatusApi.md#create_member_eligibility_status) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses | Create MemberEligibilityStatus |
| [**delete_member_eligibility_status**](MemberEligibilityStatusApi.md#delete_member_eligibility_status) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses/{memberEligibilityStatusKey} | Delete MemberEligibilityStatus |
| [**get_member_eligibility_status**](MemberEligibilityStatusApi.md#get_member_eligibility_status) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses/{memberEligibilityStatusKey} | Get MemberEligibilityStatus |
| [**list_member_eligibility_status**](MemberEligibilityStatusApi.md#list_member_eligibility_status) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses | List MemberEligibilityStatus |
| [**update_batch_member_eligibility_status**](MemberEligibilityStatusApi.md#update_batch_member_eligibility_status) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses-batch | Create or Update Batch MemberEligibilityStatus |
| [**update_member_eligibility_status**](MemberEligibilityStatusApi.md#update_member_eligibility_status) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/eligibility-statuses/{memberEligibilityStatusKey} | Update MemberEligibilityStatus |


## create_member_eligibility_status

> <MemberEligibilityStatusVBAResponse> create_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)

Create MemberEligibilityStatus

Creates a new MemberEligibilityStatus

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_eligibility_status = Vba::MemberEligibilityStatus.new({member_eligibility_status_key: 37, eligibility_status: 'eligibility_status_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberEligibilityStatus | 

begin
  # Create MemberEligibilityStatus
  result = api_instance.create_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->create_member_eligibility_status: #{e}"
end
```

#### Using the create_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberEligibilityStatusVBAResponse>, Integer, Hash)> create_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)

```ruby
begin
  # Create MemberEligibilityStatus
  data, status_code, headers = api_instance.create_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->create_member_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_eligibility_status** | [**MemberEligibilityStatus**](MemberEligibilityStatus.md) |  |  |

### Return type

[**MemberEligibilityStatusVBAResponse**](MemberEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_eligibility_status

> delete_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)

Delete MemberEligibilityStatus

Deletes an MemberEligibilityStatus

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_eligibility_status_key = 56 # Integer | MemberEligibilityStatus Key

begin
  # Delete MemberEligibilityStatus
  api_instance.delete_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->delete_member_eligibility_status: #{e}"
end
```

#### Using the delete_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)

```ruby
begin
  # Delete MemberEligibilityStatus
  data, status_code, headers = api_instance.delete_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->delete_member_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_eligibility_status_key** | **Integer** | MemberEligibilityStatus Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_eligibility_status

> <MemberEligibilityStatusVBAResponse> get_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)

Get MemberEligibilityStatus

Gets MemberEligibilityStatus

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_eligibility_status_key = 56 # Integer | MemberEligibilityStatus Key

begin
  # Get MemberEligibilityStatus
  result = api_instance.get_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->get_member_eligibility_status: #{e}"
end
```

#### Using the get_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberEligibilityStatusVBAResponse>, Integer, Hash)> get_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)

```ruby
begin
  # Get MemberEligibilityStatus
  data, status_code, headers = api_instance.get_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->get_member_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_eligibility_status_key** | **Integer** | MemberEligibilityStatus Key |  |

### Return type

[**MemberEligibilityStatusVBAResponse**](MemberEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_eligibility_status

> <MemberEligibilityStatusListVBAResponse> list_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberEligibilityStatus

Lists all MemberEligibilityStatus for the given subscriberID and memberSeq

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberEligibilityStatus
  result = api_instance.list_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->list_member_eligibility_status: #{e}"
end
```

#### Using the list_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberEligibilityStatusListVBAResponse>, Integer, Hash)> list_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberEligibilityStatus
  data, status_code, headers = api_instance.list_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberEligibilityStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->list_member_eligibility_status_with_http_info: #{e}"
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

[**MemberEligibilityStatusListVBAResponse**](MemberEligibilityStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_eligibility_status

> <MultiCodeResponseListVBAResponse> update_batch_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)

Create or Update Batch MemberEligibilityStatus

Create or Update multiple MemberEligibilityStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_eligibility_status = [Vba::MemberEligibilityStatus.new({member_eligibility_status_key: 37, eligibility_status: 'eligibility_status_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberEligibilityStatus> | 

begin
  # Create or Update Batch MemberEligibilityStatus
  result = api_instance.update_batch_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->update_batch_member_eligibility_status: #{e}"
end
```

#### Using the update_batch_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)

```ruby
begin
  # Create or Update Batch MemberEligibilityStatus
  data, status_code, headers = api_instance.update_batch_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->update_batch_member_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_eligibility_status** | [**Array&lt;MemberEligibilityStatus&gt;**](MemberEligibilityStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_eligibility_status

> <MemberEligibilityStatusVBAResponse> update_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key, member_eligibility_status)

Update MemberEligibilityStatus

Updates a specific MemberEligibilityStatus.

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

api_instance = Vba::MemberEligibilityStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_eligibility_status_key = 56 # Integer | MemberEligibilityStatus Key
member_eligibility_status = Vba::MemberEligibilityStatus.new({member_eligibility_status_key: 37, eligibility_status: 'eligibility_status_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberEligibilityStatus | 

begin
  # Update MemberEligibilityStatus
  result = api_instance.update_member_eligibility_status(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key, member_eligibility_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->update_member_eligibility_status: #{e}"
end
```

#### Using the update_member_eligibility_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberEligibilityStatusVBAResponse>, Integer, Hash)> update_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key, member_eligibility_status)

```ruby
begin
  # Update MemberEligibilityStatus
  data, status_code, headers = api_instance.update_member_eligibility_status_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_eligibility_status_key, member_eligibility_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberEligibilityStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEligibilityStatusApi->update_member_eligibility_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_eligibility_status_key** | **Integer** | MemberEligibilityStatus Key |  |
| **member_eligibility_status** | [**MemberEligibilityStatus**](MemberEligibilityStatus.md) |  |  |

### Return type

[**MemberEligibilityStatusVBAResponse**](MemberEligibilityStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

