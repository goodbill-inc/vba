# Vba::DisabilityEventCaseChangesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#create_disability_event_case_changed) | **POST** /disability-event-case-changes | Create DisabilityEventCaseChanged |
| [**delete_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#delete_disability_event_case_changed) | **DELETE** /disability-event-case-changes/{DisabilityEventCaseChanged_Key} | Delete DisabilityEventCaseChanged |
| [**get_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#get_disability_event_case_changed) | **GET** /disability-event-case-changes/{DisabilityEventCaseChanged_Key} | Get DisabilityEventCaseChanged |
| [**list_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#list_disability_event_case_changed) | **GET** /disability-event-case-changes | List DisabilityEventCaseChanged |
| [**update_batch_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#update_batch_disability_event_case_changed) | **PUT** /disability-event-case-changes-batch | Create or Update Batch DisabilityEventCaseChanged |
| [**update_disability_event_case_changed**](DisabilityEventCaseChangesApi.md#update_disability_event_case_changed) | **PUT** /disability-event-case-changes/{DisabilityEventCaseChanged_Key} | Update DisabilityEventCaseChanged |


## create_disability_event_case_changed

> <DisabilityEventCaseChangedVBAResponse> create_disability_event_case_changed(vbasoftware_database, disability_event_case_changed)

Create DisabilityEventCaseChanged

Creates a new DisabilityEventCaseChanged

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_case_changed = Vba::DisabilityEventCaseChanged.new({disability_event_case_changed_key: 37}) # DisabilityEventCaseChanged | 

begin
  # Create DisabilityEventCaseChanged
  result = api_instance.create_disability_event_case_changed(vbasoftware_database, disability_event_case_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->create_disability_event_case_changed: #{e}"
end
```

#### Using the create_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventCaseChangedVBAResponse>, Integer, Hash)> create_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed)

```ruby
begin
  # Create DisabilityEventCaseChanged
  data, status_code, headers = api_instance.create_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventCaseChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->create_disability_event_case_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_case_changed** | [**DisabilityEventCaseChanged**](DisabilityEventCaseChanged.md) |  |  |

### Return type

[**DisabilityEventCaseChangedVBAResponse**](DisabilityEventCaseChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_event_case_changed

> delete_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key)

Delete DisabilityEventCaseChanged

Deletes an DisabilityEventCaseChanged

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_case_changed_key = 56 # Integer | DisabilityEventCaseChanged Key

begin
  # Delete DisabilityEventCaseChanged
  api_instance.delete_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key)
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->delete_disability_event_case_changed: #{e}"
end
```

#### Using the delete_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key)

```ruby
begin
  # Delete DisabilityEventCaseChanged
  data, status_code, headers = api_instance.delete_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->delete_disability_event_case_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_case_changed_key** | **Integer** | DisabilityEventCaseChanged Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_event_case_changed

> <DisabilityEventCaseChangedVBAResponse> get_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key)

Get DisabilityEventCaseChanged

Gets DisabilityEventCaseChanged

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_case_changed_key = 56 # Integer | DisabilityEventCaseChanged Key

begin
  # Get DisabilityEventCaseChanged
  result = api_instance.get_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->get_disability_event_case_changed: #{e}"
end
```

#### Using the get_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventCaseChangedVBAResponse>, Integer, Hash)> get_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key)

```ruby
begin
  # Get DisabilityEventCaseChanged
  data, status_code, headers = api_instance.get_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventCaseChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->get_disability_event_case_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_case_changed_key** | **Integer** | DisabilityEventCaseChanged Key |  |

### Return type

[**DisabilityEventCaseChangedVBAResponse**](DisabilityEventCaseChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_event_case_changed

> <DisabilityEventCaseChangedListVBAResponse> list_disability_event_case_changed(vbasoftware_database, opts)

List DisabilityEventCaseChanged

Lists all DisabilityEventCaseChanged

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisabilityEventCaseChanged
  result = api_instance.list_disability_event_case_changed(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->list_disability_event_case_changed: #{e}"
end
```

#### Using the list_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventCaseChangedListVBAResponse>, Integer, Hash)> list_disability_event_case_changed_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisabilityEventCaseChanged
  data, status_code, headers = api_instance.list_disability_event_case_changed_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventCaseChangedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->list_disability_event_case_changed_with_http_info: #{e}"
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

[**DisabilityEventCaseChangedListVBAResponse**](DisabilityEventCaseChangedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_event_case_changed

> <MultiCodeResponseListVBAResponse> update_batch_disability_event_case_changed(vbasoftware_database, disability_event_case_changed)

Create or Update Batch DisabilityEventCaseChanged

Create or Update multiple DisabilityEventCaseChanged at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_case_changed = [Vba::DisabilityEventCaseChanged.new({disability_event_case_changed_key: 37})] # Array<DisabilityEventCaseChanged> | 

begin
  # Create or Update Batch DisabilityEventCaseChanged
  result = api_instance.update_batch_disability_event_case_changed(vbasoftware_database, disability_event_case_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->update_batch_disability_event_case_changed: #{e}"
end
```

#### Using the update_batch_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed)

```ruby
begin
  # Create or Update Batch DisabilityEventCaseChanged
  data, status_code, headers = api_instance.update_batch_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->update_batch_disability_event_case_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_case_changed** | [**Array&lt;DisabilityEventCaseChanged&gt;**](DisabilityEventCaseChanged.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_event_case_changed

> <DisabilityEventCaseChangedVBAResponse> update_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key, disability_event_case_changed)

Update DisabilityEventCaseChanged

Updates a specific DisabilityEventCaseChanged.

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

api_instance = Vba::DisabilityEventCaseChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_case_changed_key = 56 # Integer | DisabilityEventCaseChanged Key
disability_event_case_changed = Vba::DisabilityEventCaseChanged.new({disability_event_case_changed_key: 37}) # DisabilityEventCaseChanged | 

begin
  # Update DisabilityEventCaseChanged
  result = api_instance.update_disability_event_case_changed(vbasoftware_database, disability_event_case_changed_key, disability_event_case_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->update_disability_event_case_changed: #{e}"
end
```

#### Using the update_disability_event_case_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventCaseChangedVBAResponse>, Integer, Hash)> update_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key, disability_event_case_changed)

```ruby
begin
  # Update DisabilityEventCaseChanged
  data, status_code, headers = api_instance.update_disability_event_case_changed_with_http_info(vbasoftware_database, disability_event_case_changed_key, disability_event_case_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventCaseChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventCaseChangesApi->update_disability_event_case_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_case_changed_key** | **Integer** | DisabilityEventCaseChanged Key |  |
| **disability_event_case_changed** | [**DisabilityEventCaseChanged**](DisabilityEventCaseChanged.md) |  |  |

### Return type

[**DisabilityEventCaseChangedVBAResponse**](DisabilityEventCaseChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

