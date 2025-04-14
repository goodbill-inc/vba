# Vba::LogTypeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_log_type**](LogTypeApi.md#get_log_type) | **GET** /log-types/{name} | Get LogType |
| [**list_log_type**](LogTypeApi.md#list_log_type) | **GET** /log-types | List all LogTypes |


## get_log_type

> <LogTypeVBAResponse> get_log_type(vbasoftware_database, name)

Get LogType

Gets LogType

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

api_instance = Vba::LogTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
name = 'name_example' # String | LogType Code

begin
  # Get LogType
  result = api_instance.get_log_type(vbasoftware_database, name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LogTypeApi->get_log_type: #{e}"
end
```

#### Using the get_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogTypeVBAResponse>, Integer, Hash)> get_log_type_with_http_info(vbasoftware_database, name)

```ruby
begin
  # Get LogType
  data, status_code, headers = api_instance.get_log_type_with_http_info(vbasoftware_database, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LogTypeApi->get_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **name** | **String** | LogType Code |  |

### Return type

[**LogTypeVBAResponse**](LogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_log_type

> <LogTypeListVBAResponse> list_log_type(vbasoftware_database)

List all LogTypes

List all available LogTypes

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

api_instance = Vba::LogTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List all LogTypes
  result = api_instance.list_log_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LogTypeApi->list_log_type: #{e}"
end
```

#### Using the list_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogTypeListVBAResponse>, Integer, Hash)> list_log_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List all LogTypes
  data, status_code, headers = api_instance.list_log_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LogTypeApi->list_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**LogTypeListVBAResponse**](LogTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

