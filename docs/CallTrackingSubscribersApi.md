# Vba::CallTrackingSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_subscriber**](CallTrackingSubscribersApi.md#create_call_tracking_subscriber) | **POST** /call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq} | Create CallTrackingSubscriber |
| [**delete_call_tracking_subscriber**](CallTrackingSubscribersApi.md#delete_call_tracking_subscriber) | **DELETE** /call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq} | Delete CallTrackingSubscriber |
| [**get_call_tracking_subscriber**](CallTrackingSubscribersApi.md#get_call_tracking_subscriber) | **GET** /call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq} | Get CallTrackingSubscriber |
| [**list_call_tracking_subscriber**](CallTrackingSubscribersApi.md#list_call_tracking_subscriber) | **GET** /call-trackings/{callKey}/subscribers | List CallTrackingSubscriber |
| [**update_batch_call_tracking_subscriber**](CallTrackingSubscribersApi.md#update_batch_call_tracking_subscriber) | **PUT** /call-trackings/{callKey}/subscribers-batch | Create or Update Batch CallTrackingSubscriber |


## create_call_tracking_subscriber

> <CallTrackingSubscriberVBAResponse> create_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)

Create CallTrackingSubscriber

Creates a new CallTrackingSubscriber

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

api_instance = Vba::CallTrackingSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Create CallTrackingSubscriber
  result = api_instance.create_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->create_call_tracking_subscriber: #{e}"
end
```

#### Using the create_call_tracking_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingSubscriberVBAResponse>, Integer, Hash)> create_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)

```ruby
begin
  # Create CallTrackingSubscriber
  data, status_code, headers = api_instance.create_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->create_call_tracking_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**CallTrackingSubscriberVBAResponse**](CallTrackingSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_subscriber

> delete_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)

Delete CallTrackingSubscriber

Deletes an CallTrackingSubscriber

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

api_instance = Vba::CallTrackingSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete CallTrackingSubscriber
  api_instance.delete_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->delete_call_tracking_subscriber: #{e}"
end
```

#### Using the delete_call_tracking_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)

```ruby
begin
  # Delete CallTrackingSubscriber
  data, status_code, headers = api_instance.delete_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->delete_call_tracking_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_subscriber

> <CallTrackingSubscriberVBAResponse> get_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)

Get CallTrackingSubscriber

Gets CallTrackingSubscriber

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

api_instance = Vba::CallTrackingSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get CallTrackingSubscriber
  result = api_instance.get_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->get_call_tracking_subscriber: #{e}"
end
```

#### Using the get_call_tracking_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingSubscriberVBAResponse>, Integer, Hash)> get_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)

```ruby
begin
  # Get CallTrackingSubscriber
  data, status_code, headers = api_instance.get_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->get_call_tracking_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**CallTrackingSubscriberVBAResponse**](CallTrackingSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_subscriber

> <CallTrackingSubscriberListVBAResponse> list_call_tracking_subscriber(vbasoftware_database, call_key, opts)

List CallTrackingSubscriber

Lists all CallTrackingSubscriber for the given callKey

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

api_instance = Vba::CallTrackingSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingSubscriber
  result = api_instance.list_call_tracking_subscriber(vbasoftware_database, call_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->list_call_tracking_subscriber: #{e}"
end
```

#### Using the list_call_tracking_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingSubscriberListVBAResponse>, Integer, Hash)> list_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, opts)

```ruby
begin
  # List CallTrackingSubscriber
  data, status_code, headers = api_instance.list_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->list_call_tracking_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CallTrackingSubscriberListVBAResponse**](CallTrackingSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_subscriber(vbasoftware_database, call_key, call_tracking_subscriber)

Create or Update Batch CallTrackingSubscriber

Create multiple CallTrackingSubscriber at once.  If the entity does not exist, it will be created. If the entity does exist, an error code will be returned.  Updates are not allowed for this entity.

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

api_instance = Vba::CallTrackingSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
call_tracking_subscriber = [Vba::CallTrackingSubscriber.new({call_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'})] # Array<CallTrackingSubscriber> | 

begin
  # Create or Update Batch CallTrackingSubscriber
  result = api_instance.update_batch_call_tracking_subscriber(vbasoftware_database, call_key, call_tracking_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->update_batch_call_tracking_subscriber: #{e}"
end
```

#### Using the update_batch_call_tracking_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, call_tracking_subscriber)

```ruby
begin
  # Create or Update Batch CallTrackingSubscriber
  data, status_code, headers = api_instance.update_batch_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, call_tracking_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingSubscribersApi->update_batch_call_tracking_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **call_tracking_subscriber** | [**Array&lt;CallTrackingSubscriber&gt;**](CallTrackingSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

