# Vba::ReimburseSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reimburse_schedule**](ReimburseSchedulesApi.md#create_reimburse_schedule) | **POST** /reimburse-schedules | Create ReimburseSchedule |
| [**delete_reimburse_schedule**](ReimburseSchedulesApi.md#delete_reimburse_schedule) | **DELETE** /reimburse-schedules/{reimburseSchedule} | Delete ReimburseSchedule |
| [**get_reimburse_schedule**](ReimburseSchedulesApi.md#get_reimburse_schedule) | **GET** /reimburse-schedules/{reimburseSchedule} | Get ReimburseSchedule |
| [**list_reimburse_schedule**](ReimburseSchedulesApi.md#list_reimburse_schedule) | **GET** /reimburse-schedules | List ReimburseSchedule |
| [**update_batch_reimburse_schedule**](ReimburseSchedulesApi.md#update_batch_reimburse_schedule) | **PUT** /reimburse-schedules-batch | Create or Update Batch ReimburseSchedule |
| [**update_reimburse_schedule**](ReimburseSchedulesApi.md#update_reimburse_schedule) | **PUT** /reimburse-schedules/{reimburseSchedule} | Update ReimburseSchedule |


## create_reimburse_schedule

> <ReimburseScheduleVBAResponse> create_reimburse_schedule(vbasoftware_database, reimburse_schedule)

Create ReimburseSchedule

Creates a new ReimburseSchedule

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reimburse_schedule = Vba::ReimburseSchedule.new({reimburse_schedule: 'reimburse_schedule_example'}) # ReimburseSchedule | 

begin
  # Create ReimburseSchedule
  result = api_instance.create_reimburse_schedule(vbasoftware_database, reimburse_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->create_reimburse_schedule: #{e}"
end
```

#### Using the create_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReimburseScheduleVBAResponse>, Integer, Hash)> create_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)

```ruby
begin
  # Create ReimburseSchedule
  data, status_code, headers = api_instance.create_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReimburseScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->create_reimburse_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reimburse_schedule** | [**ReimburseSchedule**](ReimburseSchedule.md) |  |  |

### Return type

[**ReimburseScheduleVBAResponse**](ReimburseScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reimburse_schedule

> delete_reimburse_schedule(vbasoftware_database, reimburse_schedule)

Delete ReimburseSchedule

Deletes an ReimburseSchedule

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reimburse_schedule = 'reimburse_schedule_example' # String | Reimburse Schedule

begin
  # Delete ReimburseSchedule
  api_instance.delete_reimburse_schedule(vbasoftware_database, reimburse_schedule)
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->delete_reimburse_schedule: #{e}"
end
```

#### Using the delete_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)

```ruby
begin
  # Delete ReimburseSchedule
  data, status_code, headers = api_instance.delete_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->delete_reimburse_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reimburse_schedule** | **String** | Reimburse Schedule |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reimburse_schedule

> <ReimburseScheduleVBAResponse> get_reimburse_schedule(vbasoftware_database, reimburse_schedule)

Get ReimburseSchedule

Gets ReimburseSchedule

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reimburse_schedule = 'reimburse_schedule_example' # String | Reimburse Schedule

begin
  # Get ReimburseSchedule
  result = api_instance.get_reimburse_schedule(vbasoftware_database, reimburse_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->get_reimburse_schedule: #{e}"
end
```

#### Using the get_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReimburseScheduleVBAResponse>, Integer, Hash)> get_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)

```ruby
begin
  # Get ReimburseSchedule
  data, status_code, headers = api_instance.get_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReimburseScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->get_reimburse_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reimburse_schedule** | **String** | Reimburse Schedule |  |

### Return type

[**ReimburseScheduleVBAResponse**](ReimburseScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reimburse_schedule

> <ReimburseScheduleListVBAResponse> list_reimburse_schedule(vbasoftware_database, opts)

List ReimburseSchedule

Lists all ReimburseSchedule

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReimburseSchedule
  result = api_instance.list_reimburse_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->list_reimburse_schedule: #{e}"
end
```

#### Using the list_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReimburseScheduleListVBAResponse>, Integer, Hash)> list_reimburse_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReimburseSchedule
  data, status_code, headers = api_instance.list_reimburse_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReimburseScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->list_reimburse_schedule_with_http_info: #{e}"
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

[**ReimburseScheduleListVBAResponse**](ReimburseScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reimburse_schedule

> <MultiCodeResponseListVBAResponse> update_batch_reimburse_schedule(vbasoftware_database, reimburse_schedule)

Create or Update Batch ReimburseSchedule

Create or Update multiple ReimburseSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reimburse_schedule = [Vba::ReimburseSchedule.new({reimburse_schedule: 'reimburse_schedule_example'})] # Array<ReimburseSchedule> | 

begin
  # Create or Update Batch ReimburseSchedule
  result = api_instance.update_batch_reimburse_schedule(vbasoftware_database, reimburse_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->update_batch_reimburse_schedule: #{e}"
end
```

#### Using the update_batch_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)

```ruby
begin
  # Create or Update Batch ReimburseSchedule
  data, status_code, headers = api_instance.update_batch_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->update_batch_reimburse_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reimburse_schedule** | [**Array&lt;ReimburseSchedule&gt;**](ReimburseSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reimburse_schedule

> <ReimburseScheduleVBAResponse> update_reimburse_schedule(vbasoftware_database, reimburse_schedule, reimburse_schedule2)

Update ReimburseSchedule

Updates a specific ReimburseSchedule.

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

api_instance = Vba::ReimburseSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reimburse_schedule = 'reimburse_schedule_example' # String | Reimburse Schedule
reimburse_schedule2 = Vba::ReimburseSchedule.new({reimburse_schedule: 'reimburse_schedule_example'}) # ReimburseSchedule | 

begin
  # Update ReimburseSchedule
  result = api_instance.update_reimburse_schedule(vbasoftware_database, reimburse_schedule, reimburse_schedule2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->update_reimburse_schedule: #{e}"
end
```

#### Using the update_reimburse_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReimburseScheduleVBAResponse>, Integer, Hash)> update_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule, reimburse_schedule2)

```ruby
begin
  # Update ReimburseSchedule
  data, status_code, headers = api_instance.update_reimburse_schedule_with_http_info(vbasoftware_database, reimburse_schedule, reimburse_schedule2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReimburseScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReimburseSchedulesApi->update_reimburse_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reimburse_schedule** | **String** | Reimburse Schedule |  |
| **reimburse_schedule2** | [**ReimburseSchedule**](ReimburseSchedule.md) |  |  |

### Return type

[**ReimburseScheduleVBAResponse**](ReimburseScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

