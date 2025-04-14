# Vba::ClaimBatchDetailBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#create_claim_batch_detail_benefit) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits | Create ClaimBatchDetailBenefit |
| [**delete_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#delete_claim_batch_detail_benefit) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits/{benefitCode} | Delete ClaimBatchDetailBenefit |
| [**get_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#get_claim_batch_detail_benefit) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits/{benefitCode} | Get ClaimBatchDetailBenefit |
| [**list_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#list_claim_batch_detail_benefit) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits | List ClaimBatchDetailBenefit |
| [**update_batch_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#update_batch_claim_batch_detail_benefit) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits-batch | Create or Update Batch ClaimBatchDetailBenefit |
| [**update_claim_batch_detail_benefit**](ClaimBatchDetailBenefitsApi.md#update_claim_batch_detail_benefit) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/benefits/{benefitCode} | Update ClaimBatchDetailBenefit |


## create_claim_batch_detail_benefit

> <ClaimBatchDetailBenefitVBAResponse> create_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)

Create ClaimBatchDetailBenefit

Creates a new ClaimBatchDetailBenefit

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_batch_detail_benefit = Vba::ClaimBatchDetailBenefit.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', benefit_code: 'benefit_code_example', override: false}) # ClaimBatchDetailBenefit | 

begin
  # Create ClaimBatchDetailBenefit
  result = api_instance.create_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->create_claim_batch_detail_benefit: #{e}"
end
```

#### Using the create_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailBenefitVBAResponse>, Integer, Hash)> create_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)

```ruby
begin
  # Create ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.create_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->create_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **claim_batch_detail_benefit** | [**ClaimBatchDetailBenefit**](ClaimBatchDetailBenefit.md) |  |  |

### Return type

[**ClaimBatchDetailBenefitVBAResponse**](ClaimBatchDetailBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_detail_benefit

> delete_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)

Delete ClaimBatchDetailBenefit

Deletes an ClaimBatchDetailBenefit

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete ClaimBatchDetailBenefit
  api_instance.delete_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->delete_claim_batch_detail_benefit: #{e}"
end
```

#### Using the delete_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)

```ruby
begin
  # Delete ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.delete_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->delete_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_detail_benefit

> <ClaimBatchDetailBenefitVBAResponse> get_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)

Get ClaimBatchDetailBenefit

Gets ClaimBatchDetailBenefit

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get ClaimBatchDetailBenefit
  result = api_instance.get_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->get_claim_batch_detail_benefit: #{e}"
end
```

#### Using the get_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailBenefitVBAResponse>, Integer, Hash)> get_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)

```ruby
begin
  # Get ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.get_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->get_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**ClaimBatchDetailBenefitVBAResponse**](ClaimBatchDetailBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_detail_benefit

> <ClaimBatchDetailBenefitListVBAResponse> list_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)

List ClaimBatchDetailBenefit

Lists all ClaimBatchDetailBenefit for the given batchNumber and batchClaim and claimSeq and adjustmentSeq

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchDetailBenefit
  result = api_instance.list_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->list_claim_batch_detail_benefit: #{e}"
end
```

#### Using the list_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailBenefitListVBAResponse>, Integer, Hash)> list_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)

```ruby
begin
  # List ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.list_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailBenefitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->list_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimBatchDetailBenefitListVBAResponse**](ClaimBatchDetailBenefitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_detail_benefit

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)

Create or Update Batch ClaimBatchDetailBenefit

Create or Update multiple ClaimBatchDetailBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_batch_detail_benefit = [Vba::ClaimBatchDetailBenefit.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', benefit_code: 'benefit_code_example', override: false})] # Array<ClaimBatchDetailBenefit> | 

begin
  # Create or Update Batch ClaimBatchDetailBenefit
  result = api_instance.update_batch_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->update_batch_claim_batch_detail_benefit: #{e}"
end
```

#### Using the update_batch_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)

```ruby
begin
  # Create or Update Batch ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.update_batch_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_batch_detail_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->update_batch_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **claim_batch_detail_benefit** | [**Array&lt;ClaimBatchDetailBenefit&gt;**](ClaimBatchDetailBenefit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_detail_benefit

> <ClaimBatchDetailBenefitVBAResponse> update_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code, claim_batch_detail_benefit)

Update ClaimBatchDetailBenefit

Updates a specific ClaimBatchDetailBenefit.

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

api_instance = Vba::ClaimBatchDetailBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
benefit_code = 'benefit_code_example' # String | Benefit Code
claim_batch_detail_benefit = Vba::ClaimBatchDetailBenefit.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', benefit_code: 'benefit_code_example', override: false}) # ClaimBatchDetailBenefit | 

begin
  # Update ClaimBatchDetailBenefit
  result = api_instance.update_claim_batch_detail_benefit(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code, claim_batch_detail_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->update_claim_batch_detail_benefit: #{e}"
end
```

#### Using the update_claim_batch_detail_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchDetailBenefitVBAResponse>, Integer, Hash)> update_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code, claim_batch_detail_benefit)

```ruby
begin
  # Update ClaimBatchDetailBenefit
  data, status_code, headers = api_instance.update_claim_batch_detail_benefit_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, benefit_code, claim_batch_detail_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchDetailBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchDetailBenefitsApi->update_claim_batch_detail_benefit_with_http_info: #{e}"
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
| **benefit_code** | **String** | Benefit Code |  |
| **claim_batch_detail_benefit** | [**ClaimBatchDetailBenefit**](ClaimBatchDetailBenefit.md) |  |  |

### Return type

[**ClaimBatchDetailBenefitVBAResponse**](ClaimBatchDetailBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

