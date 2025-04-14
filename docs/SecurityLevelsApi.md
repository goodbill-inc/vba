# Vba::SecurityLevelsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_security_level**](SecurityLevelsApi.md#get_security_level) | **GET** /security-levels/{securityLevel} | Get SecurityLevel |
| [**list_security_level**](SecurityLevelsApi.md#list_security_level) | **GET** /security-levels | List SecurityLevel |


## get_security_level

> <SecurityLevelVBAResponse> get_security_level(vbasoftware_database, security_level)

Get SecurityLevel

Gets SecurityLevel

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

api_instance = Vba::SecurityLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_level = 56 # Integer | Security Level

begin
  # Get SecurityLevel
  result = api_instance.get_security_level(vbasoftware_database, security_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityLevelsApi->get_security_level: #{e}"
end
```

#### Using the get_security_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityLevelVBAResponse>, Integer, Hash)> get_security_level_with_http_info(vbasoftware_database, security_level)

```ruby
begin
  # Get SecurityLevel
  data, status_code, headers = api_instance.get_security_level_with_http_info(vbasoftware_database, security_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityLevelsApi->get_security_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_level** | **Integer** | Security Level |  |

### Return type

[**SecurityLevelVBAResponse**](SecurityLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_level

> <SecurityLevelListVBAResponse> list_security_level(vbasoftware_database)

List SecurityLevel

Lists all SecurityLevel 

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

api_instance = Vba::SecurityLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List SecurityLevel
  result = api_instance.list_security_level(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityLevelsApi->list_security_level: #{e}"
end
```

#### Using the list_security_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityLevelListVBAResponse>, Integer, Hash)> list_security_level_with_http_info(vbasoftware_database)

```ruby
begin
  # List SecurityLevel
  data, status_code, headers = api_instance.list_security_level_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityLevelListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityLevelsApi->list_security_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**SecurityLevelListVBAResponse**](SecurityLevelListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

