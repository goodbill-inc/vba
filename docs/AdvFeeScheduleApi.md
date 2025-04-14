# Vba::AdvFeeScheduleApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_fee_schedule**](AdvFeeScheduleApi.md#copy_fee_schedule) | **POST** /fee-schedule-copy | Copy Fee Schedule |
| [**copy_fee_schedule_adj_disc**](AdvFeeScheduleApi.md#copy_fee_schedule_adj_disc) | **POST** /fee-schedule-copy-adj-disc | Copy Fee Schedule and Adjust Discount |


## copy_fee_schedule

> <FeeSchedVBAResponse> copy_fee_schedule(vbasoftware_database, fee_sched_copy)

Copy Fee Schedule

Copy an existing Fee Schedule to a new Fee Schedule.

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

api_instance = Vba::AdvFeeScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_copy = Vba::FeeSchedCopy.new # FeeSchedCopy | 

begin
  # Copy Fee Schedule
  result = api_instance.copy_fee_schedule(vbasoftware_database, fee_sched_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvFeeScheduleApi->copy_fee_schedule: #{e}"
end
```

#### Using the copy_fee_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy)

```ruby
begin
  # Copy Fee Schedule
  data, status_code, headers = api_instance.copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvFeeScheduleApi->copy_fee_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_copy** | [**FeeSchedCopy**](FeeSchedCopy.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## copy_fee_schedule_adj_disc

> <FeeSchedVBAResponse> copy_fee_schedule_adj_disc(vbasoftware_database, fee_sched_copy)

Copy Fee Schedule and Adjust Discount

Copy an existing Fee Schedule to a new Fee Schedule and adjust the resulting discount in the new Fee Schedule.

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

api_instance = Vba::AdvFeeScheduleApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_copy = Vba::FeeSchedCopy.new # FeeSchedCopy | 

begin
  # Copy Fee Schedule and Adjust Discount
  result = api_instance.copy_fee_schedule_adj_disc(vbasoftware_database, fee_sched_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvFeeScheduleApi->copy_fee_schedule_adj_disc: #{e}"
end
```

#### Using the copy_fee_schedule_adj_disc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy)

```ruby
begin
  # Copy Fee Schedule and Adjust Discount
  data, status_code, headers = api_instance.copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvFeeScheduleApi->copy_fee_schedule_adj_disc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_copy** | [**FeeSchedCopy**](FeeSchedCopy.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

