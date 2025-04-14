# Vba::VBAGatewayMessagingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_gateway_message**](VBAGatewayMessagingApi.md#create_vba_gateway_message) | **POST** /vbagateway-message-threads/{MessageThread_Key}/messages | Create a Message wihtin a VBAGateway MessageThread |
| [**get_vba_gateway_message_attachment**](VBAGatewayMessagingApi.md#get_vba_gateway_message_attachment) | **GET** /vbagateway-message-attachments/{MessageAttachment_Key} | Get a specific MessageAttachment |
| [**get_vba_gateway_message_thread**](VBAGatewayMessagingApi.md#get_vba_gateway_message_thread) | **GET** /vbagateway-message-threads/{MessageThread_Key} | Get VBAGateway MessageThread |
| [**update_vba_gateway_message_thread**](VBAGatewayMessagingApi.md#update_vba_gateway_message_thread) | **PUT** /vbagateway-message-threads/{MessageThread_Key} | Update VBAGateway MessageThread |
| [**v_ba_gateway_transpose_request**](VBAGatewayMessagingApi.md#v_ba_gateway_transpose_request) | **GET** /vbagateway-requests/{Request_Key}/transpose | Get VBAGateway Request and Transpose to key/value pairs |


## create_vba_gateway_message

> <MessagesVBAResponse> create_vba_gateway_message(vbasoftware_database, message_thread_key, messages)

Create a Message wihtin a VBAGateway MessageThread

Create a Message wihtin a VBAGateway MessageThread. This operation will insert the new message into the VBAGateway database that is paired with this VBASoftwre database.

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

api_instance = Vba::VBAGatewayMessagingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_thread_key = 56 # Integer | MessageThread_Key
messages = Vba::Messages.new({message_thread_key: 37}) # Messages | 

begin
  # Create a Message wihtin a VBAGateway MessageThread
  result = api_instance.create_vba_gateway_message(vbasoftware_database, message_thread_key, messages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->create_vba_gateway_message: #{e}"
end
```

#### Using the create_vba_gateway_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessagesVBAResponse>, Integer, Hash)> create_vba_gateway_message_with_http_info(vbasoftware_database, message_thread_key, messages)

```ruby
begin
  # Create a Message wihtin a VBAGateway MessageThread
  data, status_code, headers = api_instance.create_vba_gateway_message_with_http_info(vbasoftware_database, message_thread_key, messages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->create_vba_gateway_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_thread_key** | **Integer** | MessageThread_Key |  |
| **messages** | [**Messages**](Messages.md) |  |  |

### Return type

[**MessagesVBAResponse**](MessagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_vba_gateway_message_attachment

> <MessageAttachmentVBAResponse> get_vba_gateway_message_attachment(vbasoftware_database, message_attachment_key)

Get a specific MessageAttachment

Retrieves a specific MessageAttachment by its MessageAttachment_Key from the VBAGateway database.

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

api_instance = Vba::VBAGatewayMessagingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_attachment_key = 56 # Integer | MessageAttachment_Key

begin
  # Get a specific MessageAttachment
  result = api_instance.get_vba_gateway_message_attachment(vbasoftware_database, message_attachment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->get_vba_gateway_message_attachment: #{e}"
end
```

#### Using the get_vba_gateway_message_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageAttachmentVBAResponse>, Integer, Hash)> get_vba_gateway_message_attachment_with_http_info(vbasoftware_database, message_attachment_key)

```ruby
begin
  # Get a specific MessageAttachment
  data, status_code, headers = api_instance.get_vba_gateway_message_attachment_with_http_info(vbasoftware_database, message_attachment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->get_vba_gateway_message_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_attachment_key** | **Integer** | MessageAttachment_Key |  |

### Return type

[**MessageAttachmentVBAResponse**](MessageAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_vba_gateway_message_thread

> <MessageThreadVBAResponse> get_vba_gateway_message_thread(vbasoftware_database, message_thread_key)

Get VBAGateway MessageThread

Gets VBAGateway MessageThread by key

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

api_instance = Vba::VBAGatewayMessagingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_thread_key = 56 # Integer | MessageThread_Key

begin
  # Get VBAGateway MessageThread
  result = api_instance.get_vba_gateway_message_thread(vbasoftware_database, message_thread_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->get_vba_gateway_message_thread: #{e}"
end
```

#### Using the get_vba_gateway_message_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageThreadVBAResponse>, Integer, Hash)> get_vba_gateway_message_thread_with_http_info(vbasoftware_database, message_thread_key)

```ruby
begin
  # Get VBAGateway MessageThread
  data, status_code, headers = api_instance.get_vba_gateway_message_thread_with_http_info(vbasoftware_database, message_thread_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageThreadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->get_vba_gateway_message_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_thread_key** | **Integer** | MessageThread_Key |  |

### Return type

[**MessageThreadVBAResponse**](MessageThreadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_vba_gateway_message_thread

> <MessageThreadVBAResponse> update_vba_gateway_message_thread(vbasoftware_database, message_thread_key, message_thread)

Update VBAGateway MessageThread

Update VBAGateway MessageThread by key

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

api_instance = Vba::VBAGatewayMessagingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_thread_key = 56 # Integer | MessageThread_Key
message_thread = Vba::MessageThread.new({message_thread_key: 37}) # MessageThread | 

begin
  # Update VBAGateway MessageThread
  result = api_instance.update_vba_gateway_message_thread(vbasoftware_database, message_thread_key, message_thread)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->update_vba_gateway_message_thread: #{e}"
end
```

#### Using the update_vba_gateway_message_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageThreadVBAResponse>, Integer, Hash)> update_vba_gateway_message_thread_with_http_info(vbasoftware_database, message_thread_key, message_thread)

```ruby
begin
  # Update VBAGateway MessageThread
  data, status_code, headers = api_instance.update_vba_gateway_message_thread_with_http_info(vbasoftware_database, message_thread_key, message_thread)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageThreadVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->update_vba_gateway_message_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_thread_key** | **Integer** | MessageThread_Key |  |
| **message_thread** | [**MessageThread**](MessageThread.md) |  |  |

### Return type

[**MessageThreadVBAResponse**](MessageThreadVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## v_ba_gateway_transpose_request

> <TransposeRequestMetaDataResultListVBAResponse> v_ba_gateway_transpose_request(vbasoftware_database, request_key)

Get VBAGateway Request and Transpose to key/value pairs

Gets VBAGateway Request in real-time and converts the request into key/value pairs.  VBAGateway requests may have different keys based on the request type.

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

api_instance = Vba::VBAGatewayMessagingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request_Key

begin
  # Get VBAGateway Request and Transpose to key/value pairs
  result = api_instance.v_ba_gateway_transpose_request(vbasoftware_database, request_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->v_ba_gateway_transpose_request: #{e}"
end
```

#### Using the v_ba_gateway_transpose_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransposeRequestMetaDataResultListVBAResponse>, Integer, Hash)> v_ba_gateway_transpose_request_with_http_info(vbasoftware_database, request_key)

```ruby
begin
  # Get VBAGateway Request and Transpose to key/value pairs
  data, status_code, headers = api_instance.v_ba_gateway_transpose_request_with_http_info(vbasoftware_database, request_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransposeRequestMetaDataResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewayMessagingApi->v_ba_gateway_transpose_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request_Key |  |

### Return type

[**TransposeRequestMetaDataResultListVBAResponse**](TransposeRequestMetaDataResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

