# Vba::NoteTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_type**](NoteTypesApi.md#create_note_type) | **POST** /note-types | Create NoteType |
| [**delete_note_type**](NoteTypesApi.md#delete_note_type) | **DELETE** /note-types/{noteType} | Delete NoteType |
| [**get_note_type**](NoteTypesApi.md#get_note_type) | **GET** /note-types/{noteType} | Get NoteType |
| [**list_note_type**](NoteTypesApi.md#list_note_type) | **GET** /note-types | List NoteType |
| [**update_batch_note_type**](NoteTypesApi.md#update_batch_note_type) | **PUT** /note-types-batch | Create or Update Batch NoteType |
| [**update_note_type**](NoteTypesApi.md#update_note_type) | **PUT** /note-types/{noteType} | Update NoteType |


## create_note_type

> <NoteTypeVBAResponse> create_note_type(vbasoftware_database, note_type)

Create NoteType

Creates a new NoteType

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_type = Vba::NoteType.new({note_type: 'note_type_example'}) # NoteType | 

begin
  # Create NoteType
  result = api_instance.create_note_type(vbasoftware_database, note_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->create_note_type: #{e}"
end
```

#### Using the create_note_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteTypeVBAResponse>, Integer, Hash)> create_note_type_with_http_info(vbasoftware_database, note_type)

```ruby
begin
  # Create NoteType
  data, status_code, headers = api_instance.create_note_type_with_http_info(vbasoftware_database, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->create_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_type** | [**NoteType**](NoteType.md) |  |  |

### Return type

[**NoteTypeVBAResponse**](NoteTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_type

> delete_note_type(vbasoftware_database, note_type)

Delete NoteType

Deletes an NoteType

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_type = 'note_type_example' # String | Note Type

begin
  # Delete NoteType
  api_instance.delete_note_type(vbasoftware_database, note_type)
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->delete_note_type: #{e}"
end
```

#### Using the delete_note_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_type_with_http_info(vbasoftware_database, note_type)

```ruby
begin
  # Delete NoteType
  data, status_code, headers = api_instance.delete_note_type_with_http_info(vbasoftware_database, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->delete_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_type** | **String** | Note Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_type

> <NoteTypeVBAResponse> get_note_type(vbasoftware_database, note_type)

Get NoteType

Gets NoteType

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_type = 'note_type_example' # String | Note Type

begin
  # Get NoteType
  result = api_instance.get_note_type(vbasoftware_database, note_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->get_note_type: #{e}"
end
```

#### Using the get_note_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteTypeVBAResponse>, Integer, Hash)> get_note_type_with_http_info(vbasoftware_database, note_type)

```ruby
begin
  # Get NoteType
  data, status_code, headers = api_instance.get_note_type_with_http_info(vbasoftware_database, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->get_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_type** | **String** | Note Type |  |

### Return type

[**NoteTypeVBAResponse**](NoteTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_type

> <NoteTypeListVBAResponse> list_note_type(vbasoftware_database)

List NoteType

Lists all NoteType 

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List NoteType
  result = api_instance.list_note_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->list_note_type: #{e}"
end
```

#### Using the list_note_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteTypeListVBAResponse>, Integer, Hash)> list_note_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List NoteType
  data, status_code, headers = api_instance.list_note_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->list_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**NoteTypeListVBAResponse**](NoteTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_type

> <MultiCodeResponseListVBAResponse> update_batch_note_type(vbasoftware_database, note_type)

Create or Update Batch NoteType

Create or Update multiple NoteType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_type = [Vba::NoteType.new({note_type: 'note_type_example'})] # Array<NoteType> | 

begin
  # Create or Update Batch NoteType
  result = api_instance.update_batch_note_type(vbasoftware_database, note_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->update_batch_note_type: #{e}"
end
```

#### Using the update_batch_note_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_type_with_http_info(vbasoftware_database, note_type)

```ruby
begin
  # Create or Update Batch NoteType
  data, status_code, headers = api_instance.update_batch_note_type_with_http_info(vbasoftware_database, note_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->update_batch_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_type** | [**Array&lt;NoteType&gt;**](NoteType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_type

> <NoteTypeVBAResponse> update_note_type(vbasoftware_database, note_type, note_type2)

Update NoteType

Updates a specific NoteType.

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

api_instance = Vba::NoteTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_type = 'note_type_example' # String | Note Type
note_type2 = Vba::NoteType.new({note_type: 'note_type_example'}) # NoteType | 

begin
  # Update NoteType
  result = api_instance.update_note_type(vbasoftware_database, note_type, note_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->update_note_type: #{e}"
end
```

#### Using the update_note_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteTypeVBAResponse>, Integer, Hash)> update_note_type_with_http_info(vbasoftware_database, note_type, note_type2)

```ruby
begin
  # Update NoteType
  data, status_code, headers = api_instance.update_note_type_with_http_info(vbasoftware_database, note_type, note_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NoteTypesApi->update_note_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_type** | **String** | Note Type |  |
| **note_type2** | [**NoteType**](NoteType.md) |  |  |

### Return type

[**NoteTypeVBAResponse**](NoteTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

