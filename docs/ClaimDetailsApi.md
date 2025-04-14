# Vba::ClaimDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_detail**](ClaimDetailsApi.md#create_claim_detail) | **POST** /claims/{claimNumber}/details | Create ClaimDetail |
| [**delete_claim_detail**](ClaimDetailsApi.md#delete_claim_detail) | **DELETE** /claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq} | Delete ClaimDetail |
| [**get_claim_detail**](ClaimDetailsApi.md#get_claim_detail) | **GET** /claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq} | Get ClaimDetail |
| [**list_claim_detail**](ClaimDetailsApi.md#list_claim_detail) | **GET** /claims/{claimNumber}/details | List ClaimDetail |
| [**update_batch_claim_detail**](ClaimDetailsApi.md#update_batch_claim_detail) | **PUT** /claims/{claimNumber}/details-batch | Create or Update Batch ClaimDetail |
| [**update_claim_detail**](ClaimDetailsApi.md#update_claim_detail) | **PUT** /claims/{claimNumber}/details/{claimSeq}/{adjustmentSeq} | Update ClaimDetail |


## create_claim_detail

> <ClaimDetailVBAResponse> create_claim_detail(vbasoftware_database, claim_number, claim_detail)

Create ClaimDetail

Creates a new ClaimDetail

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim_detail = Vba::ClaimDetail.new({claim_number: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', adjusted_line: false, admin_amt: 3.56, billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimDetail | 

begin
  # Create ClaimDetail
  result = api_instance.create_claim_detail(vbasoftware_database, claim_number, claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->create_claim_detail: #{e}"
end
```

#### Using the create_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailVBAResponse>, Integer, Hash)> create_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail)

```ruby
begin
  # Create ClaimDetail
  data, status_code, headers = api_instance.create_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->create_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim_detail** | [**ClaimDetail**](ClaimDetail.md) |  |  |

### Return type

[**ClaimDetailVBAResponse**](ClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_detail

> delete_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq)

Delete ClaimDetail

Deletes an ClaimDetail

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Delete ClaimDetail
  api_instance.delete_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq)
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->delete_claim_detail: #{e}"
end
```

#### Using the delete_claim_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq)

```ruby
begin
  # Delete ClaimDetail
  data, status_code, headers = api_instance.delete_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->delete_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_detail

> <ClaimDetailVBAResponse> get_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq)

Get ClaimDetail

Gets ClaimDetail

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Get ClaimDetail
  result = api_instance.get_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->get_claim_detail: #{e}"
end
```

#### Using the get_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailVBAResponse>, Integer, Hash)> get_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq)

```ruby
begin
  # Get ClaimDetail
  data, status_code, headers = api_instance.get_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->get_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |

### Return type

[**ClaimDetailVBAResponse**](ClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_detail

> <ClaimDetailListVBAResponse> list_claim_detail(vbasoftware_database, claim_number, opts)

List ClaimDetail

Lists all ClaimDetail for the given claimNumber

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimDetail
  result = api_instance.list_claim_detail(vbasoftware_database, claim_number, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->list_claim_detail: #{e}"
end
```

#### Using the list_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailListVBAResponse>, Integer, Hash)> list_claim_detail_with_http_info(vbasoftware_database, claim_number, opts)

```ruby
begin
  # List ClaimDetail
  data, status_code, headers = api_instance.list_claim_detail_with_http_info(vbasoftware_database, claim_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->list_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimDetailListVBAResponse**](ClaimDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_detail(vbasoftware_database, claim_number, claim_detail)

Create or Update Batch ClaimDetail

Create or Update multiple ClaimDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim_detail = [Vba::ClaimDetail.new({claim_number: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', adjusted_line: false, admin_amt: 3.56, billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56})] # Array<ClaimDetail> | 

begin
  # Create or Update Batch ClaimDetail
  result = api_instance.update_batch_claim_detail(vbasoftware_database, claim_number, claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->update_batch_claim_detail: #{e}"
end
```

#### Using the update_batch_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail)

```ruby
begin
  # Create or Update Batch ClaimDetail
  data, status_code, headers = api_instance.update_batch_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->update_batch_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim_detail** | [**Array&lt;ClaimDetail&gt;**](ClaimDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_detail

> <ClaimDetailVBAResponse> update_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail)

Update ClaimDetail

Updates a specific ClaimDetail.

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

api_instance = Vba::ClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_detail = Vba::ClaimDetail.new({claim_number: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', adjusted_line: false, admin_amt: 3.56, billed_price: 3.56, buccal: false, co_b_amt: 3.56, capitation_claim: false, co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, override_benefit_code: false, override_cob_amt: false, override_co_ins_amt: false, override_co_pay_amt: false, override_ded_credit_amt: false, override_deductible_amt: false, override_federal_tax: false, override_local_tax: false, override_medicare_tax: false, override_not_covered_amt: false, override_plan_price: false, override_social_security: false, override_state_tax: false, override_with_hold_amt: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimDetail | 

begin
  # Update ClaimDetail
  result = api_instance.update_claim_detail(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->update_claim_detail: #{e}"
end
```

#### Using the update_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailVBAResponse>, Integer, Hash)> update_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail)

```ruby
begin
  # Update ClaimDetail
  data, status_code, headers = api_instance.update_claim_detail_with_http_info(vbasoftware_database, claim_number, claim_seq, adjustment_seq, claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailsApi->update_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim_seq** | **String** | Claim Seq |  |
| **adjustment_seq** | **String** | Adjustment Seq |  |
| **claim_detail** | [**ClaimDetail**](ClaimDetail.md) |  |  |

### Return type

[**ClaimDetailVBAResponse**](ClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

