# Vba::GroupDayIntervalApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_day_interval**](GroupDayIntervalApi.md#create_group_day_interval) | **POST** /group-day-intervals | Create GroupDayInterval |
| [**delete_group_day_interval**](GroupDayIntervalApi.md#delete_group_day_interval) | **DELETE** /group-day-intervals/{Group_ID}/{Interval_Year}/{Interval_Month}/{Interval_Day} | Delete GroupDayInterval |
| [**get_group_day_interval**](GroupDayIntervalApi.md#get_group_day_interval) | **GET** /group-day-intervals/{Group_ID}/{Interval_Year}/{Interval_Month}/{Interval_Day} | Get GroupDayInterval |
| [**list_group_day_interval**](GroupDayIntervalApi.md#list_group_day_interval) | **GET** /group-day-intervals | List GroupDayInterval |
| [**update_batch_group_day_interval**](GroupDayIntervalApi.md#update_batch_group_day_interval) | **PUT** /group-day-intervals-batch | Create or Update Batch GroupDayInterval |
| [**update_group_day_interval**](GroupDayIntervalApi.md#update_group_day_interval) | **PUT** /group-day-intervals/{Group_ID}/{Interval_Year}/{Interval_Month}/{Interval_Day} | Update GroupDayInterval |


## create_group_day_interval

> <GroupDayIntervalVBAResponse> create_group_day_interval(vbasoftware_database, group_day_interval)

Create GroupDayInterval

Creates a new GroupDayInterval

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_day_interval = Vba::GroupDayInterval.new({group_id: 'group_id_example', interval_year: 37, interval_month: 37, interval_day: 37, payday: false}) # GroupDayInterval | 

begin
  # Create GroupDayInterval
  result = api_instance.create_group_day_interval(vbasoftware_database, group_day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->create_group_day_interval: #{e}"
end
```

#### Using the create_group_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDayIntervalVBAResponse>, Integer, Hash)> create_group_day_interval_with_http_info(vbasoftware_database, group_day_interval)

```ruby
begin
  # Create GroupDayInterval
  data, status_code, headers = api_instance.create_group_day_interval_with_http_info(vbasoftware_database, group_day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->create_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_day_interval** | [**GroupDayInterval**](GroupDayInterval.md) |  |  |

### Return type

[**GroupDayIntervalVBAResponse**](GroupDayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_day_interval

> delete_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day)

Delete GroupDayInterval

Deletes an GroupDayInterval

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day

begin
  # Delete GroupDayInterval
  api_instance.delete_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day)
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->delete_group_day_interval: #{e}"
end
```

#### Using the delete_group_day_interval_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day)

```ruby
begin
  # Delete GroupDayInterval
  data, status_code, headers = api_instance.delete_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->delete_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
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


## get_group_day_interval

> <GroupDayIntervalVBAResponse> get_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day)

Get GroupDayInterval

Gets GroupDayInterval

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day

begin
  # Get GroupDayInterval
  result = api_instance.get_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->get_group_day_interval: #{e}"
end
```

#### Using the get_group_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDayIntervalVBAResponse>, Integer, Hash)> get_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day)

```ruby
begin
  # Get GroupDayInterval
  data, status_code, headers = api_instance.get_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->get_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **interval_year** | **Integer** | Interval Year |  |
| **interval_month** | **Integer** | Interval Month |  |
| **interval_day** | **Integer** | Interval Day |  |

### Return type

[**GroupDayIntervalVBAResponse**](GroupDayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_day_interval

> <GroupDayIntervalListVBAResponse> list_group_day_interval(vbasoftware_database, opts)

List GroupDayInterval

Lists all GroupDayInterval for the given Group_ID and Interval_Year and Interval_Month and Interval_Day

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example', # String | Optional filter for Group ID
  interval_year: 56, # Integer | Optional filter for Interval Year
  interval_month: 56, # Integer | Optional filter for Interval Month
  interval_day: 56, # Integer | Optional filter for Interval Day
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List GroupDayInterval
  result = api_instance.list_group_day_interval(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->list_group_day_interval: #{e}"
end
```

#### Using the list_group_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDayIntervalListVBAResponse>, Integer, Hash)> list_group_day_interval_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupDayInterval
  data, status_code, headers = api_instance.list_group_day_interval_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDayIntervalListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->list_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Optional filter for Group ID | [optional] |
| **interval_year** | **Integer** | Optional filter for Interval Year | [optional] |
| **interval_month** | **Integer** | Optional filter for Interval Month | [optional] |
| **interval_day** | **Integer** | Optional filter for Interval Day | [optional] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**GroupDayIntervalListVBAResponse**](GroupDayIntervalListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_day_interval

> <MultiCodeResponseListVBAResponse> update_batch_group_day_interval(vbasoftware_database, group_day_interval)

Create or Update Batch GroupDayInterval

Create or Update multiple GroupDayInterval at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_day_interval = [Vba::GroupDayInterval.new({group_id: 'group_id_example', interval_year: 37, interval_month: 37, interval_day: 37, payday: false})] # Array<GroupDayInterval> | 

begin
  # Create or Update Batch GroupDayInterval
  result = api_instance.update_batch_group_day_interval(vbasoftware_database, group_day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->update_batch_group_day_interval: #{e}"
end
```

#### Using the update_batch_group_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_day_interval_with_http_info(vbasoftware_database, group_day_interval)

```ruby
begin
  # Create or Update Batch GroupDayInterval
  data, status_code, headers = api_instance.update_batch_group_day_interval_with_http_info(vbasoftware_database, group_day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->update_batch_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_day_interval** | [**Array&lt;GroupDayInterval&gt;**](GroupDayInterval.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_day_interval

> <GroupDayIntervalVBAResponse> update_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day, group_day_interval)

Update GroupDayInterval

Updates a specific GroupDayInterval.

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

api_instance = Vba::GroupDayIntervalApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
interval_year = 56 # Integer | Interval Year
interval_month = 56 # Integer | Interval Month
interval_day = 56 # Integer | Interval Day
group_day_interval = Vba::GroupDayInterval.new({group_id: 'group_id_example', interval_year: 37, interval_month: 37, interval_day: 37, payday: false}) # GroupDayInterval | 

begin
  # Update GroupDayInterval
  result = api_instance.update_group_day_interval(vbasoftware_database, group_id, interval_year, interval_month, interval_day, group_day_interval)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->update_group_day_interval: #{e}"
end
```

#### Using the update_group_day_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDayIntervalVBAResponse>, Integer, Hash)> update_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day, group_day_interval)

```ruby
begin
  # Update GroupDayInterval
  data, status_code, headers = api_instance.update_group_day_interval_with_http_info(vbasoftware_database, group_id, interval_year, interval_month, interval_day, group_day_interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDayIntervalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDayIntervalApi->update_group_day_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **interval_year** | **Integer** | Interval Year |  |
| **interval_month** | **Integer** | Interval Month |  |
| **interval_day** | **Integer** | Interval Day |  |
| **group_day_interval** | [**GroupDayInterval**](GroupDayInterval.md) |  |  |

### Return type

[**GroupDayIntervalVBAResponse**](GroupDayIntervalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

