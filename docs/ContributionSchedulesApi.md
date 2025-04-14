# Vba::ContributionSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contribution_schedule**](ContributionSchedulesApi.md#create_contribution_schedule) | **POST** /contribution-schedules | Create ContributionSchedule |
| [**delete_contribution_schedule**](ContributionSchedulesApi.md#delete_contribution_schedule) | **DELETE** /contribution-schedules/{contributionSchedule} | Delete ContributionSchedule |
| [**get_contribution_schedule**](ContributionSchedulesApi.md#get_contribution_schedule) | **GET** /contribution-schedules/{contributionSchedule} | Get ContributionSchedule |
| [**list_contribution_schedule**](ContributionSchedulesApi.md#list_contribution_schedule) | **GET** /contribution-schedules | List ContributionSchedule |
| [**update_batch_contribution_schedule**](ContributionSchedulesApi.md#update_batch_contribution_schedule) | **PUT** /contribution-schedules-batch | Create or Update Batch ContributionSchedule |
| [**update_contribution_schedule**](ContributionSchedulesApi.md#update_contribution_schedule) | **PUT** /contribution-schedules/{contributionSchedule} | Update ContributionSchedule |


## create_contribution_schedule

> <ContributionScheduleVBAResponse> create_contribution_schedule(vbasoftware_database, contribution_schedule)

Create ContributionSchedule

Creates a new ContributionSchedule

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contribution_schedule = Vba::ContributionSchedule.new({contribution_schedule: 'contribution_schedule_example'}) # ContributionSchedule | 

begin
  # Create ContributionSchedule
  result = api_instance.create_contribution_schedule(vbasoftware_database, contribution_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->create_contribution_schedule: #{e}"
end
```

#### Using the create_contribution_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContributionScheduleVBAResponse>, Integer, Hash)> create_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)

```ruby
begin
  # Create ContributionSchedule
  data, status_code, headers = api_instance.create_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContributionScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->create_contribution_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contribution_schedule** | [**ContributionSchedule**](ContributionSchedule.md) |  |  |

### Return type

[**ContributionScheduleVBAResponse**](ContributionScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contribution_schedule

> delete_contribution_schedule(vbasoftware_database, contribution_schedule)

Delete ContributionSchedule

Deletes an ContributionSchedule

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contribution_schedule = 'contribution_schedule_example' # String | Contribution Schedule

begin
  # Delete ContributionSchedule
  api_instance.delete_contribution_schedule(vbasoftware_database, contribution_schedule)
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->delete_contribution_schedule: #{e}"
end
```

#### Using the delete_contribution_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)

```ruby
begin
  # Delete ContributionSchedule
  data, status_code, headers = api_instance.delete_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->delete_contribution_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contribution_schedule** | **String** | Contribution Schedule |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contribution_schedule

> <ContributionScheduleVBAResponse> get_contribution_schedule(vbasoftware_database, contribution_schedule)

Get ContributionSchedule

Gets ContributionSchedule

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contribution_schedule = 'contribution_schedule_example' # String | Contribution Schedule

begin
  # Get ContributionSchedule
  result = api_instance.get_contribution_schedule(vbasoftware_database, contribution_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->get_contribution_schedule: #{e}"
end
```

#### Using the get_contribution_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContributionScheduleVBAResponse>, Integer, Hash)> get_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)

```ruby
begin
  # Get ContributionSchedule
  data, status_code, headers = api_instance.get_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContributionScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->get_contribution_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contribution_schedule** | **String** | Contribution Schedule |  |

### Return type

[**ContributionScheduleVBAResponse**](ContributionScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contribution_schedule

> <ContributionScheduleListVBAResponse> list_contribution_schedule(vbasoftware_database, opts)

List ContributionSchedule

Lists all ContributionSchedule

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContributionSchedule
  result = api_instance.list_contribution_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->list_contribution_schedule: #{e}"
end
```

#### Using the list_contribution_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContributionScheduleListVBAResponse>, Integer, Hash)> list_contribution_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContributionSchedule
  data, status_code, headers = api_instance.list_contribution_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContributionScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->list_contribution_schedule_with_http_info: #{e}"
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

[**ContributionScheduleListVBAResponse**](ContributionScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contribution_schedule

> <MultiCodeResponseListVBAResponse> update_batch_contribution_schedule(vbasoftware_database, contribution_schedule)

Create or Update Batch ContributionSchedule

Create or Update multiple ContributionSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contribution_schedule = [Vba::ContributionSchedule.new({contribution_schedule: 'contribution_schedule_example'})] # Array<ContributionSchedule> | 

begin
  # Create or Update Batch ContributionSchedule
  result = api_instance.update_batch_contribution_schedule(vbasoftware_database, contribution_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->update_batch_contribution_schedule: #{e}"
end
```

#### Using the update_batch_contribution_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)

```ruby
begin
  # Create or Update Batch ContributionSchedule
  data, status_code, headers = api_instance.update_batch_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->update_batch_contribution_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contribution_schedule** | [**Array&lt;ContributionSchedule&gt;**](ContributionSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contribution_schedule

> <ContributionScheduleVBAResponse> update_contribution_schedule(vbasoftware_database, contribution_schedule, contribution_schedule2)

Update ContributionSchedule

Updates a specific ContributionSchedule.

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

api_instance = Vba::ContributionSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contribution_schedule = 'contribution_schedule_example' # String | Contribution Schedule
contribution_schedule2 = Vba::ContributionSchedule.new({contribution_schedule: 'contribution_schedule_example'}) # ContributionSchedule | 

begin
  # Update ContributionSchedule
  result = api_instance.update_contribution_schedule(vbasoftware_database, contribution_schedule, contribution_schedule2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->update_contribution_schedule: #{e}"
end
```

#### Using the update_contribution_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContributionScheduleVBAResponse>, Integer, Hash)> update_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule, contribution_schedule2)

```ruby
begin
  # Update ContributionSchedule
  data, status_code, headers = api_instance.update_contribution_schedule_with_http_info(vbasoftware_database, contribution_schedule, contribution_schedule2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContributionScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContributionSchedulesApi->update_contribution_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contribution_schedule** | **String** | Contribution Schedule |  |
| **contribution_schedule2** | [**ContributionSchedule**](ContributionSchedule.md) |  |  |

### Return type

[**ContributionScheduleVBAResponse**](ContributionScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

