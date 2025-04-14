# Vba::UserApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_disable_user**](UserApi.md#admin_disable_user) | **POST** /users/{userID}/admin-disable | Admin Disable User |
| [**admin_enable_user**](UserApi.md#admin_enable_user) | **POST** /users/{userID}/admin-enable | Admin Enable User |
| [**admin_resend_confirmation_code**](UserApi.md#admin_resend_confirmation_code) | **POST** /users/{userID}/resend-confirmation-code | Admin Resend Confirmation Code |
| [**admin_resend_welcome_mesasge**](UserApi.md#admin_resend_welcome_mesasge) | **POST** /users/{userID}/resend-welcome-message | Admin Resend Welcome Message |
| [**confirm_forgot_password**](UserApi.md#confirm_forgot_password) | **POST** /confirm-forgot-password | Confirm Forgot Password |
| [**create_users**](UserApi.md#create_users) | **POST** /users | Create User |
| [**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{userID} | Delete User |
| [**forgot_password**](UserApi.md#forgot_password) | **POST** /forgot-password | Forgot Password |
| [**get_user**](UserApi.md#get_user) | **GET** /users/{userID} | Get User |
| [**list_users**](UserApi.md#list_users) | **GET** /users | List Users |
| [**refresh_user_tokens**](UserApi.md#refresh_user_tokens) | **POST** /user-refresh-tokens | Refresh User Tokens |
| [**submit_mfa_code**](UserApi.md#submit_mfa_code) | **POST** /mfa-submit-code | Submit MFA Code |
| [**update_batch_users**](UserApi.md#update_batch_users) | **PUT** /users-batch | Create or Update Batch Users |
| [**update_user**](UserApi.md#update_user) | **PUT** /users/{userID} | Update User |
| [**user_authentication**](UserApi.md#user_authentication) | **POST** /user-authentication | User Authentication |
| [**user_change_password**](UserApi.md#user_change_password) | **POST** /users/{userID}/change-password | User Change Password |
| [**user_change_temp_password**](UserApi.md#user_change_temp_password) | **POST** /change-temporary-password | Change Temporary Password |
| [**user_reset_password**](UserApi.md#user_reset_password) | **POST** /users/{userID}/admin-reset-password | Admin Reset User Password |


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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Disable User
  result = api_instance.admin_disable_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->admin_disable_user: #{e}"
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
  puts "Error when calling UserApi->admin_disable_user_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Enable User
  result = api_instance.admin_enable_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->admin_enable_user: #{e}"
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
  puts "Error when calling UserApi->admin_enable_user_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Resend Confirmation Code
  result = api_instance.admin_resend_confirmation_code(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->admin_resend_confirmation_code: #{e}"
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
  puts "Error when calling UserApi->admin_resend_confirmation_code_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Resend Welcome Message
  result = api_instance.admin_resend_welcome_mesasge(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->admin_resend_welcome_mesasge: #{e}"
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
  puts "Error when calling UserApi->admin_resend_welcome_mesasge_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_confirm_forgot_password_request = Vba::UserConfirmForgotPasswordRequest.new # UserConfirmForgotPasswordRequest | 

begin
  # Confirm Forgot Password
  result = api_instance.confirm_forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_confirm_forgot_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->confirm_forgot_password: #{e}"
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
  puts "Error when calling UserApi->confirm_forgot_password_with_http_info: #{e}"
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


## create_users

> <UsersVBAResponse> create_users(vbasoftware_database, users)

Create User

Creates a new User

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
users = Vba::Users.new({user_id: 'user_id_example', account_locked: false, administrator: false, audit_user: false, e_mail_address: 'e_mail_address_example', i_d_card_notification: false, is_sso_user: false, mf_a_enabled: false, nav_id_underline: false, single_use_account: false, use_windows_authentication: false, vb_a_password_reset: false, vb_a_user: false}) # Users | 

begin
  # Create User
  result = api_instance.create_users(vbasoftware_database, users)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->create_users: #{e}"
end
```

#### Using the create_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> create_users_with_http_info(vbasoftware_database, users)

```ruby
begin
  # Create User
  data, status_code, headers = api_instance.create_users_with_http_info(vbasoftware_database, users)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->create_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **users** | [**Users**](Users.md) |  |  |

### Return type

[**UsersVBAResponse**](UsersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_user

> delete_user(vbasoftware_database, user_id)

Delete User

Delete a User

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Delete User
  api_instance.delete_user(vbasoftware_database, user_id)
rescue Vba::ApiError => e
  puts "Error when calling UserApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Delete User
  data, status_code, headers = api_instance.delete_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

api_instance = Vba::UserApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_forgot_password_request = Vba::UserForgotPasswordRequest.new # UserForgotPasswordRequest | 

begin
  # Forgot Password
  result = api_instance.forgot_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_forgot_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->forgot_password: #{e}"
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
  puts "Error when calling UserApi->forgot_password_with_http_info: #{e}"
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


## get_user

> <UsersVBAResponse> get_user(vbasoftware_database, user_id)

Get User

Gets a User by ID

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Get User
  result = api_instance.get_user(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> get_user_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # Get User
  data, status_code, headers = api_instance.get_user_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->get_user_with_http_info: #{e}"
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


## list_users

> <UsersListVBAResponse> list_users(vbasoftware_database)

List Users

Lists all Users

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Users
  result = api_instance.list_users(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersListVBAResponse>, Integer, Hash)> list_users_with_http_info(vbasoftware_database)

```ruby
begin
  # List Users
  data, status_code, headers = api_instance.list_users_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**UsersListVBAResponse**](UsersListVBAResponse.md)

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

api_instance = Vba::UserApi.new
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
  puts "Error when calling UserApi->refresh_user_tokens: #{e}"
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
  puts "Error when calling UserApi->refresh_user_tokens_with_http_info: #{e}"
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


## submit_mfa_code

> <UserAuthenticationResponseVBAResponse> submit_mfa_code(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, submit_mfa_code_request, opts)

Submit MFA Code

Submits a multi-factor authentication (MFA) code provided by the user and completes the authentication process.

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

api_instance = Vba::UserApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
submit_mfa_code_request = Vba::SubmitMFACodeRequest.new({username: 'username_example', mfa_code: 'mfa_code_example', session: 'session_example'}) # SubmitMFACodeRequest | 
opts = {
  vbasoftware_machine_id: 'vbasoftware_machine_id_example' # String | Machine ID (optional)
}

begin
  # Submit MFA Code
  result = api_instance.submit_mfa_code(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, submit_mfa_code_request, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->submit_mfa_code: #{e}"
end
```

#### Using the submit_mfa_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAuthenticationResponseVBAResponse>, Integer, Hash)> submit_mfa_code_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, submit_mfa_code_request, opts)

```ruby
begin
  # Submit MFA Code
  data, status_code, headers = api_instance.submit_mfa_code_with_http_info(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, submit_mfa_code_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAuthenticationResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->submit_mfa_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_client_id** | **String** | Client ID |  |
| **vbasoftware_client_code** | **String** | Client Code |  |
| **vbasoftware_database** | **String** | Target database |  |
| **submit_mfa_code_request** | [**SubmitMFACodeRequest**](SubmitMFACodeRequest.md) |  |  |
| **vbasoftware_machine_id** | **String** | Machine ID (optional) | [optional] |

### Return type

[**UserAuthenticationResponseVBAResponse**](UserAuthenticationResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_users

> <MultiCodeResponseListVBAResponse> update_batch_users(vbasoftware_database, users)

Create or Update Batch Users

Create or Update multiple Users at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
users = [Vba::Users.new({user_id: 'user_id_example', account_locked: false, administrator: false, audit_user: false, e_mail_address: 'e_mail_address_example', i_d_card_notification: false, is_sso_user: false, mf_a_enabled: false, nav_id_underline: false, single_use_account: false, use_windows_authentication: false, vb_a_password_reset: false, vb_a_user: false})] # Array<Users> | 

begin
  # Create or Update Batch Users
  result = api_instance.update_batch_users(vbasoftware_database, users)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->update_batch_users: #{e}"
end
```

#### Using the update_batch_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_users_with_http_info(vbasoftware_database, users)

```ruby
begin
  # Create or Update Batch Users
  data, status_code, headers = api_instance.update_batch_users_with_http_info(vbasoftware_database, users)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->update_batch_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **users** | [**Array&lt;Users&gt;**](Users.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_user

> <UsersVBAResponse> update_user(vbasoftware_database, user_id, users)

Update User

Updates a specific User

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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
users = Vba::Users.new({user_id: 'user_id_example', account_locked: false, administrator: false, audit_user: false, e_mail_address: 'e_mail_address_example', i_d_card_notification: false, is_sso_user: false, mf_a_enabled: false, nav_id_underline: false, single_use_account: false, use_windows_authentication: false, vb_a_password_reset: false, vb_a_user: false}) # Users | 

begin
  # Update User
  result = api_instance.update_user(vbasoftware_database, user_id, users)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> update_user_with_http_info(vbasoftware_database, user_id, users)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.update_user_with_http_info(vbasoftware_database, user_id, users)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **users** | [**Users**](Users.md) |  |  |

### Return type

[**UsersVBAResponse**](UsersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
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

api_instance = Vba::UserApi.new
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
  puts "Error when calling UserApi->user_authentication: #{e}"
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
  puts "Error when calling UserApi->user_authentication_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_reset_password_request = Vba::UserResetPasswordRequest.new({access_token: 'access_token_example', previous_password: 'previous_password_example', proposed_password: 'proposed_password_example'}) # UserResetPasswordRequest | 

begin
  # User Change Password
  result = api_instance.user_change_password(vbasoftware_database, user_id, user_reset_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->user_change_password: #{e}"
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
  puts "Error when calling UserApi->user_change_password_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_client_id = 'vbasoftware_client_id_example' # String | Client ID
vbasoftware_client_code = 'vbasoftware_client_code_example' # String | Client Code
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_change_temp_password_request = Vba::UserChangeTempPasswordRequest.new({user_id: 'user_id_example', new_password: 'new_password_example', session: 'session_example'}) # UserChangeTempPasswordRequest | 

begin
  # Change Temporary Password
  result = api_instance.user_change_temp_password(vbasoftware_client_id, vbasoftware_client_code, vbasoftware_database, user_change_temp_password_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->user_change_temp_password: #{e}"
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
  puts "Error when calling UserApi->user_change_temp_password_with_http_info: #{e}"
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

api_instance = Vba::UserApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # Admin Reset User Password
  result = api_instance.user_reset_password(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserApi->user_reset_password: #{e}"
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
  puts "Error when calling UserApi->user_reset_password_with_http_info: #{e}"
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

