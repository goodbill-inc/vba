# Vba::PlanBenefitMaximumsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_maximum_benefit**](PlanBenefitMaximumsApi.md#create_plan_maximum_benefit) | **POST** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode} | Create PlanMaximumBenefit |
| [**delete_plan_maximum_benefit**](PlanBenefitMaximumsApi.md#delete_plan_maximum_benefit) | **DELETE** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode} | Delete PlanMaximumBenefit |
| [**get_plan_maximum_benefit**](PlanBenefitMaximumsApi.md#get_plan_maximum_benefit) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode} | Get PlanMaximumBenefit |
| [**list_plan_maximum_benefit**](PlanBenefitMaximumsApi.md#list_plan_maximum_benefit) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits | List PlanMaximumBenefit |
| [**update_batch_plan_maximum_benefit**](PlanBenefitMaximumsApi.md#update_batch_plan_maximum_benefit) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits-batch | Create or Update Batch PlanMaximumBenefit |


## create_plan_maximum_benefit

> <PlanMaximumBenefitVBAResponse> create_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

Create PlanMaximumBenefit

Creates a new PlanMaximumBenefit

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

api_instance = Vba::PlanBenefitMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
included_benefit_code = 'included_benefit_code_example' # String | Included Benefit Code

begin
  # Create PlanMaximumBenefit
  result = api_instance.create_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->create_plan_maximum_benefit: #{e}"
end
```

#### Using the create_plan_maximum_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumBenefitVBAResponse>, Integer, Hash)> create_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

```ruby
begin
  # Create PlanMaximumBenefit
  data, status_code, headers = api_instance.create_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->create_plan_maximum_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **included_benefit_code** | **String** | Included Benefit Code |  |

### Return type

[**PlanMaximumBenefitVBAResponse**](PlanMaximumBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_plan_maximum_benefit

> delete_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

Delete PlanMaximumBenefit

Deletes an PlanMaximumBenefit

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

api_instance = Vba::PlanBenefitMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
included_benefit_code = 'included_benefit_code_example' # String | Included Benefit Code

begin
  # Delete PlanMaximumBenefit
  api_instance.delete_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->delete_plan_maximum_benefit: #{e}"
end
```

#### Using the delete_plan_maximum_benefit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

```ruby
begin
  # Delete PlanMaximumBenefit
  data, status_code, headers = api_instance.delete_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->delete_plan_maximum_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **included_benefit_code** | **String** | Included Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_maximum_benefit

> <PlanMaximumBenefitVBAResponse> get_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

Get PlanMaximumBenefit

Gets PlanMaximumBenefit

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

api_instance = Vba::PlanBenefitMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
included_benefit_code = 'included_benefit_code_example' # String | Included Benefit Code

begin
  # Get PlanMaximumBenefit
  result = api_instance.get_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->get_plan_maximum_benefit: #{e}"
end
```

#### Using the get_plan_maximum_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumBenefitVBAResponse>, Integer, Hash)> get_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)

```ruby
begin
  # Get PlanMaximumBenefit
  data, status_code, headers = api_instance.get_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->get_plan_maximum_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **included_benefit_code** | **String** | Included Benefit Code |  |

### Return type

[**PlanMaximumBenefitVBAResponse**](PlanMaximumBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_maximum_benefit

> <PlanMaximumBenefitListVBAResponse> list_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id)

List PlanMaximumBenefit

Lists all PlanMaximumBenefit for the given planID and benefitCode and maxID

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

api_instance = Vba::PlanBenefitMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID

begin
  # List PlanMaximumBenefit
  result = api_instance.list_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->list_plan_maximum_benefit: #{e}"
end
```

#### Using the list_plan_maximum_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumBenefitListVBAResponse>, Integer, Hash)> list_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)

```ruby
begin
  # List PlanMaximumBenefit
  data, status_code, headers = api_instance.list_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumBenefitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->list_plan_maximum_benefit_with_http_info: #{e}"
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

[**PlanMaximumBenefitListVBAResponse**](PlanMaximumBenefitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_maximum_benefit

> <MultiCodeResponseListVBAResponse> update_batch_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit)

Create or Update Batch PlanMaximumBenefit

Create or Update multiple PlanMaximumBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum_benefit = [Vba::PlanMaximumBenefit.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', included_benefit_code: 'included_benefit_code_example'})] # Array<PlanMaximumBenefit> | 

begin
  # Create or Update Batch PlanMaximumBenefit
  result = api_instance.update_batch_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->update_batch_plan_maximum_benefit: #{e}"
end
```

#### Using the update_batch_plan_maximum_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit)

```ruby
begin
  # Create or Update Batch PlanMaximumBenefit
  data, status_code, headers = api_instance.update_batch_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitMaximumsApi->update_batch_plan_maximum_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum_benefit** | [**Array&lt;PlanMaximumBenefit&gt;**](PlanMaximumBenefit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

