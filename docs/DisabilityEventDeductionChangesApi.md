# Vba::DisabilityEventDeductionChangesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#create_disability_event_deduction_changed) | **POST** /disability-event-deduction-changes | Create DisabilityEventDeductionChanged |
| [**delete_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#delete_disability_event_deduction_changed) | **DELETE** /disability-event-deduction-changes/{DisabilityEventDeductionChanged_Key} | Delete DisabilityEventDeductionChanged |
| [**get_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#get_disability_event_deduction_changed) | **GET** /disability-event-deduction-changes/{DisabilityEventDeductionChanged_Key} | Get DisabilityEventDeductionChanged |
| [**list_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#list_disability_event_deduction_changed) | **GET** /disability-event-deduction-changes | List DisabilityEventDeductionChanged |
| [**update_batch_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#update_batch_disability_event_deduction_changed) | **PUT** /disability-event-deduction-changes-batch | Create or Update Batch DisabilityEventDeductionChanged |
| [**update_disability_event_deduction_changed**](DisabilityEventDeductionChangesApi.md#update_disability_event_deduction_changed) | **PUT** /disability-event-deduction-changes/{DisabilityEventDeductionChanged_Key} | Update DisabilityEventDeductionChanged |


## create_disability_event_deduction_changed

> <DisabilityEventDeductionChangedVBAResponse> create_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed)

Create DisabilityEventDeductionChanged

Creates a new DisabilityEventDeductionChanged

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_deduction_changed = Vba::DisabilityEventDeductionChanged.new({disability_event_deduction_changed_key: 37}) # DisabilityEventDeductionChanged | 

begin
  # Create DisabilityEventDeductionChanged
  result = api_instance.create_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->create_disability_event_deduction_changed: #{e}"
end
```

#### Using the create_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventDeductionChangedVBAResponse>, Integer, Hash)> create_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed)

```ruby
begin
  # Create DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.create_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventDeductionChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->create_disability_event_deduction_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_deduction_changed** | [**DisabilityEventDeductionChanged**](DisabilityEventDeductionChanged.md) |  |  |

### Return type

[**DisabilityEventDeductionChangedVBAResponse**](DisabilityEventDeductionChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_event_deduction_changed

> delete_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key)

Delete DisabilityEventDeductionChanged

Deletes an DisabilityEventDeductionChanged

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_deduction_changed_key = 56 # Integer | DisabilityEventDeductionChanged Key

begin
  # Delete DisabilityEventDeductionChanged
  api_instance.delete_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key)
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->delete_disability_event_deduction_changed: #{e}"
end
```

#### Using the delete_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key)

```ruby
begin
  # Delete DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.delete_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->delete_disability_event_deduction_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_deduction_changed_key** | **Integer** | DisabilityEventDeductionChanged Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_event_deduction_changed

> <DisabilityEventDeductionChangedVBAResponse> get_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key)

Get DisabilityEventDeductionChanged

Gets DisabilityEventDeductionChanged

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_deduction_changed_key = 56 # Integer | DisabilityEventDeductionChanged Key

begin
  # Get DisabilityEventDeductionChanged
  result = api_instance.get_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->get_disability_event_deduction_changed: #{e}"
end
```

#### Using the get_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventDeductionChangedVBAResponse>, Integer, Hash)> get_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key)

```ruby
begin
  # Get DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.get_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventDeductionChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->get_disability_event_deduction_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_deduction_changed_key** | **Integer** | DisabilityEventDeductionChanged Key |  |

### Return type

[**DisabilityEventDeductionChangedVBAResponse**](DisabilityEventDeductionChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_event_deduction_changed

> <DisabilityEventDeductionChangedListVBAResponse> list_disability_event_deduction_changed(vbasoftware_database, opts)

List DisabilityEventDeductionChanged

Lists all DisabilityEventDeductionChanged

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisabilityEventDeductionChanged
  result = api_instance.list_disability_event_deduction_changed(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->list_disability_event_deduction_changed: #{e}"
end
```

#### Using the list_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventDeductionChangedListVBAResponse>, Integer, Hash)> list_disability_event_deduction_changed_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.list_disability_event_deduction_changed_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventDeductionChangedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->list_disability_event_deduction_changed_with_http_info: #{e}"
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

[**DisabilityEventDeductionChangedListVBAResponse**](DisabilityEventDeductionChangedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_event_deduction_changed

> <MultiCodeResponseListVBAResponse> update_batch_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed)

Create or Update Batch DisabilityEventDeductionChanged

Create or Update multiple DisabilityEventDeductionChanged at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_deduction_changed = [Vba::DisabilityEventDeductionChanged.new({disability_event_deduction_changed_key: 37})] # Array<DisabilityEventDeductionChanged> | 

begin
  # Create or Update Batch DisabilityEventDeductionChanged
  result = api_instance.update_batch_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->update_batch_disability_event_deduction_changed: #{e}"
end
```

#### Using the update_batch_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed)

```ruby
begin
  # Create or Update Batch DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.update_batch_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->update_batch_disability_event_deduction_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_deduction_changed** | [**Array&lt;DisabilityEventDeductionChanged&gt;**](DisabilityEventDeductionChanged.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_event_deduction_changed

> <DisabilityEventDeductionChangedVBAResponse> update_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key, disability_event_deduction_changed)

Update DisabilityEventDeductionChanged

Updates a specific DisabilityEventDeductionChanged.

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

api_instance = Vba::DisabilityEventDeductionChangesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_deduction_changed_key = 56 # Integer | DisabilityEventDeductionChanged Key
disability_event_deduction_changed = Vba::DisabilityEventDeductionChanged.new({disability_event_deduction_changed_key: 37}) # DisabilityEventDeductionChanged | 

begin
  # Update DisabilityEventDeductionChanged
  result = api_instance.update_disability_event_deduction_changed(vbasoftware_database, disability_event_deduction_changed_key, disability_event_deduction_changed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->update_disability_event_deduction_changed: #{e}"
end
```

#### Using the update_disability_event_deduction_changed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventDeductionChangedVBAResponse>, Integer, Hash)> update_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key, disability_event_deduction_changed)

```ruby
begin
  # Update DisabilityEventDeductionChanged
  data, status_code, headers = api_instance.update_disability_event_deduction_changed_with_http_info(vbasoftware_database, disability_event_deduction_changed_key, disability_event_deduction_changed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventDeductionChangedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventDeductionChangesApi->update_disability_event_deduction_changed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_deduction_changed_key** | **Integer** | DisabilityEventDeductionChanged Key |  |
| **disability_event_deduction_changed** | [**DisabilityEventDeductionChanged**](DisabilityEventDeductionChanged.md) |  |  |

### Return type

[**DisabilityEventDeductionChangedVBAResponse**](DisabilityEventDeductionChangedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

