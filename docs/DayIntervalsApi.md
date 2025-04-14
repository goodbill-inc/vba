# Vba::DayIntervalsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_day_interval**](DayIntervalsApi.md#create_day_interval) | **POST** /day-intervals | Create DayInterval |
| [**delete_day_interval**](DayIntervalsApi.md#delete_day_interval) | **DELETE** /day-intervals/{intervalYear}/{intervalMonth}/{intervalDay} | Delete DayInterval |
| [**get_day_interval**](DayIntervalsApi.md#get_day_interval) | **GET** /day-intervals/{intervalYear}/{intervalMonth}/{intervalDay} | Get DayInterval |
| [**list_day_interval**](DayIntervalsApi.md#list_day_interval) | **GET** /day-intervals | List DayInterval |
| [**update_batch_day_interval**](DayIntervalsApi.md#update_batch_day_interval) | **PUT** /day-intervals-batch | Create or Update Batch DayInterval |
| [**update_day_interval**](DayIntervalsApi.md#update_day_interval) | **PUT** /day-intervals/{intervalYear}/{intervalMonth}/{intervalDay} | Update DayInterval |


## create_day_interval

> <DayIntervalVBAResponse> create_day_interval(vbasoftware_database, day_interval)

Create DayInterval

Creates a new DayInterval

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
day_interval = Vba::DayInterval.new({interval_year: 37, interval_month: 37, interval_day: 37, holiday: false}) # DayInterval | 

begin
  # Create DayInterval
  result = api_instance.create_day_interval(vbasoftware_database, day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->create_day_interval: #{e}"
end
```

#### Using the create_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DayIntervalVBAResponse>, Integer, Hash)> create_day_interval_with_http_info(vbasoftware_database, day_interval)

```ruby
begin
  # Create DayInterval
  data, status_code, headers = api_instance.create_day_interval_with_http_info(vbasoftware_database, day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->create_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **day_interval** | [**DayInterval**](DayInterval.md) |  |  |

### Return type

[**DayIntervalVBAResponse**](DayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_day_interval

> delete_day_interval(vbasoftware_database, interval_year, interval_month, interval_day)

Delete DayInterval

Deletes an DayInterval

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day

begin
  # Delete DayInterval
  api_instance.delete_day_interval(vbasoftware_database, interval_year, interval_month, interval_day)
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->delete_day_interval: #{e}"
end
```

#### Using the delete_day_interval_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day)

```ruby
begin
  # Delete DayInterval
  data, status_code, headers = api_instance.delete_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->delete_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **interval_year** | **Integer** | Interval Year |  |
| **interval_month** | **Integer** | Interval Month |  |
| **interval_day** | **Integer** | Interval Day |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_day_interval

> <DayIntervalVBAResponse> get_day_interval(vbasoftware_database, interval_year, interval_month, interval_day)

Get DayInterval

Gets DayInterval

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day

begin
  # Get DayInterval
  result = api_instance.get_day_interval(vbasoftware_database, interval_year, interval_month, interval_day)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->get_day_interval: #{e}"
end
```

#### Using the get_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DayIntervalVBAResponse>, Integer, Hash)> get_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day)

```ruby
begin
  # Get DayInterval
  data, status_code, headers = api_instance.get_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->get_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **interval_year** | **Integer** | Interval Year |  |
| **interval_month** | **Integer** | Interval Month |  |
| **interval_day** | **Integer** | Interval Day |  |

### Return type

[**DayIntervalVBAResponse**](DayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_day_interval

> <DayIntervalListVBAResponse> list_day_interval(vbasoftware_database, opts)

List DayInterval

Lists all DayInterval

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DayInterval
  result = api_instance.list_day_interval(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->list_day_interval: #{e}"
end
```

#### Using the list_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DayIntervalListVBAResponse>, Integer, Hash)> list_day_interval_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DayInterval
  data, status_code, headers = api_instance.list_day_interval_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DayIntervalListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->list_day_interval_with_http_info: #{e}"
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

[**DayIntervalListVBAResponse**](DayIntervalListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_day_interval

> <MultiCodeResponseListVBAResponse> update_batch_day_interval(vbasoftware_database, day_interval)

Create or Update Batch DayInterval

Create or Update multiple DayInterval at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
day_interval = [Vba::DayInterval.new({interval_year: 37, interval_month: 37, interval_day: 37, holiday: false})] # Array<DayInterval> | 

begin
  # Create or Update Batch DayInterval
  result = api_instance.update_batch_day_interval(vbasoftware_database, day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->update_batch_day_interval: #{e}"
end
```

#### Using the update_batch_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_day_interval_with_http_info(vbasoftware_database, day_interval)

```ruby
begin
  # Create or Update Batch DayInterval
  data, status_code, headers = api_instance.update_batch_day_interval_with_http_info(vbasoftware_database, day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->update_batch_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **day_interval** | [**Array&lt;DayInterval&gt;**](DayInterval.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_day_interval

> <DayIntervalVBAResponse> update_day_interval(vbasoftware_database, interval_year, interval_month, interval_day, day_interval)

Update DayInterval

Updates a specific DayInterval.

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

api_instance = Vba::DayIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day
day_interval = Vba::DayInterval.new({interval_year: 37, interval_month: 37, interval_day: 37, holiday: false}) # DayInterval | 

begin
  # Update DayInterval
  result = api_instance.update_day_interval(vbasoftware_database, interval_year, interval_month, interval_day, day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->update_day_interval: #{e}"
end
```

#### Using the update_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DayIntervalVBAResponse>, Integer, Hash)> update_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day, day_interval)

```ruby
begin
  # Update DayInterval
  data, status_code, headers = api_instance.update_day_interval_with_http_info(vbasoftware_database, interval_year, interval_month, interval_day, day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DayIntervalsApi->update_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **interval_year** | **Integer** | Interval Year |  |
| **interval_month** | **Integer** | Interval Month |  |
| **interval_day** | **Integer** | Interval Day |  |
| **day_interval** | [**DayInterval**](DayInterval.md) |  |  |

### Return type

[**DayIntervalVBAResponse**](DayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

