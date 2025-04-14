# Vba::AdvClaimApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**adjust_claim**](AdvClaimApi.md#adjust_claim) | **POST** /claim-adjustment | Adjust Claim(s) |
| [**copy_claim_multi_payor_account**](AdvClaimApi.md#copy_claim_multi_payor_account) | **POST** /claim-copy-multi-payor-account | Split Claims by Payor/Account |
| [**copy_claim_multi_plan_year**](AdvClaimApi.md#copy_claim_multi_plan_year) | **POST** /claim-copy-multi-plan-year | Split Claims by Plan Year |
| [**copy_claim_service_line**](AdvClaimApi.md#copy_claim_service_line) | **POST** /claim-copy-service-lines | Copy Selected Service Lines |
| [**copy_claim_to_batch**](AdvClaimApi.md#copy_claim_to_batch) | **POST** /claim-copy-to-batch | Copy Claim(s) to Batch |
| [**create_life_claim**](AdvClaimApi.md#create_life_claim) | **POST** /create-life-claim | Create a Life Claim |
| [**create_life_claim_payment**](AdvClaimApi.md#create_life_claim_payment) | **POST** /create-life-claim-payment | Create a Life Claim Payment |
| [**disability_advisor_create_claim**](AdvClaimApi.md#disability_advisor_create_claim) | **POST** /disability-advisor-create-claim | Create Disability Payments |
| [**disability_claim_sync**](AdvClaimApi.md#disability_claim_sync) | **POST** /disability-claim-sync-header | Sync ClaimBatch Disability |
| [**full_delete_claim_batch**](AdvClaimApi.md#full_delete_claim_batch) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/full-delete | Full Delete ClaimBatch |
| [**generate_claim_invoice**](AdvClaimApi.md#generate_claim_invoice) | **POST** /claim-invoice-generate | Generate Claim Invoice |
| [**get_claim_xml**](AdvClaimApi.md#get_claim_xml) | **GET** /edi-key/{ediKey}/edi-claim-key/{claimKey}/edi-location/{ediLocation}/edi-xml | Get Claim EDI XML |
| [**list_adjudicate_benefit_match**](AdvClaimApi.md#list_adjudicate_benefit_match) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/adjudicate-benefit-match | List matching benefit detail |
| [**return_claim_to_batch**](AdvClaimApi.md#return_claim_to_batch) | **POST** /claim-return-to-batch | Return Claim(s) to Batch |
| [**suspend_from_audit**](AdvClaimApi.md#suspend_from_audit) | **POST** /claim-suspend-from-audit | Suspend Claims on Audit |
| [**suspense_claim_release**](AdvClaimApi.md#suspense_claim_release) | **POST** /suspense-claim-release | Release Suspended Claims |
| [**suspense_claim_return**](AdvClaimApi.md#suspense_claim_return) | **POST** /suspense-claim-return/{exCode} | Return Suspended Claims |


## adjust_claim

> <Int32VBAResponse> adjust_claim(vbasoftware_database, claim_adjustment_config)

Adjust Claim(s)

Adjust a selected list of claims by Claim Number.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_adjustment_config = Vba::ClaimAdjustmentConfig.new # ClaimAdjustmentConfig | 

begin
  # Adjust Claim(s)
  result = api_instance.adjust_claim(vbasoftware_database, claim_adjustment_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->adjust_claim: #{e}"
end
```

#### Using the adjust_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> adjust_claim_with_http_info(vbasoftware_database, claim_adjustment_config)

```ruby
begin
  # Adjust Claim(s)
  data, status_code, headers = api_instance.adjust_claim_with_http_info(vbasoftware_database, claim_adjustment_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->adjust_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_adjustment_config** | [**ClaimAdjustmentConfig**](ClaimAdjustmentConfig.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## copy_claim_multi_payor_account

> copy_claim_multi_payor_account(vbasoftware_database, batch_number, batch_claim)

Split Claims by Payor/Account

When the chosen claim has a multi-Payor/Account error, this process will automatically split the claim and create a bridgre reference in ClaimBatchReference.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Split Claims by Payor/Account
  api_instance.copy_claim_multi_payor_account(vbasoftware_database, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_multi_payor_account: #{e}"
end
```

#### Using the copy_claim_multi_payor_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_claim_multi_payor_account_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Split Claims by Payor/Account
  data, status_code, headers = api_instance.copy_claim_multi_payor_account_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_multi_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## copy_claim_multi_plan_year

> copy_claim_multi_plan_year(vbasoftware_database, batch_number, batch_claim)

Split Claims by Plan Year

When the chosen claim has a multi-Plan Year error, this process will automatically split the claim and create a bridgre reference in ClaimBatchReference.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Split Claims by Plan Year
  api_instance.copy_claim_multi_plan_year(vbasoftware_database, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_multi_plan_year: #{e}"
end
```

#### Using the copy_claim_multi_plan_year_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_claim_multi_plan_year_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Split Claims by Plan Year
  data, status_code, headers = api_instance.copy_claim_multi_plan_year_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_multi_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## copy_claim_service_line

> copy_claim_service_line(vbasoftware_database, number_of_copies, days_on_copy, claim_batch_detail)

Copy Selected Service Lines

Copy a list of ClaimBatchDetails x amount of times and add y amount of days to each copy.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
number_of_copies = 56 # Integer | Number of Copies
days_on_copy = 56 # Integer | Days on Copy
claim_batch_detail = [Vba::ClaimBatchDetail.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56})] # Array<ClaimBatchDetail> | 

begin
  # Copy Selected Service Lines
  api_instance.copy_claim_service_line(vbasoftware_database, number_of_copies, days_on_copy, claim_batch_detail)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_service_line: #{e}"
end
```

#### Using the copy_claim_service_line_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_claim_service_line_with_http_info(vbasoftware_database, number_of_copies, days_on_copy, claim_batch_detail)

```ruby
begin
  # Copy Selected Service Lines
  data, status_code, headers = api_instance.copy_claim_service_line_with_http_info(vbasoftware_database, number_of_copies, days_on_copy, claim_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_service_line_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **number_of_copies** | **Integer** | Number of Copies |  |
| **days_on_copy** | **Integer** | Days on Copy |  |
| **claim_batch_detail** | [**Array&lt;ClaimBatchDetail&gt;**](ClaimBatchDetail.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## copy_claim_to_batch

> copy_claim_to_batch(vbasoftware_database, request_body)

Copy Claim(s) to Batch

Copy a selected list of claims to batch.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_body = [37] # Array<Integer> | 

begin
  # Copy Claim(s) to Batch
  api_instance.copy_claim_to_batch(vbasoftware_database, request_body)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_to_batch: #{e}"
end
```

#### Using the copy_claim_to_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_claim_to_batch_with_http_info(vbasoftware_database, request_body)

```ruby
begin
  # Copy Claim(s) to Batch
  data, status_code, headers = api_instance.copy_claim_to_batch_with_http_info(vbasoftware_database, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->copy_claim_to_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_life_claim

> <Int32VBAResponse> create_life_claim(vbasoftware_database, life_claim_advisor)

Create a Life Claim

Setup a Life Claim based on defined configuration and optionally setup the Life Claim payments.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
life_claim_advisor = Vba::LifeClaimAdvisor.new # LifeClaimAdvisor | 

begin
  # Create a Life Claim
  result = api_instance.create_life_claim(vbasoftware_database, life_claim_advisor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->create_life_claim: #{e}"
end
```

#### Using the create_life_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> create_life_claim_with_http_info(vbasoftware_database, life_claim_advisor)

```ruby
begin
  # Create a Life Claim
  data, status_code, headers = api_instance.create_life_claim_with_http_info(vbasoftware_database, life_claim_advisor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->create_life_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **life_claim_advisor** | [**LifeClaimAdvisor**](LifeClaimAdvisor.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_life_claim_payment

> create_life_claim_payment(vbasoftware_database, batch_number, pay_to, volume, opts)

Create a Life Claim Payment

Based on passed in parameters, create a Life Claim Payment under an existing Life Claim.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
pay_to = 'pay_to_example' # String | Pay To
volume = 1.2 # Float | Volume
opts = {
  beneficiary_id: 'beneficiary_id_example', # String | Beneficiary ID
  assignment: 1.2 # Float | Assignment
}

begin
  # Create a Life Claim Payment
  api_instance.create_life_claim_payment(vbasoftware_database, batch_number, pay_to, volume, opts)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->create_life_claim_payment: #{e}"
end
```

#### Using the create_life_claim_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_life_claim_payment_with_http_info(vbasoftware_database, batch_number, pay_to, volume, opts)

```ruby
begin
  # Create a Life Claim Payment
  data, status_code, headers = api_instance.create_life_claim_payment_with_http_info(vbasoftware_database, batch_number, pay_to, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->create_life_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **pay_to** | **String** | Pay To |  |
| **volume** | **Float** | Volume |  |
| **beneficiary_id** | **String** | Beneficiary ID | [optional] |
| **assignment** | **Float** | Assignment | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disability_advisor_create_claim

> <ClaimInvoiceVBAResponse> disability_advisor_create_claim(vbasoftware_database, vba_disability_advisor)

Create Disability Payments

Create a Batch of Claims that represent Disability Payments for a STD or LTD disability claim.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_disability_advisor = Vba::VBADisabilityAdvisor.new # VBADisabilityAdvisor | 

begin
  # Create Disability Payments
  result = api_instance.disability_advisor_create_claim(vbasoftware_database, vba_disability_advisor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->disability_advisor_create_claim: #{e}"
end
```

#### Using the disability_advisor_create_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceVBAResponse>, Integer, Hash)> disability_advisor_create_claim_with_http_info(vbasoftware_database, vba_disability_advisor)

```ruby
begin
  # Create Disability Payments
  data, status_code, headers = api_instance.disability_advisor_create_claim_with_http_info(vbasoftware_database, vba_disability_advisor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->disability_advisor_create_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_disability_advisor** | [**VBADisabilityAdvisor**](VBADisabilityAdvisor.md) |  |  |

### Return type

[**ClaimInvoiceVBAResponse**](ClaimInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## disability_claim_sync

> disability_claim_sync(vbasoftware_database, batch_number, batch_claim)

Sync ClaimBatch Disability

Send in a ClaimBatch record and have all other ClaimBatch records remaining in Batch syncd to the Disability values on that submitted header.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Sync ClaimBatch Disability
  api_instance.disability_claim_sync(vbasoftware_database, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->disability_claim_sync: #{e}"
end
```

#### Using the disability_claim_sync_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disability_claim_sync_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Sync ClaimBatch Disability
  data, status_code, headers = api_instance.disability_claim_sync_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->disability_claim_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## full_delete_claim_batch

> full_delete_claim_batch(vbasoftware_database, batch_number, batch_claim, opts)

Full Delete ClaimBatch

Deletes an ClaimBatch record along with all associated processing needed as a result of that delete.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  claim_status_category_code: 'claim_status_category_code_example', # String | Claim Status Category Code
  claim_status_code: 'claim_status_code_example' # String | Claim Status Code
}

begin
  # Full Delete ClaimBatch
  api_instance.full_delete_claim_batch(vbasoftware_database, batch_number, batch_claim, opts)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->full_delete_claim_batch: #{e}"
end
```

#### Using the full_delete_claim_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> full_delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # Full Delete ClaimBatch
  data, status_code, headers = api_instance.full_delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->full_delete_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_status_category_code** | **String** | Claim Status Category Code | [optional] |
| **claim_status_code** | **String** | Claim Status Code | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_claim_invoice

> <ClaimBatchClaimBatchDetailListVBAResponse> generate_claim_invoice(vbasoftware_database, claim_invoice_config)

Generate Claim Invoice

Creates a Claim Invoice and attaches a list of Claims.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_config = Vba::ClaimInvoiceConfig.new # ClaimInvoiceConfig | 

begin
  # Generate Claim Invoice
  result = api_instance.generate_claim_invoice(vbasoftware_database, claim_invoice_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->generate_claim_invoice: #{e}"
end
```

#### Using the generate_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchClaimBatchDetailListVBAResponse>, Integer, Hash)> generate_claim_invoice_with_http_info(vbasoftware_database, claim_invoice_config)

```ruby
begin
  # Generate Claim Invoice
  data, status_code, headers = api_instance.generate_claim_invoice_with_http_info(vbasoftware_database, claim_invoice_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchClaimBatchDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->generate_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_config** | [**ClaimInvoiceConfig**](ClaimInvoiceConfig.md) |  |  |

### Return type

[**ClaimBatchClaimBatchDetailListVBAResponse**](ClaimBatchClaimBatchDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_claim_xml

> <StringVBAResponse> get_claim_xml(vbasoftware_database, edi_key, claim_key, edi_location)

Get Claim EDI XML

Get a full XML representation of this claim submitted via EDI into VBADataIntegration. The criteria for this is available in Search Config: VBADATAINT_CLAIM.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_key = 56 # Integer | EDI Key
claim_key = 56 # Integer | Claim Key
edi_location = 'edi_location_example' # String | EDI Location

begin
  # Get Claim EDI XML
  result = api_instance.get_claim_xml(vbasoftware_database, edi_key, claim_key, edi_location)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->get_claim_xml: #{e}"
end
```

#### Using the get_claim_xml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> get_claim_xml_with_http_info(vbasoftware_database, edi_key, claim_key, edi_location)

```ruby
begin
  # Get Claim EDI XML
  data, status_code, headers = api_instance.get_claim_xml_with_http_info(vbasoftware_database, edi_key, claim_key, edi_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->get_claim_xml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_key** | **Integer** | EDI Key |  |
| **claim_key** | **Integer** | Claim Key |  |
| **edi_location** | **String** | EDI Location |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_adjudicate_benefit_match

> <AdjudicateBenefitMatchDetailListVBAResponse> list_adjudicate_benefit_match(vbasoftware_database, batch_number, batch_claim, claim_seq, opts)

List matching benefit detail

List of potential benefit matches along with a match count for a specific claim service line.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
opts = {
  plan_id: 'plan_id_example', # String | Plan ID
  provider_id: 'provider_id_example', # String | Provider ID
  provider_type: 'provider_type_example' # String | Provider Type
}

begin
  # List matching benefit detail
  result = api_instance.list_adjudicate_benefit_match(vbasoftware_database, batch_number, batch_claim, claim_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->list_adjudicate_benefit_match: #{e}"
end
```

#### Using the list_adjudicate_benefit_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdjudicateBenefitMatchDetailListVBAResponse>, Integer, Hash)> list_adjudicate_benefit_match_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, opts)

```ruby
begin
  # List matching benefit detail
  data, status_code, headers = api_instance.list_adjudicate_benefit_match_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdjudicateBenefitMatchDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->list_adjudicate_benefit_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_seq** | **String** | Claim Seq |  |
| **plan_id** | **String** | Plan ID | [optional] |
| **provider_id** | **String** | Provider ID | [optional] |
| **provider_type** | **String** | Provider Type | [optional] |

### Return type

[**AdjudicateBenefitMatchDetailListVBAResponse**](AdjudicateBenefitMatchDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## return_claim_to_batch

> return_claim_to_batch(vbasoftware_database, request_body)

Return Claim(s) to Batch

Return a selected list of claims to batch.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_body = [37] # Array<Integer> | 

begin
  # Return Claim(s) to Batch
  api_instance.return_claim_to_batch(vbasoftware_database, request_body)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->return_claim_to_batch: #{e}"
end
```

#### Using the return_claim_to_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> return_claim_to_batch_with_http_info(vbasoftware_database, request_body)

```ruby
begin
  # Return Claim(s) to Batch
  data, status_code, headers = api_instance.return_claim_to_batch_with_http_info(vbasoftware_database, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->return_claim_to_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## suspend_from_audit

> suspend_from_audit(vbasoftware_database, claim_audit_key)

Suspend Claims on Audit

This process will take a Claim Audit key and then suspend any claims associated with that Claim Audit (assuming that claim is not Funded).

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | Claim Audit Key

begin
  # Suspend Claims on Audit
  api_instance.suspend_from_audit(vbasoftware_database, claim_audit_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspend_from_audit: #{e}"
end
```

#### Using the suspend_from_audit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suspend_from_audit_with_http_info(vbasoftware_database, claim_audit_key)

```ruby
begin
  # Suspend Claims on Audit
  data, status_code, headers = api_instance.suspend_from_audit_with_http_info(vbasoftware_database, claim_audit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspend_from_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | Claim Audit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## suspense_claim_release

> suspense_claim_release(vbasoftware_database, suspense_claim_list)

Release Suspended Claims

Release a selection of suspended claims so they can be Funded.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim_list = [Vba::SuspenseClaimList.new] # Array<SuspenseClaimList> | 

begin
  # Release Suspended Claims
  api_instance.suspense_claim_release(vbasoftware_database, suspense_claim_list)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspense_claim_release: #{e}"
end
```

#### Using the suspense_claim_release_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suspense_claim_release_with_http_info(vbasoftware_database, suspense_claim_list)

```ruby
begin
  # Release Suspended Claims
  data, status_code, headers = api_instance.suspense_claim_release_with_http_info(vbasoftware_database, suspense_claim_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspense_claim_release_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim_list** | [**Array&lt;SuspenseClaimList&gt;**](SuspenseClaimList.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## suspense_claim_return

> suspense_claim_return(vbasoftware_database, ex_code, suspense_claim_list)

Return Suspended Claims

Return a selection of suspended claims to Batch so they can be reprocessed.  Assign an optional Ex Code to the claim returned.

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

api_instance = Vba::AdvClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code
suspense_claim_list = [Vba::SuspenseClaimList.new] # Array<SuspenseClaimList> | 

begin
  # Return Suspended Claims
  api_instance.suspense_claim_return(vbasoftware_database, ex_code, suspense_claim_list)
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspense_claim_return: #{e}"
end
```

#### Using the suspense_claim_return_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suspense_claim_return_with_http_info(vbasoftware_database, ex_code, suspense_claim_list)

```ruby
begin
  # Return Suspended Claims
  data, status_code, headers = api_instance.suspense_claim_return_with_http_info(vbasoftware_database, ex_code, suspense_claim_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvClaimApi->suspense_claim_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |
| **suspense_claim_list** | [**Array&lt;SuspenseClaimList&gt;**](SuspenseClaimList.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined

