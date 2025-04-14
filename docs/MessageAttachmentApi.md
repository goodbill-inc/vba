# Vba::MessageAttachmentApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_vba_gateway_message_attachments**](MessageAttachmentApi.md#list_vba_gateway_message_attachments) | **GET** /vbagateway-message-attachments | List MessageAttachment |


## list_vba_gateway_message_attachments

> <MessageAttachmentListVBAResponse> list_vba_gateway_message_attachments(vbasoftware_database, opts)

List MessageAttachment

Lists all MessageAttachment, optionally filtered by Message_Key

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

api_instance = Vba::MessageAttachmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  message_key: 56, # Integer | Optional Message_Key to filter the results.
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | The current page number for pagination.
  page_size: 56 # Integer | The number of items per page for pagination.
}

begin
  # List MessageAttachment
  result = api_instance.list_vba_gateway_message_attachments(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MessageAttachmentApi->list_vba_gateway_message_attachments: #{e}"
end
```

#### Using the list_vba_gateway_message_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageAttachmentListVBAResponse>, Integer, Hash)> list_vba_gateway_message_attachments_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List MessageAttachment
  data, status_code, headers = api_instance.list_vba_gateway_message_attachments_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageAttachmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MessageAttachmentApi->list_vba_gateway_message_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_key** | **Integer** | Optional Message_Key to filter the results. | [optional] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | The current page number for pagination. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items per page for pagination. | [optional][default to 100] |

### Return type

[**MessageAttachmentListVBAResponse**](MessageAttachmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

