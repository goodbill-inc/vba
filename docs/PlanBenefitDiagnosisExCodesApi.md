# Vba::PlanBenefitDiagnosisExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#create_plan_benefits_diagnosis) | **POST** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes | Create PlanBenefitsDiagnosis |
| [**delete_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#delete_plan_benefits_diagnosis) | **DELETE** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes/{diagnosticCodeType}/{diagnosticCode} | Delete PlanBenefitsDiagnosis |
| [**get_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#get_plan_benefits_diagnosis) | **GET** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes/{diagnosticCodeType}/{diagnosticCode} | Get PlanBenefitsDiagnosis |
| [**list_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#list_plan_benefits_diagnosis) | **GET** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes | List PlanBenefitsDiagnosis |
| [**update_batch_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#update_batch_plan_benefits_diagnosis) | **PUT** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes-batch | Create or Update Batch PlanBenefitsDiagnosis |
| [**update_plan_benefits_diagnosis**](PlanBenefitDiagnosisExCodesApi.md#update_plan_benefits_diagnosis) | **PUT** /plans/{planID}/benefits/{benefitCode}/diagnosis-ex-codes/{diagnosticCodeType}/{diagnosticCode} | Update PlanBenefitsDiagnosis |


## create_plan_benefits_diagnosis

> <PlanBenefitsDiagnosisVBAResponse> create_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)

Create PlanBenefitsDiagnosis

Creates a new PlanBenefitsDiagnosis

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_diagnosis = Vba::PlanBenefitsDiagnosis.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', diagnostic_code: 'diagnostic_code_example', ex_code: 'ex_code_example'}) # PlanBenefitsDiagnosis | 

begin
  # Create PlanBenefitsDiagnosis
  result = api_instance.create_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->create_plan_benefits_diagnosis: #{e}"
end
```

#### Using the create_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsDiagnosisVBAResponse>, Integer, Hash)> create_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)

```ruby
begin
  # Create PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.create_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->create_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_diagnosis** | [**PlanBenefitsDiagnosis**](PlanBenefitsDiagnosis.md) |  |  |

### Return type

[**PlanBenefitsDiagnosisVBAResponse**](PlanBenefitsDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_diagnosis

> delete_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)

Delete PlanBenefitsDiagnosis

Deletes an PlanBenefitsDiagnosis

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code

begin
  # Delete PlanBenefitsDiagnosis
  api_instance.delete_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->delete_plan_benefits_diagnosis: #{e}"
end
```

#### Using the delete_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)

```ruby
begin
  # Delete PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.delete_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->delete_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits_diagnosis

> <PlanBenefitsDiagnosisVBAResponse> get_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)

Get PlanBenefitsDiagnosis

Gets PlanBenefitsDiagnosis

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code

begin
  # Get PlanBenefitsDiagnosis
  result = api_instance.get_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->get_plan_benefits_diagnosis: #{e}"
end
```

#### Using the get_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsDiagnosisVBAResponse>, Integer, Hash)> get_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)

```ruby
begin
  # Get PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.get_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->get_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |

### Return type

[**PlanBenefitsDiagnosisVBAResponse**](PlanBenefitsDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_diagnosis

> <PlanBenefitsDiagnosisListVBAResponse> list_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsDiagnosis

Lists all PlanBenefitsDiagnosis for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsDiagnosis
  result = api_instance.list_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->list_plan_benefits_diagnosis: #{e}"
end
```

#### Using the list_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsDiagnosisListVBAResponse>, Integer, Hash)> list_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.list_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsDiagnosisListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->list_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsDiagnosisListVBAResponse**](PlanBenefitsDiagnosisListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_diagnosis

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)

Create or Update Batch PlanBenefitsDiagnosis

Create or Update multiple PlanBenefitsDiagnosis at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_diagnosis = [Vba::PlanBenefitsDiagnosis.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', diagnostic_code: 'diagnostic_code_example', ex_code: 'ex_code_example'})] # Array<PlanBenefitsDiagnosis> | 

begin
  # Create or Update Batch PlanBenefitsDiagnosis
  result = api_instance.update_batch_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->update_batch_plan_benefits_diagnosis: #{e}"
end
```

#### Using the update_batch_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)

```ruby
begin
  # Create or Update Batch PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.update_batch_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->update_batch_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_diagnosis** | [**Array&lt;PlanBenefitsDiagnosis&gt;**](PlanBenefitsDiagnosis.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_diagnosis

> <PlanBenefitsDiagnosisVBAResponse> update_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code, plan_benefits_diagnosis)

Update PlanBenefitsDiagnosis

Updates a specific PlanBenefitsDiagnosis.

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

api_instance = Vba::PlanBenefitDiagnosisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
plan_benefits_diagnosis = Vba::PlanBenefitsDiagnosis.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', diagnostic_code_type: 'diagnostic_code_type_example', diagnostic_code: 'diagnostic_code_example', ex_code: 'ex_code_example'}) # PlanBenefitsDiagnosis | 

begin
  # Update PlanBenefitsDiagnosis
  result = api_instance.update_plan_benefits_diagnosis(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code, plan_benefits_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->update_plan_benefits_diagnosis: #{e}"
end
```

#### Using the update_plan_benefits_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsDiagnosisVBAResponse>, Integer, Hash)> update_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code, plan_benefits_diagnosis)

```ruby
begin
  # Update PlanBenefitsDiagnosis
  data, status_code, headers = api_instance.update_plan_benefits_diagnosis_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, diagnostic_code, plan_benefits_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitDiagnosisExCodesApi->update_plan_benefits_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **plan_benefits_diagnosis** | [**PlanBenefitsDiagnosis**](PlanBenefitsDiagnosis.md) |  |  |

### Return type

[**PlanBenefitsDiagnosisVBAResponse**](PlanBenefitsDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

