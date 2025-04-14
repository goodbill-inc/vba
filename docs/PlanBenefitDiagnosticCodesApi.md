# Vba::PlanBenefitDiagnosticCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#create_plan_ben_code_diag_code) | **POST** /plans/{planID}/benefits/{benefitCode}/diagnoses | Create PlanBenCodeDiagCode |
| [**delete_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#delete_plan_ben_code_diag_code) | **DELETE** /plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Delete PlanBenCodeDiagCode |
| [**get_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#get_plan_ben_code_diag_code) | **GET** /plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Get PlanBenCodeDiagCode |
| [**list_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#list_plan_ben_code_diag_code) | **GET** /plans/{planID}/benefits/{benefitCode}/diagnoses | List PlanBenCodeDiagCode |
| [**update_batch_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#update_batch_plan_ben_code_diag_code) | **PUT** /plans/{planID}/benefits/{benefitCode}/diagnoses-batch | Create or Update Batch PlanBenCodeDiagCode |
| [**update_plan_ben_code_diag_code**](PlanBenefitDiagnosticCodesApi.md#update_plan_ben_code_diag_code) | **PUT** /plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode} | Update PlanBenCodeDiagCode |


## create_plan_ben_code_diag_code

> <PlanBenCodeDiagCodeVBAResponse> create_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)

Create PlanBenCodeDiagCode

Creates a new PlanBenCodeDiagCode

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_diag_code = Vba::PlanBenCodeDiagCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false}) # PlanBenCodeDiagCode | 

begin
  # Create PlanBenCodeDiagCode
  result = api_instance.create_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->create_plan_ben_code_diag_code: #{e}"
end
```

#### Using the create_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeDiagCodeVBAResponse>, Integer, Hash)> create_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)

```ruby
begin
  # Create PlanBenCodeDiagCode
  data, status_code, headers = api_instance.create_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeDiagCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->create_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_diag_code** | [**PlanBenCodeDiagCode**](PlanBenCodeDiagCode.md) |  |  |

### Return type

[**PlanBenCodeDiagCodeVBAResponse**](PlanBenCodeDiagCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_ben_code_diag_code

> delete_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)

Delete PlanBenCodeDiagCode

Deletes an PlanBenCodeDiagCode

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code

begin
  # Delete PlanBenCodeDiagCode
  api_instance.delete_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->delete_plan_ben_code_diag_code: #{e}"
end
```

#### Using the delete_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)

```ruby
begin
  # Delete PlanBenCodeDiagCode
  data, status_code, headers = api_instance.delete_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->delete_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
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


## get_plan_ben_code_diag_code

> <PlanBenCodeDiagCodeVBAResponse> get_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)

Get PlanBenCodeDiagCode

Gets PlanBenCodeDiagCode

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code

begin
  # Get PlanBenCodeDiagCode
  result = api_instance.get_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->get_plan_ben_code_diag_code: #{e}"
end
```

#### Using the get_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeDiagCodeVBAResponse>, Integer, Hash)> get_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)

```ruby
begin
  # Get PlanBenCodeDiagCode
  data, status_code, headers = api_instance.get_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeDiagCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->get_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag_code** | **String** | From Diag Code |  |

### Return type

[**PlanBenCodeDiagCodeVBAResponse**](PlanBenCodeDiagCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_ben_code_diag_code

> <PlanBenCodeDiagCodeListVBAResponse> list_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code)

List PlanBenCodeDiagCode

Lists all PlanBenCodeDiagCode for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenCodeDiagCode
  result = api_instance.list_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->list_plan_ben_code_diag_code: #{e}"
end
```

#### Using the list_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeDiagCodeListVBAResponse>, Integer, Hash)> list_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenCodeDiagCode
  data, status_code, headers = api_instance.list_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeDiagCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->list_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenCodeDiagCodeListVBAResponse**](PlanBenCodeDiagCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_ben_code_diag_code

> <MultiCodeResponseListVBAResponse> update_batch_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)

Create or Update Batch PlanBenCodeDiagCode

Create or Update multiple PlanBenCodeDiagCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_diag_code = [Vba::PlanBenCodeDiagCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false})] # Array<PlanBenCodeDiagCode> | 

begin
  # Create or Update Batch PlanBenCodeDiagCode
  result = api_instance.update_batch_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->update_batch_plan_ben_code_diag_code: #{e}"
end
```

#### Using the update_batch_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)

```ruby
begin
  # Create or Update Batch PlanBenCodeDiagCode
  data, status_code, headers = api_instance.update_batch_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->update_batch_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_diag_code** | [**Array&lt;PlanBenCodeDiagCode&gt;**](PlanBenCodeDiagCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_ben_code_diag_code

> <PlanBenCodeDiagCodeVBAResponse> update_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code)

Update PlanBenCodeDiagCode

Updates a specific PlanBenCodeDiagCode.

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

api_instance = Vba::PlanBenefitDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag_code = 'from_diag_code_example' # String | From Diag Code
plan_ben_code_diag_code = Vba::PlanBenCodeDiagCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag_code: 'from_diag_code_example', exclude: false}) # PlanBenCodeDiagCode | 

begin
  # Update PlanBenCodeDiagCode
  result = api_instance.update_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->update_plan_ben_code_diag_code: #{e}"
end
```

#### Using the update_plan_ben_code_diag_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeDiagCodeVBAResponse>, Integer, Hash)> update_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code)

```ruby
begin
  # Update PlanBenCodeDiagCode
  data, status_code, headers = api_instance.update_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeDiagCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosticCodesApi->update_plan_ben_code_diag_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag_code** | **String** | From Diag Code |  |
| **plan_ben_code_diag_code** | [**PlanBenCodeDiagCode**](PlanBenCodeDiagCode.md) |  |  |

### Return type

[**PlanBenCodeDiagCodeVBAResponse**](PlanBenCodeDiagCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

