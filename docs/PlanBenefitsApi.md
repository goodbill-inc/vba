# Vba::PlanBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits**](PlanBenefitsApi.md#create_plan_benefits) | **POST** /plans/{planID}/benefits | Create PlanBenefits |
| [**delete_plan_benefits**](PlanBenefitsApi.md#delete_plan_benefits) | **DELETE** /plans/{planID}/benefits/{benefitCode} | Delete PlanBenefits |
| [**get_plan_benefits**](PlanBenefitsApi.md#get_plan_benefits) | **GET** /plans/{planID}/benefits/{benefitCode} | Get PlanBenefits |
| [**list_included_plan_benefits**](PlanBenefitsApi.md#list_included_plan_benefits) | **GET** /plans/{planID}/included-benefits/{benefitCode} | List Included PlanBenefits |
| [**list_plan_benefits**](PlanBenefitsApi.md#list_plan_benefits) | **GET** /plans/{planID}/benefits | List PlanBenefits |
| [**update_batch_plan_benefits**](PlanBenefitsApi.md#update_batch_plan_benefits) | **PUT** /plans/{planID}/benefits-batch | Create or Update Batch PlanBenefits |
| [**update_plan_benefits**](PlanBenefitsApi.md#update_plan_benefits) | **PUT** /plans/{planID}/benefits/{benefitCode} | Update PlanBenefits |


## create_plan_benefits

> <PlanBenefitsVBAResponse> create_plan_benefits(vbasoftware_database, plan_id, plan_benefits)

Create PlanBenefits

Creates a new PlanBenefits

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_benefits = Vba::PlanBenefits.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', always_pay_in_network: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, coverage_24_hour: false, covered: 'covered_example', ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, deductible_before_co_pay: false, excluded: 'excluded_example', hospital_1st_day: false, lt_c_applies_to_elimination_period: false, lt_c_applies_to_wp: false, lt_c_apply_inflation: false, lt_c_base_benefit: false, lt_c_inflation_benefit: false, lt_c_inflation_compound: false, lt_c_shared_benefit: false, lt_c_use_benefit_dba: false, lt_c_use_benefit_lifetime_max: false, lt_c_use_benefit_mba: false, lt_c_use_pct_of_benefit: false, maternity: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, occupational: false, pc_p_only: false, parent_benefit: false, rider: 'rider_example', use_plan_co_ins: 'use_plan_co_ins_example', use_plan_ded: 'use_plan_ded_example', use_plan_max: 'use_plan_max_example', use_plan_oop: 'use_plan_oop_example'}) # PlanBenefits | 

begin
  # Create PlanBenefits
  result = api_instance.create_plan_benefits(vbasoftware_database, plan_id, plan_benefits)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->create_plan_benefits: #{e}"
end
```

#### Using the create_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsVBAResponse>, Integer, Hash)> create_plan_benefits_with_http_info(vbasoftware_database, plan_id, plan_benefits)

```ruby
begin
  # Create PlanBenefits
  data, status_code, headers = api_instance.create_plan_benefits_with_http_info(vbasoftware_database, plan_id, plan_benefits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->create_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_benefits** | [**PlanBenefits**](PlanBenefits.md) |  |  |

### Return type

[**PlanBenefitsVBAResponse**](PlanBenefitsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits

> delete_plan_benefits(vbasoftware_database, plan_id, benefit_code)

Delete PlanBenefits

Deletes an PlanBenefits

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete PlanBenefits
  api_instance.delete_plan_benefits(vbasoftware_database, plan_id, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->delete_plan_benefits: #{e}"
end
```

#### Using the delete_plan_benefits_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # Delete PlanBenefits
  data, status_code, headers = api_instance.delete_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->delete_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits

> <PlanBenefitsVBAResponse> get_plan_benefits(vbasoftware_database, plan_id, benefit_code)

Get PlanBenefits

Gets PlanBenefits

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get PlanBenefits
  result = api_instance.get_plan_benefits(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->get_plan_benefits: #{e}"
end
```

#### Using the get_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsVBAResponse>, Integer, Hash)> get_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # Get PlanBenefits
  data, status_code, headers = api_instance.get_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->get_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsVBAResponse**](PlanBenefitsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_included_plan_benefits

> <BenefitCodesListVBAResponse> list_included_plan_benefits(vbasoftware_database, plan_id, benefit_code)

List Included PlanBenefits

Lists all Included PlanBenefits for a given planID and benefitCode

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List Included PlanBenefits
  result = api_instance.list_included_plan_benefits(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->list_included_plan_benefits: #{e}"
end
```

#### Using the list_included_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesListVBAResponse>, Integer, Hash)> list_included_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List Included PlanBenefits
  data, status_code, headers = api_instance.list_included_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->list_included_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitCodesListVBAResponse**](BenefitCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits

> <PlanBenefitsListVBAResponse> list_plan_benefits(vbasoftware_database, plan_id)

List PlanBenefits

Lists all PlanBenefits planID

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanBenefits
  result = api_instance.list_plan_benefits(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->list_plan_benefits: #{e}"
end
```

#### Using the list_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsListVBAResponse>, Integer, Hash)> list_plan_benefits_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanBenefits
  data, status_code, headers = api_instance.list_plan_benefits_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->list_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanBenefitsListVBAResponse**](PlanBenefitsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits(vbasoftware_database, plan_id, plan_benefits)

Create or Update Batch PlanBenefits

Create or Update multiple PlanBenefits at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_benefits = [Vba::PlanBenefits.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', always_pay_in_network: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, coverage_24_hour: false, covered: 'covered_example', ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, deductible_before_co_pay: false, excluded: 'excluded_example', hospital_1st_day: false, lt_c_applies_to_elimination_period: false, lt_c_applies_to_wp: false, lt_c_apply_inflation: false, lt_c_base_benefit: false, lt_c_inflation_benefit: false, lt_c_inflation_compound: false, lt_c_shared_benefit: false, lt_c_use_benefit_dba: false, lt_c_use_benefit_lifetime_max: false, lt_c_use_benefit_mba: false, lt_c_use_pct_of_benefit: false, maternity: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, occupational: false, pc_p_only: false, parent_benefit: false, rider: 'rider_example', use_plan_co_ins: 'use_plan_co_ins_example', use_plan_ded: 'use_plan_ded_example', use_plan_max: 'use_plan_max_example', use_plan_oop: 'use_plan_oop_example'})] # Array<PlanBenefits> | 

begin
  # Create or Update Batch PlanBenefits
  result = api_instance.update_batch_plan_benefits(vbasoftware_database, plan_id, plan_benefits)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->update_batch_plan_benefits: #{e}"
end
```

#### Using the update_batch_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_with_http_info(vbasoftware_database, plan_id, plan_benefits)

```ruby
begin
  # Create or Update Batch PlanBenefits
  data, status_code, headers = api_instance.update_batch_plan_benefits_with_http_info(vbasoftware_database, plan_id, plan_benefits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->update_batch_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_benefits** | [**Array&lt;PlanBenefits&gt;**](PlanBenefits.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits

> <PlanBenefitsVBAResponse> update_plan_benefits(vbasoftware_database, plan_id, benefit_code, plan_benefits)

Update PlanBenefits

Updates a specific PlanBenefits.

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

api_instance = Vba::PlanBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits = Vba::PlanBenefits.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', always_pay_in_network: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, coverage_24_hour: false, covered: 'covered_example', ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, deductible_before_co_pay: false, excluded: 'excluded_example', hospital_1st_day: false, lt_c_applies_to_elimination_period: false, lt_c_applies_to_wp: false, lt_c_apply_inflation: false, lt_c_base_benefit: false, lt_c_inflation_benefit: false, lt_c_inflation_compound: false, lt_c_shared_benefit: false, lt_c_use_benefit_dba: false, lt_c_use_benefit_lifetime_max: false, lt_c_use_benefit_mba: false, lt_c_use_pct_of_benefit: false, maternity: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, occupational: false, pc_p_only: false, parent_benefit: false, rider: 'rider_example', use_plan_co_ins: 'use_plan_co_ins_example', use_plan_ded: 'use_plan_ded_example', use_plan_max: 'use_plan_max_example', use_plan_oop: 'use_plan_oop_example'}) # PlanBenefits | 

begin
  # Update PlanBenefits
  result = api_instance.update_plan_benefits(vbasoftware_database, plan_id, benefit_code, plan_benefits)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->update_plan_benefits: #{e}"
end
```

#### Using the update_plan_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsVBAResponse>, Integer, Hash)> update_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits)

```ruby
begin
  # Update PlanBenefits
  data, status_code, headers = api_instance.update_plan_benefits_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitsApi->update_plan_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits** | [**PlanBenefits**](PlanBenefits.md) |  |  |

### Return type

[**PlanBenefitsVBAResponse**](PlanBenefitsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

