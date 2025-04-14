# Vba::AuthCodeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_code**](AuthCodeApi.md#create_auth_code) | **POST** /auth-codes | Create AuthCode |
| [**delete_auth_code**](AuthCodeApi.md#delete_auth_code) | **DELETE** /auth-codes/{authCode} | Delete AuthCode |
| [**get_auth_code**](AuthCodeApi.md#get_auth_code) | **GET** /auth-codes/{authCode} | Get AuthCode |
| [**update_auth_code**](AuthCodeApi.md#update_auth_code) | **PUT** /auth-codes/{authCode} | Update AuthCode |
| [**update_batch_auth_code**](AuthCodeApi.md#update_batch_auth_code) | **PUT** /auth-codes-batch | Update Batch AuthCode |


## create_auth_code

> <AuthCodeVBAResponse> create_auth_code(vbasoftware_database, auth_code)

Create AuthCode

Creates a new AuthCode.

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

api_instance = Vba::AuthCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_code = Vba::AuthCode.new({auth_code: 'auth_code_example'}) # AuthCode | 

begin
  # Create AuthCode
  result = api_instance.create_auth_code(vbasoftware_database, auth_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->create_auth_code: #{e}"
end
```

#### Using the create_auth_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCodeVBAResponse>, Integer, Hash)> create_auth_code_with_http_info(vbasoftware_database, auth_code)

```ruby
begin
  # Create AuthCode
  data, status_code, headers = api_instance.create_auth_code_with_http_info(vbasoftware_database, auth_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->create_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_code** | [**AuthCode**](AuthCode.md) |  |  |

### Return type

[**AuthCodeVBAResponse**](AuthCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_code

> delete_auth_code(vbasoftware_database, auth_code)

Delete AuthCode

Deletes an AuthCode

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

api_instance = Vba::AuthCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_code = 'auth_code_example' # String | Auth Code

begin
  # Delete AuthCode
  api_instance.delete_auth_code(vbasoftware_database, auth_code)
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->delete_auth_code: #{e}"
end
```

#### Using the delete_auth_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_code_with_http_info(vbasoftware_database, auth_code)

```ruby
begin
  # Delete AuthCode
  data, status_code, headers = api_instance.delete_auth_code_with_http_info(vbasoftware_database, auth_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->delete_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_code** | **String** | Auth Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_code

> <AuthCodeVBAResponse> get_auth_code(vbasoftware_database, auth_code)

Get AuthCode

Gets AuthCode

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

api_instance = Vba::AuthCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_code = 'auth_code_example' # String | Auth Code

begin
  # Get AuthCode
  result = api_instance.get_auth_code(vbasoftware_database, auth_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->get_auth_code: #{e}"
end
```

#### Using the get_auth_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCodeVBAResponse>, Integer, Hash)> get_auth_code_with_http_info(vbasoftware_database, auth_code)

```ruby
begin
  # Get AuthCode
  data, status_code, headers = api_instance.get_auth_code_with_http_info(vbasoftware_database, auth_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->get_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_code** | **String** | Auth Code |  |

### Return type

[**AuthCodeVBAResponse**](AuthCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_code

> <AuthCodeVBAResponse> update_auth_code(vbasoftware_database, auth_code, auth_code2)

Update AuthCode

Updates a specific AuthCode.

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

api_instance = Vba::AuthCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_code = 'auth_code_example' # String | Auth Code
auth_code2 = Vba::AuthCode.new({auth_code: 'auth_code_example'}) # AuthCode | 

begin
  # Update AuthCode
  result = api_instance.update_auth_code(vbasoftware_database, auth_code, auth_code2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->update_auth_code: #{e}"
end
```

#### Using the update_auth_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCodeVBAResponse>, Integer, Hash)> update_auth_code_with_http_info(vbasoftware_database, auth_code, auth_code2)

```ruby
begin
  # Update AuthCode
  data, status_code, headers = api_instance.update_auth_code_with_http_info(vbasoftware_database, auth_code, auth_code2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->update_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_code** | **String** | Auth Code |  |
| **auth_code2** | [**AuthCode**](AuthCode.md) |  |  |

### Return type

[**AuthCodeVBAResponse**](AuthCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_code

> <MultiCodeResponseListVBAResponse> update_batch_auth_code(vbasoftware_database, auth_code)

Update Batch AuthCode

Updates a multiple AuthCode.

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

api_instance = Vba::AuthCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_code = [Vba::AuthCode.new({auth_code: 'auth_code_example'})] # Array<AuthCode> | 

begin
  # Update Batch AuthCode
  result = api_instance.update_batch_auth_code(vbasoftware_database, auth_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->update_batch_auth_code: #{e}"
end
```

#### Using the update_batch_auth_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_code_with_http_info(vbasoftware_database, auth_code)

```ruby
begin
  # Update Batch AuthCode
  data, status_code, headers = api_instance.update_batch_auth_code_with_http_info(vbasoftware_database, auth_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthCodeApi->update_batch_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_code** | [**Array&lt;AuthCode&gt;**](AuthCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

