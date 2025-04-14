# Vba::EventSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event_schedule**](EventSchedulesApi.md#create_event_schedule) | **POST** /events/{eventID}/schedules | Create EventSchedule |
| [**delete_event_schedule**](EventSchedulesApi.md#delete_event_schedule) | **DELETE** /events/{eventID}/schedules/{scheduleID} | Delete EventSchedule |
| [**get_event_schedule**](EventSchedulesApi.md#get_event_schedule) | **GET** /events/{eventID}/schedules/{scheduleID} | Get EventSchedule |
| [**list_event_schedule**](EventSchedulesApi.md#list_event_schedule) | **GET** /events/{eventID}/schedules | List EventSchedule |
| [**update_batch_event_schedule**](EventSchedulesApi.md#update_batch_event_schedule) | **PUT** /events/{eventID}/schedules-batch | Create or Update Batch EventSchedule |
| [**update_event_schedule**](EventSchedulesApi.md#update_event_schedule) | **PUT** /events/{eventID}/schedules/{scheduleID} | Update EventSchedule |


## create_event_schedule

> <EventScheduleVBAResponse> create_event_schedule(vbasoftware_database, event_id, event_schedule)

Create EventSchedule

Creates a new EventSchedule

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
event_schedule = Vba::EventSchedule.new({schedule_id: 37, event_id: 37, friday: false, monday: false, play_sound: false, regenerate_event: false, saturday: false, sunday: false, thursday: false, tuesday: false, wednesday: false}) # EventSchedule | 

begin
  # Create EventSchedule
  result = api_instance.create_event_schedule(vbasoftware_database, event_id, event_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->create_event_schedule: #{e}"
end
```

#### Using the create_event_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventScheduleVBAResponse>, Integer, Hash)> create_event_schedule_with_http_info(vbasoftware_database, event_id, event_schedule)

```ruby
begin
  # Create EventSchedule
  data, status_code, headers = api_instance.create_event_schedule_with_http_info(vbasoftware_database, event_id, event_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->create_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **event_schedule** | [**EventSchedule**](EventSchedule.md) |  |  |

### Return type

[**EventScheduleVBAResponse**](EventScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_event_schedule

> delete_event_schedule(vbasoftware_database, event_id, schedule_id)

Delete EventSchedule

Deletes an EventSchedule

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
schedule_id = 56 # Integer | Schedule ID

begin
  # Delete EventSchedule
  api_instance.delete_event_schedule(vbasoftware_database, event_id, schedule_id)
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->delete_event_schedule: #{e}"
end
```

#### Using the delete_event_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id)

```ruby
begin
  # Delete EventSchedule
  data, status_code, headers = api_instance.delete_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->delete_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **schedule_id** | **Integer** | Schedule ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_event_schedule

> <EventScheduleVBAResponse> get_event_schedule(vbasoftware_database, event_id, schedule_id)

Get EventSchedule

Gets EventSchedule

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
schedule_id = 56 # Integer | Schedule ID

begin
  # Get EventSchedule
  result = api_instance.get_event_schedule(vbasoftware_database, event_id, schedule_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->get_event_schedule: #{e}"
end
```

#### Using the get_event_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventScheduleVBAResponse>, Integer, Hash)> get_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id)

```ruby
begin
  # Get EventSchedule
  data, status_code, headers = api_instance.get_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->get_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **schedule_id** | **Integer** | Schedule ID |  |

### Return type

[**EventScheduleVBAResponse**](EventScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_event_schedule

> <EventScheduleListVBAResponse> list_event_schedule(vbasoftware_database, event_id, opts)

List EventSchedule

Lists all EventSchedule for a given Event ID

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EventSchedule
  result = api_instance.list_event_schedule(vbasoftware_database, event_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->list_event_schedule: #{e}"
end
```

#### Using the list_event_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventScheduleListVBAResponse>, Integer, Hash)> list_event_schedule_with_http_info(vbasoftware_database, event_id, opts)

```ruby
begin
  # List EventSchedule
  data, status_code, headers = api_instance.list_event_schedule_with_http_info(vbasoftware_database, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->list_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**EventScheduleListVBAResponse**](EventScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_event_schedule

> <MultiCodeResponseListVBAResponse> update_batch_event_schedule(vbasoftware_database, event_id, event_schedule)

Create or Update Batch EventSchedule

Create or Update multiple EventSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
event_schedule = [Vba::EventSchedule.new({schedule_id: 37, event_id: 37, friday: false, monday: false, play_sound: false, regenerate_event: false, saturday: false, sunday: false, thursday: false, tuesday: false, wednesday: false})] # Array<EventSchedule> | 

begin
  # Create or Update Batch EventSchedule
  result = api_instance.update_batch_event_schedule(vbasoftware_database, event_id, event_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->update_batch_event_schedule: #{e}"
end
```

#### Using the update_batch_event_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_event_schedule_with_http_info(vbasoftware_database, event_id, event_schedule)

```ruby
begin
  # Create or Update Batch EventSchedule
  data, status_code, headers = api_instance.update_batch_event_schedule_with_http_info(vbasoftware_database, event_id, event_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->update_batch_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **event_schedule** | [**Array&lt;EventSchedule&gt;**](EventSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_event_schedule

> <EventScheduleVBAResponse> update_event_schedule(vbasoftware_database, event_id, schedule_id, event_schedule)

Update EventSchedule

Updates a specific EventSchedule.

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

api_instance = Vba::EventSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
schedule_id = 56 # Integer | Schedule ID
event_schedule = Vba::EventSchedule.new({schedule_id: 37, event_id: 37, friday: false, monday: false, play_sound: false, regenerate_event: false, saturday: false, sunday: false, thursday: false, tuesday: false, wednesday: false}) # EventSchedule | 

begin
  # Update EventSchedule
  result = api_instance.update_event_schedule(vbasoftware_database, event_id, schedule_id, event_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->update_event_schedule: #{e}"
end
```

#### Using the update_event_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventScheduleVBAResponse>, Integer, Hash)> update_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id, event_schedule)

```ruby
begin
  # Update EventSchedule
  data, status_code, headers = api_instance.update_event_schedule_with_http_info(vbasoftware_database, event_id, schedule_id, event_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventSchedulesApi->update_event_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **schedule_id** | **Integer** | Schedule ID |  |
| **event_schedule** | [**EventSchedule**](EventSchedule.md) |  |  |

### Return type

[**EventScheduleVBAResponse**](EventScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

