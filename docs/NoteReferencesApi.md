# Vba::NoteReferencesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_reference**](NoteReferencesApi.md#create_note_reference) | **POST** /note-references | Create NoteReference |
| [**delete_note_reference**](NoteReferencesApi.md#delete_note_reference) | **DELETE** /note-references/{referenceKey} | Delete NoteReference |
| [**get_note_reference**](NoteReferencesApi.md#get_note_reference) | **GET** /note-references/{referenceKey} | Get NoteReference |
| [**list_note_reference**](NoteReferencesApi.md#list_note_reference) | **GET** /note-data/{noteKey}/note-references | List NoteReference |
| [**update_batch_note_reference**](NoteReferencesApi.md#update_batch_note_reference) | **PUT** /note-references-batch | Create or Update Batch NoteReference |
| [**update_note_reference**](NoteReferencesApi.md#update_note_reference) | **PUT** /note-references/{referenceKey} | Update NoteReference |


## create_note_reference

> <NoteReferenceVBAResponse> create_note_reference(vbasoftware_database, note_reference)

Create NoteReference

Creates a new NoteReference

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_reference = Vba::NoteReference.new({reference_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37}) # NoteReference | 

begin
  # Create NoteReference
  result = api_instance.create_note_reference(vbasoftware_database, note_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->create_note_reference: #{e}"
end
```

#### Using the create_note_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteReferenceVBAResponse>, Integer, Hash)> create_note_reference_with_http_info(vbasoftware_database, note_reference)

```ruby
begin
  # Create NoteReference
  data, status_code, headers = api_instance.create_note_reference_with_http_info(vbasoftware_database, note_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->create_note_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_reference** | [**NoteReference**](NoteReference.md) |  |  |

### Return type

[**NoteReferenceVBAResponse**](NoteReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_reference

> delete_note_reference(vbasoftware_database, reference_key)

Delete NoteReference

Deletes an NoteReference

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reference_key = 56 # Integer | Reference Key

begin
  # Delete NoteReference
  api_instance.delete_note_reference(vbasoftware_database, reference_key)
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->delete_note_reference: #{e}"
end
```

#### Using the delete_note_reference_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_reference_with_http_info(vbasoftware_database, reference_key)

```ruby
begin
  # Delete NoteReference
  data, status_code, headers = api_instance.delete_note_reference_with_http_info(vbasoftware_database, reference_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->delete_note_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reference_key** | **Integer** | Reference Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_reference

> <NoteReferenceVBAResponse> get_note_reference(vbasoftware_database, reference_key)

Get NoteReference

Gets NoteReference

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reference_key = 56 # Integer | Reference Key

begin
  # Get NoteReference
  result = api_instance.get_note_reference(vbasoftware_database, reference_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->get_note_reference: #{e}"
end
```

#### Using the get_note_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteReferenceVBAResponse>, Integer, Hash)> get_note_reference_with_http_info(vbasoftware_database, reference_key)

```ruby
begin
  # Get NoteReference
  data, status_code, headers = api_instance.get_note_reference_with_http_info(vbasoftware_database, reference_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->get_note_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reference_key** | **Integer** | Reference Key |  |

### Return type

[**NoteReferenceVBAResponse**](NoteReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_reference

> <NoteReferenceListVBAResponse> list_note_reference(vbasoftware_database, note_key, opts)

List NoteReference

Lists all NoteReference for the given noteKey

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NoteReference
  result = api_instance.list_note_reference(vbasoftware_database, note_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->list_note_reference: #{e}"
end
```

#### Using the list_note_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteReferenceListVBAResponse>, Integer, Hash)> list_note_reference_with_http_info(vbasoftware_database, note_key, opts)

```ruby
begin
  # List NoteReference
  data, status_code, headers = api_instance.list_note_reference_with_http_info(vbasoftware_database, note_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteReferenceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->list_note_reference_with_http_info: #{e}"
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

[**NoteReferenceListVBAResponse**](NoteReferenceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_reference

> <MultiCodeResponseListVBAResponse> update_batch_note_reference(vbasoftware_database, note_reference)

Create or Update Batch NoteReference

Create or Update multiple NoteReference at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_reference = [Vba::NoteReference.new({reference_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37})] # Array<NoteReference> | 

begin
  # Create or Update Batch NoteReference
  result = api_instance.update_batch_note_reference(vbasoftware_database, note_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->update_batch_note_reference: #{e}"
end
```

#### Using the update_batch_note_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_reference_with_http_info(vbasoftware_database, note_reference)

```ruby
begin
  # Create or Update Batch NoteReference
  data, status_code, headers = api_instance.update_batch_note_reference_with_http_info(vbasoftware_database, note_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->update_batch_note_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_reference** | [**Array&lt;NoteReference&gt;**](NoteReference.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_reference

> <NoteReferenceVBAResponse> update_note_reference(vbasoftware_database, reference_key, note_reference)

Update NoteReference

Updates a specific NoteReference.

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

api_instance = Vba::NoteReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reference_key = 56 # Integer | Reference Key
note_reference = Vba::NoteReference.new({reference_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37}) # NoteReference | 

begin
  # Update NoteReference
  result = api_instance.update_note_reference(vbasoftware_database, reference_key, note_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->update_note_reference: #{e}"
end
```

#### Using the update_note_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteReferenceVBAResponse>, Integer, Hash)> update_note_reference_with_http_info(vbasoftware_database, reference_key, note_reference)

```ruby
begin
  # Update NoteReference
  data, status_code, headers = api_instance.update_note_reference_with_http_info(vbasoftware_database, reference_key, note_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteReferencesApi->update_note_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reference_key** | **Integer** | Reference Key |  |
| **note_reference** | [**NoteReference**](NoteReference.md) |  |  |

### Return type

[**NoteReferenceVBAResponse**](NoteReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

