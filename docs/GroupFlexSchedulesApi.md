# Vba::GroupFlexSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_flex_schedule**](GroupFlexSchedulesApi.md#create_group_flex_schedule) | **POST** /groups/{groupID}/flex-schedules | Create GroupFlexSchedule |
| [**delete_group_flex_schedule**](GroupFlexSchedulesApi.md#delete_group_flex_schedule) | **DELETE** /groups/{groupID}/flex-schedules/{groupFlexScheduleKey} | Delete GroupFlexSchedule |
| [**get_group_flex_schedule**](GroupFlexSchedulesApi.md#get_group_flex_schedule) | **GET** /groups/{groupID}/flex-schedules/{groupFlexScheduleKey} | Get GroupFlexSchedule |
| [**list_group_flex_schedule**](GroupFlexSchedulesApi.md#list_group_flex_schedule) | **GET** /groups/{groupID}/flex-schedules | List GroupFlexSchedule |
| [**update_batch_group_flex_schedule**](GroupFlexSchedulesApi.md#update_batch_group_flex_schedule) | **PUT** /groups/{groupID}/flex-schedules-batch | Create or Update Batch GroupFlexSchedule |
| [**update_group_flex_schedule**](GroupFlexSchedulesApi.md#update_group_flex_schedule) | **PUT** /groups/{groupID}/flex-schedules/{groupFlexScheduleKey} | Update GroupFlexSchedule |


## create_group_flex_schedule

> <GroupFlexScheduleVBAResponse> create_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule)

Create GroupFlexSchedule

Creates a new GroupFlexSchedule

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_schedule = Vba::GroupFlexSchedule.new({group_flex_schedule_key: 37, calendar_year: 'calendar_year_example', group_id: 'group_id_example', plan_id: 'plan_id_example', schedule_date: Time.now, schedule_type: 'schedule_type_example'}) # GroupFlexSchedule | 

begin
  # Create GroupFlexSchedule
  result = api_instance.create_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->create_group_flex_schedule: #{e}"
end
```

#### Using the create_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexScheduleVBAResponse>, Integer, Hash)> create_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule)

```ruby
begin
  # Create GroupFlexSchedule
  data, status_code, headers = api_instance.create_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->create_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_schedule** | [**GroupFlexSchedule**](GroupFlexSchedule.md) |  |  |

### Return type

[**GroupFlexScheduleVBAResponse**](GroupFlexScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_flex_schedule

> delete_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key)

Delete GroupFlexSchedule

Deletes an GroupFlexSchedule

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_schedule_key = 56 # Integer | GroupFlexSchedule Key

begin
  # Delete GroupFlexSchedule
  api_instance.delete_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->delete_group_flex_schedule: #{e}"
end
```

#### Using the delete_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key)

```ruby
begin
  # Delete GroupFlexSchedule
  data, status_code, headers = api_instance.delete_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->delete_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_schedule_key** | **Integer** | GroupFlexSchedule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_flex_schedule

> <GroupFlexScheduleVBAResponse> get_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key)

Get GroupFlexSchedule

Gets GroupFlexSchedule

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_schedule_key = 56 # Integer | GroupFlexSchedule Key

begin
  # Get GroupFlexSchedule
  result = api_instance.get_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->get_group_flex_schedule: #{e}"
end
```

#### Using the get_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexScheduleVBAResponse>, Integer, Hash)> get_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key)

```ruby
begin
  # Get GroupFlexSchedule
  data, status_code, headers = api_instance.get_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->get_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_schedule_key** | **Integer** | GroupFlexSchedule Key |  |

### Return type

[**GroupFlexScheduleVBAResponse**](GroupFlexScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_flex_schedule

> <GroupFlexScheduleListVBAResponse> list_group_flex_schedule(vbasoftware_database, group_id, opts)

List GroupFlexSchedule

Lists all GroupFlexSchedule for the given groupID

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupFlexSchedule
  result = api_instance.list_group_flex_schedule(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->list_group_flex_schedule: #{e}"
end
```

#### Using the list_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexScheduleListVBAResponse>, Integer, Hash)> list_group_flex_schedule_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupFlexSchedule
  data, status_code, headers = api_instance.list_group_flex_schedule_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->list_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupFlexScheduleListVBAResponse**](GroupFlexScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_flex_schedule

> <MultiCodeResponseListVBAResponse> update_batch_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule)

Create or Update Batch GroupFlexSchedule

Create or Update multiple GroupFlexSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_schedule = [Vba::GroupFlexSchedule.new({group_flex_schedule_key: 37, calendar_year: 'calendar_year_example', group_id: 'group_id_example', plan_id: 'plan_id_example', schedule_date: Time.now, schedule_type: 'schedule_type_example'})] # Array<GroupFlexSchedule> | 

begin
  # Create or Update Batch GroupFlexSchedule
  result = api_instance.update_batch_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->update_batch_group_flex_schedule: #{e}"
end
```

#### Using the update_batch_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule)

```ruby
begin
  # Create or Update Batch GroupFlexSchedule
  data, status_code, headers = api_instance.update_batch_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->update_batch_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_schedule** | [**Array&lt;GroupFlexSchedule&gt;**](GroupFlexSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_flex_schedule

> <GroupFlexScheduleVBAResponse> update_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key, group_flex_schedule)

Update GroupFlexSchedule

Updates a specific GroupFlexSchedule.

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

api_instance = Vba::GroupFlexSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_schedule_key = 56 # Integer | GroupFlexSchedule Key
group_flex_schedule = Vba::GroupFlexSchedule.new({group_flex_schedule_key: 37, calendar_year: 'calendar_year_example', group_id: 'group_id_example', plan_id: 'plan_id_example', schedule_date: Time.now, schedule_type: 'schedule_type_example'}) # GroupFlexSchedule | 

begin
  # Update GroupFlexSchedule
  result = api_instance.update_group_flex_schedule(vbasoftware_database, group_id, group_flex_schedule_key, group_flex_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->update_group_flex_schedule: #{e}"
end
```

#### Using the update_group_flex_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexScheduleVBAResponse>, Integer, Hash)> update_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key, group_flex_schedule)

```ruby
begin
  # Update GroupFlexSchedule
  data, status_code, headers = api_instance.update_group_flex_schedule_with_http_info(vbasoftware_database, group_id, group_flex_schedule_key, group_flex_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexSchedulesApi->update_group_flex_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_schedule_key** | **Integer** | GroupFlexSchedule Key |  |
| **group_flex_schedule** | [**GroupFlexSchedule**](GroupFlexSchedule.md) |  |  |

### Return type

[**GroupFlexScheduleVBAResponse**](GroupFlexScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

