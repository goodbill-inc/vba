# Vba::PlanBenefitProcedureMaximumsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#create_plan_maximum_procedure) | **POST** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures | Create PlanMaximumProcedure |
| [**delete_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#delete_plan_maximum_procedure) | **DELETE** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure} | Delete PlanMaximumProcedure |
| [**get_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#get_plan_maximum_procedure) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure} | Get PlanMaximumProcedure |
| [**list_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#list_plan_maximum_procedure) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures | List PlanMaximumProcedure |
| [**update_batch_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#update_batch_plan_maximum_procedure) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures-batch | Create or Update Batch PlanMaximumProcedure |
| [**update_plan_maximum_procedure**](PlanBenefitProcedureMaximumsApi.md#update_plan_maximum_procedure) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure} | Update PlanMaximumProcedure |


## create_plan_maximum_procedure

> <PlanMaximumProcedureVBAResponse> create_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)

Create PlanMaximumProcedure

Creates a new PlanMaximumProcedure

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum_procedure = Vba::PlanMaximumProcedure.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', from_procedure: 'from_procedure_example', procedure_code1: false, procedure_code2: false, thru_procedure: 'thru_procedure_example'}) # PlanMaximumProcedure | 

begin
  # Create PlanMaximumProcedure
  result = api_instance.create_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->create_plan_maximum_procedure: #{e}"
end
```

#### Using the create_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumProcedureVBAResponse>, Integer, Hash)> create_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)

```ruby
begin
  # Create PlanMaximumProcedure
  data, status_code, headers = api_instance.create_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->create_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum_procedure** | [**PlanMaximumProcedure**](PlanMaximumProcedure.md) |  |  |

### Return type

[**PlanMaximumProcedureVBAResponse**](PlanMaximumProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_maximum_procedure

> delete_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)

Delete PlanMaximumProcedure

Deletes an PlanMaximumProcedure

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Delete PlanMaximumProcedure
  api_instance.delete_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->delete_plan_maximum_procedure: #{e}"
end
```

#### Using the delete_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)

```ruby
begin
  # Delete PlanMaximumProcedure
  data, status_code, headers = api_instance.delete_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->delete_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_maximum_procedure

> <PlanMaximumProcedureVBAResponse> get_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)

Get PlanMaximumProcedure

Gets PlanMaximumProcedure

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Get PlanMaximumProcedure
  result = api_instance.get_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->get_plan_maximum_procedure: #{e}"
end
```

#### Using the get_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumProcedureVBAResponse>, Integer, Hash)> get_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)

```ruby
begin
  # Get PlanMaximumProcedure
  data, status_code, headers = api_instance.get_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->get_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

[**PlanMaximumProcedureVBAResponse**](PlanMaximumProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_maximum_procedure

> <PlanMaximumProcedureListVBAResponse> list_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id)

List PlanMaximumProcedure

Lists all PlanMaximumProcedure for the given planID and benefitCode and fromProcedure

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID

begin
  # List PlanMaximumProcedure
  result = api_instance.list_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->list_plan_maximum_procedure: #{e}"
end
```

#### Using the list_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumProcedureListVBAResponse>, Integer, Hash)> list_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)

```ruby
begin
  # List PlanMaximumProcedure
  data, status_code, headers = api_instance.list_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->list_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |

### Return type

[**PlanMaximumProcedureListVBAResponse**](PlanMaximumProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_maximum_procedure

> <MultiCodeResponseListVBAResponse> update_batch_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)

Create or Update Batch PlanMaximumProcedure

Create or Update multiple PlanMaximumProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum_procedure = [Vba::PlanMaximumProcedure.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', from_procedure: 'from_procedure_example', procedure_code1: false, procedure_code2: false, thru_procedure: 'thru_procedure_example'})] # Array<PlanMaximumProcedure> | 

begin
  # Create or Update Batch PlanMaximumProcedure
  result = api_instance.update_batch_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->update_batch_plan_maximum_procedure: #{e}"
end
```

#### Using the update_batch_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)

```ruby
begin
  # Create or Update Batch PlanMaximumProcedure
  data, status_code, headers = api_instance.update_batch_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->update_batch_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum_procedure** | [**Array&lt;PlanMaximumProcedure&gt;**](PlanMaximumProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_maximum_procedure

> <PlanMaximumProcedureVBAResponse> update_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure)

Update PlanMaximumProcedure

Updates a specific PlanMaximumProcedure.

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

api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
from_procedure = 'from_procedure_example' # String | From Procedure
plan_maximum_procedure = Vba::PlanMaximumProcedure.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', from_procedure: 'from_procedure_example', procedure_code1: false, procedure_code2: false, thru_procedure: 'thru_procedure_example'}) # PlanMaximumProcedure | 

begin
  # Update PlanMaximumProcedure
  result = api_instance.update_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->update_plan_maximum_procedure: #{e}"
end
```

#### Using the update_plan_maximum_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumProcedureVBAResponse>, Integer, Hash)> update_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure)

```ruby
begin
  # Update PlanMaximumProcedure
  data, status_code, headers = api_instance.update_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProcedureMaximumsApi->update_plan_maximum_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **from_procedure** | **String** | From Procedure |  |
| **plan_maximum_procedure** | [**PlanMaximumProcedure**](PlanMaximumProcedure.md) |  |  |

### Return type

[**PlanMaximumProcedureVBAResponse**](PlanMaximumProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

