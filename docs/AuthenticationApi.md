# Vba::AuthenticationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**kick_longest_session_user**](AuthenticationApi.md#kick_longest_session_user) | **POST** /kick | Forcefully terminate the longest active user session |
| [**logout_user**](AuthenticationApi.md#logout_user) | **POST** /logout | Log out user |


## kick_longest_session_user

> kick_longest_session_user(vbasoftware_database)

Forcefully terminate the longest active user session

Ends the session of the user who has been logged in the longest, forcing them to log in again.

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

api_instance = Vba::AuthenticationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Forcefully terminate the longest active user session
  api_instance.kick_longest_session_user(vbasoftware_database)
rescue Vba::ApiError => e
  puts "Error when calling AuthenticationApi->kick_longest_session_user: #{e}"
end
```

#### Using the kick_longest_session_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> kick_longest_session_user_with_http_info(vbasoftware_database)

```ruby
begin
  # Forcefully terminate the longest active user session
  data, status_code, headers = api_instance.kick_longest_session_user_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthenticationApi->kick_longest_session_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## logout_user

> logout_user(vbasoftware_database)

Log out user

Terminates the current user's session and logs them out of the system.

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

api_instance = Vba::AuthenticationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Log out user
  api_instance.logout_user(vbasoftware_database)
rescue Vba::ApiError => e
  puts "Error when calling AuthenticationApi->logout_user: #{e}"
end
```

#### Using the logout_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_user_with_http_info(vbasoftware_database)

```ruby
begin
  # Log out user
  data, status_code, headers = api_instance.logout_user_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthenticationApi->logout_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

