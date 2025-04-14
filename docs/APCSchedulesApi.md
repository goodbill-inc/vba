# Vba::APCSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_apc_schedule**](APCSchedulesApi.md#create_apc_schedule) | **POST** /apc-schedules | Create APCSchedule |
| [**delete_apc_schedule**](APCSchedulesApi.md#delete_apc_schedule) | **DELETE** /apc-schedules/{aPCSchedule} | Delete APCSchedule |
| [**get_apc_schedule**](APCSchedulesApi.md#get_apc_schedule) | **GET** /apc-schedules/{aPCSchedule} | Get APCSchedule |
| [**list_apc_schedule**](APCSchedulesApi.md#list_apc_schedule) | **GET** /apc-schedules | List APCSchedule |
| [**update_apc_schedule**](APCSchedulesApi.md#update_apc_schedule) | **PUT** /apc-schedules/{aPCSchedule} | Update APCSchedule |
| [**update_batch_apc_schedule**](APCSchedulesApi.md#update_batch_apc_schedule) | **PUT** /apc-schedules-batch | Create or Update Batch APCSchedule |


## create_apc_schedule

> <APCScheduleVBAResponse> create_apc_schedule(vbasoftware_database, apc_schedule)

Create APCSchedule

Creates a new APCSchedule

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_schedule = Vba::APCSchedule.new({ap_c_schedule: 'ap_c_schedule_example'}) # APCSchedule | 

begin
  # Create APCSchedule
  result = api_instance.create_apc_schedule(vbasoftware_database, apc_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->create_apc_schedule: #{e}"
end
```

#### Using the create_apc_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCScheduleVBAResponse>, Integer, Hash)> create_apc_schedule_with_http_info(vbasoftware_database, apc_schedule)

```ruby
begin
  # Create APCSchedule
  data, status_code, headers = api_instance.create_apc_schedule_with_http_info(vbasoftware_database, apc_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->create_apc_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | [**APCSchedule**](APCSchedule.md) |  |  |

### Return type

[**APCScheduleVBAResponse**](APCScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_apc_schedule

> delete_apc_schedule(vbasoftware_database, a_pc_schedule)

Delete APCSchedule

Deletes an APCSchedule

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
a_pc_schedule = 'a_pc_schedule_example' # String | APC Schedule

begin
  # Delete APCSchedule
  api_instance.delete_apc_schedule(vbasoftware_database, a_pc_schedule)
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->delete_apc_schedule: #{e}"
end
```

#### Using the delete_apc_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule)

```ruby
begin
  # Delete APCSchedule
  data, status_code, headers = api_instance.delete_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->delete_apc_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **a_pc_schedule** | **String** | APC Schedule |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_apc_schedule

> <APCScheduleVBAResponse> get_apc_schedule(vbasoftware_database, a_pc_schedule)

Get APCSchedule

Gets APCSchedule

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
a_pc_schedule = 'a_pc_schedule_example' # String | APC Schedule

begin
  # Get APCSchedule
  result = api_instance.get_apc_schedule(vbasoftware_database, a_pc_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->get_apc_schedule: #{e}"
end
```

#### Using the get_apc_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCScheduleVBAResponse>, Integer, Hash)> get_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule)

```ruby
begin
  # Get APCSchedule
  data, status_code, headers = api_instance.get_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->get_apc_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **a_pc_schedule** | **String** | APC Schedule |  |

### Return type

[**APCScheduleVBAResponse**](APCScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_apc_schedule

> <APCScheduleListVBAResponse> list_apc_schedule(vbasoftware_database, opts)

List APCSchedule

Lists all APCSchedule

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List APCSchedule
  result = api_instance.list_apc_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->list_apc_schedule: #{e}"
end
```

#### Using the list_apc_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCScheduleListVBAResponse>, Integer, Hash)> list_apc_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List APCSchedule
  data, status_code, headers = api_instance.list_apc_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->list_apc_schedule_with_http_info: #{e}"
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

[**APCScheduleListVBAResponse**](APCScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_apc_schedule

> <APCScheduleVBAResponse> update_apc_schedule(vbasoftware_database, a_pc_schedule, apc_schedule)

Update APCSchedule

Updates a specific APCSchedule.

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
a_pc_schedule = 'a_pc_schedule_example' # String | APC Schedule
apc_schedule = Vba::APCSchedule.new({ap_c_schedule: 'ap_c_schedule_example'}) # APCSchedule | 

begin
  # Update APCSchedule
  result = api_instance.update_apc_schedule(vbasoftware_database, a_pc_schedule, apc_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->update_apc_schedule: #{e}"
end
```

#### Using the update_apc_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCScheduleVBAResponse>, Integer, Hash)> update_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule, apc_schedule)

```ruby
begin
  # Update APCSchedule
  data, status_code, headers = api_instance.update_apc_schedule_with_http_info(vbasoftware_database, a_pc_schedule, apc_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->update_apc_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **a_pc_schedule** | **String** | APC Schedule |  |
| **apc_schedule** | [**APCSchedule**](APCSchedule.md) |  |  |

### Return type

[**APCScheduleVBAResponse**](APCScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_apc_schedule

> <MultiCodeResponseListVBAResponse> update_batch_apc_schedule(vbasoftware_database, apc_schedule)

Create or Update Batch APCSchedule

Create or Update multiple APCSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::APCSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_schedule = [Vba::APCSchedule.new({ap_c_schedule: 'ap_c_schedule_example'})] # Array<APCSchedule> | 

begin
  # Create or Update Batch APCSchedule
  result = api_instance.update_batch_apc_schedule(vbasoftware_database, apc_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->update_batch_apc_schedule: #{e}"
end
```

#### Using the update_batch_apc_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_apc_schedule_with_http_info(vbasoftware_database, apc_schedule)

```ruby
begin
  # Create or Update Batch APCSchedule
  data, status_code, headers = api_instance.update_batch_apc_schedule_with_http_info(vbasoftware_database, apc_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCSchedulesApi->update_batch_apc_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | [**Array&lt;APCSchedule&gt;**](APCSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

