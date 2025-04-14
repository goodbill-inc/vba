# Vba::ReportTrackingStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_track_status**](ReportTrackingStatusesApi.md#create_report_track_status) | **POST** /report-definitions/{reportDefinitionKey}/tracking-statuses | Create ReportTrackStatus |
| [**delete_report_track_status**](ReportTrackingStatusesApi.md#delete_report_track_status) | **DELETE** /report-definitions/{reportDefinitionKey}/tracking-statuses/{trackingStatus} | Delete ReportTrackStatus |
| [**get_report_track_status**](ReportTrackingStatusesApi.md#get_report_track_status) | **GET** /report-definitions/{reportDefinitionKey}/tracking-statuses/{trackingStatus} | Get ReportTrackStatus |
| [**list_report_track_status**](ReportTrackingStatusesApi.md#list_report_track_status) | **GET** /report-definitions/{reportDefinitionKey}/tracking-statuses | List ReportTrackStatus |
| [**update_batch_report_track_status**](ReportTrackingStatusesApi.md#update_batch_report_track_status) | **PUT** /report-definitions/{reportDefinitionKey}/tracking-statuses-batch | Create or Update Batch ReportTrackStatus |
| [**update_report_track_status**](ReportTrackingStatusesApi.md#update_report_track_status) | **PUT** /report-definitions/{reportDefinitionKey}/tracking-statuses/{trackingStatus} | Update ReportTrackStatus |


## create_report_track_status

> <ReportTrackStatusVBAResponse> create_report_track_status(vbasoftware_database, report_definition_key, report_track_status)

Create ReportTrackStatus

Creates a new ReportTrackStatus

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_status = Vba::ReportTrackStatus.new({report_definition_key: 37, tracking_status: 'tracking_status_example', status_default: false}) # ReportTrackStatus | 

begin
  # Create ReportTrackStatus
  result = api_instance.create_report_track_status(vbasoftware_database, report_definition_key, report_track_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->create_report_track_status: #{e}"
end
```

#### Using the create_report_track_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackStatusVBAResponse>, Integer, Hash)> create_report_track_status_with_http_info(vbasoftware_database, report_definition_key, report_track_status)

```ruby
begin
  # Create ReportTrackStatus
  data, status_code, headers = api_instance.create_report_track_status_with_http_info(vbasoftware_database, report_definition_key, report_track_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->create_report_track_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_status** | [**ReportTrackStatus**](ReportTrackStatus.md) |  |  |

### Return type

[**ReportTrackStatusVBAResponse**](ReportTrackStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_track_status

> delete_report_track_status(vbasoftware_database, report_definition_key, tracking_status)

Delete ReportTrackStatus

Deletes an ReportTrackStatus

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
tracking_status = 'tracking_status_example' # String | Tracking Status

begin
  # Delete ReportTrackStatus
  api_instance.delete_report_track_status(vbasoftware_database, report_definition_key, tracking_status)
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->delete_report_track_status: #{e}"
end
```

#### Using the delete_report_track_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status)

```ruby
begin
  # Delete ReportTrackStatus
  data, status_code, headers = api_instance.delete_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->delete_report_track_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **tracking_status** | **String** | Tracking Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_track_status

> <ReportTrackStatusVBAResponse> get_report_track_status(vbasoftware_database, report_definition_key, tracking_status)

Get ReportTrackStatus

Gets ReportTrackStatus

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
tracking_status = 'tracking_status_example' # String | Tracking Status

begin
  # Get ReportTrackStatus
  result = api_instance.get_report_track_status(vbasoftware_database, report_definition_key, tracking_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->get_report_track_status: #{e}"
end
```

#### Using the get_report_track_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackStatusVBAResponse>, Integer, Hash)> get_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status)

```ruby
begin
  # Get ReportTrackStatus
  data, status_code, headers = api_instance.get_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->get_report_track_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **tracking_status** | **String** | Tracking Status |  |

### Return type

[**ReportTrackStatusVBAResponse**](ReportTrackStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_track_status

> <ReportTrackStatusListVBAResponse> list_report_track_status(vbasoftware_database, report_definition_key, opts)

List ReportTrackStatus

Lists all ReportTrackStatus for the given reportDefinitionKey

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportTrackStatus
  result = api_instance.list_report_track_status(vbasoftware_database, report_definition_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->list_report_track_status: #{e}"
end
```

#### Using the list_report_track_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackStatusListVBAResponse>, Integer, Hash)> list_report_track_status_with_http_info(vbasoftware_database, report_definition_key, opts)

```ruby
begin
  # List ReportTrackStatus
  data, status_code, headers = api_instance.list_report_track_status_with_http_info(vbasoftware_database, report_definition_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->list_report_track_status_with_http_info: #{e}"
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

[**ReportTrackStatusListVBAResponse**](ReportTrackStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_track_status

> <MultiCodeResponseListVBAResponse> update_batch_report_track_status(vbasoftware_database, report_definition_key, report_track_status)

Create or Update Batch ReportTrackStatus

Create or Update multiple ReportTrackStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_status = [Vba::ReportTrackStatus.new({report_definition_key: 37, tracking_status: 'tracking_status_example', status_default: false})] # Array<ReportTrackStatus> | 

begin
  # Create or Update Batch ReportTrackStatus
  result = api_instance.update_batch_report_track_status(vbasoftware_database, report_definition_key, report_track_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->update_batch_report_track_status: #{e}"
end
```

#### Using the update_batch_report_track_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_track_status_with_http_info(vbasoftware_database, report_definition_key, report_track_status)

```ruby
begin
  # Create or Update Batch ReportTrackStatus
  data, status_code, headers = api_instance.update_batch_report_track_status_with_http_info(vbasoftware_database, report_definition_key, report_track_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->update_batch_report_track_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_status** | [**Array&lt;ReportTrackStatus&gt;**](ReportTrackStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_track_status

> <ReportTrackStatusVBAResponse> update_report_track_status(vbasoftware_database, report_definition_key, tracking_status, report_track_status)

Update ReportTrackStatus

Updates a specific ReportTrackStatus.

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

api_instance = Vba::ReportTrackingStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
tracking_status = 'tracking_status_example' # String | Tracking Status
report_track_status = Vba::ReportTrackStatus.new({report_definition_key: 37, tracking_status: 'tracking_status_example', status_default: false}) # ReportTrackStatus | 

begin
  # Update ReportTrackStatus
  result = api_instance.update_report_track_status(vbasoftware_database, report_definition_key, tracking_status, report_track_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->update_report_track_status: #{e}"
end
```

#### Using the update_report_track_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackStatusVBAResponse>, Integer, Hash)> update_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status, report_track_status)

```ruby
begin
  # Update ReportTrackStatus
  data, status_code, headers = api_instance.update_report_track_status_with_http_info(vbasoftware_database, report_definition_key, tracking_status, report_track_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingStatusesApi->update_report_track_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **tracking_status** | **String** | Tracking Status |  |
| **report_track_status** | [**ReportTrackStatus**](ReportTrackStatus.md) |  |  |

### Return type

[**ReportTrackStatusVBAResponse**](ReportTrackStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

