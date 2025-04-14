# Vba::AuthProcedureCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_proc_code**](AuthProcedureCodesApi.md#create_auth_proc_code) | **POST** /auths/{authNumber}/procedure-codes | Create Procedure Code |
| [**create_auth_proc_code_batch**](AuthProcedureCodesApi.md#create_auth_proc_code_batch) | **POST** /auths/{authNumber}/procedure-codes-batch | Create Procedure Code Batch |
| [**delete_auth_proc_code**](AuthProcedureCodesApi.md#delete_auth_proc_code) | **DELETE** /auths/{authNumber}/procedure-codes/{procedureCodeKey} | Delete Procedure Code |
| [**delete_auth_proc_code_batch**](AuthProcedureCodesApi.md#delete_auth_proc_code_batch) | **DELETE** /auths/{authNumber}/procedure-codes-batch | Delete Procedure Code Batch |
| [**get_auth_proc_code**](AuthProcedureCodesApi.md#get_auth_proc_code) | **GET** /auths/{authNumber}/procedure-codes/{procedureCodeKey} | Get Procedure Code |
| [**list_auth_proc_code_by_auth**](AuthProcedureCodesApi.md#list_auth_proc_code_by_auth) | **GET** /auths/{authNumber}/procedure-codes | List Procedure Codes for Auth |
| [**update_auth_proc_code**](AuthProcedureCodesApi.md#update_auth_proc_code) | **PUT** /auths/{authNumber}/procedure-codes/{procedureCodeKey} | Update Procedure Code |


## create_auth_proc_code

> <AuthProcCodesVBAResponse> create_auth_proc_code(vbasoftware_database, auth_number, auth_proc_codes)

Create Procedure Code

Creates a new Procedure Code.

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth Number
auth_proc_codes = Vba::AuthProcCodes.new({auth_proc_codes_key: 37, auth_number: 'auth_number_example', exclude_modifier_match: false}) # AuthProcCodes | 

begin
  # Create Procedure Code
  result = api_instance.create_auth_proc_code(vbasoftware_database, auth_number, auth_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->create_auth_proc_code: #{e}"
end
```

#### Using the create_auth_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthProcCodesVBAResponse>, Integer, Hash)> create_auth_proc_code_with_http_info(vbasoftware_database, auth_number, auth_proc_codes)

```ruby
begin
  # Create Procedure Code
  data, status_code, headers = api_instance.create_auth_proc_code_with_http_info(vbasoftware_database, auth_number, auth_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->create_auth_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number |  |
| **auth_proc_codes** | [**AuthProcCodes**](AuthProcCodes.md) |  |  |

### Return type

[**AuthProcCodesVBAResponse**](AuthProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_auth_proc_code_batch

> <MultiCodeResponseListVBAResponse> create_auth_proc_code_batch(vbasoftware_database, auth_number, auth_proc_codes)

Create Procedure Code Batch

Creates multiple Procedure Codes

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
auth_proc_codes = [Vba::AuthProcCodes.new({auth_proc_codes_key: 37, auth_number: 'auth_number_example', exclude_modifier_match: false})] # Array<AuthProcCodes> | 

begin
  # Create Procedure Code Batch
  result = api_instance.create_auth_proc_code_batch(vbasoftware_database, auth_number, auth_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->create_auth_proc_code_batch: #{e}"
end
```

#### Using the create_auth_proc_code_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, auth_proc_codes)

```ruby
begin
  # Create Procedure Code Batch
  data, status_code, headers = api_instance.create_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, auth_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->create_auth_proc_code_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **auth_proc_codes** | [**Array&lt;AuthProcCodes&gt;**](AuthProcCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_proc_code

> delete_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key)

Delete Procedure Code

Deletes a specific Procedure Code.

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
procedure_code_key = 56 # Integer | Procedure Code Key

begin
  # Delete Procedure Code
  api_instance.delete_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key)
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->delete_auth_proc_code: #{e}"
end
```

#### Using the delete_auth_proc_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key)

```ruby
begin
  # Delete Procedure Code
  data, status_code, headers = api_instance.delete_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->delete_auth_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **procedure_code_key** | **Integer** | Procedure Code Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_auth_proc_code_batch

> <MultiCodeResponseListVBAResponse> delete_auth_proc_code_batch(vbasoftware_database, auth_number, request_body)

Delete Procedure Code Batch

Deletes multiple Procedure Codes

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
request_body = [37] # Array<Integer> | 

begin
  # Delete Procedure Code Batch
  result = api_instance.delete_auth_proc_code_batch(vbasoftware_database, auth_number, request_body)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->delete_auth_proc_code_batch: #{e}"
end
```

#### Using the delete_auth_proc_code_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> delete_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, request_body)

```ruby
begin
  # Delete Procedure Code Batch
  data, status_code, headers = api_instance.delete_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->delete_auth_proc_code_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_auth_proc_code

> <AuthProcCodesVBAResponse> get_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key)

Get Procedure Code

Gets a specific Procedure Code

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
procedure_code_key = 56 # Integer | Procedure Code Key

begin
  # Get Procedure Code
  result = api_instance.get_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->get_auth_proc_code: #{e}"
end
```

#### Using the get_auth_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthProcCodesVBAResponse>, Integer, Hash)> get_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key)

```ruby
begin
  # Get Procedure Code
  data, status_code, headers = api_instance.get_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->get_auth_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **procedure_code_key** | **Integer** | Procedure Code Key |  |

### Return type

[**AuthProcCodesVBAResponse**](AuthProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_proc_code_by_auth

> <AuthProcCodesListVBAResponse> list_auth_proc_code_by_auth(vbasoftware_database, auth_number)

List Procedure Codes for Auth

Gets all Procedure Codes for a specific Auth

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number

begin
  # List Procedure Codes for Auth
  result = api_instance.list_auth_proc_code_by_auth(vbasoftware_database, auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->list_auth_proc_code_by_auth: #{e}"
end
```

#### Using the list_auth_proc_code_by_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthProcCodesListVBAResponse>, Integer, Hash)> list_auth_proc_code_by_auth_with_http_info(vbasoftware_database, auth_number)

```ruby
begin
  # List Procedure Codes for Auth
  data, status_code, headers = api_instance.list_auth_proc_code_by_auth_with_http_info(vbasoftware_database, auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthProcCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->list_auth_proc_code_by_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |

### Return type

[**AuthProcCodesListVBAResponse**](AuthProcCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_proc_code

> <AuthProcCodesVBAResponse> update_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes)

Update Procedure Code

Updates a specific Procedure Code.

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

api_instance = Vba::AuthProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_number = 'auth_number_example' # String | Auth number
procedure_code_key = 56 # Integer | Procedure Code Key
auth_proc_codes = Vba::AuthProcCodes.new({auth_proc_codes_key: 37, auth_number: 'auth_number_example', exclude_modifier_match: false}) # AuthProcCodes | 

begin
  # Update Procedure Code
  result = api_instance.update_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->update_auth_proc_code: #{e}"
end
```

#### Using the update_auth_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthProcCodesVBAResponse>, Integer, Hash)> update_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes)

```ruby
begin
  # Update Procedure Code
  data, status_code, headers = api_instance.update_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthProcedureCodesApi->update_auth_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth number |  |
| **procedure_code_key** | **Integer** | Procedure Code Key |  |
| **auth_proc_codes** | [**AuthProcCodes**](AuthProcCodes.md) |  |  |

### Return type

[**AuthProcCodesVBAResponse**](AuthProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

