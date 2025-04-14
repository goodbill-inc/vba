# Vba::ProcessesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_process**](ProcessesApi.md#create_vba_process) | **POST** /vbaprocesses | Create VBAProcess |
| [**delete_vba_process**](ProcessesApi.md#delete_vba_process) | **DELETE** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType} | Delete VBAProcess |
| [**get_vba_process**](ProcessesApi.md#get_vba_process) | **GET** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType} | Get VBAProcess |
| [**update_vba_process**](ProcessesApi.md#update_vba_process) | **PUT** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType} | Update VBAProcess |


## create_vba_process

> <VBAProcessVBAResponse> create_vba_process(vbasoftware_database, vba_process)

Create VBAProcess

Creates a new VBAProcess

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

api_instance = Vba::ProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_process = Vba::VBAProcess.new({vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcess | 

begin
  # Create VBAProcess
  result = api_instance.create_vba_process(vbasoftware_database, vba_process)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->create_vba_process: #{e}"
end
```

#### Using the create_vba_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> create_vba_process_with_http_info(vbasoftware_database, vba_process)

```ruby
begin
  # Create VBAProcess
  data, status_code, headers = api_instance.create_vba_process_with_http_info(vbasoftware_database, vba_process)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->create_vba_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_process** | [**VBAProcess**](VBAProcess.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_process

> delete_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type)

Delete VBAProcess

Deletes an VBAProcess

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

api_instance = Vba::ProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type

begin
  # Delete VBAProcess
  api_instance.delete_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type)
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->delete_vba_process: #{e}"
end
```

#### Using the delete_vba_process_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)

```ruby
begin
  # Delete VBAProcess
  data, status_code, headers = api_instance.delete_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->delete_vba_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_process

> <VBAProcessVBAResponse> get_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type)

Get VBAProcess

Gets VBAProcess

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

api_instance = Vba::ProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type

begin
  # Get VBAProcess
  result = api_instance.get_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->get_vba_process: #{e}"
end
```

#### Using the get_vba_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> get_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)

```ruby
begin
  # Get VBAProcess
  data, status_code, headers = api_instance.get_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->get_vba_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_vba_process

> <VBAProcessVBAResponse> update_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process)

Update VBAProcess

Updates a specific VBAProcess.

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

api_instance = Vba::ProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
vba_process = Vba::VBAProcess.new({vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcess | 

begin
  # Update VBAProcess
  result = api_instance.update_vba_process(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->update_vba_process: #{e}"
end
```

#### Using the update_vba_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> update_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process)

```ruby
begin
  # Update VBAProcess
  data, status_code, headers = api_instance.update_vba_process_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessesApi->update_vba_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **vba_process** | [**VBAProcess**](VBAProcess.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

