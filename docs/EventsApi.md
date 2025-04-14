# Vba::EventsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event**](EventsApi.md#create_event) | **POST** /events | Create Event |
| [**delete_event**](EventsApi.md#delete_event) | **DELETE** /events/{eventID} | Delete Event |
| [**get_active_events_by_user**](EventsApi.md#get_active_events_by_user) | **GET** /users/{userId}/events | List Active User Events |
| [**get_event**](EventsApi.md#get_event) | **GET** /events/{eventID} | Get Event |
| [**list_claim_invoice_status**](EventsApi.md#list_claim_invoice_status) | **GET** /claim-invoice-statuses | List of Claim Invoice Statuses |
| [**list_days_of_week**](EventsApi.md#list_days_of_week) | **GET** /days-of-week | List Days Of Week |
| [**list_durations**](EventsApi.md#list_durations) | **GET** /durations | List Durations |
| [**list_event**](EventsApi.md#list_event) | **GET** /events | List Event |
| [**list_event_actions**](EventsApi.md#list_event_actions) | **GET** /event-actions | List Event Actions |
| [**list_months_of_year**](EventsApi.md#list_months_of_year) | **GET** /months-of-year | List Months Of Year |
| [**list_priorities**](EventsApi.md#list_priorities) | **GET** /priorities | List Priorities |
| [**list_report_args**](EventsApi.md#list_report_args) | **GET** /report-args | List Report Args |
| [**list_schedule_actions**](EventsApi.md#list_schedule_actions) | **GET** /schedule-actions | List Schedule Actions |
| [**list_schedule_interval_end_options**](EventsApi.md#list_schedule_interval_end_options) | **GET** /schedule-interval-end-options | List Schedule Interval End Options |
| [**list_schedule_interval_options**](EventsApi.md#list_schedule_interval_options) | **GET** /schedule-interval-options | List Schedule Interval Options |
| [**list_schedule_intervals**](EventsApi.md#list_schedule_intervals) | **GET** /schedule-intervals | List Schedule Intervals |
| [**list_snoozes**](EventsApi.md#list_snoozes) | **GET** /snoozes | List Snoozes |
| [**next_scheduled_date**](EventsApi.md#next_scheduled_date) | **POST** /events/{eventID}/schedules/{scheduleId}/next | Next Scheduled Date |
| [**reschedule_event**](EventsApi.md#reschedule_event) | **POST** /events/{eventID}/reschedule | Reschedule Event |
| [**snooze_event**](EventsApi.md#snooze_event) | **POST** /events/{eventID}/snooze | Snooze an Event |
| [**update_batch_event**](EventsApi.md#update_batch_event) | **PUT** /events-batch | Create or Update Batch Event |
| [**update_event**](EventsApi.md#update_event) | **PUT** /events/{eventID} | Update Event |


## create_event

> <EventVBAResponse> create_event(vbasoftware_database, event)

Create Event

Creates a new Event

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event = Vba::Event.new({event_id: 37, claim_audit_event: false, process_automation_event: false, reminder: false}) # Event | 

begin
  # Create Event
  result = api_instance.create_event(vbasoftware_database, event)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventVBAResponse>, Integer, Hash)> create_event_with_http_info(vbasoftware_database, event)

```ruby
begin
  # Create Event
  data, status_code, headers = api_instance.create_event_with_http_info(vbasoftware_database, event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event** | [**Event**](Event.md) |  |  |

### Return type

[**EventVBAResponse**](EventVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_event

> delete_event(vbasoftware_database, event_id)

Delete Event

Deletes an Event

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID

begin
  # Delete Event
  api_instance.delete_event(vbasoftware_database, event_id)
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->delete_event: #{e}"
end
```

#### Using the delete_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_event_with_http_info(vbasoftware_database, event_id)

```ruby
begin
  # Delete Event
  data, status_code, headers = api_instance.delete_event_with_http_info(vbasoftware_database, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->delete_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_active_events_by_user

> <EventListVBAResponse> get_active_events_by_user(vbasoftware_database, user_id)

List Active User Events

Retrieves a list of active Events for the specified User ID

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List Active User Events
  result = api_instance.get_active_events_by_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->get_active_events_by_user: #{e}"
end
```

#### Using the get_active_events_by_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListVBAResponse>, Integer, Hash)> get_active_events_by_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List Active User Events
  data, status_code, headers = api_instance.get_active_events_by_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->get_active_events_by_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**EventListVBAResponse**](EventListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_event

> <EventVBAResponse> get_event(vbasoftware_database, event_id)

Get Event

Gets Event

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID

begin
  # Get Event
  result = api_instance.get_event(vbasoftware_database, event_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventVBAResponse>, Integer, Hash)> get_event_with_http_info(vbasoftware_database, event_id)

```ruby
begin
  # Get Event
  data, status_code, headers = api_instance.get_event_with_http_info(vbasoftware_database, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |

### Return type

[**EventVBAResponse**](EventVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_status

> <StringStaticOptionListVBAResponse> list_claim_invoice_status(vbasoftware_database)

List of Claim Invoice Statuses

List of Claim Invoice Statuses

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List of Claim Invoice Statuses
  result = api_instance.list_claim_invoice_status(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_claim_invoice_status: #{e}"
end
```

#### Using the list_claim_invoice_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_claim_invoice_status_with_http_info(vbasoftware_database)

```ruby
begin
  # List of Claim Invoice Statuses
  data, status_code, headers = api_instance.list_claim_invoice_status_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_claim_invoice_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_days_of_week

> <Int32StaticOptionListVBAResponse> list_days_of_week(vbasoftware_database)

List Days Of Week

List Days Of Week

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Days Of Week
  result = api_instance.list_days_of_week(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_days_of_week: #{e}"
end
```

#### Using the list_days_of_week_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_days_of_week_with_http_info(vbasoftware_database)

```ruby
begin
  # List Days Of Week
  data, status_code, headers = api_instance.list_days_of_week_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_days_of_week_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_durations

> <Int32StaticOptionListVBAResponse> list_durations(vbasoftware_database)

List Durations

List Durations

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Durations
  result = api_instance.list_durations(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_durations: #{e}"
end
```

#### Using the list_durations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_durations_with_http_info(vbasoftware_database)

```ruby
begin
  # List Durations
  data, status_code, headers = api_instance.list_durations_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_durations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_event

> <EventListVBAResponse> list_event(vbasoftware_database, opts)

List Event

Lists all Event

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Event
  result = api_instance.list_event(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_event: #{e}"
end
```

#### Using the list_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListVBAResponse>, Integer, Hash)> list_event_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Event
  data, status_code, headers = api_instance.list_event_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_event_with_http_info: #{e}"
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

[**EventListVBAResponse**](EventListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_event_actions

> <Int32StaticOptionListVBAResponse> list_event_actions(vbasoftware_database)

List Event Actions

List Event Actions

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Event Actions
  result = api_instance.list_event_actions(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_event_actions: #{e}"
end
```

#### Using the list_event_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_event_actions_with_http_info(vbasoftware_database)

```ruby
begin
  # List Event Actions
  data, status_code, headers = api_instance.list_event_actions_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_event_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_months_of_year

> <Int32StaticOptionListVBAResponse> list_months_of_year(vbasoftware_database)

List Months Of Year

List Months Of Year

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Months Of Year
  result = api_instance.list_months_of_year(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_months_of_year: #{e}"
end
```

#### Using the list_months_of_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_months_of_year_with_http_info(vbasoftware_database)

```ruby
begin
  # List Months Of Year
  data, status_code, headers = api_instance.list_months_of_year_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_months_of_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_priorities

> <StringStaticOptionListVBAResponse> list_priorities(vbasoftware_database)

List Priorities

List Priorities

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Priorities
  result = api_instance.list_priorities(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_priorities: #{e}"
end
```

#### Using the list_priorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_priorities_with_http_info(vbasoftware_database)

```ruby
begin
  # List Priorities
  data, status_code, headers = api_instance.list_priorities_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_priorities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_args

> <StringStaticOptionListVBAResponse> list_report_args(vbasoftware_database)

List Report Args

List Report Args

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Report Args
  result = api_instance.list_report_args(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_report_args: #{e}"
end
```

#### Using the list_report_args_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_report_args_with_http_info(vbasoftware_database)

```ruby
begin
  # List Report Args
  data, status_code, headers = api_instance.list_report_args_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_report_args_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_schedule_actions

> <Int32StaticOptionListVBAResponse> list_schedule_actions(vbasoftware_database)

List Schedule Actions

List Schedule Actions

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Schedule Actions
  result = api_instance.list_schedule_actions(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_actions: #{e}"
end
```

#### Using the list_schedule_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_schedule_actions_with_http_info(vbasoftware_database)

```ruby
begin
  # List Schedule Actions
  data, status_code, headers = api_instance.list_schedule_actions_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_schedule_interval_end_options

> <Int32StaticOptionListVBAResponse> list_schedule_interval_end_options(vbasoftware_database)

List Schedule Interval End Options

List Schedule Interval End Options

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Schedule Interval End Options
  result = api_instance.list_schedule_interval_end_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_interval_end_options: #{e}"
end
```

#### Using the list_schedule_interval_end_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_schedule_interval_end_options_with_http_info(vbasoftware_database)

```ruby
begin
  # List Schedule Interval End Options
  data, status_code, headers = api_instance.list_schedule_interval_end_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_interval_end_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_schedule_interval_options

> <Int32StaticOptionListVBAResponse> list_schedule_interval_options(vbasoftware_database)

List Schedule Interval Options

List Schedule Interval Options

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Schedule Interval Options
  result = api_instance.list_schedule_interval_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_interval_options: #{e}"
end
```

#### Using the list_schedule_interval_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_schedule_interval_options_with_http_info(vbasoftware_database)

```ruby
begin
  # List Schedule Interval Options
  data, status_code, headers = api_instance.list_schedule_interval_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_interval_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_schedule_intervals

> <Int32StaticOptionListVBAResponse> list_schedule_intervals(vbasoftware_database)

List Schedule Intervals

List Schedule Intervals

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Schedule Intervals
  result = api_instance.list_schedule_intervals(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_intervals: #{e}"
end
```

#### Using the list_schedule_intervals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_schedule_intervals_with_http_info(vbasoftware_database)

```ruby
begin
  # List Schedule Intervals
  data, status_code, headers = api_instance.list_schedule_intervals_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_schedule_intervals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_snoozes

> <StringStaticOptionListVBAResponse> list_snoozes(vbasoftware_database)

List Snoozes

List Snoozes

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Snoozes
  result = api_instance.list_snoozes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_snoozes: #{e}"
end
```

#### Using the list_snoozes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_snoozes_with_http_info(vbasoftware_database)

```ruby
begin
  # List Snoozes
  data, status_code, headers = api_instance.list_snoozes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->list_snoozes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## next_scheduled_date

> <EventScheduleVBAResponse> next_scheduled_date(vbasoftware_database, event_id, schedule_id)

Next Scheduled Date

Move Event to the Next Scheduled Date. See ListEventSchedule to get all Schedule IDs for this Event.

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
schedule_id = 56 # Integer | Schedule ID

begin
  # Next Scheduled Date
  result = api_instance.next_scheduled_date(vbasoftware_database, event_id, schedule_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->next_scheduled_date: #{e}"
end
```

#### Using the next_scheduled_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventScheduleVBAResponse>, Integer, Hash)> next_scheduled_date_with_http_info(vbasoftware_database, event_id, schedule_id)

```ruby
begin
  # Next Scheduled Date
  data, status_code, headers = api_instance.next_scheduled_date_with_http_info(vbasoftware_database, event_id, schedule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->next_scheduled_date_with_http_info: #{e}"
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


## reschedule_event

> <EventVBAResponse> reschedule_event(vbasoftware_database, event_id)

Reschedule Event

Reschedule Event

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID

begin
  # Reschedule Event
  result = api_instance.reschedule_event(vbasoftware_database, event_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->reschedule_event: #{e}"
end
```

#### Using the reschedule_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventVBAResponse>, Integer, Hash)> reschedule_event_with_http_info(vbasoftware_database, event_id)

```ruby
begin
  # Reschedule Event
  data, status_code, headers = api_instance.reschedule_event_with_http_info(vbasoftware_database, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->reschedule_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |

### Return type

[**EventVBAResponse**](EventVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## snooze_event

> <EventVBAResponse> snooze_event(vbasoftware_database, event_id, snooze_duration)

Snooze an Event

Snooze an Event for the specified duration. See ListSnoozes for available snooze durations. Default snooze duration is 15 minutes.

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
snooze_duration = 'snooze_duration_example' # String | Snooze Duration

begin
  # Snooze an Event
  result = api_instance.snooze_event(vbasoftware_database, event_id, snooze_duration)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->snooze_event: #{e}"
end
```

#### Using the snooze_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventVBAResponse>, Integer, Hash)> snooze_event_with_http_info(vbasoftware_database, event_id, snooze_duration)

```ruby
begin
  # Snooze an Event
  data, status_code, headers = api_instance.snooze_event_with_http_info(vbasoftware_database, event_id, snooze_duration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->snooze_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **snooze_duration** | **String** | Snooze Duration | [default to &#39;SNOOZE_15_MIN&#39;] |

### Return type

[**EventVBAResponse**](EventVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_event

> <MultiCodeResponseListVBAResponse> update_batch_event(vbasoftware_database, event)

Create or Update Batch Event

Create or Update multiple Event at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event = [Vba::Event.new({event_id: 37, claim_audit_event: false, process_automation_event: false, reminder: false})] # Array<Event> | 

begin
  # Create or Update Batch Event
  result = api_instance.update_batch_event(vbasoftware_database, event)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->update_batch_event: #{e}"
end
```

#### Using the update_batch_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_event_with_http_info(vbasoftware_database, event)

```ruby
begin
  # Create or Update Batch Event
  data, status_code, headers = api_instance.update_batch_event_with_http_info(vbasoftware_database, event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->update_batch_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event** | [**Array&lt;Event&gt;**](Event.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_event

> <EventVBAResponse> update_event(vbasoftware_database, event_id, event)

Update Event

Updates a specific Event.

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

api_instance = Vba::EventsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
event = Vba::Event.new({event_id: 37, claim_audit_event: false, process_automation_event: false, reminder: false}) # Event | 

begin
  # Update Event
  result = api_instance.update_event(vbasoftware_database, event_id, event)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->update_event: #{e}"
end
```

#### Using the update_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventVBAResponse>, Integer, Hash)> update_event_with_http_info(vbasoftware_database, event_id, event)

```ruby
begin
  # Update Event
  data, status_code, headers = api_instance.update_event_with_http_info(vbasoftware_database, event_id, event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventsApi->update_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **event** | [**Event**](Event.md) |  |  |

### Return type

[**EventVBAResponse**](EventVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

