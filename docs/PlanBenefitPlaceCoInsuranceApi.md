# Vba::PlanBenefitPlaceCoInsuranceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#create_plan_benefits_place_co_ins) | **POST** /plans/{planID}/benefits/{benefitCode}/place-co-insurance | Create PlanBenefitsPlaceCoIns |
| [**delete_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#delete_plan_benefits_place_co_ins) | **DELETE** /plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode} | Delete PlanBenefitsPlaceCoIns |
| [**get_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#get_plan_benefits_place_co_ins) | **GET** /plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode} | Get PlanBenefitsPlaceCoIns |
| [**list_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#list_plan_benefits_place_co_ins) | **GET** /plans/{planID}/benefits/{benefitCode}/place-co-insurance | List PlanBenefitsPlaceCoIns |
| [**update_batch_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#update_batch_plan_benefits_place_co_ins) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-co-insurance-batch | Create or Update Batch PlanBenefitsPlaceCoIns |
| [**update_plan_benefits_place_co_ins**](PlanBenefitPlaceCoInsuranceApi.md#update_plan_benefits_place_co_ins) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode} | Update PlanBenefitsPlaceCoIns |


## create_plan_benefits_place_co_ins

> <PlanBenefitsPlaceCoInsVBAResponse> create_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)

Create PlanBenefitsPlaceCoIns

Creates a new PlanBenefitsPlaceCoIns

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_co_ins = Vba::PlanBenefitsPlaceCoIns.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', co_ins_net_pct: 'co_ins_net_pct_example', co_ins_pct: 'co_ins_pct_example'}) # PlanBenefitsPlaceCoIns | 

begin
  # Create PlanBenefitsPlaceCoIns
  result = api_instance.create_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->create_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the create_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoInsVBAResponse>, Integer, Hash)> create_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)

```ruby
begin
  # Create PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.create_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoInsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->create_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_co_ins** | [**PlanBenefitsPlaceCoIns**](PlanBenefitsPlaceCoIns.md) |  |  |

### Return type

[**PlanBenefitsPlaceCoInsVBAResponse**](PlanBenefitsPlaceCoInsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_place_co_ins

> delete_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code)

Delete PlanBenefitsPlaceCoIns

Deletes an PlanBenefitsPlaceCoIns

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlanBenefitsPlaceCoIns
  api_instance.delete_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->delete_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the delete_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Delete PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.delete_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->delete_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits_place_co_ins

> <PlanBenefitsPlaceCoInsVBAResponse> get_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code)

Get PlanBenefitsPlaceCoIns

Gets PlanBenefitsPlaceCoIns

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlanBenefitsPlaceCoIns
  result = api_instance.get_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->get_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the get_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoInsVBAResponse>, Integer, Hash)> get_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Get PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.get_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoInsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->get_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

[**PlanBenefitsPlaceCoInsVBAResponse**](PlanBenefitsPlaceCoInsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_place_co_ins

> <PlanBenefitsPlaceCoInsListVBAResponse> list_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsPlaceCoIns

Lists all PlanBenefitsPlaceCoIns for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsPlaceCoIns
  result = api_instance.list_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->list_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the list_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoInsListVBAResponse>, Integer, Hash)> list_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.list_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoInsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->list_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsPlaceCoInsListVBAResponse**](PlanBenefitsPlaceCoInsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_place_co_ins

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)

Create or Update Batch PlanBenefitsPlaceCoIns

Create or Update multiple PlanBenefitsPlaceCoIns at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_co_ins = [Vba::PlanBenefitsPlaceCoIns.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', co_ins_net_pct: 'co_ins_net_pct_example', co_ins_pct: 'co_ins_pct_example'})] # Array<PlanBenefitsPlaceCoIns> | 

begin
  # Create or Update Batch PlanBenefitsPlaceCoIns
  result = api_instance.update_batch_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->update_batch_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the update_batch_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)

```ruby
begin
  # Create or Update Batch PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.update_batch_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->update_batch_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_co_ins** | [**Array&lt;PlanBenefitsPlaceCoIns&gt;**](PlanBenefitsPlaceCoIns.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_place_co_ins

> <PlanBenefitsPlaceCoInsVBAResponse> update_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins)

Update PlanBenefitsPlaceCoIns

Updates a specific PlanBenefitsPlaceCoIns.

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

api_instance = Vba::PlanBenefitPlaceCoInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
plan_benefits_place_co_ins = Vba::PlanBenefitsPlaceCoIns.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', co_ins_net_pct: 'co_ins_net_pct_example', co_ins_pct: 'co_ins_pct_example'}) # PlanBenefitsPlaceCoIns | 

begin
  # Update PlanBenefitsPlaceCoIns
  result = api_instance.update_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->update_plan_benefits_place_co_ins: #{e}"
end
```

#### Using the update_plan_benefits_place_co_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoInsVBAResponse>, Integer, Hash)> update_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins)

```ruby
begin
  # Update PlanBenefitsPlaceCoIns
  data, status_code, headers = api_instance.update_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoInsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoInsuranceApi->update_plan_benefits_place_co_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **plan_benefits_place_co_ins** | [**PlanBenefitsPlaceCoIns**](PlanBenefitsPlaceCoIns.md) |  |  |

### Return type

[**PlanBenefitsPlaceCoInsVBAResponse**](PlanBenefitsPlaceCoInsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

