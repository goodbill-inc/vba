# Vba::LoggingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_system_log**](LoggingApi.md#create_system_log) | **POST** /system-logs | Creates a system log |
| [**create_system_log_batch**](LoggingApi.md#create_system_log_batch) | **POST** /system-logs-batch | Creates multiple system log |


## create_system_log

> create_system_log(vbasoftware_database, opts)

Creates a system log

Creates a system log for a client VBA Application

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

api_instance = Vba::LoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | target database for this request
opts = {
  system_log_data: Vba::SystemLogData.new({system_log_data_key: 37, log_date: Time.now, machine_id: 'machine_id_example', success: false, user_id: 'user_id_example'}) # SystemLogData | 
}

begin
  # Creates a system log
  api_instance.create_system_log(vbasoftware_database, opts)
rescue Vba::ApiError => e
  puts "Error when calling LoggingApi->create_system_log: #{e}"
end
```

#### Using the create_system_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_system_log_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # Creates a system log
  data, status_code, headers = api_instance.create_system_log_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling LoggingApi->create_system_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | target database for this request |  |
| **system_log_data** | [**SystemLogData**](SystemLogData.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_system_log_batch

> create_system_log_batch(vbasoftware_database, opts)

Creates multiple system log

Creates multiple system logs for a client VBA Application

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

api_instance = Vba::LoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | target database for this request
opts = {
  system_log_data: [Vba::SystemLogData.new({system_log_data_key: 37, log_date: Time.now, machine_id: 'machine_id_example', success: false, user_id: 'user_id_example'})] # Array<SystemLogData> | 
}

begin
  # Creates multiple system log
  api_instance.create_system_log_batch(vbasoftware_database, opts)
rescue Vba::ApiError => e
  puts "Error when calling LoggingApi->create_system_log_batch: #{e}"
end
```

#### Using the create_system_log_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_system_log_batch_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # Creates multiple system log
  data, status_code, headers = api_instance.create_system_log_batch_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling LoggingApi->create_system_log_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | target database for this request |  |
| **system_log_data** | [**Array&lt;SystemLogData&gt;**](SystemLogData.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined

