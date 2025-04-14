# Vba::ProcessLoggingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_process_log**](ProcessLoggingApi.md#create_vba_process_log) | **POST** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs | Create VBAProcessLog |
| [**delete_vba_process_log**](ProcessLoggingApi.md#delete_vba_process_log) | **DELETE** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs/{vBAProcessLogKey} | Delete VBAProcessLog |
| [**get_vba_process_log**](ProcessLoggingApi.md#get_vba_process_log) | **GET** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs/{vBAProcessLogKey} | Get VBAProcessLog |
| [**list_vba_process_log**](ProcessLoggingApi.md#list_vba_process_log) | **GET** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs | List VBAProcessLog |
| [**update_batch_vba_process_log**](ProcessLoggingApi.md#update_batch_vba_process_log) | **PUT** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs-batch | Update Batch VBAProcessLog |
| [**update_vba_process_log**](ProcessLoggingApi.md#update_vba_process_log) | **PUT** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/logs/{vBAProcessLogKey} | Update VBAProcessLog |


## create_vba_process_log

> <VBAProcessLogVBAResponse> create_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)

Create VBAProcessLog

Creates a new VBAProcessLog

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
vba_process_log = Vba::VBAProcessLog.new({vba_process_log_key: 37, vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcessLog | 

begin
  # Create VBAProcessLog
  result = api_instance.create_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->create_vba_process_log: #{e}"
end
```

#### Using the create_vba_process_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessLogVBAResponse>, Integer, Hash)> create_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)

```ruby
begin
  # Create VBAProcessLog
  data, status_code, headers = api_instance.create_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->create_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **vba_process_log** | [**VBAProcessLog**](VBAProcessLog.md) |  |  |

### Return type

[**VBAProcessLogVBAResponse**](VBAProcessLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_process_log

> delete_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)

Delete VBAProcessLog

Deletes an VBAProcessLog

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_log_key = 56 # Integer | VBAProcessLog Key

begin
  # Delete VBAProcessLog
  api_instance.delete_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->delete_vba_process_log: #{e}"
end
```

#### Using the delete_vba_process_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)

```ruby
begin
  # Delete VBAProcessLog
  data, status_code, headers = api_instance.delete_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->delete_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_log_key** | **Integer** | VBAProcessLog Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_process_log

> <VBAProcessLogVBAResponse> get_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)

Get VBAProcessLog

Gets VBAProcessLog

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_log_key = 56 # Integer | VBAProcessLog Key

begin
  # Get VBAProcessLog
  result = api_instance.get_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->get_vba_process_log: #{e}"
end
```

#### Using the get_vba_process_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessLogVBAResponse>, Integer, Hash)> get_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)

```ruby
begin
  # Get VBAProcessLog
  data, status_code, headers = api_instance.get_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->get_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_log_key** | **Integer** | VBAProcessLog Key |  |

### Return type

[**VBAProcessLogVBAResponse**](VBAProcessLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_process_log

> <VBAProcessLogListVBAResponse> list_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type)

List VBAProcessLog

List VBAProcessLogs or the given VBAProcessKey and VBAProcessType

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type

begin
  # List VBAProcessLog
  result = api_instance.list_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->list_vba_process_log: #{e}"
end
```

#### Using the list_vba_process_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessLogListVBAResponse>, Integer, Hash)> list_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)

```ruby
begin
  # List VBAProcessLog
  data, status_code, headers = api_instance.list_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessLogListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->list_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |

### Return type

[**VBAProcessLogListVBAResponse**](VBAProcessLogListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_process_log

> <MultiCodeResponseListVBAResponse> update_batch_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)

Update Batch VBAProcessLog

Updates or Creates multiple VBAProcessLogs

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
vba_process_log = [Vba::VBAProcessLog.new({vba_process_log_key: 37, vba_process_key: 37, vba_process_type: 'vba_process_type_example'})] # Array<VBAProcessLog> | 

begin
  # Update Batch VBAProcessLog
  result = api_instance.update_batch_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->update_batch_vba_process_log: #{e}"
end
```

#### Using the update_batch_vba_process_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)

```ruby
begin
  # Update Batch VBAProcessLog
  data, status_code, headers = api_instance.update_batch_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->update_batch_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **vba_process_log** | [**Array&lt;VBAProcessLog&gt;**](VBAProcessLog.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_process_log

> <VBAProcessLogVBAResponse> update_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key, vba_process_log)

Update VBAProcessLog

Updates a specific VBAProcessLog.

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

api_instance = Vba::ProcessLoggingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_log_key = 56 # Integer | VBAProcessLog Key
vba_process_log = Vba::VBAProcessLog.new({vba_process_log_key: 37, vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcessLog | 

begin
  # Update VBAProcessLog
  result = api_instance.update_vba_process_log(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key, vba_process_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->update_vba_process_log: #{e}"
end
```

#### Using the update_vba_process_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessLogVBAResponse>, Integer, Hash)> update_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key, vba_process_log)

```ruby
begin
  # Update VBAProcessLog
  data, status_code, headers = api_instance.update_vba_process_log_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_log_key, vba_process_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessLoggingApi->update_vba_process_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_log_key** | **Integer** | VBAProcessLog Key |  |
| **vba_process_log** | [**VBAProcessLog**](VBAProcessLog.md) |  |  |

### Return type

[**VBAProcessLogVBAResponse**](VBAProcessLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

