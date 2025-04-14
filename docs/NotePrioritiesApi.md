# Vba::NotePrioritiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note_priority**](NotePrioritiesApi.md#create_note_priority) | **POST** /note-priorities | Create NotePriority |
| [**delete_note_priority**](NotePrioritiesApi.md#delete_note_priority) | **DELETE** /note-priorities/{notePriority} | Delete NotePriority |
| [**get_note_priority**](NotePrioritiesApi.md#get_note_priority) | **GET** /note-priorities/{notePriority} | Get NotePriority |
| [**list_note_priority**](NotePrioritiesApi.md#list_note_priority) | **GET** /note-priorities | List NotePriority |
| [**update_batch_note_priority**](NotePrioritiesApi.md#update_batch_note_priority) | **PUT** /note-priorities-batch | Create or Update Batch NotePriority |
| [**update_note_priority**](NotePrioritiesApi.md#update_note_priority) | **PUT** /note-priorities/{notePriority} | Update NotePriority |


## create_note_priority

> <NotePriorityVBAResponse> create_note_priority(vbasoftware_database, note_priority)

Create NotePriority

Creates a new NotePriority

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_priority = Vba::NotePriority.new({note_priority: 'note_priority_example'}) # NotePriority | 

begin
  # Create NotePriority
  result = api_instance.create_note_priority(vbasoftware_database, note_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->create_note_priority: #{e}"
end
```

#### Using the create_note_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotePriorityVBAResponse>, Integer, Hash)> create_note_priority_with_http_info(vbasoftware_database, note_priority)

```ruby
begin
  # Create NotePriority
  data, status_code, headers = api_instance.create_note_priority_with_http_info(vbasoftware_database, note_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->create_note_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_priority** | [**NotePriority**](NotePriority.md) |  |  |

### Return type

[**NotePriorityVBAResponse**](NotePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_note_priority

> delete_note_priority(vbasoftware_database, note_priority)

Delete NotePriority

Deletes an NotePriority

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_priority = 'note_priority_example' # String | Note Priority

begin
  # Delete NotePriority
  api_instance.delete_note_priority(vbasoftware_database, note_priority)
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->delete_note_priority: #{e}"
end
```

#### Using the delete_note_priority_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_note_priority_with_http_info(vbasoftware_database, note_priority)

```ruby
begin
  # Delete NotePriority
  data, status_code, headers = api_instance.delete_note_priority_with_http_info(vbasoftware_database, note_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->delete_note_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_priority** | **String** | Note Priority |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_note_priority

> <NotePriorityVBAResponse> get_note_priority(vbasoftware_database, note_priority)

Get NotePriority

Gets NotePriority

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_priority = 'note_priority_example' # String | Note Priority

begin
  # Get NotePriority
  result = api_instance.get_note_priority(vbasoftware_database, note_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->get_note_priority: #{e}"
end
```

#### Using the get_note_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotePriorityVBAResponse>, Integer, Hash)> get_note_priority_with_http_info(vbasoftware_database, note_priority)

```ruby
begin
  # Get NotePriority
  data, status_code, headers = api_instance.get_note_priority_with_http_info(vbasoftware_database, note_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->get_note_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_priority** | **String** | Note Priority |  |

### Return type

[**NotePriorityVBAResponse**](NotePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_note_priority

> <NotePriorityListVBAResponse> list_note_priority(vbasoftware_database, opts)

List NotePriority

Lists all NotePriority

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NotePriority
  result = api_instance.list_note_priority(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->list_note_priority: #{e}"
end
```

#### Using the list_note_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotePriorityListVBAResponse>, Integer, Hash)> list_note_priority_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List NotePriority
  data, status_code, headers = api_instance.list_note_priority_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotePriorityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->list_note_priority_with_http_info: #{e}"
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

[**NotePriorityListVBAResponse**](NotePriorityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_note_priority

> <MultiCodeResponseListVBAResponse> update_batch_note_priority(vbasoftware_database, note_priority)

Create or Update Batch NotePriority

Create or Update multiple NotePriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_priority = [Vba::NotePriority.new({note_priority: 'note_priority_example'})] # Array<NotePriority> | 

begin
  # Create or Update Batch NotePriority
  result = api_instance.update_batch_note_priority(vbasoftware_database, note_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->update_batch_note_priority: #{e}"
end
```

#### Using the update_batch_note_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_note_priority_with_http_info(vbasoftware_database, note_priority)

```ruby
begin
  # Create or Update Batch NotePriority
  data, status_code, headers = api_instance.update_batch_note_priority_with_http_info(vbasoftware_database, note_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->update_batch_note_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_priority** | [**Array&lt;NotePriority&gt;**](NotePriority.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_note_priority

> <NotePriorityVBAResponse> update_note_priority(vbasoftware_database, note_priority, note_priority2)

Update NotePriority

Updates a specific NotePriority.

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

api_instance = Vba::NotePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
note_priority = 'note_priority_example' # String | Note Priority
note_priority2 = Vba::NotePriority.new({note_priority: 'note_priority_example'}) # NotePriority | 

begin
  # Update NotePriority
  result = api_instance.update_note_priority(vbasoftware_database, note_priority, note_priority2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->update_note_priority: #{e}"
end
```

#### Using the update_note_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotePriorityVBAResponse>, Integer, Hash)> update_note_priority_with_http_info(vbasoftware_database, note_priority, note_priority2)

```ruby
begin
  # Update NotePriority
  data, status_code, headers = api_instance.update_note_priority_with_http_info(vbasoftware_database, note_priority, note_priority2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NotePrioritiesApi->update_note_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **note_priority** | **String** | Note Priority |  |
| **note_priority2** | [**NotePriority**](NotePriority.md) |  |  |

### Return type

[**NotePriorityVBAResponse**](NotePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

