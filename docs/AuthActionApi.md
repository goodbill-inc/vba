# Vba::AuthActionApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_auth_action**](AuthActionApi.md#list_auth_action) | **GET** /auth-actions | List AuthActions |


## list_auth_action

> <AuthActionListVBAResponse> list_auth_action(vbasoftware_database)

List AuthActions

List all AuthActions

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

api_instance = Vba::AuthActionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List AuthActions
  result = api_instance.list_auth_action(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthActionApi->list_auth_action: #{e}"
end
```

#### Using the list_auth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthActionListVBAResponse>, Integer, Hash)> list_auth_action_with_http_info(vbasoftware_database)

```ruby
begin
  # List AuthActions
  data, status_code, headers = api_instance.list_auth_action_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthActionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthActionApi->list_auth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**AuthActionListVBAResponse**](AuthActionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

