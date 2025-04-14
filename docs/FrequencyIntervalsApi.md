# Vba::FrequencyIntervalsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_frequency_interval**](FrequencyIntervalsApi.md#get_frequency_interval) | **GET** /frequency-intervals/{id} | Get Frequency Interval |
| [**list_frequency_intervals**](FrequencyIntervalsApi.md#list_frequency_intervals) | **GET** /frequency-intervals | List Frequency Intervals |


## get_frequency_interval

> <StringStaticOptionVBAResponse> get_frequency_interval(vbasoftware_database, id)

Get Frequency Interval

Gets a single Frequency Interval by ID

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

api_instance = Vba::FrequencyIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 'id_example' # String | ID

begin
  # Get Frequency Interval
  result = api_instance.get_frequency_interval(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FrequencyIntervalsApi->get_frequency_interval: #{e}"
end
```

#### Using the get_frequency_interval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionVBAResponse>, Integer, Hash)> get_frequency_interval_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Frequency Interval
  data, status_code, headers = api_instance.get_frequency_interval_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FrequencyIntervalsApi->get_frequency_interval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id** | **String** | ID |  |

### Return type

[**StringStaticOptionVBAResponse**](StringStaticOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_frequency_intervals

> <StringStaticOptionListVBAResponse> list_frequency_intervals(vbasoftware_database)

List Frequency Intervals

Lists all Frequency Intervals

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

api_instance = Vba::FrequencyIntervalsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Frequency Intervals
  result = api_instance.list_frequency_intervals(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FrequencyIntervalsApi->list_frequency_intervals: #{e}"
end
```

#### Using the list_frequency_intervals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_frequency_intervals_with_http_info(vbasoftware_database)

```ruby
begin
  # List Frequency Intervals
  data, status_code, headers = api_instance.list_frequency_intervals_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FrequencyIntervalsApi->list_frequency_intervals_with_http_info: #{e}"
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

