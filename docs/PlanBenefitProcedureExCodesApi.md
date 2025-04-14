# Vba::PlanBenefitProcedureExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#create_plan_benefits_procedures) | **POST** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes | Create PlanBenefitsProcedures |
| [**delete_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#delete_plan_benefits_procedures) | **DELETE** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes/{procedureCode} | Delete PlanBenefitsProcedures |
| [**get_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#get_plan_benefits_procedures) | **GET** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes/{procedureCode} | Get PlanBenefitsProcedures |
| [**list_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#list_plan_benefits_procedures) | **GET** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes | List PlanBenefitsProcedures |
| [**update_batch_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#update_batch_plan_benefits_procedures) | **PUT** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes-batch | Create or Update Batch PlanBenefitsProcedures |
| [**update_plan_benefits_procedures**](PlanBenefitProcedureExCodesApi.md#update_plan_benefits_procedures) | **PUT** /plans/{planID}/benefits/{benefitCode}/procedure-ex-codes/{procedureCode} | Update PlanBenefitsProcedures |


## create_plan_benefits_procedures

> <PlanBenefitsProceduresVBAResponse> create_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)

Create PlanBenefitsProcedures

Creates a new PlanBenefitsProcedures

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_procedures = Vba::PlanBenefitsProcedures.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', procedure_code: 'procedure_code_example', pend_ex_code: 'pend_ex_code_example'}) # PlanBenefitsProcedures | 

begin
  # Create PlanBenefitsProcedures
  result = api_instance.create_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->create_plan_benefits_procedures: #{e}"
end
```

#### Using the create_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsProceduresVBAResponse>, Integer, Hash)> create_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)

```ruby
begin
  # Create PlanBenefitsProcedures
  data, status_code, headers = api_instance.create_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->create_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_procedures** | [**PlanBenefitsProcedures**](PlanBenefitsProcedures.md) |  |  |

### Return type

[**PlanBenefitsProceduresVBAResponse**](PlanBenefitsProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_procedures

> delete_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code)

Delete PlanBenefitsProcedures

Deletes an PlanBenefitsProcedures

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Delete PlanBenefitsProcedures
  api_instance.delete_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->delete_plan_benefits_procedures: #{e}"
end
```

#### Using the delete_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code)

```ruby
begin
  # Delete PlanBenefitsProcedures
  data, status_code, headers = api_instance.delete_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->delete_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits_procedures

> <PlanBenefitsProceduresVBAResponse> get_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code)

Get PlanBenefitsProcedures

Gets PlanBenefitsProcedures

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Get PlanBenefitsProcedures
  result = api_instance.get_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->get_plan_benefits_procedures: #{e}"
end
```

#### Using the get_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsProceduresVBAResponse>, Integer, Hash)> get_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code)

```ruby
begin
  # Get PlanBenefitsProcedures
  data, status_code, headers = api_instance.get_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->get_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

[**PlanBenefitsProceduresVBAResponse**](PlanBenefitsProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_procedures

> <PlanBenefitsProceduresListVBAResponse> list_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsProcedures

Lists all PlanBenefitsProcedures for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsProcedures
  result = api_instance.list_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->list_plan_benefits_procedures: #{e}"
end
```

#### Using the list_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsProceduresListVBAResponse>, Integer, Hash)> list_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsProcedures
  data, status_code, headers = api_instance.list_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsProceduresListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->list_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsProceduresListVBAResponse**](PlanBenefitsProceduresListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_procedures

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)

Create or Update Batch PlanBenefitsProcedures

Create or Update multiple PlanBenefitsProcedures at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_procedures = [Vba::PlanBenefitsProcedures.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', procedure_code: 'procedure_code_example', pend_ex_code: 'pend_ex_code_example'})] # Array<PlanBenefitsProcedures> | 

begin
  # Create or Update Batch PlanBenefitsProcedures
  result = api_instance.update_batch_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->update_batch_plan_benefits_procedures: #{e}"
end
```

#### Using the update_batch_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)

```ruby
begin
  # Create or Update Batch PlanBenefitsProcedures
  data, status_code, headers = api_instance.update_batch_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->update_batch_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_procedures** | [**Array&lt;PlanBenefitsProcedures&gt;**](PlanBenefitsProcedures.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_procedures

> <PlanBenefitsProceduresVBAResponse> update_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code, plan_benefits_procedures)

Update PlanBenefitsProcedures

Updates a specific PlanBenefitsProcedures.

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

api_instance = Vba::PlanBenefitProcedureExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
procedure_code = 'procedure_code_example' # String | Procedure Code
plan_benefits_procedures = Vba::PlanBenefitsProcedures.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', procedure_code: 'procedure_code_example', pend_ex_code: 'pend_ex_code_example'}) # PlanBenefitsProcedures | 

begin
  # Update PlanBenefitsProcedures
  result = api_instance.update_plan_benefits_procedures(vbasoftware_database, plan_id, benefit_code, procedure_code, plan_benefits_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->update_plan_benefits_procedures: #{e}"
end
```

#### Using the update_plan_benefits_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsProceduresVBAResponse>, Integer, Hash)> update_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code, plan_benefits_procedures)

```ruby
begin
  # Update PlanBenefitsProcedures
  data, status_code, headers = api_instance.update_plan_benefits_procedures_with_http_info(vbasoftware_database, plan_id, benefit_code, procedure_code, plan_benefits_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureExCodesApi->update_plan_benefits_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **procedure_code** | **String** | Procedure Code |  |
| **plan_benefits_procedures** | [**PlanBenefitsProcedures**](PlanBenefitsProcedures.md) |  |  |

### Return type

[**PlanBenefitsProceduresVBAResponse**](PlanBenefitsProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

