# Vba::ClaimBatchDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_detail**](ClaimBatchDetailsApi.md#create_claim_batch_detail) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/details | Create ClaimBatchDetail |
| [**delete_claim_batch_detail**](ClaimBatchDetailsApi.md#delete_claim_batch_detail) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Delete ClaimBatchDetail |
| [**get_claim_batch_detail**](ClaimBatchDetailsApi.md#get_claim_batch_detail) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Get ClaimBatchDetail |
| [**list_adjudicate_benefit_match**](ClaimBatchDetailsApi.md#list_adjudicate_benefit_match) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/adjudicate-benefit-match | List matching benefit detail |
| [**list_claim_batch_detail**](ClaimBatchDetailsApi.md#list_claim_batch_detail) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details | List ClaimBatchDetail |
| [**update_batch_claim_batch_detail**](ClaimBatchDetailsApi.md#update_batch_claim_batch_detail) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details-batch | Create or Update Batch ClaimBatchDetail |
| [**update_claim_batch_detail**](ClaimBatchDetailsApi.md#update_claim_batch_detail) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Update ClaimBatchDetail |


## create_claim_batch_detail

> <ClaimBatchDetailVBAResponse> create_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)

Create ClaimBatchDetail

Creates a new ClaimBatchDetail

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_batch_detail = Vba::ClaimBatchDetail.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimBatchDetail | 

begin
  # Create ClaimBatchDetail
  result = api_instance.create_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->create_claim_batch_detail: #{e}"
end
```

#### Using the create_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailVBAResponse>, Integer, Hash)> create_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)

```ruby
begin
  # Create ClaimBatchDetail
  data, status_code, headers = api_instance.create_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->create_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_batch_detail** | [**ClaimBatchDetail**](ClaimBatchDetail.md) |  |  |

### Return type

[**ClaimBatchDetailVBAResponse**](ClaimBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_detail

> delete_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

Delete ClaimBatchDetail

Deletes an ClaimBatchDetail

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Delete ClaimBatchDetail
  api_instance.delete_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->delete_claim_batch_detail: #{e}"
end
```

#### Using the delete_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

```ruby
begin
  # Delete ClaimBatchDetail
  data, status_code, headers = api_instance.delete_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->delete_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_detail

> <ClaimBatchDetailVBAResponse> get_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

Get ClaimBatchDetail

Gets ClaimBatchDetail

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Get ClaimBatchDetail
  result = api_instance.get_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->get_claim_batch_detail: #{e}"
end
```

#### Using the get_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailVBAResponse>, Integer, Hash)> get_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

```ruby
begin
  # Get ClaimBatchDetail
  data, status_code, headers = api_instance.get_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->get_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |

### Return type

[**ClaimBatchDetailVBAResponse**](ClaimBatchDetailVBAResponse.md)

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

api_instance = Vba::ClaimBatchDetailsApi.new
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
  puts "Error when calling ClaimBatchDetailsApi->list_adjudicate_benefit_match: #{e}"
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
  puts "Error when calling ClaimBatchDetailsApi->list_adjudicate_benefit_match_with_http_info: #{e}"
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


## list_claim_batch_detail

> <ClaimBatchDetailListVBAResponse> list_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, opts)

List ClaimBatchDetail

Lists all ClaimBatchDetail for the given batchNumber and batchClaim

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchDetail
  result = api_instance.list_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->list_claim_batch_detail: #{e}"
end
```

#### Using the list_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailListVBAResponse>, Integer, Hash)> list_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # List ClaimBatchDetail
  data, status_code, headers = api_instance.list_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->list_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimBatchDetailListVBAResponse**](ClaimBatchDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)

Create or Update Batch ClaimBatchDetail

Create or Update multiple ClaimBatchDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_batch_detail = [Vba::ClaimBatchDetail.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56})] # Array<ClaimBatchDetail> | 

begin
  # Create or Update Batch ClaimBatchDetail
  result = api_instance.update_batch_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->update_batch_claim_batch_detail: #{e}"
end
```

#### Using the update_batch_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)

```ruby
begin
  # Create or Update Batch ClaimBatchDetail
  data, status_code, headers = api_instance.update_batch_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->update_batch_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_batch_detail** | [**Array&lt;ClaimBatchDetail&gt;**](ClaimBatchDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_detail

> <ClaimBatchDetailVBAResponse> update_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail)

Update ClaimBatchDetail

Updates a specific ClaimBatchDetail.

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

api_instance = Vba::ClaimBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_batch_detail = Vba::ClaimBatchDetail.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimBatchDetail | 

begin
  # Update ClaimBatchDetail
  result = api_instance.update_claim_batch_detail(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->update_claim_batch_detail: #{e}"
end
```

#### Using the update_claim_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailVBAResponse>, Integer, Hash)> update_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail)

```ruby
begin
  # Update ClaimBatchDetail
  data, status_code, headers = api_instance.update_claim_batch_detail_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailsApi->update_claim_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |
| **claim_batch_detail** | [**ClaimBatchDetail**](ClaimBatchDetail.md) |  |  |

### Return type

[**ClaimBatchDetailVBAResponse**](ClaimBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

