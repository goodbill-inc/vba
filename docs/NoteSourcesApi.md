# Vba::NoteSourcesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_source**](NoteSourcesApi.md#create_note_source) | **POST** /note-sources | Create NoteSource |
| [**delete_note_source**](NoteSourcesApi.md#delete_note_source) | **DELETE** /note-sources/{sourceKey} | Delete NoteSource |
| [**get_note_source**](NoteSourcesApi.md#get_note_source) | **GET** /note-sources/{sourceKey} | Get NoteSource |
| [**list_note_source**](NoteSourcesApi.md#list_note_source) | **GET** /note-data/{noteKey}/note-sources | List NoteSource |
| [**update_batch_note_source**](NoteSourcesApi.md#update_batch_note_source) | **PUT** /note-sources-batch | Create or Update Batch NoteSource |
| [**update_note_source**](NoteSourcesApi.md#update_note_source) | **PUT** /note-sources/{sourceKey} | Update NoteSource |


## create_note_source

> <NoteSourceVBAResponse> create_note_source(vbasoftware_database, note_source)

Create NoteSource

Creates a new NoteSource

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_source = Vba::NoteSource.new({source_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37}) # NoteSource | 

begin
  # Create NoteSource
  result = api_instance.create_note_source(vbasoftware_database, note_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->create_note_source: #{e}"
end
```

#### Using the create_note_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSourceVBAResponse>, Integer, Hash)> create_note_source_with_http_info(vbasoftware_database, note_source)

```ruby
begin
  # Create NoteSource
  data, status_code, headers = api_instance.create_note_source_with_http_info(vbasoftware_database, note_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->create_note_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_source** | [**NoteSource**](NoteSource.md) |  |  |

### Return type

[**NoteSourceVBAResponse**](NoteSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_source

> delete_note_source(vbasoftware_database, source_key)

Delete NoteSource

Deletes an NoteSource

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
source_key = 56 # Integer | Source Key

begin
  # Delete NoteSource
  api_instance.delete_note_source(vbasoftware_database, source_key)
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->delete_note_source: #{e}"
end
```

#### Using the delete_note_source_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_source_with_http_info(vbasoftware_database, source_key)

```ruby
begin
  # Delete NoteSource
  data, status_code, headers = api_instance.delete_note_source_with_http_info(vbasoftware_database, source_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->delete_note_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **source_key** | **Integer** | Source Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_source

> <NoteSourceVBAResponse> get_note_source(vbasoftware_database, source_key)

Get NoteSource

Gets NoteSource

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
source_key = 56 # Integer | Source Key

begin
  # Get NoteSource
  result = api_instance.get_note_source(vbasoftware_database, source_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->get_note_source: #{e}"
end
```

#### Using the get_note_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSourceVBAResponse>, Integer, Hash)> get_note_source_with_http_info(vbasoftware_database, source_key)

```ruby
begin
  # Get NoteSource
  data, status_code, headers = api_instance.get_note_source_with_http_info(vbasoftware_database, source_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->get_note_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **source_key** | **Integer** | Source Key |  |

### Return type

[**NoteSourceVBAResponse**](NoteSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_source

> <NoteSourceListVBAResponse> list_note_source(vbasoftware_database, note_key, opts)

List NoteSource

Lists all NoteSource for the given noteKey

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_key = 56 # Integer | Note Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NoteSource
  result = api_instance.list_note_source(vbasoftware_database, note_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->list_note_source: #{e}"
end
```

#### Using the list_note_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSourceListVBAResponse>, Integer, Hash)> list_note_source_with_http_info(vbasoftware_database, note_key, opts)

```ruby
begin
  # List NoteSource
  data, status_code, headers = api_instance.list_note_source_with_http_info(vbasoftware_database, note_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSourceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->list_note_source_with_http_info: #{e}"
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

[**NoteSourceListVBAResponse**](NoteSourceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_source

> <MultiCodeResponseListVBAResponse> update_batch_note_source(vbasoftware_database, note_source)

Create or Update Batch NoteSource

Create or Update multiple NoteSource at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_source = [Vba::NoteSource.new({source_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37})] # Array<NoteSource> | 

begin
  # Create or Update Batch NoteSource
  result = api_instance.update_batch_note_source(vbasoftware_database, note_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->update_batch_note_source: #{e}"
end
```

#### Using the update_batch_note_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_source_with_http_info(vbasoftware_database, note_source)

```ruby
begin
  # Create or Update Batch NoteSource
  data, status_code, headers = api_instance.update_batch_note_source_with_http_info(vbasoftware_database, note_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->update_batch_note_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_source** | [**Array&lt;NoteSource&gt;**](NoteSource.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_source

> <NoteSourceVBAResponse> update_note_source(vbasoftware_database, source_key, note_source)

Update NoteSource

Updates a specific NoteSource.

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

api_instance = Vba::NoteSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
source_key = 56 # Integer | Source Key
note_source = Vba::NoteSource.new({source_key: 37, column_name1: 'column_name1_example', key_value1: 'key_value1_example', note_key: 37}) # NoteSource | 

begin
  # Update NoteSource
  result = api_instance.update_note_source(vbasoftware_database, source_key, note_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->update_note_source: #{e}"
end
```

#### Using the update_note_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteSourceVBAResponse>, Integer, Hash)> update_note_source_with_http_info(vbasoftware_database, source_key, note_source)

```ruby
begin
  # Update NoteSource
  data, status_code, headers = api_instance.update_note_source_with_http_info(vbasoftware_database, source_key, note_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteSourcesApi->update_note_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **source_key** | **Integer** | Source Key |  |
| **note_source** | [**NoteSource**](NoteSource.md) |  |  |

### Return type

[**NoteSourceVBAResponse**](NoteSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

