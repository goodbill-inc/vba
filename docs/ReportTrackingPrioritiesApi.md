# Vba::ReportTrackingPrioritiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_track_priority**](ReportTrackingPrioritiesApi.md#create_report_track_priority) | **POST** /report-definitions/{reportDefinitionKey}/priorities | Create ReportTrackPriority |
| [**delete_report_track_priority**](ReportTrackingPrioritiesApi.md#delete_report_track_priority) | **DELETE** /report-definitions/{reportDefinitionKey}/priorities/{priority} | Delete ReportTrackPriority |
| [**get_report_track_priority**](ReportTrackingPrioritiesApi.md#get_report_track_priority) | **GET** /report-definitions/{reportDefinitionKey}/priorities/{priority} | Get ReportTrackPriority |
| [**list_report_track_priority**](ReportTrackingPrioritiesApi.md#list_report_track_priority) | **GET** /report-definitions/{reportDefinitionKey}/priorities | List ReportTrackPriority |
| [**update_batch_report_track_priority**](ReportTrackingPrioritiesApi.md#update_batch_report_track_priority) | **PUT** /report-definitions/{reportDefinitionKey}/priorities-batch | Create or Update Batch ReportTrackPriority |
| [**update_report_track_priority**](ReportTrackingPrioritiesApi.md#update_report_track_priority) | **PUT** /report-definitions/{reportDefinitionKey}/priorities/{priority} | Update ReportTrackPriority |


## create_report_track_priority

> <ReportTrackPriorityVBAResponse> create_report_track_priority(vbasoftware_database, report_definition_key, report_track_priority)

Create ReportTrackPriority

Creates a new ReportTrackPriority

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_priority = Vba::ReportTrackPriority.new({report_definition_key: 37, priority: 'priority_example', priority_default: false}) # ReportTrackPriority | 

begin
  # Create ReportTrackPriority
  result = api_instance.create_report_track_priority(vbasoftware_database, report_definition_key, report_track_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->create_report_track_priority: #{e}"
end
```

#### Using the create_report_track_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackPriorityVBAResponse>, Integer, Hash)> create_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, report_track_priority)

```ruby
begin
  # Create ReportTrackPriority
  data, status_code, headers = api_instance.create_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, report_track_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackPriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->create_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_priority** | [**ReportTrackPriority**](ReportTrackPriority.md) |  |  |

### Return type

[**ReportTrackPriorityVBAResponse**](ReportTrackPriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_track_priority

> delete_report_track_priority(vbasoftware_database, report_definition_key, priority)

Delete ReportTrackPriority

Deletes an ReportTrackPriority

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
priority = 'priority_example' # String | Priority

begin
  # Delete ReportTrackPriority
  api_instance.delete_report_track_priority(vbasoftware_database, report_definition_key, priority)
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->delete_report_track_priority: #{e}"
end
```

#### Using the delete_report_track_priority_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority)

```ruby
begin
  # Delete ReportTrackPriority
  data, status_code, headers = api_instance.delete_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->delete_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **priority** | **String** | Priority |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_track_priority

> <ReportTrackPriorityVBAResponse> get_report_track_priority(vbasoftware_database, report_definition_key, priority)

Get ReportTrackPriority

Gets ReportTrackPriority

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
priority = 'priority_example' # String | Priority

begin
  # Get ReportTrackPriority
  result = api_instance.get_report_track_priority(vbasoftware_database, report_definition_key, priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->get_report_track_priority: #{e}"
end
```

#### Using the get_report_track_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackPriorityVBAResponse>, Integer, Hash)> get_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority)

```ruby
begin
  # Get ReportTrackPriority
  data, status_code, headers = api_instance.get_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackPriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->get_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **priority** | **String** | Priority |  |

### Return type

[**ReportTrackPriorityVBAResponse**](ReportTrackPriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_track_priority

> <ReportTrackPriorityListVBAResponse> list_report_track_priority(vbasoftware_database, report_definition_key, opts)

List ReportTrackPriority

Lists all ReportTrackPriority for the given ReportDefinition_Key

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportTrackPriority
  result = api_instance.list_report_track_priority(vbasoftware_database, report_definition_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->list_report_track_priority: #{e}"
end
```

#### Using the list_report_track_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackPriorityListVBAResponse>, Integer, Hash)> list_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, opts)

```ruby
begin
  # List ReportTrackPriority
  data, status_code, headers = api_instance.list_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackPriorityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->list_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportTrackPriorityListVBAResponse**](ReportTrackPriorityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_track_priority

> <MultiCodeResponseListVBAResponse> update_batch_report_track_priority(vbasoftware_database, report_definition_key, report_track_priority)

Create or Update Batch ReportTrackPriority

Create or Update multiple ReportTrackPriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_priority = [Vba::ReportTrackPriority.new({report_definition_key: 37, priority: 'priority_example', priority_default: false})] # Array<ReportTrackPriority> | 

begin
  # Create or Update Batch ReportTrackPriority
  result = api_instance.update_batch_report_track_priority(vbasoftware_database, report_definition_key, report_track_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->update_batch_report_track_priority: #{e}"
end
```

#### Using the update_batch_report_track_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, report_track_priority)

```ruby
begin
  # Create or Update Batch ReportTrackPriority
  data, status_code, headers = api_instance.update_batch_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, report_track_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->update_batch_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_priority** | [**Array&lt;ReportTrackPriority&gt;**](ReportTrackPriority.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_track_priority

> <ReportTrackPriorityVBAResponse> update_report_track_priority(vbasoftware_database, report_definition_key, priority, report_track_priority)

Update ReportTrackPriority

Updates a specific ReportTrackPriority.

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

api_instance = Vba::ReportTrackingPrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
priority = 'priority_example' # String | Priority
report_track_priority = Vba::ReportTrackPriority.new({report_definition_key: 37, priority: 'priority_example', priority_default: false}) # ReportTrackPriority | 

begin
  # Update ReportTrackPriority
  result = api_instance.update_report_track_priority(vbasoftware_database, report_definition_key, priority, report_track_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->update_report_track_priority: #{e}"
end
```

#### Using the update_report_track_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackPriorityVBAResponse>, Integer, Hash)> update_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority, report_track_priority)

```ruby
begin
  # Update ReportTrackPriority
  data, status_code, headers = api_instance.update_report_track_priority_with_http_info(vbasoftware_database, report_definition_key, priority, report_track_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackPriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingPrioritiesApi->update_report_track_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **priority** | **String** | Priority |  |
| **report_track_priority** | [**ReportTrackPriority**](ReportTrackPriority.md) |  |  |

### Return type

[**ReportTrackPriorityVBAResponse**](ReportTrackPriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

