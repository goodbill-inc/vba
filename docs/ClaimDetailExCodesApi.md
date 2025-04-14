# Vba::ClaimDetailExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_detail_ex_code**](ClaimDetailExCodesApi.md#create_claim_detail_ex_code) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes | Create ClaimDetailExCode |
| [**delete_claim_detail_ex_code**](ClaimDetailExCodesApi.md#delete_claim_detail_ex_code) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes/{exCode} | Delete ClaimDetailExCode |
| [**get_claim_detail_ex_code**](ClaimDetailExCodesApi.md#get_claim_detail_ex_code) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes/{exCode} | Get ClaimDetailExCode |
| [**list_claim_detail_ex_code**](ClaimDetailExCodesApi.md#list_claim_detail_ex_code) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes | List ClaimDetailExCode |
| [**update_batch_claim_detail_ex_code**](ClaimDetailExCodesApi.md#update_batch_claim_detail_ex_code) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes-batch | Create or Update Batch ClaimDetailExCode |
| [**update_claim_detail_ex_code**](ClaimDetailExCodesApi.md#update_claim_detail_ex_code) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq}/ex-codes/{exCode} | Update ClaimDetailExCode |


## create_claim_detail_ex_code

> <ClaimDetailExCodeVBAResponse> create_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)

Create ClaimDetailExCode

Creates a new ClaimDetailExCode

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

api_instance = Vba::ClaimDetailExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_detail_ex_code = Vba::ClaimDetailExCode.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', ex_code: 'ex_code_example', cleared: false}) # ClaimDetailExCode | 

begin
  # Create ClaimDetailExCode
  result = api_instance.create_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->create_claim_detail_ex_code: #{e}"
end
```

#### Using the create_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailExCodeVBAResponse>, Integer, Hash)> create_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)

```ruby
begin
  # Create ClaimDetailExCode
  data, status_code, headers = api_instance.create_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->create_claim_detail_ex_code_with_http_info: #{e}"
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
| **claim_detail_ex_code** | [**ClaimDetailExCode**](ClaimDetailExCode.md) |  |  |

### Return type

[**ClaimDetailExCodeVBAResponse**](ClaimDetailExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_detail_ex_code

> delete_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)

Delete ClaimDetailExCode

Deletes an ClaimDetailExCode

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

api_instance = Vba::ClaimDetailExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Delete ClaimDetailExCode
  api_instance.delete_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->delete_claim_detail_ex_code: #{e}"
end
```

#### Using the delete_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)

```ruby
begin
  # Delete ClaimDetailExCode
  data, status_code, headers = api_instance.delete_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->delete_claim_detail_ex_code_with_http_info: #{e}"
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
| **ex_code** | **String** | Ex Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_detail_ex_code

> <ClaimDetailExCodeVBAResponse> get_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)

Get ClaimDetailExCode

Gets ClaimDetailExCode

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

api_instance = Vba::ClaimDetailExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Get ClaimDetailExCode
  result = api_instance.get_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->get_claim_detail_ex_code: #{e}"
end
```

#### Using the get_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailExCodeVBAResponse>, Integer, Hash)> get_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)

```ruby
begin
  # Get ClaimDetailExCode
  data, status_code, headers = api_instance.get_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->get_claim_detail_ex_code_with_http_info: #{e}"
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
| **ex_code** | **String** | Ex Code |  |

### Return type

[**ClaimDetailExCodeVBAResponse**](ClaimDetailExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_detail_ex_code

> <ClaimDetailExCodeListVBAResponse> list_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)

List ClaimDetailExCode

Lists all ClaimDetailExCode for the given batchNumber and batchClaim and claimSeq and adjustmentSeq

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

api_instance = Vba::ClaimDetailExCodesApi.new
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
  # List ClaimDetailExCode
  result = api_instance.list_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->list_claim_detail_ex_code: #{e}"
end
```

#### Using the list_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailExCodeListVBAResponse>, Integer, Hash)> list_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)

```ruby
begin
  # List ClaimDetailExCode
  data, status_code, headers = api_instance.list_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->list_claim_detail_ex_code_with_http_info: #{e}"
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

[**ClaimDetailExCodeListVBAResponse**](ClaimDetailExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_detail_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)

Create or Update Batch ClaimDetailExCode

Create or Update multiple ClaimDetailExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimDetailExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
claim_detail_ex_code = [Vba::ClaimDetailExCode.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', ex_code: 'ex_code_example', cleared: false})] # Array<ClaimDetailExCode> | 

begin
  # Create or Update Batch ClaimDetailExCode
  result = api_instance.update_batch_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->update_batch_claim_detail_ex_code: #{e}"
end
```

#### Using the update_batch_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)

```ruby
begin
  # Create or Update Batch ClaimDetailExCode
  data, status_code, headers = api_instance.update_batch_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, claim_detail_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->update_batch_claim_detail_ex_code_with_http_info: #{e}"
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
| **claim_detail_ex_code** | [**Array&lt;ClaimDetailExCode&gt;**](ClaimDetailExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_detail_ex_code

> <ClaimDetailExCodeVBAResponse> update_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code, claim_detail_ex_code)

Update ClaimDetailExCode

Updates a specific ClaimDetailExCode.

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

api_instance = Vba::ClaimDetailExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
ex_code = 'ex_code_example' # String | Ex Code
claim_detail_ex_code = Vba::ClaimDetailExCode.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example', ex_code: 'ex_code_example', cleared: false}) # ClaimDetailExCode | 

begin
  # Update ClaimDetailExCode
  result = api_instance.update_claim_detail_ex_code(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code, claim_detail_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->update_claim_detail_ex_code: #{e}"
end
```

#### Using the update_claim_detail_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDetailExCodeVBAResponse>, Integer, Hash)> update_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code, claim_detail_ex_code)

```ruby
begin
  # Update ClaimDetailExCode
  data, status_code, headers = api_instance.update_claim_detail_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, ex_code, claim_detail_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDetailExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDetailExCodesApi->update_claim_detail_ex_code_with_http_info: #{e}"
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
| **ex_code** | **String** | Ex Code |  |
| **claim_detail_ex_code** | [**ClaimDetailExCode**](ClaimDetailExCode.md) |  |  |

### Return type

[**ClaimDetailExCodeVBAResponse**](ClaimDetailExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

