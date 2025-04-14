# Vba::AdvAuthApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auth_adjustment**](AdvAuthApi.md#auth_adjustment) | **POST** /auths/{authNumber}/adjust | Auth Adjustment |
| [**auth_process_status**](AdvAuthApi.md#auth_process_status) | **POST** /auths/{authNumber}/process-status/{newAuthCode} | Process a change in Auth Status |


## auth_adjustment

> <AuthVBAResponse> auth_adjustment(vbasoftware_database, auth_number, auth_adjustment)

Auth Adjustment

Performs an Auth Adjustment using the values and flags specified

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

api_instance = Vba::AdvAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
auth_adjustment = Vba::AuthAdjustment.new({auth_number: 'auth_number_example', recalc_ibnr: false, copy_proc_codes: false, copy_diag_codes: false}) # AuthAdjustment | 

begin
  # Auth Adjustment
  result = api_instance.auth_adjustment(vbasoftware_database, auth_number, auth_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAuthApi->auth_adjustment: #{e}"
end
```

#### Using the auth_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVBAResponse>, Integer, Hash)> auth_adjustment_with_http_info(vbasoftware_database, auth_number, auth_adjustment)

```ruby
begin
  # Auth Adjustment
  data, status_code, headers = api_instance.auth_adjustment_with_http_info(vbasoftware_database, auth_number, auth_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAuthApi->auth_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **auth_adjustment** | [**AuthAdjustment**](AuthAdjustment.md) |  |  |

### Return type

[**AuthVBAResponse**](AuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## auth_process_status

> <AuthVBAResponse> auth_process_status(vbasoftware_database, auth_number, new_auth_code)

Process a change in Auth Status

Initiates an Auth Status change.

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

api_instance = Vba::AdvAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | the Entity
new_auth_code = 'new_auth_code_example' # String | New Auth Code

begin
  # Process a change in Auth Status
  result = api_instance.auth_process_status(vbasoftware_database, auth_number, new_auth_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAuthApi->auth_process_status: #{e}"
end
```

#### Using the auth_process_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVBAResponse>, Integer, Hash)> auth_process_status_with_http_info(vbasoftware_database, auth_number, new_auth_code)

```ruby
begin
  # Process a change in Auth Status
  data, status_code, headers = api_instance.auth_process_status_with_http_info(vbasoftware_database, auth_number, new_auth_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAuthApi->auth_process_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | the Entity |  |
| **new_auth_code** | **String** | New Auth Code |  |

### Return type

[**AuthVBAResponse**](AuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

