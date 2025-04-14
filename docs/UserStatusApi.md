# Vba::UserStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_status**](UserStatusApi.md#get_user_status) | **GET** /users/{userId}/status | Get User Status |


## get_user_status

> <VBAUserStatusVBAResponse> get_user_status(vbasoftware_database, user_id)

Get User Status

Retrieves the current status of the user, including reminders and login status.

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

api_instance = Vba::UserStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Get User Status
  result = api_instance.get_user_status(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserStatusApi->get_user_status: #{e}"
end
```

#### Using the get_user_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAUserStatusVBAResponse>, Integer, Hash)> get_user_status_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Get User Status
  data, status_code, headers = api_instance.get_user_status_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAUserStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserStatusApi->get_user_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**VBAUserStatusVBAResponse**](VBAUserStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

