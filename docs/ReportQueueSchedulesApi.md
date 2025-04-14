# Vba::ReportQueueSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_queue_schedule**](ReportQueueSchedulesApi.md#create_report_queue_schedule) | **POST** /report-queue-schedules | Create ReportQueueSchedule |
| [**delete_report_queue_schedule**](ReportQueueSchedulesApi.md#delete_report_queue_schedule) | **DELETE** /report-queue-schedules/{reportQueueScheduleKey} | Delete ReportQueueSchedule |
| [**get_report_queue_schedule**](ReportQueueSchedulesApi.md#get_report_queue_schedule) | **GET** /report-queue-schedules/{reportQueueScheduleKey} | Get ReportQueueSchedule |
| [**list_report_queue_schedule**](ReportQueueSchedulesApi.md#list_report_queue_schedule) | **GET** /report-queue-schedules | List ReportQueueSchedule |
| [**update_batch_report_queue_schedule**](ReportQueueSchedulesApi.md#update_batch_report_queue_schedule) | **PUT** /report-queue-schedules-batch | Create or Update Batch ReportQueueSchedule |
| [**update_report_queue_schedule**](ReportQueueSchedulesApi.md#update_report_queue_schedule) | **PUT** /report-queue-schedules/{reportQueueScheduleKey} | Update ReportQueueSchedule |


## create_report_queue_schedule

> <ReportQueueScheduleVBAResponse> create_report_queue_schedule(vbasoftware_database, report_queue_schedule)

Create ReportQueueSchedule

Creates a new ReportQueueSchedule

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_schedule = Vba::ReportQueueSchedule.new({report_queue_schedule_key: 37, event_id: 37, report_queue_key: 37}) # ReportQueueSchedule | 

begin
  # Create ReportQueueSchedule
  result = api_instance.create_report_queue_schedule(vbasoftware_database, report_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->create_report_queue_schedule: #{e}"
end
```

#### Using the create_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueScheduleVBAResponse>, Integer, Hash)> create_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule)

```ruby
begin
  # Create ReportQueueSchedule
  data, status_code, headers = api_instance.create_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->create_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_schedule** | [**ReportQueueSchedule**](ReportQueueSchedule.md) |  |  |

### Return type

[**ReportQueueScheduleVBAResponse**](ReportQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_queue_schedule

> delete_report_queue_schedule(vbasoftware_database, report_queue_schedule_key)

Delete ReportQueueSchedule

Deletes an ReportQueueSchedule

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_schedule_key = 56 # Integer | ReportQueueSchedule Key

begin
  # Delete ReportQueueSchedule
  api_instance.delete_report_queue_schedule(vbasoftware_database, report_queue_schedule_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->delete_report_queue_schedule: #{e}"
end
```

#### Using the delete_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key)

```ruby
begin
  # Delete ReportQueueSchedule
  data, status_code, headers = api_instance.delete_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->delete_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_schedule_key** | **Integer** | ReportQueueSchedule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_queue_schedule

> <ReportQueueScheduleVBAResponse> get_report_queue_schedule(vbasoftware_database, report_queue_schedule_key)

Get ReportQueueSchedule

Gets ReportQueueSchedule

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_schedule_key = 56 # Integer | ReportQueueSchedule Key

begin
  # Get ReportQueueSchedule
  result = api_instance.get_report_queue_schedule(vbasoftware_database, report_queue_schedule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->get_report_queue_schedule: #{e}"
end
```

#### Using the get_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueScheduleVBAResponse>, Integer, Hash)> get_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key)

```ruby
begin
  # Get ReportQueueSchedule
  data, status_code, headers = api_instance.get_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->get_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_schedule_key** | **Integer** | ReportQueueSchedule Key |  |

### Return type

[**ReportQueueScheduleVBAResponse**](ReportQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_queue_schedule

> <ReportQueueScheduleListVBAResponse> list_report_queue_schedule(vbasoftware_database, opts)

List ReportQueueSchedule

Lists all ReportQueueSchedule

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  report_queue_key: 56, # Integer | Filter by ReportQueue_Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportQueueSchedule
  result = api_instance.list_report_queue_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->list_report_queue_schedule: #{e}"
end
```

#### Using the list_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueScheduleListVBAResponse>, Integer, Hash)> list_report_queue_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportQueueSchedule
  data, status_code, headers = api_instance.list_report_queue_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->list_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | Filter by ReportQueue_Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportQueueScheduleListVBAResponse**](ReportQueueScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_queue_schedule

> <MultiCodeResponseListVBAResponse> update_batch_report_queue_schedule(vbasoftware_database, report_queue_schedule)

Create or Update Batch ReportQueueSchedule

Create or Update multiple ReportQueueSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_schedule = [Vba::ReportQueueSchedule.new({report_queue_schedule_key: 37, event_id: 37, report_queue_key: 37})] # Array<ReportQueueSchedule> | 

begin
  # Create or Update Batch ReportQueueSchedule
  result = api_instance.update_batch_report_queue_schedule(vbasoftware_database, report_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->update_batch_report_queue_schedule: #{e}"
end
```

#### Using the update_batch_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule)

```ruby
begin
  # Create or Update Batch ReportQueueSchedule
  data, status_code, headers = api_instance.update_batch_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->update_batch_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_schedule** | [**Array&lt;ReportQueueSchedule&gt;**](ReportQueueSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_queue_schedule

> <ReportQueueScheduleVBAResponse> update_report_queue_schedule(vbasoftware_database, report_queue_schedule_key, report_queue_schedule)

Update ReportQueueSchedule

Updates a specific ReportQueueSchedule.

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

api_instance = Vba::ReportQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_schedule_key = 56 # Integer | ReportQueueSchedule Key
report_queue_schedule = Vba::ReportQueueSchedule.new({report_queue_schedule_key: 37, event_id: 37, report_queue_key: 37}) # ReportQueueSchedule | 

begin
  # Update ReportQueueSchedule
  result = api_instance.update_report_queue_schedule(vbasoftware_database, report_queue_schedule_key, report_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->update_report_queue_schedule: #{e}"
end
```

#### Using the update_report_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueScheduleVBAResponse>, Integer, Hash)> update_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key, report_queue_schedule)

```ruby
begin
  # Update ReportQueueSchedule
  data, status_code, headers = api_instance.update_report_queue_schedule_with_http_info(vbasoftware_database, report_queue_schedule_key, report_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueSchedulesApi->update_report_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_schedule_key** | **Integer** | ReportQueueSchedule Key |  |
| **report_queue_schedule** | [**ReportQueueSchedule**](ReportQueueSchedule.md) |  |  |

### Return type

[**ReportQueueScheduleVBAResponse**](ReportQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

