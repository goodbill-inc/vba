# Vba::AuthDiagnosticCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_diag_code**](AuthDiagnosticCodesApi.md#create_auth_diag_code) | **POST** /auths/{authNumber}/diagnostic-codes | Create Auth Diagnostic Code |
| [**delete_auth_diag_code**](AuthDiagnosticCodesApi.md#delete_auth_diag_code) | **DELETE** /auths/{authNumber}/diagnostic-codes/{diagnosticCode}/diagnostic-code-types/{diagnosticCodeType} | Delete Diagnostic Code |
| [**get_auth_diag_code_list**](AuthDiagnosticCodesApi.md#get_auth_diag_code_list) | **GET** /auths/{authNumber}/diagnostic-codes | List Diagnostic Codes for Auth |
| [**get_diag_code**](AuthDiagnosticCodesApi.md#get_diag_code) | **GET** /auths/{authNumber}/diagnostic-codes/{diagnosticCode}/diagnostic-code-types/{diagnosticCodeType} | Get Diagnostic Code |
| [**get_diag_code_list**](AuthDiagnosticCodesApi.md#get_diag_code_list) | **GET** /auths/{authNumber}/diagnostic-codes/{diagnosticCode} | List Diagnostic Codes with Value |
| [**update_auth_diag_code**](AuthDiagnosticCodesApi.md#update_auth_diag_code) | **PUT** /auths/{authNumber}/diagnostic-codes/{diagnosticCode}/diagnostic-code-types/{diagnosticCodeType} | Update Diagnostic Code |
| [**update_auth_diag_code_batch**](AuthDiagnosticCodesApi.md#update_auth_diag_code_batch) | **PUT** /auths/{authNumber}/diagnostic-codes-batch | Update Diagnostic Code Batch |


## create_auth_diag_code

> <AuthDiagCodesVBAResponse> create_auth_diag_code(vbasoftware_database, auth_number, auth_diag_codes)

Create Auth Diagnostic Code

Creates a new Diagnostic Code.

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
auth_diag_codes = Vba::AuthDiagCodes.new({auth_number: 'auth_number_example', diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', disable_provider_match: false}) # AuthDiagCodes | 

begin
  # Create Auth Diagnostic Code
  result = api_instance.create_auth_diag_code(vbasoftware_database, auth_number, auth_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->create_auth_diag_code: #{e}"
end
```

#### Using the create_auth_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthDiagCodesVBAResponse>, Integer, Hash)> create_auth_diag_code_with_http_info(vbasoftware_database, auth_number, auth_diag_codes)

```ruby
begin
  # Create Auth Diagnostic Code
  data, status_code, headers = api_instance.create_auth_diag_code_with_http_info(vbasoftware_database, auth_number, auth_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->create_auth_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **auth_diag_codes** | [**AuthDiagCodes**](AuthDiagCodes.md) |  |  |

### Return type

[**AuthDiagCodesVBAResponse**](AuthDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_diag_code

> delete_auth_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)

Delete Diagnostic Code

Deletes a specific Diagnostic Code.

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code to delete
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type

begin
  # Delete Diagnostic Code
  api_instance.delete_auth_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->delete_auth_diag_code: #{e}"
end
```

#### Using the delete_auth_diag_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)

```ruby
begin
  # Delete Diagnostic Code
  data, status_code, headers = api_instance.delete_auth_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->delete_auth_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **diagnostic_code** | **String** | Diagnostic Code to delete |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_diag_code_list

> <AuthDiagCodesListVBAResponse> get_auth_diag_code_list(vbasoftware_database, auth_number)

List Diagnostic Codes for Auth

List Diagnostic Codes for a specific Auth

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number

begin
  # List Diagnostic Codes for Auth
  result = api_instance.get_auth_diag_code_list(vbasoftware_database, auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_auth_diag_code_list: #{e}"
end
```

#### Using the get_auth_diag_code_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthDiagCodesListVBAResponse>, Integer, Hash)> get_auth_diag_code_list_with_http_info(vbasoftware_database, auth_number)

```ruby
begin
  # List Diagnostic Codes for Auth
  data, status_code, headers = api_instance.get_auth_diag_code_list_with_http_info(vbasoftware_database, auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthDiagCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_auth_diag_code_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |

### Return type

[**AuthDiagCodesListVBAResponse**](AuthDiagCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_diag_code

> <AuthDiagCodesVBAResponse> get_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)

Get Diagnostic Code

Gets a specific Diagnostic Code

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type

begin
  # Get Diagnostic Code
  result = api_instance.get_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_diag_code: #{e}"
end
```

#### Using the get_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthDiagCodesVBAResponse>, Integer, Hash)> get_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)

```ruby
begin
  # Get Diagnostic Code
  data, status_code, headers = api_instance.get_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |

### Return type

[**AuthDiagCodesVBAResponse**](AuthDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_diag_code_list

> <AuthDiagCodesListVBAResponse> get_diag_code_list(vbasoftware_database, auth_number, diagnostic_code)

List Diagnostic Codes with Value

List Diagnostic Codes with a specific Diagnostic Code value.

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code

begin
  # List Diagnostic Codes with Value
  result = api_instance.get_diag_code_list(vbasoftware_database, auth_number, diagnostic_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_diag_code_list: #{e}"
end
```

#### Using the get_diag_code_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthDiagCodesListVBAResponse>, Integer, Hash)> get_diag_code_list_with_http_info(vbasoftware_database, auth_number, diagnostic_code)

```ruby
begin
  # List Diagnostic Codes with Value
  data, status_code, headers = api_instance.get_diag_code_list_with_http_info(vbasoftware_database, auth_number, diagnostic_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthDiagCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->get_diag_code_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |

### Return type

[**AuthDiagCodesListVBAResponse**](AuthDiagCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_diag_code

> <AuthDiagCodesVBAResponse> update_auth_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type, auth_diag_codes)

Update Diagnostic Code

Updates a specific Diagnostic Code.

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
auth_diag_codes = Vba::AuthDiagCodes.new({auth_number: 'auth_number_example', diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', disable_provider_match: false}) # AuthDiagCodes | 

begin
  # Update Diagnostic Code
  result = api_instance.update_auth_diag_code(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type, auth_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->update_auth_diag_code: #{e}"
end
```

#### Using the update_auth_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthDiagCodesVBAResponse>, Integer, Hash)> update_auth_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type, auth_diag_codes)

```ruby
begin
  # Update Diagnostic Code
  data, status_code, headers = api_instance.update_auth_diag_code_with_http_info(vbasoftware_database, auth_number, diagnostic_code, diagnostic_code_type, auth_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->update_auth_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **auth_diag_codes** | [**AuthDiagCodes**](AuthDiagCodes.md) |  |  |

### Return type

[**AuthDiagCodesVBAResponse**](AuthDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_auth_diag_code_batch

> <MultiCodeResponseListVBAResponse> update_auth_diag_code_batch(vbasoftware_database, auth_number, auth_diag_codes)

Update Diagnostic Code Batch

Updates multiple Diagnostic Code

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

api_instance = Vba::AuthDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
auth_diag_codes = [Vba::AuthDiagCodes.new({auth_number: 'auth_number_example', diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', disable_provider_match: false})] # Array<AuthDiagCodes> | 

begin
  # Update Diagnostic Code Batch
  result = api_instance.update_auth_diag_code_batch(vbasoftware_database, auth_number, auth_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->update_auth_diag_code_batch: #{e}"
end
```

#### Using the update_auth_diag_code_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_auth_diag_code_batch_with_http_info(vbasoftware_database, auth_number, auth_diag_codes)

```ruby
begin
  # Update Diagnostic Code Batch
  data, status_code, headers = api_instance.update_auth_diag_code_batch_with_http_info(vbasoftware_database, auth_number, auth_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthDiagnosticCodesApi->update_auth_diag_code_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **auth_diag_codes** | [**Array&lt;AuthDiagCodes&gt;**](AuthDiagCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

