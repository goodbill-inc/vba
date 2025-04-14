# Vba::AuthApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auth_adjustment**](AuthApi.md#auth_adjustment) | **POST** /auths/{authNumber}/adjust | Auth Adjustment |
| [**auth_process_status**](AuthApi.md#auth_process_status) | **POST** /auths/{authNumber}/process-status/{newAuthCode} | Process a change in Auth Status |
| [**create_auth**](AuthApi.md#create_auth) | **POST** /auths | Create Auth |
| [**create_or_update_auth_batch**](AuthApi.md#create_or_update_auth_batch) | **PUT** /auths | Create or Update Auth Batch |
| [**delete_auth**](AuthApi.md#delete_auth) | **DELETE** /auths/{authNumber} | Delete Auth |
| [**get_auth**](AuthApi.md#get_auth) | **GET** /auths/{authNumber} | Get Auth |
| [**get_vba_auth**](AuthApi.md#get_vba_auth) | **GET** /auths-vba/{authNumber} | Get VBA Auth |
| [**update_auth**](AuthApi.md#update_auth) | **PUT** /auths/{authNumber} | Update Auth |


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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
auth_adjustment = Vba::AuthAdjustment.new({auth_number: 'auth_number_example', recalc_ibnr: false, copy_proc_codes: false, copy_diag_codes: false}) # AuthAdjustment | 

begin
  # Auth Adjustment
  result = api_instance.auth_adjustment(vbasoftware_database, auth_number, auth_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->auth_adjustment: #{e}"
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
  puts "Error when calling AuthApi->auth_adjustment_with_http_info: #{e}"
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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | the Entity
new_auth_code = 'new_auth_code_example' # String | New Auth Code

begin
  # Process a change in Auth Status
  result = api_instance.auth_process_status(vbasoftware_database, auth_number, new_auth_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->auth_process_status: #{e}"
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
  puts "Error when calling AuthApi->auth_process_status_with_http_info: #{e}"
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


## create_auth

> <AuthVBAResponse> create_auth(vbasoftware_database, auth)

Create Auth

Creates a new Auth and returns the generated Auth.

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth = Vba::Auth.new({closed: false, new_or_extended: false, previous_treatment: false, t_plan_down_loaded: false, t_plan_printed: 't_plan_printed_example', urgent: false}) # Auth | 

begin
  # Create Auth
  result = api_instance.create_auth(vbasoftware_database, auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->create_auth: #{e}"
end
```

#### Using the create_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVBAResponse>, Integer, Hash)> create_auth_with_http_info(vbasoftware_database, auth)

```ruby
begin
  # Create Auth
  data, status_code, headers = api_instance.create_auth_with_http_info(vbasoftware_database, auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->create_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth** | [**Auth**](Auth.md) |  |  |

### Return type

[**AuthVBAResponse**](AuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_or_update_auth_batch

> <MultiCodeResponseListVBAResponse> create_or_update_auth_batch(vbasoftware_database, auth)

Create or Update Auth Batch

Creates or Updates Multiple Auths

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth = [Vba::Auth.new({closed: false, new_or_extended: false, previous_treatment: false, t_plan_down_loaded: false, t_plan_printed: 't_plan_printed_example', urgent: false})] # Array<Auth> | 

begin
  # Create or Update Auth Batch
  result = api_instance.create_or_update_auth_batch(vbasoftware_database, auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->create_or_update_auth_batch: #{e}"
end
```

#### Using the create_or_update_auth_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_or_update_auth_batch_with_http_info(vbasoftware_database, auth)

```ruby
begin
  # Create or Update Auth Batch
  data, status_code, headers = api_instance.create_or_update_auth_batch_with_http_info(vbasoftware_database, auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->create_or_update_auth_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth** | [**Array&lt;Auth&gt;**](Auth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth

> delete_auth(vbasoftware_database, auth_number)

Delete Auth

Deletes an Auth.

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number

begin
  # Delete Auth
  api_instance.delete_auth(vbasoftware_database, auth_number)
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->delete_auth: #{e}"
end
```

#### Using the delete_auth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_with_http_info(vbasoftware_database, auth_number)

```ruby
begin
  # Delete Auth
  data, status_code, headers = api_instance.delete_auth_with_http_info(vbasoftware_database, auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->delete_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth

> <AuthVBAResponse> get_auth(vbasoftware_database, auth_number)

Get Auth

Gets a specific Auth.

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number

begin
  # Get Auth
  result = api_instance.get_auth(vbasoftware_database, auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->get_auth: #{e}"
end
```

#### Using the get_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVBAResponse>, Integer, Hash)> get_auth_with_http_info(vbasoftware_database, auth_number)

```ruby
begin
  # Get Auth
  data, status_code, headers = api_instance.get_auth_with_http_info(vbasoftware_database, auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->get_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |

### Return type

[**AuthVBAResponse**](AuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_vba_auth

> <VBAAuthVBAResponse> get_vba_auth(vbasoftware_database, auth_number)

Get VBA Auth

Gets a specific Auth with VBASoftware custom fields included.

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number

begin
  # Get VBA Auth
  result = api_instance.get_vba_auth(vbasoftware_database, auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->get_vba_auth: #{e}"
end
```

#### Using the get_vba_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAAuthVBAResponse>, Integer, Hash)> get_vba_auth_with_http_info(vbasoftware_database, auth_number)

```ruby
begin
  # Get VBA Auth
  data, status_code, headers = api_instance.get_vba_auth_with_http_info(vbasoftware_database, auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->get_vba_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |

### Return type

[**VBAAuthVBAResponse**](VBAAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth

> <AuthVBAResponse> update_auth(vbasoftware_database, auth_number, auth)

Update Auth

Updates a specific Auth and returns the updated Auth after changes have been applied.

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

api_instance = Vba::AuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
auth = Vba::Auth.new({closed: false, new_or_extended: false, previous_treatment: false, t_plan_down_loaded: false, t_plan_printed: 't_plan_printed_example', urgent: false}) # Auth | 

begin
  # Update Auth
  result = api_instance.update_auth(vbasoftware_database, auth_number, auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->update_auth: #{e}"
end
```

#### Using the update_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVBAResponse>, Integer, Hash)> update_auth_with_http_info(vbasoftware_database, auth_number, auth)

```ruby
begin
  # Update Auth
  data, status_code, headers = api_instance.update_auth_with_http_info(vbasoftware_database, auth_number, auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthApi->update_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **auth** | [**Auth**](Auth.md) |  |  |

### Return type

[**AuthVBAResponse**](AuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

