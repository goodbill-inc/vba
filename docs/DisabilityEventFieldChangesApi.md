# Vba::DisabilityEventFieldChangesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#create_disability_event_field_changed) | **POST** /disability-event-field-changes | Create DisabilityEventFieldChanged |
| [**delete_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#delete_disability_event_field_changed) | **DELETE** /disability-event-field-changes/{DisabilityEventFieldChanged_Key} | Delete DisabilityEventFieldChanged |
| [**get_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#get_disability_event_field_changed) | **GET** /disability-event-field-changes/{DisabilityEventFieldChanged_Key} | Get DisabilityEventFieldChanged |
| [**list_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#list_disability_event_field_changed) | **GET** /disability-event-field-changes | List DisabilityEventFieldChanged |
| [**update_batch_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#update_batch_disability_event_field_changed) | **PUT** /disability-event-field-changes-batch | Create or Update Batch DisabilityEventFieldChanged |
| [**update_disability_event_field_changed**](DisabilityEventFieldChangesApi.md#update_disability_event_field_changed) | **PUT** /disability-event-field-changes/{DisabilityEventFieldChanged_Key} | Update DisabilityEventFieldChanged |


## create_disability_event_field_changed

> <DisabilityEventFieldChangedVBAResponse> create_disability_event_field_changed(vbasoftware_database, disability_event_field_changed)

Create DisabilityEventFieldChanged

Creates a new DisabilityEventFieldChanged

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field_changed = Vba::DisabilityEventFieldChanged.new({disability_event_field_changed_key: 37}) # DisabilityEventFieldChanged | 

begin
  # Create DisabilityEventFieldChanged
  result = api_instance.create_disability_event_field_changed(vbasoftware_database, disability_event_field_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->create_disability_event_field_changed: #{e}"
end
```

#### Using the create_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldChangedVBAResponse>, Integer, Hash)> create_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed)

```ruby
begin
  # Create DisabilityEventFieldChanged
  data, status_code, headers = api_instance.create_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->create_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field_changed** | [**DisabilityEventFieldChanged**](DisabilityEventFieldChanged.md) |  |  |

### Return type

[**DisabilityEventFieldChangedVBAResponse**](DisabilityEventFieldChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_event_field_changed

> delete_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key)

Delete DisabilityEventFieldChanged

Deletes an DisabilityEventFieldChanged

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field_changed_key = 56 # Integer | DisabilityEventFieldChanged Key

begin
  # Delete DisabilityEventFieldChanged
  api_instance.delete_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key)
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->delete_disability_event_field_changed: #{e}"
end
```

#### Using the delete_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key)

```ruby
begin
  # Delete DisabilityEventFieldChanged
  data, status_code, headers = api_instance.delete_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->delete_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field_changed_key** | **Integer** | DisabilityEventFieldChanged Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_event_field_changed

> <DisabilityEventFieldChangedVBAResponse> get_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key)

Get DisabilityEventFieldChanged

Gets DisabilityEventFieldChanged

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field_changed_key = 56 # Integer | DisabilityEventFieldChanged Key

begin
  # Get DisabilityEventFieldChanged
  result = api_instance.get_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->get_disability_event_field_changed: #{e}"
end
```

#### Using the get_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldChangedVBAResponse>, Integer, Hash)> get_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key)

```ruby
begin
  # Get DisabilityEventFieldChanged
  data, status_code, headers = api_instance.get_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->get_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field_changed_key** | **Integer** | DisabilityEventFieldChanged Key |  |

### Return type

[**DisabilityEventFieldChangedVBAResponse**](DisabilityEventFieldChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_event_field_changed

> <DisabilityEventFieldChangedListVBAResponse> list_disability_event_field_changed(vbasoftware_database, opts)

List DisabilityEventFieldChanged

Lists all DisabilityEventFieldChanged

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisabilityEventFieldChanged
  result = api_instance.list_disability_event_field_changed(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->list_disability_event_field_changed: #{e}"
end
```

#### Using the list_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldChangedListVBAResponse>, Integer, Hash)> list_disability_event_field_changed_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisabilityEventFieldChanged
  data, status_code, headers = api_instance.list_disability_event_field_changed_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldChangedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->list_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**DisabilityEventFieldChangedListVBAResponse**](DisabilityEventFieldChangedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_event_field_changed

> <MultiCodeResponseListVBAResponse> update_batch_disability_event_field_changed(vbasoftware_database, disability_event_field_changed)

Create or Update Batch DisabilityEventFieldChanged

Create or Update multiple DisabilityEventFieldChanged at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field_changed = [Vba::DisabilityEventFieldChanged.new({disability_event_field_changed_key: 37})] # Array<DisabilityEventFieldChanged> | 

begin
  # Create or Update Batch DisabilityEventFieldChanged
  result = api_instance.update_batch_disability_event_field_changed(vbasoftware_database, disability_event_field_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->update_batch_disability_event_field_changed: #{e}"
end
```

#### Using the update_batch_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed)

```ruby
begin
  # Create or Update Batch DisabilityEventFieldChanged
  data, status_code, headers = api_instance.update_batch_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->update_batch_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field_changed** | [**Array&lt;DisabilityEventFieldChanged&gt;**](DisabilityEventFieldChanged.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_event_field_changed

> <DisabilityEventFieldChangedVBAResponse> update_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key, disability_event_field_changed)

Update DisabilityEventFieldChanged

Updates a specific DisabilityEventFieldChanged.

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

api_instance = Vba::DisabilityEventFieldChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field_changed_key = 56 # Integer | DisabilityEventFieldChanged Key
disability_event_field_changed = Vba::DisabilityEventFieldChanged.new({disability_event_field_changed_key: 37}) # DisabilityEventFieldChanged | 

begin
  # Update DisabilityEventFieldChanged
  result = api_instance.update_disability_event_field_changed(vbasoftware_database, disability_event_field_changed_key, disability_event_field_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->update_disability_event_field_changed: #{e}"
end
```

#### Using the update_disability_event_field_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldChangedVBAResponse>, Integer, Hash)> update_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key, disability_event_field_changed)

```ruby
begin
  # Update DisabilityEventFieldChanged
  data, status_code, headers = api_instance.update_disability_event_field_changed_with_http_info(vbasoftware_database, disability_event_field_changed_key, disability_event_field_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldChangesApi->update_disability_event_field_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field_changed_key** | **Integer** | DisabilityEventFieldChanged Key |  |
| **disability_event_field_changed** | [**DisabilityEventFieldChanged**](DisabilityEventFieldChanged.md) |  |  |

### Return type

[**DisabilityEventFieldChangedVBAResponse**](DisabilityEventFieldChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

