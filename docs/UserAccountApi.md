# Vba::UserAccountApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_disable_user**](UserAccountApi.md#admin_disable_user) | **POST** /users/{userID}/admin-disable | Admin Disable User |
| [**admin_enable_user**](UserAccountApi.md#admin_enable_user) | **POST** /users/{userID}/admin-enable | Admin Enable User |
| [**admin_resend_confirmation_code**](UserAccountApi.md#admin_resend_confirmation_code) | **POST** /users/{userID}/resend-confirmation-code | Admin Resend Confirmation Code |
| [**admin_resend_welcome_mesasge**](UserAccountApi.md#admin_resend_welcome_mesasge) | **POST** /users/{userID}/resend-welcome-message | Admin Resend Welcome Message |
| [**confirm_forgot_password**](UserAccountApi.md#confirm_forgot_password) | **POST** /confirm-forgot-password | Confirm Forgot Password |
| [**forgot_password**](UserAccountApi.md#forgot_password) | **POST** /forgot-password | Forgot Password |
| [**lock_user_account**](UserAccountApi.md#lock_user_account) | **PUT** /users/{userID}/lock | Lock User Account |
| [**refresh_user_tokens**](UserAccountApi.md#refresh_user_tokens) | **POST** /user-refresh-tokens | Refresh User Tokens |
| [**unlock_user_account**](UserAccountApi.md#unlock_user_account) | **PUT** /users/{userID}/unlock | Unlock User Account |
| [**user_authentication**](UserAccountApi.md#user_authentication) | **POST** /user-authentication | User Authentication |
| [**user_change_password**](UserAccountApi.md#user_change_password) | **POST** /users/{userID}/change-password | User Change Password |
| [**user_change_temp_password**](UserAccountApi.md#user_change_temp_password) | **POST** /change-temporary-password | Change Temporary Password |
| [**user_reset_password**](UserAccountApi.md#user_reset_password) | **POST** /users/{userID}/admin-reset-password | Admin Reset User Password |


## admin_disable_user

> <StringVBAResponse> admin_disable_user(vbasoftware_database, user_id)

Admin Disable User

Admin request to disable a User.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Disable User
  result = api_instance.admin_disable_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_disable_user: #{e}"
end
```

#### Using the admin_disable_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> admin_disable_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Admin Disable User
  data, status_code, headers = api_instance.admin_disable_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_disable_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## admin_enable_user

> <StringVBAResponse> admin_enable_user(vbasoftware_database, user_id)

Admin Enable User

Admin request to enable a User.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Enable User
  result = api_instance.admin_enable_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_enable_user: #{e}"
end
```

#### Using the admin_enable_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> admin_enable_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Admin Enable User
  data, status_code, headers = api_instance.admin_enable_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_enable_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## admin_resend_confirmation_code

> <StringVBAResponse> admin_resend_confirmation_code(vbasoftware_database, user_id)

Admin Resend Confirmation Code

Resends a User a confirmation code.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Resend Confirmation Code
  result = api_instance.admin_resend_confirmation_code(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_resend_confirmation_code: #{e}"
end
```

#### Using the admin_resend_confirmation_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> admin_resend_confirmation_code_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Admin Resend Confirmation Code
  data, status_code, headers = api_instance.admin_resend_confirmation_code_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_resend_confirmation_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## admin_resend_welcome_mesasge

> <StringVBAResponse> admin_resend_welcome_mesasge(vbasoftware_database, user_id)

Admin Resend Welcome Message

Resends the invitation message to a user that already exists and resets the expiration on the user's sign-up window.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Resend Welcome Message
  result = api_instance.admin_resend_welcome_mesasge(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_resend_welcome_mesasge: #{e}"
end
```

#### Using the admin_resend_welcome_mesasge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> admin_resend_welcome_mesasge_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Admin Resend Welcome Message
  data, status_code, headers = api_instance.admin_resend_welcome_mesasge_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->admin_resend_welcome_mesasge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## confirm_forgot_password

> <UserConfirmForgotPasswordResponseVBAResponse> confirm_forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_confirm_forgot_password_request)

Confirm Forgot Password

Allows a user to enter a confirmation code to reset a forgotten password.

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
end

api_instance = Vba::UserAccountApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_confirm_forgot_password_request = Vba::UserConfirmForgotPasswordRequest.new # UserConfirmForgotPasswordRequest | 

begin
  # Confirm Forgot Password
  result = api_instance.confirm_forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_confirm_forgot_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->confirm_forgot_password: #{e}"
end
```

#### Using the confirm_forgot_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserConfirmForgotPasswordResponseVBAResponse>, Integer, Hash)> confirm_forgot_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_confirm_forgot_password_request)

```ruby
begin
  # Confirm Forgot Password
  data, status_code, headers = api_instance.confirm_forgot_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_confirm_forgot_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserConfirmForgotPasswordResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->confirm_forgot_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **user_confirm_forgot_password_request** | [**UserConfirmForgotPasswordRequest**](UserConfirmForgotPasswordRequest.md) |  |  |

### Return type

[**UserConfirmForgotPasswordResponseVBAResponse**](UserConfirmForgotPasswordResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## forgot_password

> <UserForgotPasswordResponseVBAResponse> forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_forgot_password_request)

Forgot Password

Begin password recovery flow. Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password.

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
end

api_instance = Vba::UserAccountApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_forgot_password_request = Vba::UserForgotPasswordRequest.new # UserForgotPasswordRequest | 

begin
  # Forgot Password
  result = api_instance.forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_forgot_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->forgot_password: #{e}"
end
```

#### Using the forgot_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserForgotPasswordResponseVBAResponse>, Integer, Hash)> forgot_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_forgot_password_request)

```ruby
begin
  # Forgot Password
  data, status_code, headers = api_instance.forgot_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_forgot_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserForgotPasswordResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->forgot_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **user_forgot_password_request** | [**UserForgotPasswordRequest**](UserForgotPasswordRequest.md) |  |  |

### Return type

[**UserForgotPasswordResponseVBAResponse**](UserForgotPasswordResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## lock_user_account

> <UsersVBAResponse> lock_user_account(vbasoftware_database, user_id)

Lock User Account

Locks a specific user account to prevent access

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Lock User Account
  result = api_instance.lock_user_account(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->lock_user_account: #{e}"
end
```

#### Using the lock_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> lock_user_account_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Lock User Account
  data, status_code, headers = api_instance.lock_user_account_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->lock_user_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UsersVBAResponse**](UsersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## refresh_user_tokens

> <UserAuthenticationResponseVBAResponse> refresh_user_tokens(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, expired_id_token, refresh_token)

Refresh User Tokens

Uses the Refresh Token to obtain new JWT tokens to extend the user's session.

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
end

api_instance = Vba::UserAccountApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expired_id_token = 'expired_id_token_example' # String | Expired Id Token
refresh_token = 'refresh_token_example' # String | Refresh Token

begin
  # Refresh User Tokens
  result = api_instance.refresh_user_tokens(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, expired_id_token, refresh_token)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->refresh_user_tokens: #{e}"
end
```

#### Using the refresh_user_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAuthenticationResponseVBAResponse>, Integer, Hash)> refresh_user_tokens_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, expired_id_token, refresh_token)

```ruby
begin
  # Refresh User Tokens
  data, status_code, headers = api_instance.refresh_user_tokens_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, expired_id_token, refresh_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAuthenticationResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->refresh_user_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **expired_id_token** | **String** | Expired Id Token |  |
| **refresh_token** | **String** | Refresh Token |  |

### Return type

[**UserAuthenticationResponseVBAResponse**](UserAuthenticationResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## unlock_user_account

> <UsersVBAResponse> unlock_user_account(vbasoftware_database, user_id)

Unlock User Account

Unlocks a specific user account to grant access

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Unlock User Account
  result = api_instance.unlock_user_account(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->unlock_user_account: #{e}"
end
```

#### Using the unlock_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> unlock_user_account_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Unlock User Account
  data, status_code, headers = api_instance.unlock_user_account_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->unlock_user_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UsersVBAResponse**](UsersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## user_authentication

> <UserAuthenticationResponseVBAResponse> user_authentication(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, opts)

User Authentication

Starts User Authentication

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = Vba::UserAccountApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  vbasoftware_machine_id: 'vbasoftware_machine_id_example' # String | Machine ID (optional)
}

begin
  # User Authentication
  result = api_instance.user_authentication(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_authentication: #{e}"
end
```

#### Using the user_authentication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAuthenticationResponseVBAResponse>, Integer, Hash)> user_authentication_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, opts)

```ruby
begin
  # User Authentication
  data, status_code, headers = api_instance.user_authentication_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAuthenticationResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_authentication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **vbasoftware_machine_id** | **String** | Machine ID (optional) | [optional] |

### Return type

[**UserAuthenticationResponseVBAResponse**](UserAuthenticationResponseVBAResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## user_change_password

> <StringVBAResponse> user_change_password(vbasoftware_database, user_id, user_reset_password_request)

User Change Password

User requests to change their password.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_reset_password_request = Vba::UserResetPasswordRequest.new({access_token: 'access_token_example', previous_password: 'previous_password_example', proposed_password: 'proposed_password_example'}) # UserResetPasswordRequest | 

begin
  # User Change Password
  result = api_instance.user_change_password(vbasoftware_database, user_id, user_reset_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_change_password: #{e}"
end
```

#### Using the user_change_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> user_change_password_with_http_info(vbasoftware_database, user_id, user_reset_password_request)

```ruby
begin
  # User Change Password
  data, status_code, headers = api_instance.user_change_password_with_http_info(vbasoftware_database, user_id, user_reset_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_change_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_reset_password_request** | [**UserResetPasswordRequest**](UserResetPasswordRequest.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## user_change_temp_password

> <UserChangeTempPasswordResponseVBAResponse> user_change_temp_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_change_temp_password_request)

Change Temporary Password

Changes a User's temporary password.

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
end

api_instance = Vba::UserAccountApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_change_temp_password_request = Vba::UserChangeTempPasswordRequest.new({user_id: 'user_id_example', new_password: 'new_password_example', session: 'session_example'}) # UserChangeTempPasswordRequest | 

begin
  # Change Temporary Password
  result = api_instance.user_change_temp_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_change_temp_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_change_temp_password: #{e}"
end
```

#### Using the user_change_temp_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserChangeTempPasswordResponseVBAResponse>, Integer, Hash)> user_change_temp_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_change_temp_password_request)

```ruby
begin
  # Change Temporary Password
  data, status_code, headers = api_instance.user_change_temp_password_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_change_temp_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserChangeTempPasswordResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_change_temp_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **user_change_temp_password_request** | [**UserChangeTempPasswordRequest**](UserChangeTempPasswordRequest.md) |  |  |

### Return type

[**UserChangeTempPasswordResponseVBAResponse**](UserChangeTempPasswordResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## user_reset_password

> <StringVBAResponse> user_reset_password(vbasoftware_database, user_id)

Admin Reset User Password

Admin request to reset a User's password. When an Administrator calls this API, the User's current password is invalidated and must be changed. If a user tries to sign in after the API is called, the User will get a `PasswordResetRequired` message back and should use the `forgot password` flow. In addition, if a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.

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

api_instance = Vba::UserAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Reset User Password
  result = api_instance.user_reset_password(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_reset_password: #{e}"
end
```

#### Using the user_reset_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> user_reset_password_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Admin Reset User Password
  data, status_code, headers = api_instance.user_reset_password_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAccountApi->user_reset_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

