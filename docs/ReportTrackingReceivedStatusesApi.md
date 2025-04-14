# Vba::ReportTrackingReceivedStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#create_report_track_received_status) | **POST** /report-definitions/{reportDefinitionKey}/received-statuses | Create ReportTrackReceivedStatus |
| [**delete_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#delete_report_track_received_status) | **DELETE** /report-definitions/{reportDefinitionKey}/received-statuses/{receivedStatus} | Delete ReportTrackReceivedStatus |
| [**get_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#get_report_track_received_status) | **GET** /report-definitions/{reportDefinitionKey}/received-statuses/{receivedStatus} | Get ReportTrackReceivedStatus |
| [**list_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#list_report_track_received_status) | **GET** /report-definitions/{reportDefinitionKey}/received-statuses | List ReportTrackReceivedStatus |
| [**update_batch_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#update_batch_report_track_received_status) | **PUT** /report-definitions/{reportDefinitionKey}/received-statuses-batch | Create or Update Batch ReportTrackReceivedStatus |
| [**update_report_track_received_status**](ReportTrackingReceivedStatusesApi.md#update_report_track_received_status) | **PUT** /report-definitions/{reportDefinitionKey}/received-statuses/{receivedStatus} | Update ReportTrackReceivedStatus |


## create_report_track_received_status

> <ReportTrackReceivedStatusVBAResponse> create_report_track_received_status(vbasoftware_database, report_definition_key, report_track_received_status)

Create ReportTrackReceivedStatus

Creates a new ReportTrackReceivedStatus

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_received_status = Vba::ReportTrackReceivedStatus.new({report_definition_key: 37, received_status: 'received_status_example', status_default: false}) # ReportTrackReceivedStatus | 

begin
  # Create ReportTrackReceivedStatus
  result = api_instance.create_report_track_received_status(vbasoftware_database, report_definition_key, report_track_received_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->create_report_track_received_status: #{e}"
end
```

#### Using the create_report_track_received_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackReceivedStatusVBAResponse>, Integer, Hash)> create_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, report_track_received_status)

```ruby
begin
  # Create ReportTrackReceivedStatus
  data, status_code, headers = api_instance.create_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, report_track_received_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackReceivedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->create_report_track_received_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_received_status** | [**ReportTrackReceivedStatus**](ReportTrackReceivedStatus.md) |  |  |

### Return type

[**ReportTrackReceivedStatusVBAResponse**](ReportTrackReceivedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_track_received_status

> delete_report_track_received_status(vbasoftware_database, report_definition_key, received_status)

Delete ReportTrackReceivedStatus

Deletes an ReportTrackReceivedStatus

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
received_status = 'received_status_example' # String | Received Status

begin
  # Delete ReportTrackReceivedStatus
  api_instance.delete_report_track_received_status(vbasoftware_database, report_definition_key, received_status)
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->delete_report_track_received_status: #{e}"
end
```

#### Using the delete_report_track_received_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status)

```ruby
begin
  # Delete ReportTrackReceivedStatus
  data, status_code, headers = api_instance.delete_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->delete_report_track_received_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **received_status** | **String** | Received Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_track_received_status

> <ReportTrackReceivedStatusVBAResponse> get_report_track_received_status(vbasoftware_database, report_definition_key, received_status)

Get ReportTrackReceivedStatus

Gets ReportTrackReceivedStatus

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
received_status = 'received_status_example' # String | Received Status

begin
  # Get ReportTrackReceivedStatus
  result = api_instance.get_report_track_received_status(vbasoftware_database, report_definition_key, received_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->get_report_track_received_status: #{e}"
end
```

#### Using the get_report_track_received_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackReceivedStatusVBAResponse>, Integer, Hash)> get_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status)

```ruby
begin
  # Get ReportTrackReceivedStatus
  data, status_code, headers = api_instance.get_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackReceivedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->get_report_track_received_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **received_status** | **String** | Received Status |  |

### Return type

[**ReportTrackReceivedStatusVBAResponse**](ReportTrackReceivedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_track_received_status

> <ReportTrackReceivedStatusListVBAResponse> list_report_track_received_status(vbasoftware_database, report_definition_key, opts)

List ReportTrackReceivedStatus

Lists all ReportTrackReceivedStatus for the given ReportDefinition_Key

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportTrackReceivedStatus
  result = api_instance.list_report_track_received_status(vbasoftware_database, report_definition_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->list_report_track_received_status: #{e}"
end
```

#### Using the list_report_track_received_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackReceivedStatusListVBAResponse>, Integer, Hash)> list_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, opts)

```ruby
begin
  # List ReportTrackReceivedStatus
  data, status_code, headers = api_instance.list_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackReceivedStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->list_report_track_received_status_with_http_info: #{e}"
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

[**ReportTrackReceivedStatusListVBAResponse**](ReportTrackReceivedStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_track_received_status

> <MultiCodeResponseListVBAResponse> update_batch_report_track_received_status(vbasoftware_database, report_definition_key, report_track_received_status)

Create or Update Batch ReportTrackReceivedStatus

Create or Update multiple ReportTrackReceivedStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_received_status = [Vba::ReportTrackReceivedStatus.new({report_definition_key: 37, received_status: 'received_status_example', status_default: false})] # Array<ReportTrackReceivedStatus> | 

begin
  # Create or Update Batch ReportTrackReceivedStatus
  result = api_instance.update_batch_report_track_received_status(vbasoftware_database, report_definition_key, report_track_received_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->update_batch_report_track_received_status: #{e}"
end
```

#### Using the update_batch_report_track_received_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, report_track_received_status)

```ruby
begin
  # Create or Update Batch ReportTrackReceivedStatus
  data, status_code, headers = api_instance.update_batch_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, report_track_received_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->update_batch_report_track_received_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_received_status** | [**Array&lt;ReportTrackReceivedStatus&gt;**](ReportTrackReceivedStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_track_received_status

> <ReportTrackReceivedStatusVBAResponse> update_report_track_received_status(vbasoftware_database, report_definition_key, received_status, report_track_received_status)

Update ReportTrackReceivedStatus

Updates a specific ReportTrackReceivedStatus.

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

api_instance = Vba::ReportTrackingReceivedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
received_status = 'received_status_example' # String | Received Status
report_track_received_status = Vba::ReportTrackReceivedStatus.new({report_definition_key: 37, received_status: 'received_status_example', status_default: false}) # ReportTrackReceivedStatus | 

begin
  # Update ReportTrackReceivedStatus
  result = api_instance.update_report_track_received_status(vbasoftware_database, report_definition_key, received_status, report_track_received_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->update_report_track_received_status: #{e}"
end
```

#### Using the update_report_track_received_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackReceivedStatusVBAResponse>, Integer, Hash)> update_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status, report_track_received_status)

```ruby
begin
  # Update ReportTrackReceivedStatus
  data, status_code, headers = api_instance.update_report_track_received_status_with_http_info(vbasoftware_database, report_definition_key, received_status, report_track_received_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackReceivedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingReceivedStatusesApi->update_report_track_received_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **received_status** | **String** | Received Status |  |
| **report_track_received_status** | [**ReportTrackReceivedStatus**](ReportTrackReceivedStatus.md) |  |  |

### Return type

[**ReportTrackReceivedStatusVBAResponse**](ReportTrackReceivedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

