# Vba::VBAssistApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chat_request**](VBAssistApi.md#chat_request) | **POST** /chat | Talk with VBAssist |


## chat_request

> <StringVBAResponse> chat_request(opts)

Talk with VBAssist

An interactive client for VBAssist

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

api_instance = Vba::VBAssistApi.new
opts = {
  chat_message: Vba::ChatMessage.new # ChatMessage | 
}

begin
  # Talk with VBAssist
  result = api_instance.chat_request(opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAssistApi->chat_request: #{e}"
end
```

#### Using the chat_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> chat_request_with_http_info(opts)

```ruby
begin
  # Talk with VBAssist
  data, status_code, headers = api_instance.chat_request_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAssistApi->chat_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_message** | [**ChatMessage**](ChatMessage.md) |  | [optional] |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

