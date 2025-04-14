# Vba::CaseAttachmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_attachment**](CaseAttachmentsApi.md#create_case_attachment) | **POST** /case-attachments | Create CaseAttachment |
| [**delete_case_attachment**](CaseAttachmentsApi.md#delete_case_attachment) | **DELETE** /case-attachments/{CaseAttachment_Key} | Delete CaseAttachment |
| [**get_case_attachment**](CaseAttachmentsApi.md#get_case_attachment) | **GET** /case-attachments/{CaseAttachment_Key} | Get CaseAttachment |
| [**list_case_attachment**](CaseAttachmentsApi.md#list_case_attachment) | **GET** /case-attachments | List CaseAttachment |
| [**update_batch_case_attachment**](CaseAttachmentsApi.md#update_batch_case_attachment) | **PUT** /case-attachments-batch | Create or Update Batch CaseAttachment |
| [**update_case_attachment**](CaseAttachmentsApi.md#update_case_attachment) | **PUT** /case-attachments/{CaseAttachment_Key} | Update CaseAttachment |


## create_case_attachment

> <CaseAttachmentVBAResponse> create_case_attachment(vbasoftware_database, case_attachment)

Create CaseAttachment

Creates a new CaseAttachment

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment = Vba::CaseAttachment.new({case_attachment_key: 37, case_key: 37}) # CaseAttachment | 

begin
  # Create CaseAttachment
  result = api_instance.create_case_attachment(vbasoftware_database, case_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->create_case_attachment: #{e}"
end
```

#### Using the create_case_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentVBAResponse>, Integer, Hash)> create_case_attachment_with_http_info(vbasoftware_database, case_attachment)

```ruby
begin
  # Create CaseAttachment
  data, status_code, headers = api_instance.create_case_attachment_with_http_info(vbasoftware_database, case_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->create_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment** | [**CaseAttachment**](CaseAttachment.md) |  |  |

### Return type

[**CaseAttachmentVBAResponse**](CaseAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_attachment

> delete_case_attachment(vbasoftware_database, case_attachment_key)

Delete CaseAttachment

Deletes an CaseAttachment

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_key = 56 # Integer | CaseAttachment Key

begin
  # Delete CaseAttachment
  api_instance.delete_case_attachment(vbasoftware_database, case_attachment_key)
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->delete_case_attachment: #{e}"
end
```

#### Using the delete_case_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_attachment_with_http_info(vbasoftware_database, case_attachment_key)

```ruby
begin
  # Delete CaseAttachment
  data, status_code, headers = api_instance.delete_case_attachment_with_http_info(vbasoftware_database, case_attachment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->delete_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_key** | **Integer** | CaseAttachment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_attachment

> <CaseAttachmentVBAResponse> get_case_attachment(vbasoftware_database, case_attachment_key)

Get CaseAttachment

Gets CaseAttachment

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_key = 56 # Integer | CaseAttachment Key

begin
  # Get CaseAttachment
  result = api_instance.get_case_attachment(vbasoftware_database, case_attachment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->get_case_attachment: #{e}"
end
```

#### Using the get_case_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentVBAResponse>, Integer, Hash)> get_case_attachment_with_http_info(vbasoftware_database, case_attachment_key)

```ruby
begin
  # Get CaseAttachment
  data, status_code, headers = api_instance.get_case_attachment_with_http_info(vbasoftware_database, case_attachment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->get_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_key** | **Integer** | CaseAttachment Key |  |

### Return type

[**CaseAttachmentVBAResponse**](CaseAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_attachment

> <CaseAttachmentListVBAResponse> list_case_attachment(vbasoftware_database, opts)

List CaseAttachment

Lists all CaseAttachment

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseAttachment
  result = api_instance.list_case_attachment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->list_case_attachment: #{e}"
end
```

#### Using the list_case_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentListVBAResponse>, Integer, Hash)> list_case_attachment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseAttachment
  data, status_code, headers = api_instance.list_case_attachment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->list_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CaseAttachmentListVBAResponse**](CaseAttachmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_attachment

> <MultiCodeResponseListVBAResponse> update_batch_case_attachment(vbasoftware_database, case_attachment)

Create or Update Batch CaseAttachment

Create or Update multiple CaseAttachment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment = [Vba::CaseAttachment.new({case_attachment_key: 37, case_key: 37})] # Array<CaseAttachment> | 

begin
  # Create or Update Batch CaseAttachment
  result = api_instance.update_batch_case_attachment(vbasoftware_database, case_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->update_batch_case_attachment: #{e}"
end
```

#### Using the update_batch_case_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_attachment_with_http_info(vbasoftware_database, case_attachment)

```ruby
begin
  # Create or Update Batch CaseAttachment
  data, status_code, headers = api_instance.update_batch_case_attachment_with_http_info(vbasoftware_database, case_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->update_batch_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment** | [**Array&lt;CaseAttachment&gt;**](CaseAttachment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_attachment

> <CaseAttachmentVBAResponse> update_case_attachment(vbasoftware_database, case_attachment_key, case_attachment)

Update CaseAttachment

Updates a specific CaseAttachment.

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

api_instance = Vba::CaseAttachmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_key = 56 # Integer | CaseAttachment Key
case_attachment = Vba::CaseAttachment.new({case_attachment_key: 37, case_key: 37}) # CaseAttachment | 

begin
  # Update CaseAttachment
  result = api_instance.update_case_attachment(vbasoftware_database, case_attachment_key, case_attachment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->update_case_attachment: #{e}"
end
```

#### Using the update_case_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentVBAResponse>, Integer, Hash)> update_case_attachment_with_http_info(vbasoftware_database, case_attachment_key, case_attachment)

```ruby
begin
  # Update CaseAttachment
  data, status_code, headers = api_instance.update_case_attachment_with_http_info(vbasoftware_database, case_attachment_key, case_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentsApi->update_case_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_key** | **Integer** | CaseAttachment Key |  |
| **case_attachment** | [**CaseAttachment**](CaseAttachment.md) |  |  |

### Return type

[**CaseAttachmentVBAResponse**](CaseAttachmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

