# Vba::MultiFactorAuthApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_mfa_globally**](MultiFactorAuthApi.md#disable_mfa_globally) | **POST** /mfa-disable-globally | Disable MFA for all Users |
| [**disable_mfa_setup**](MultiFactorAuthApi.md#disable_mfa_setup) | **POST** /mfa-disable | Disable MFA |
| [**enable_mfa_globally**](MultiFactorAuthApi.md#enable_mfa_globally) | **POST** /mfa-enable-globally | Enable MFA for all Users |
| [**enable_mfa_setup**](MultiFactorAuthApi.md#enable_mfa_setup) | **POST** /mfa-enable | Enable MFA |
| [**get_mfa_status**](MultiFactorAuthApi.md#get_mfa_status) | **GET** /mfa-status | Get Current MFA Status |
| [**m_fa_device_setup**](MultiFactorAuthApi.md#m_fa_device_setup) | **POST** /mfa-setup | Request MFA Device Setup |
| [**verify_mfa_device_setup**](MultiFactorAuthApi.md#verify_mfa_device_setup) | **POST** /mfa-verify-setup | Verify an MFA Device Setup |


## disable_mfa_globally

> <StringVBAResponse> disable_mfa_globally(vbasoftware_database)

Disable MFA for all Users

Disables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be set to inactive.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Disable MFA for all Users
  result = api_instance.disable_mfa_globally(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->disable_mfa_globally: #{e}"
end
```

#### Using the disable_mfa_globally_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> disable_mfa_globally_with_http_info(vbasoftware_database)

```ruby
begin
  # Disable MFA for all Users
  data, status_code, headers = api_instance.disable_mfa_globally_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->disable_mfa_globally_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## disable_mfa_setup

> <StringVBAResponse> disable_mfa_setup(vbasoftware_database, disable_mfa_setup_request)

Disable MFA

Disables MFA (Multi-Factor Authentication) for a specified user.  If a MFA software token has previously been registered, it is not destroyed, just disabled.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disable_mfa_setup_request = Vba::DisableMFASetupRequest.new({user_id: 'user_id_example'}) # DisableMFASetupRequest | 

begin
  # Disable MFA
  result = api_instance.disable_mfa_setup(vbasoftware_database, disable_mfa_setup_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->disable_mfa_setup: #{e}"
end
```

#### Using the disable_mfa_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> disable_mfa_setup_with_http_info(vbasoftware_database, disable_mfa_setup_request)

```ruby
begin
  # Disable MFA
  data, status_code, headers = api_instance.disable_mfa_setup_with_http_info(vbasoftware_database, disable_mfa_setup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->disable_mfa_setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disable_mfa_setup_request** | [**DisableMFASetupRequest**](DisableMFASetupRequest.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## enable_mfa_globally

> <StringVBAResponse> enable_mfa_globally(vbasoftware_database)

Enable MFA for all Users

Enables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be re-enabled.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Enable MFA for all Users
  result = api_instance.enable_mfa_globally(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->enable_mfa_globally: #{e}"
end
```

#### Using the enable_mfa_globally_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> enable_mfa_globally_with_http_info(vbasoftware_database)

```ruby
begin
  # Enable MFA for all Users
  data, status_code, headers = api_instance.enable_mfa_globally_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->enable_mfa_globally_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## enable_mfa_setup

> <StringVBAResponse> enable_mfa_setup(vbasoftware_database, enable_mfa_setup_request)

Enable MFA

Enables MFA (Multi-Factor Authentication) for a specified user.  If an MFA software token has previously been registered, it will be re-enabled.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enable_mfa_setup_request = Vba::EnableMFASetupRequest.new({user_id: 'user_id_example'}) # EnableMFASetupRequest | 

begin
  # Enable MFA
  result = api_instance.enable_mfa_setup(vbasoftware_database, enable_mfa_setup_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->enable_mfa_setup: #{e}"
end
```

#### Using the enable_mfa_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> enable_mfa_setup_with_http_info(vbasoftware_database, enable_mfa_setup_request)

```ruby
begin
  # Enable MFA
  data, status_code, headers = api_instance.enable_mfa_setup_with_http_info(vbasoftware_database, enable_mfa_setup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->enable_mfa_setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enable_mfa_setup_request** | [**EnableMFASetupRequest**](EnableMFASetupRequest.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_mfa_status

> <BooleanVBAResponse> get_mfa_status(vbasoftware_database)

Get Current MFA Status

Fetches the current multi-factor authentication (MFA) status for the logged-in user.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Get Current MFA Status
  result = api_instance.get_mfa_status(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->get_mfa_status: #{e}"
end
```

#### Using the get_mfa_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanVBAResponse>, Integer, Hash)> get_mfa_status_with_http_info(vbasoftware_database)

```ruby
begin
  # Get Current MFA Status
  data, status_code, headers = api_instance.get_mfa_status_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->get_mfa_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**BooleanVBAResponse**](BooleanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## m_fa_device_setup

> <MFADeviceSetupResponseVBAResponse> m_fa_device_setup(vbasoftware_database, mfa_device_setup_request)

Request MFA Device Setup

Generates a SecretCode and a QR code.  Either can be used for setting up multi-factor authentication (MFA) with an authenticator app.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
mfa_device_setup_request = Vba::MFADeviceSetupRequest.new # MFADeviceSetupRequest | 

begin
  # Request MFA Device Setup
  result = api_instance.m_fa_device_setup(vbasoftware_database, mfa_device_setup_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->m_fa_device_setup: #{e}"
end
```

#### Using the m_fa_device_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MFADeviceSetupResponseVBAResponse>, Integer, Hash)> m_fa_device_setup_with_http_info(vbasoftware_database, mfa_device_setup_request)

```ruby
begin
  # Request MFA Device Setup
  data, status_code, headers = api_instance.m_fa_device_setup_with_http_info(vbasoftware_database, mfa_device_setup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MFADeviceSetupResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->m_fa_device_setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **mfa_device_setup_request** | [**MFADeviceSetupRequest**](MFADeviceSetupRequest.md) |  |  |

### Return type

[**MFADeviceSetupResponseVBAResponse**](MFADeviceSetupResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## verify_mfa_device_setup

> <VerifyMFADeviceSetupResponseVBAResponse> verify_mfa_device_setup(vbasoftware_database, verify_mfa_device_setup_request)

Verify an MFA Device Setup

Verifies the registration of a multi-factor authentication (MFA) device for the user by verifying the software token and associating it with the user's account.

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

api_instance = Vba::MultiFactorAuthApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
verify_mfa_device_setup_request = Vba::VerifyMFADeviceSetupRequest.new # VerifyMFADeviceSetupRequest | 

begin
  # Verify an MFA Device Setup
  result = api_instance.verify_mfa_device_setup(vbasoftware_database, verify_mfa_device_setup_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->verify_mfa_device_setup: #{e}"
end
```

#### Using the verify_mfa_device_setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyMFADeviceSetupResponseVBAResponse>, Integer, Hash)> verify_mfa_device_setup_with_http_info(vbasoftware_database, verify_mfa_device_setup_request)

```ruby
begin
  # Verify an MFA Device Setup
  data, status_code, headers = api_instance.verify_mfa_device_setup_with_http_info(vbasoftware_database, verify_mfa_device_setup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyMFADeviceSetupResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MultiFactorAuthApi->verify_mfa_device_setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **verify_mfa_device_setup_request** | [**VerifyMFADeviceSetupRequest**](VerifyMFADeviceSetupRequest.md) |  |  |

### Return type

[**VerifyMFADeviceSetupResponseVBAResponse**](VerifyMFADeviceSetupResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

