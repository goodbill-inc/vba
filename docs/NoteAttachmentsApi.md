# Vba::NoteAttachmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_attachment**](NoteAttachmentsApi.md#create_note_attachment) | **POST** /note-attachments | Create NoteAttachment |
| [**delete_note_attachment**](NoteAttachmentsApi.md#delete_note_attachment) | **DELETE** /note-attachments/{attachmentKey} | Delete NoteAttachment |
| [**get_note_attachment**](NoteAttachmentsApi.md#get_note_attachment) | **GET** /note-attachments/{attachmentKey} | Get NoteAttachment |
| [**list_note_attachment**](NoteAttachmentsApi.md#list_note_attachment) | **GET** /note-data/{noteKey}/note-attachments | List NoteAttachment |
| [**update_batch_note_attachment**](NoteAttachmentsApi.md#update_batch_note_attachment) | **PUT** /note-attachments-batch | Create or Update Batch NoteAttachment |
| [**update_note_attachment**](NoteAttachmentsApi.md#update_note_attachment) | **PUT** /note-attachments/{attachmentKey} | Update NoteAttachment |


## create_note_attachment

> <NoteAttachmentVBAResponse> create_note_attachment(vbasoftware_database, note_attachment)

Create NoteAttachment

Creates a new NoteAttachment

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_attachment = Vba::NoteAttachment.new({attachment_key: 37, note_key: 37}) # NoteAttachment | 

begin
  # Create NoteAttachment
  result = api_instance.create_note_attachment(vbasoftware_database, note_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->create_note_attachment: #{e}"
end
```

#### Using the create_note_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteAttachmentVBAResponse>, Integer, Hash)> create_note_attachment_with_http_info(vbasoftware_database, note_attachment)

```ruby
begin
  # Create NoteAttachment
  data, status_code, headers = api_instance.create_note_attachment_with_http_info(vbasoftware_database, note_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->create_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_attachment** | [**NoteAttachment**](NoteAttachment.md) |  |  |

### Return type

[**NoteAttachmentVBAResponse**](NoteAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_attachment

> delete_note_attachment(vbasoftware_database, attachment_key)

Delete NoteAttachment

Deletes an NoteAttachment

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
attachment_key = 56 # Integer | Attachment Key

begin
  # Delete NoteAttachment
  api_instance.delete_note_attachment(vbasoftware_database, attachment_key)
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->delete_note_attachment: #{e}"
end
```

#### Using the delete_note_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_attachment_with_http_info(vbasoftware_database, attachment_key)

```ruby
begin
  # Delete NoteAttachment
  data, status_code, headers = api_instance.delete_note_attachment_with_http_info(vbasoftware_database, attachment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->delete_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **attachment_key** | **Integer** | Attachment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_attachment

> <NoteAttachmentVBAResponse> get_note_attachment(vbasoftware_database, attachment_key)

Get NoteAttachment

Gets NoteAttachment

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
attachment_key = 56 # Integer | Attachment Key

begin
  # Get NoteAttachment
  result = api_instance.get_note_attachment(vbasoftware_database, attachment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->get_note_attachment: #{e}"
end
```

#### Using the get_note_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteAttachmentVBAResponse>, Integer, Hash)> get_note_attachment_with_http_info(vbasoftware_database, attachment_key)

```ruby
begin
  # Get NoteAttachment
  data, status_code, headers = api_instance.get_note_attachment_with_http_info(vbasoftware_database, attachment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->get_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **attachment_key** | **Integer** | Attachment Key |  |

### Return type

[**NoteAttachmentVBAResponse**](NoteAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_attachment

> <NoteAttachmentListVBAResponse> list_note_attachment(vbasoftware_database, note_key, opts)

List NoteAttachment

Lists all NoteAttachment for the given noteKey

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NoteAttachment
  result = api_instance.list_note_attachment(vbasoftware_database, note_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->list_note_attachment: #{e}"
end
```

#### Using the list_note_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteAttachmentListVBAResponse>, Integer, Hash)> list_note_attachment_with_http_info(vbasoftware_database, note_key, opts)

```ruby
begin
  # List NoteAttachment
  data, status_code, headers = api_instance.list_note_attachment_with_http_info(vbasoftware_database, note_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteAttachmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->list_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_key** | **Integer** | Note Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**NoteAttachmentListVBAResponse**](NoteAttachmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_attachment

> <MultiCodeResponseListVBAResponse> update_batch_note_attachment(vbasoftware_database, note_attachment)

Create or Update Batch NoteAttachment

Create or Update multiple NoteAttachment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_attachment = [Vba::NoteAttachment.new({attachment_key: 37, note_key: 37})] # Array<NoteAttachment> | 

begin
  # Create or Update Batch NoteAttachment
  result = api_instance.update_batch_note_attachment(vbasoftware_database, note_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->update_batch_note_attachment: #{e}"
end
```

#### Using the update_batch_note_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_attachment_with_http_info(vbasoftware_database, note_attachment)

```ruby
begin
  # Create or Update Batch NoteAttachment
  data, status_code, headers = api_instance.update_batch_note_attachment_with_http_info(vbasoftware_database, note_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->update_batch_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_attachment** | [**Array&lt;NoteAttachment&gt;**](NoteAttachment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_attachment

> <NoteAttachmentVBAResponse> update_note_attachment(vbasoftware_database, attachment_key, note_attachment)

Update NoteAttachment

Updates a specific NoteAttachment.

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

api_instance = Vba::NoteAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
attachment_key = 56 # Integer | Attachment Key
note_attachment = Vba::NoteAttachment.new({attachment_key: 37, note_key: 37}) # NoteAttachment | 

begin
  # Update NoteAttachment
  result = api_instance.update_note_attachment(vbasoftware_database, attachment_key, note_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->update_note_attachment: #{e}"
end
```

#### Using the update_note_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteAttachmentVBAResponse>, Integer, Hash)> update_note_attachment_with_http_info(vbasoftware_database, attachment_key, note_attachment)

```ruby
begin
  # Update NoteAttachment
  data, status_code, headers = api_instance.update_note_attachment_with_http_info(vbasoftware_database, attachment_key, note_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteAttachmentsApi->update_note_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **attachment_key** | **Integer** | Attachment Key |  |
| **note_attachment** | [**NoteAttachment**](NoteAttachment.md) |  |  |

### Return type

[**NoteAttachmentVBAResponse**](NoteAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

