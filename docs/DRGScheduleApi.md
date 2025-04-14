# Vba::DRGScheduleApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drg_schedule**](DRGScheduleApi.md#create_drg_schedule) | **POST** /drg-schedules | Create DRGSchedule |
| [**delete_drg_schedule**](DRGScheduleApi.md#delete_drg_schedule) | **DELETE** /drg-schedules/{drgSchedule} | Delete DRGSchedule |
| [**get_drg_schedule**](DRGScheduleApi.md#get_drg_schedule) | **GET** /drg-schedules/{drgSchedule} | Get DRGSchedule |
| [**list_drg_schedule**](DRGScheduleApi.md#list_drg_schedule) | **GET** /drg-schedules | List DRGSchedule |
| [**update_batch_drg_schedule**](DRGScheduleApi.md#update_batch_drg_schedule) | **PUT** /drg-schedules-batch | Create or Update Batch DRGSchedule |
| [**update_drg_schedule**](DRGScheduleApi.md#update_drg_schedule) | **PUT** /drg-schedules/{drgSchedule} | Update DRGSchedule |


## create_drg_schedule

> <DRGScheduleVBAResponse> create_drg_schedule(vbasoftware_database, drg_schedule)

Create DRGSchedule

Creates a new DRGSchedule

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = Vba::DRGSchedule.new({dr_g_schedule: 'dr_g_schedule_example'}) # DRGSchedule | 

begin
  # Create DRGSchedule
  result = api_instance.create_drg_schedule(vbasoftware_database, drg_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->create_drg_schedule: #{e}"
end
```

#### Using the create_drg_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGScheduleVBAResponse>, Integer, Hash)> create_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)

```ruby
begin
  # Create DRGSchedule
  data, status_code, headers = api_instance.create_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->create_drg_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | [**DRGSchedule**](DRGSchedule.md) |  |  |

### Return type

[**DRGScheduleVBAResponse**](DRGScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drg_schedule

> delete_drg_schedule(vbasoftware_database, drg_schedule)

Delete DRGSchedule

Deletes an DRGSchedule

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule

begin
  # Delete DRGSchedule
  api_instance.delete_drg_schedule(vbasoftware_database, drg_schedule)
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->delete_drg_schedule: #{e}"
end
```

#### Using the delete_drg_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)

```ruby
begin
  # Delete DRGSchedule
  data, status_code, headers = api_instance.delete_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->delete_drg_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drg_schedule

> <DRGScheduleVBAResponse> get_drg_schedule(vbasoftware_database, drg_schedule)

Get DRGSchedule

Gets DRGSchedule

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule

begin
  # Get DRGSchedule
  result = api_instance.get_drg_schedule(vbasoftware_database, drg_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->get_drg_schedule: #{e}"
end
```

#### Using the get_drg_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGScheduleVBAResponse>, Integer, Hash)> get_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)

```ruby
begin
  # Get DRGSchedule
  data, status_code, headers = api_instance.get_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->get_drg_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |

### Return type

[**DRGScheduleVBAResponse**](DRGScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drg_schedule

> <DRGScheduleListVBAResponse> list_drg_schedule(vbasoftware_database, opts)

List DRGSchedule

List all DRGSchedule

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DRGSchedule
  result = api_instance.list_drg_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->list_drg_schedule: #{e}"
end
```

#### Using the list_drg_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGScheduleListVBAResponse>, Integer, Hash)> list_drg_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DRGSchedule
  data, status_code, headers = api_instance.list_drg_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->list_drg_schedule_with_http_info: #{e}"
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

[**DRGScheduleListVBAResponse**](DRGScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drg_schedule

> <MultiCodeResponseListVBAResponse> update_batch_drg_schedule(vbasoftware_database, drg_schedule)

Create or Update Batch DRGSchedule

Create or Update multiple DRGSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = [Vba::DRGSchedule.new({dr_g_schedule: 'dr_g_schedule_example'})] # Array<DRGSchedule> | 

begin
  # Create or Update Batch DRGSchedule
  result = api_instance.update_batch_drg_schedule(vbasoftware_database, drg_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->update_batch_drg_schedule: #{e}"
end
```

#### Using the update_batch_drg_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)

```ruby
begin
  # Create or Update Batch DRGSchedule
  data, status_code, headers = api_instance.update_batch_drg_schedule_with_http_info(vbasoftware_database, drg_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->update_batch_drg_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | [**Array&lt;DRGSchedule&gt;**](DRGSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drg_schedule

> <DRGScheduleVBAResponse> update_drg_schedule(vbasoftware_database, drg_schedule, drg_schedule2)

Update DRGSchedule

Updates a specific DRGSchedule.

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

api_instance = Vba::DRGScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_schedule2 = Vba::DRGSchedule.new({dr_g_schedule: 'dr_g_schedule_example'}) # DRGSchedule | 

begin
  # Update DRGSchedule
  result = api_instance.update_drg_schedule(vbasoftware_database, drg_schedule, drg_schedule2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->update_drg_schedule: #{e}"
end
```

#### Using the update_drg_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGScheduleVBAResponse>, Integer, Hash)> update_drg_schedule_with_http_info(vbasoftware_database, drg_schedule, drg_schedule2)

```ruby
begin
  # Update DRGSchedule
  data, status_code, headers = api_instance.update_drg_schedule_with_http_info(vbasoftware_database, drg_schedule, drg_schedule2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGScheduleApi->update_drg_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_schedule2** | [**DRGSchedule**](DRGSchedule.md) |  |  |

### Return type

[**DRGScheduleVBAResponse**](DRGScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

