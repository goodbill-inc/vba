# Vba::ProcessParametersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_process_parameter**](ProcessParametersApi.md#create_vba_process_parameter) | **POST** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/parameters | Create VBAProcessParameter |
| [**delete_vba_process_parameter**](ProcessParametersApi.md#delete_vba_process_parameter) | **DELETE** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/parameters/{vBAProcessParameterKey} | Delete VBAProcessParameter |
| [**get_vba_process_parameter**](ProcessParametersApi.md#get_vba_process_parameter) | **GET** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/parameters/{vBAProcessParameterKey} | Get VBAProcessParameter |
| [**update_batch_vba_process_parameter**](ProcessParametersApi.md#update_batch_vba_process_parameter) | **PUT** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/parameters-batch | Update Batch VBAProcessParameter |
| [**update_vba_process_parameter**](ProcessParametersApi.md#update_vba_process_parameter) | **PUT** /vbaprocesses/{vBAProcessKey}/types/{vBAProcessType}/parameters/{vBAProcessParameterKey} | Update VBAProcessParameter |


## create_vba_process_parameter

> <VBAProcessParameterVBAResponse> create_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)

Create VBAProcessParameter

Creates a new VBAProcessParameter

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

api_instance = Vba::ProcessParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
vba_process_parameter = Vba::VBAProcessParameter.new({vba_process_parameter_key: 37, parameter_name: 'parameter_name_example', parameter_type: 'parameter_type_example', process_automation: false, vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcessParameter | 

begin
  # Create VBAProcessParameter
  result = api_instance.create_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->create_vba_process_parameter: #{e}"
end
```

#### Using the create_vba_process_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessParameterVBAResponse>, Integer, Hash)> create_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)

```ruby
begin
  # Create VBAProcessParameter
  data, status_code, headers = api_instance.create_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->create_vba_process_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **vba_process_parameter** | [**VBAProcessParameter**](VBAProcessParameter.md) |  |  |

### Return type

[**VBAProcessParameterVBAResponse**](VBAProcessParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_process_parameter

> delete_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)

Delete VBAProcessParameter

Deletes an VBAProcessParameter

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

api_instance = Vba::ProcessParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_parameter_key = 56 # Integer | VBAProcessParameter Key

begin
  # Delete VBAProcessParameter
  api_instance.delete_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->delete_vba_process_parameter: #{e}"
end
```

#### Using the delete_vba_process_parameter_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)

```ruby
begin
  # Delete VBAProcessParameter
  data, status_code, headers = api_instance.delete_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->delete_vba_process_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_parameter_key** | **Integer** | VBAProcessParameter Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_process_parameter

> <VBAProcessParameterVBAResponse> get_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)

Get VBAProcessParameter

Gets VBAProcessParameter

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

api_instance = Vba::ProcessParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_parameter_key = 56 # Integer | VBAProcessParameter Key

begin
  # Get VBAProcessParameter
  result = api_instance.get_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->get_vba_process_parameter: #{e}"
end
```

#### Using the get_vba_process_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessParameterVBAResponse>, Integer, Hash)> get_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)

```ruby
begin
  # Get VBAProcessParameter
  data, status_code, headers = api_instance.get_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->get_vba_process_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_parameter_key** | **Integer** | VBAProcessParameter Key |  |

### Return type

[**VBAProcessParameterVBAResponse**](VBAProcessParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_process_parameter

> <MultiCodeResponseListVBAResponse> update_batch_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)

Update Batch VBAProcessParameter

Updates a multiple VBAProcessParameter.

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

api_instance = Vba::ProcessParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
vba_process_parameter = [Vba::VBAProcessParameter.new({vba_process_parameter_key: 37, parameter_name: 'parameter_name_example', parameter_type: 'parameter_type_example', process_automation: false, vba_process_key: 37, vba_process_type: 'vba_process_type_example'})] # Array<VBAProcessParameter> | 

begin
  # Update Batch VBAProcessParameter
  result = api_instance.update_batch_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->update_batch_vba_process_parameter: #{e}"
end
```

#### Using the update_batch_vba_process_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)

```ruby
begin
  # Update Batch VBAProcessParameter
  data, status_code, headers = api_instance.update_batch_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, vba_process_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->update_batch_vba_process_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **vba_process_parameter** | [**Array&lt;VBAProcessParameter&gt;**](VBAProcessParameter.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_process_parameter

> <VBAProcessParameterVBAResponse> update_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key, vba_process_parameter)

Update VBAProcessParameter

Updates a specific VBAProcessParameter.

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

api_instance = Vba::ProcessParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_process_key = 56 # Integer | VBAProcess Key
v_ba_process_type = 'v_ba_process_type_example' # String | VBAProcess Type
v_ba_process_parameter_key = 56 # Integer | VBAProcessParameter Key
vba_process_parameter = Vba::VBAProcessParameter.new({vba_process_parameter_key: 37, parameter_name: 'parameter_name_example', parameter_type: 'parameter_type_example', process_automation: false, vba_process_key: 37, vba_process_type: 'vba_process_type_example'}) # VBAProcessParameter | 

begin
  # Update VBAProcessParameter
  result = api_instance.update_vba_process_parameter(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key, vba_process_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->update_vba_process_parameter: #{e}"
end
```

#### Using the update_vba_process_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessParameterVBAResponse>, Integer, Hash)> update_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key, vba_process_parameter)

```ruby
begin
  # Update VBAProcessParameter
  data, status_code, headers = api_instance.update_vba_process_parameter_with_http_info(vbasoftware_database, v_ba_process_key, v_ba_process_type, v_ba_process_parameter_key, vba_process_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessParametersApi->update_vba_process_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_process_key** | **Integer** | VBAProcess Key |  |
| **v_ba_process_type** | **String** | VBAProcess Type |  |
| **v_ba_process_parameter_key** | **Integer** | VBAProcessParameter Key |  |
| **vba_process_parameter** | [**VBAProcessParameter**](VBAProcessParameter.md) |  |  |

### Return type

[**VBAProcessParameterVBAResponse**](VBAProcessParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

