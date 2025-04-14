# Vba::BenefitDiagnosticCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#create_benefit_diag_codes) | **POST** /benefits/{benefitCode}/diagnoses | Create BenefitDiagCodes |
| [**delete_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#delete_benefit_diag_codes) | **DELETE** /benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Delete BenefitDiagCodes |
| [**get_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#get_benefit_diag_codes) | **GET** /benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Get BenefitDiagCodes |
| [**list_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#list_benefit_diag_codes) | **GET** /benefits/{benefitCode}/diagnoses | List BenefitDiagCodes |
| [**update_batch_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#update_batch_benefit_diag_codes) | **PUT** /benefits/{benefitCode}/diagnoses-batch | Create or Update Batch BenefitDiagCodes |
| [**update_benefit_diag_codes**](BenefitDiagnosticCodesApi.md#update_benefit_diag_codes) | **PUT** /benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Update BenefitDiagCodes |


## create_benefit_diag_codes

> <BenefitDiagCodesVBAResponse> create_benefit_diag_codes(vbasoftware_database, benefit_code, benefit_diag_codes)

Create BenefitDiagCodes

Creates a new BenefitDiagCodes

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_diag_codes = Vba::BenefitDiagCodes.new({benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false}) # BenefitDiagCodes | 

begin
  # Create BenefitDiagCodes
  result = api_instance.create_benefit_diag_codes(vbasoftware_database, benefit_code, benefit_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->create_benefit_diag_codes: #{e}"
end
```

#### Using the create_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitDiagCodesVBAResponse>, Integer, Hash)> create_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, benefit_diag_codes)

```ruby
begin
  # Create BenefitDiagCodes
  data, status_code, headers = api_instance.create_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, benefit_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->create_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_diag_codes** | [**BenefitDiagCodes**](BenefitDiagCodes.md) |  |  |

### Return type

[**BenefitDiagCodesVBAResponse**](BenefitDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_diag_codes

> delete_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)

Delete BenefitDiagCodes

Deletes an BenefitDiagCodes

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code

begin
  # Delete BenefitDiagCodes
  api_instance.delete_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->delete_benefit_diag_codes: #{e}"
end
```

#### Using the delete_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)

```ruby
begin
  # Delete BenefitDiagCodes
  data, status_code, headers = api_instance.delete_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->delete_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag_code** | **String** | From Diag Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_diag_codes

> <BenefitDiagCodesVBAResponse> get_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)

Get BenefitDiagCodes

Gets BenefitDiagCodes

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code

begin
  # Get BenefitDiagCodes
  result = api_instance.get_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->get_benefit_diag_codes: #{e}"
end
```

#### Using the get_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitDiagCodesVBAResponse>, Integer, Hash)> get_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)

```ruby
begin
  # Get BenefitDiagCodes
  data, status_code, headers = api_instance.get_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->get_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag_code** | **String** | From Diag Code |  |

### Return type

[**BenefitDiagCodesVBAResponse**](BenefitDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_diag_codes

> <BenefitDiagCodesListVBAResponse> list_benefit_diag_codes(vbasoftware_database, benefit_code)

List BenefitDiagCodes

Lists all BenefitDiagCodes for the given benefitCode

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List BenefitDiagCodes
  result = api_instance.list_benefit_diag_codes(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->list_benefit_diag_codes: #{e}"
end
```

#### Using the list_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitDiagCodesListVBAResponse>, Integer, Hash)> list_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # List BenefitDiagCodes
  data, status_code, headers = api_instance.list_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitDiagCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->list_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitDiagCodesListVBAResponse**](BenefitDiagCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_diag_codes

> <MultiCodeResponseListVBAResponse> update_batch_benefit_diag_codes(vbasoftware_database, benefit_code, benefit_diag_codes)

Create or Update Batch BenefitDiagCodes

Create or Update multiple BenefitDiagCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_diag_codes = [Vba::BenefitDiagCodes.new({benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false})] # Array<BenefitDiagCodes> | 

begin
  # Create or Update Batch BenefitDiagCodes
  result = api_instance.update_batch_benefit_diag_codes(vbasoftware_database, benefit_code, benefit_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->update_batch_benefit_diag_codes: #{e}"
end
```

#### Using the update_batch_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, benefit_diag_codes)

```ruby
begin
  # Create or Update Batch BenefitDiagCodes
  data, status_code, headers = api_instance.update_batch_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, benefit_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->update_batch_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_diag_codes** | [**Array&lt;BenefitDiagCodes&gt;**](BenefitDiagCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_diag_codes

> <BenefitDiagCodesVBAResponse> update_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code, benefit_diag_codes)

Update BenefitDiagCodes

Updates a specific BenefitDiagCodes.

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

api_instance = Vba::BenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code
benefit_diag_codes = Vba::BenefitDiagCodes.new({benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false}) # BenefitDiagCodes | 

begin
  # Update BenefitDiagCodes
  result = api_instance.update_benefit_diag_codes(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code, benefit_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->update_benefit_diag_codes: #{e}"
end
```

#### Using the update_benefit_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitDiagCodesVBAResponse>, Integer, Hash)> update_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code, benefit_diag_codes)

```ruby
begin
  # Update BenefitDiagCodes
  data, status_code, headers = api_instance.update_benefit_diag_codes_with_http_info(vbasoftware_database, benefit_code, diagnostic_code_type, from_diag_code, benefit_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitDiagnosticCodesApi->update_benefit_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag_code** | **String** | From Diag Code |  |
| **benefit_diag_codes** | [**BenefitDiagCodes**](BenefitDiagCodes.md) |  |  |

### Return type

[**BenefitDiagCodesVBAResponse**](BenefitDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

