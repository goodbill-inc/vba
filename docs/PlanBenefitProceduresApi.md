# Vba::PlanBenefitProceduresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#create_plan_ben_code_proc_code) | **POST** /plans/{planID}/benefits/{benefitCode}/procedure-codes | Create PlanBenCodeProcCode |
| [**delete_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#delete_plan_ben_code_proc_code) | **DELETE** /plans/{planID}/benefits/{benefitCode}/procedure-codes/{fromProcedure} | Delete PlanBenCodeProcCode |
| [**get_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#get_plan_ben_code_proc_code) | **GET** /plans/{planID}/benefits/{benefitCode}/procedure-codes/{fromProcedure} | Get PlanBenCodeProcCode |
| [**list_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#list_plan_ben_code_proc_code) | **GET** /plans/{planID}/benefits/{benefitCode}/procedure-codes | List PlanBenCodeProcCode |
| [**update_batch_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#update_batch_plan_ben_code_proc_code) | **PUT** /plans/{planID}/benefits/{benefitCode}/procedure-codes-batch | Create or Update Batch PlanBenCodeProcCode |
| [**update_plan_ben_code_proc_code**](PlanBenefitProceduresApi.md#update_plan_ben_code_proc_code) | **PUT** /plans/{planID}/benefits/{benefitCode}/procedure-codes/{fromProcedure} | Update PlanBenCodeProcCode |


## create_plan_ben_code_proc_code

> <PlanBenCodeProcCodeVBAResponse> create_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)

Create PlanBenCodeProcCode

Creates a new PlanBenCodeProcCode

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_proc_code = Vba::PlanBenCodeProcCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false}) # PlanBenCodeProcCode | 

begin
  # Create PlanBenCodeProcCode
  result = api_instance.create_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->create_plan_ben_code_proc_code: #{e}"
end
```

#### Using the create_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProcCodeVBAResponse>, Integer, Hash)> create_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)

```ruby
begin
  # Create PlanBenCodeProcCode
  data, status_code, headers = api_instance.create_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProcCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->create_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_proc_code** | [**PlanBenCodeProcCode**](PlanBenCodeProcCode.md) |  |  |

### Return type

[**PlanBenCodeProcCodeVBAResponse**](PlanBenCodeProcCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_ben_code_proc_code

> delete_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure)

Delete PlanBenCodeProcCode

Deletes an PlanBenCodeProcCode

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Delete PlanBenCodeProcCode
  api_instance.delete_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->delete_plan_ben_code_proc_code: #{e}"
end
```

#### Using the delete_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure)

```ruby
begin
  # Delete PlanBenCodeProcCode
  data, status_code, headers = api_instance.delete_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->delete_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_ben_code_proc_code

> <PlanBenCodeProcCodeVBAResponse> get_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure)

Get PlanBenCodeProcCode

Gets PlanBenCodeProcCode

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Get PlanBenCodeProcCode
  result = api_instance.get_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->get_plan_ben_code_proc_code: #{e}"
end
```

#### Using the get_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProcCodeVBAResponse>, Integer, Hash)> get_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure)

```ruby
begin
  # Get PlanBenCodeProcCode
  data, status_code, headers = api_instance.get_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProcCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->get_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

[**PlanBenCodeProcCodeVBAResponse**](PlanBenCodeProcCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_ben_code_proc_code

> <PlanBenCodeProcCodeListVBAResponse> list_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code)

List PlanBenCodeProcCode

Lists all PlanBenCodeProcCode for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenCodeProcCode
  result = api_instance.list_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->list_plan_ben_code_proc_code: #{e}"
end
```

#### Using the list_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProcCodeListVBAResponse>, Integer, Hash)> list_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenCodeProcCode
  data, status_code, headers = api_instance.list_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProcCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->list_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenCodeProcCodeListVBAResponse**](PlanBenCodeProcCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_ben_code_proc_code

> <MultiCodeResponseListVBAResponse> update_batch_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)

Create or Update Batch PlanBenCodeProcCode

Create or Update multiple PlanBenCodeProcCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_proc_code = [Vba::PlanBenCodeProcCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false})] # Array<PlanBenCodeProcCode> | 

begin
  # Create or Update Batch PlanBenCodeProcCode
  result = api_instance.update_batch_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->update_batch_plan_ben_code_proc_code: #{e}"
end
```

#### Using the update_batch_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)

```ruby
begin
  # Create or Update Batch PlanBenCodeProcCode
  data, status_code, headers = api_instance.update_batch_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_proc_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->update_batch_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_proc_code** | [**Array&lt;PlanBenCodeProcCode&gt;**](PlanBenCodeProcCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_ben_code_proc_code

> <PlanBenCodeProcCodeVBAResponse> update_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure, plan_ben_code_proc_code)

Update PlanBenCodeProcCode

Updates a specific PlanBenCodeProcCode.

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

api_instance = Vba::PlanBenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure
plan_ben_code_proc_code = Vba::PlanBenCodeProcCode.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false}) # PlanBenCodeProcCode | 

begin
  # Update PlanBenCodeProcCode
  result = api_instance.update_plan_ben_code_proc_code(vbasoftware_database, plan_id, benefit_code, from_procedure, plan_ben_code_proc_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->update_plan_ben_code_proc_code: #{e}"
end
```

#### Using the update_plan_ben_code_proc_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProcCodeVBAResponse>, Integer, Hash)> update_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure, plan_ben_code_proc_code)

```ruby
begin
  # Update PlanBenCodeProcCode
  data, status_code, headers = api_instance.update_plan_ben_code_proc_code_with_http_info(vbasoftware_database, plan_id, benefit_code, from_procedure, plan_ben_code_proc_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProcCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProceduresApi->update_plan_ben_code_proc_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |
| **plan_ben_code_proc_code** | [**PlanBenCodeProcCode**](PlanBenCodeProcCode.md) |  |  |

### Return type

[**PlanBenCodeProcCodeVBAResponse**](PlanBenCodeProcCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

