# Vba::ClaimPreBatchDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#create_claim_pre_batch_detail) | **POST** /claim-prebatch-details | Create ClaimPreBatchDetail |
| [**delete_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#delete_claim_pre_batch_detail) | **DELETE** /claim-prebatch-details/{ClaimPreBatchDetail_Key} | Delete ClaimPreBatchDetail |
| [**get_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#get_claim_pre_batch_detail) | **GET** /claim-prebatch-details/{ClaimPreBatchDetail_Key} | Get ClaimPreBatchDetail |
| [**list_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#list_claim_pre_batch_detail) | **GET** /claim-prebatch-details | List ClaimPreBatchDetail |
| [**update_batch_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#update_batch_claim_pre_batch_detail) | **PUT** /claim-prebatch-details-batch | Create or Update Batch ClaimPreBatchDetail |
| [**update_claim_pre_batch_detail**](ClaimPreBatchDetailsApi.md#update_claim_pre_batch_detail) | **PUT** /claim-prebatch-details/{ClaimPreBatchDetail_Key} | Update ClaimPreBatchDetail |


## create_claim_pre_batch_detail

> <ClaimPreBatchDetailVBAResponse> create_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail)

Create ClaimPreBatchDetail

Creates a new ClaimPreBatchDetail

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_detail = Vba::ClaimPreBatchDetail.new({claim_pre_batch_detail_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, billed_price: 3.56, buccal: false, co_b_amt: 3.56, claim_seq: 'claim_seq_example', co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimPreBatchDetail | 

begin
  # Create ClaimPreBatchDetail
  result = api_instance.create_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->create_claim_pre_batch_detail: #{e}"
end
```

#### Using the create_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchDetailVBAResponse>, Integer, Hash)> create_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail)

```ruby
begin
  # Create ClaimPreBatchDetail
  data, status_code, headers = api_instance.create_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->create_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_detail** | [**ClaimPreBatchDetail**](ClaimPreBatchDetail.md) |  |  |

### Return type

[**ClaimPreBatchDetailVBAResponse**](ClaimPreBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_pre_batch_detail

> delete_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key)

Delete ClaimPreBatchDetail

Deletes an ClaimPreBatchDetail

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_detail_key = 56 # Integer | ClaimPreBatchDetail Key

begin
  # Delete ClaimPreBatchDetail
  api_instance.delete_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->delete_claim_pre_batch_detail: #{e}"
end
```

#### Using the delete_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key)

```ruby
begin
  # Delete ClaimPreBatchDetail
  data, status_code, headers = api_instance.delete_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->delete_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_detail_key** | **Integer** | ClaimPreBatchDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_pre_batch_detail

> <ClaimPreBatchDetailVBAResponse> get_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key)

Get ClaimPreBatchDetail

Gets ClaimPreBatchDetail

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_detail_key = 56 # Integer | ClaimPreBatchDetail Key

begin
  # Get ClaimPreBatchDetail
  result = api_instance.get_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->get_claim_pre_batch_detail: #{e}"
end
```

#### Using the get_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchDetailVBAResponse>, Integer, Hash)> get_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key)

```ruby
begin
  # Get ClaimPreBatchDetail
  data, status_code, headers = api_instance.get_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->get_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_detail_key** | **Integer** | ClaimPreBatchDetail Key |  |

### Return type

[**ClaimPreBatchDetailVBAResponse**](ClaimPreBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_pre_batch_detail

> <ClaimPreBatchDetailListVBAResponse> list_claim_pre_batch_detail(vbasoftware_database, opts)

List ClaimPreBatchDetail

Lists all ClaimPreBatchDetail

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimPreBatchDetail
  result = api_instance.list_claim_pre_batch_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->list_claim_pre_batch_detail: #{e}"
end
```

#### Using the list_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchDetailListVBAResponse>, Integer, Hash)> list_claim_pre_batch_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimPreBatchDetail
  data, status_code, headers = api_instance.list_claim_pre_batch_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->list_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimPreBatchDetailListVBAResponse**](ClaimPreBatchDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_pre_batch_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail)

Create or Update Batch ClaimPreBatchDetail

Create or Update multiple ClaimPreBatchDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_detail = [Vba::ClaimPreBatchDetail.new({claim_pre_batch_detail_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, billed_price: 3.56, buccal: false, co_b_amt: 3.56, claim_seq: 'claim_seq_example', co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56})] # Array<ClaimPreBatchDetail> | 

begin
  # Create or Update Batch ClaimPreBatchDetail
  result = api_instance.update_batch_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->update_batch_claim_pre_batch_detail: #{e}"
end
```

#### Using the update_batch_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail)

```ruby
begin
  # Create or Update Batch ClaimPreBatchDetail
  data, status_code, headers = api_instance.update_batch_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->update_batch_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_detail** | [**Array&lt;ClaimPreBatchDetail&gt;**](ClaimPreBatchDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_pre_batch_detail

> <ClaimPreBatchDetailVBAResponse> update_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key, claim_pre_batch_detail)

Update ClaimPreBatchDetail

Updates a specific ClaimPreBatchDetail.

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

api_instance = Vba::ClaimPreBatchDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_detail_key = 56 # Integer | ClaimPreBatchDetail Key
claim_pre_batch_detail = Vba::ClaimPreBatchDetail.new({claim_pre_batch_detail_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, billed_price: 3.56, buccal: false, co_b_amt: 3.56, claim_seq: 'claim_seq_example', co_ins_amt: 3.56, co_pay_amt: 3.56, deductible_amt: 3.56, discount_amt: 3.56, distal: false, fica: 3.56, facial: false, federal_tax: 3.56, incisal: false, interest: 3.56, labial: false, lingual: false, mesial: false, not_covered_amt: 3.56, occlusal: false, paid_amt: 3.56, partial_loss: 3.56, plan_price: 3.56, premium_deduction: 3.56, principal: 3.56, root: false, social_security: 3.56, state_tax: 3.56, uc_r_price: 3.56, with_hold_amt: 3.56}) # ClaimPreBatchDetail | 

begin
  # Update ClaimPreBatchDetail
  result = api_instance.update_claim_pre_batch_detail(vbasoftware_database, claim_pre_batch_detail_key, claim_pre_batch_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->update_claim_pre_batch_detail: #{e}"
end
```

#### Using the update_claim_pre_batch_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchDetailVBAResponse>, Integer, Hash)> update_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key, claim_pre_batch_detail)

```ruby
begin
  # Update ClaimPreBatchDetail
  data, status_code, headers = api_instance.update_claim_pre_batch_detail_with_http_info(vbasoftware_database, claim_pre_batch_detail_key, claim_pre_batch_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchDetailsApi->update_claim_pre_batch_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_detail_key** | **Integer** | ClaimPreBatchDetail Key |  |
| **claim_pre_batch_detail** | [**ClaimPreBatchDetail**](ClaimPreBatchDetail.md) |  |  |

### Return type

[**ClaimPreBatchDetailVBAResponse**](ClaimPreBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

