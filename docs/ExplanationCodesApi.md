# Vba::ExplanationCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_explanation_codes**](ExplanationCodesApi.md#create_explanation_codes) | **POST** /ex-codes | Create ExplanationCodes |
| [**delete_explanation_codes**](ExplanationCodesApi.md#delete_explanation_codes) | **DELETE** /ex-codes/{exCode} | Delete ExplanationCodes |
| [**get_explanation_codes**](ExplanationCodesApi.md#get_explanation_codes) | **GET** /ex-codes/{exCode} | Get ExplanationCodes |
| [**list_explanation_codes**](ExplanationCodesApi.md#list_explanation_codes) | **GET** /ex-codes | List ExplanationCodes |
| [**update_batch_explanation_codes**](ExplanationCodesApi.md#update_batch_explanation_codes) | **PUT** /ex-codes-batch | Create or Update Batch ExplanationCodes |
| [**update_explanation_codes**](ExplanationCodesApi.md#update_explanation_codes) | **PUT** /ex-codes/{exCode} | Update ExplanationCodes |


## create_explanation_codes

> <ExplanationCodesVBAResponse> create_explanation_codes(vbasoftware_database, explanation_codes)

Create ExplanationCodes

Creates a new ExplanationCodes

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
explanation_codes = Vba::ExplanationCodes.new({ex_code: 'ex_code_example', admin_override: 'admin_override_example', no_print_on_remit: 'no_print_on_remit_example', override_denied: false, override_pend: false, patient_responsibility: false, print_only: false, suppress_eob_remit: false}) # ExplanationCodes | 

begin
  # Create ExplanationCodes
  result = api_instance.create_explanation_codes(vbasoftware_database, explanation_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->create_explanation_codes: #{e}"
end
```

#### Using the create_explanation_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodesVBAResponse>, Integer, Hash)> create_explanation_codes_with_http_info(vbasoftware_database, explanation_codes)

```ruby
begin
  # Create ExplanationCodes
  data, status_code, headers = api_instance.create_explanation_codes_with_http_info(vbasoftware_database, explanation_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->create_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **explanation_codes** | [**ExplanationCodes**](ExplanationCodes.md) |  |  |

### Return type

[**ExplanationCodesVBAResponse**](ExplanationCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_explanation_codes

> delete_explanation_codes(vbasoftware_database, ex_code)

Delete ExplanationCodes

Deletes an ExplanationCodes

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Delete ExplanationCodes
  api_instance.delete_explanation_codes(vbasoftware_database, ex_code)
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->delete_explanation_codes: #{e}"
end
```

#### Using the delete_explanation_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_explanation_codes_with_http_info(vbasoftware_database, ex_code)

```ruby
begin
  # Delete ExplanationCodes
  data, status_code, headers = api_instance.delete_explanation_codes_with_http_info(vbasoftware_database, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->delete_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_explanation_codes

> <ExplanationCodesVBAResponse> get_explanation_codes(vbasoftware_database, ex_code)

Get ExplanationCodes

Gets ExplanationCodes

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Get ExplanationCodes
  result = api_instance.get_explanation_codes(vbasoftware_database, ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->get_explanation_codes: #{e}"
end
```

#### Using the get_explanation_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodesVBAResponse>, Integer, Hash)> get_explanation_codes_with_http_info(vbasoftware_database, ex_code)

```ruby
begin
  # Get ExplanationCodes
  data, status_code, headers = api_instance.get_explanation_codes_with_http_info(vbasoftware_database, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->get_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

[**ExplanationCodesVBAResponse**](ExplanationCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_explanation_codes

> <ExplanationCodesListVBAResponse> list_explanation_codes(vbasoftware_database)

List ExplanationCodes

Lists all ExplanationCodes

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List ExplanationCodes
  result = api_instance.list_explanation_codes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->list_explanation_codes: #{e}"
end
```

#### Using the list_explanation_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodesListVBAResponse>, Integer, Hash)> list_explanation_codes_with_http_info(vbasoftware_database)

```ruby
begin
  # List ExplanationCodes
  data, status_code, headers = api_instance.list_explanation_codes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->list_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ExplanationCodesListVBAResponse**](ExplanationCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_explanation_codes

> <MultiCodeResponseListVBAResponse> update_batch_explanation_codes(vbasoftware_database, explanation_codes)

Create or Update Batch ExplanationCodes

Create or Update multiple ExplanationCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
explanation_codes = [Vba::ExplanationCodes.new({ex_code: 'ex_code_example', admin_override: 'admin_override_example', no_print_on_remit: 'no_print_on_remit_example', override_denied: false, override_pend: false, patient_responsibility: false, print_only: false, suppress_eob_remit: false})] # Array<ExplanationCodes> | 

begin
  # Create or Update Batch ExplanationCodes
  result = api_instance.update_batch_explanation_codes(vbasoftware_database, explanation_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->update_batch_explanation_codes: #{e}"
end
```

#### Using the update_batch_explanation_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_explanation_codes_with_http_info(vbasoftware_database, explanation_codes)

```ruby
begin
  # Create or Update Batch ExplanationCodes
  data, status_code, headers = api_instance.update_batch_explanation_codes_with_http_info(vbasoftware_database, explanation_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->update_batch_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **explanation_codes** | [**Array&lt;ExplanationCodes&gt;**](ExplanationCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_explanation_codes

> <ExplanationCodesVBAResponse> update_explanation_codes(vbasoftware_database, ex_code, explanation_codes)

Update ExplanationCodes

Updates a specific ExplanationCodes.

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

api_instance = Vba::ExplanationCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code
explanation_codes = Vba::ExplanationCodes.new({ex_code: 'ex_code_example', admin_override: 'admin_override_example', no_print_on_remit: 'no_print_on_remit_example', override_denied: false, override_pend: false, patient_responsibility: false, print_only: false, suppress_eob_remit: false}) # ExplanationCodes | 

begin
  # Update ExplanationCodes
  result = api_instance.update_explanation_codes(vbasoftware_database, ex_code, explanation_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->update_explanation_codes: #{e}"
end
```

#### Using the update_explanation_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplanationCodesVBAResponse>, Integer, Hash)> update_explanation_codes_with_http_info(vbasoftware_database, ex_code, explanation_codes)

```ruby
begin
  # Update ExplanationCodes
  data, status_code, headers = api_instance.update_explanation_codes_with_http_info(vbasoftware_database, ex_code, explanation_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplanationCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExplanationCodesApi->update_explanation_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |
| **explanation_codes** | [**ExplanationCodes**](ExplanationCodes.md) |  |  |

### Return type

[**ExplanationCodesVBAResponse**](ExplanationCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

