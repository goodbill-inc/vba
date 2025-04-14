# Vba::ZelisCostContainmentClaimDetailRepricingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#create_cost_contain_zelis_claim_detail_reprice) | **POST** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details | Create CostContainZelisClaimDetailReprice |
| [**delete_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#delete_cost_contain_zelis_claim_detail_reprice) | **DELETE** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Delete CostContainZelisClaimDetailReprice |
| [**get_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#get_cost_contain_zelis_claim_detail_reprice) | **GET** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Get CostContainZelisClaimDetailReprice |
| [**list_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#list_cost_contain_zelis_claim_detail_reprice) | **GET** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details | List CostContainZelisClaimDetailReprice |
| [**update_batch_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#update_batch_cost_contain_zelis_claim_detail_reprice) | **PUT** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details-batch | Create or Update Batch CostContainZelisClaimDetailReprice |
| [**update_cost_contain_zelis_claim_detail_reprice**](ZelisCostContainmentClaimDetailRepricingApi.md#update_cost_contain_zelis_claim_detail_reprice) | **PUT** /zelis-claim-detail-repricing/batches/{batchNumber}/claims/{batchClaim}/details/{claimSeq}/{adjustmentSeq} | Update CostContainZelisClaimDetailReprice |


## create_cost_contain_zelis_claim_detail_reprice

> <CostContainZelisClaimDetailRepriceVBAResponse> create_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)

Create CostContainZelisClaimDetailReprice

Creates a new CostContainZelisClaimDetailReprice

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
cost_contain_zelis_claim_detail_reprice = Vba::CostContainZelisClaimDetailReprice.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example'}) # CostContainZelisClaimDetailReprice | 

begin
  # Create CostContainZelisClaimDetailReprice
  result = api_instance.create_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->create_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the create_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimDetailRepriceVBAResponse>, Integer, Hash)> create_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)

```ruby
begin
  # Create CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.create_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimDetailRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->create_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **cost_contain_zelis_claim_detail_reprice** | [**CostContainZelisClaimDetailReprice**](CostContainZelisClaimDetailReprice.md) |  |  |

### Return type

[**CostContainZelisClaimDetailRepriceVBAResponse**](CostContainZelisClaimDetailRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_claim_detail_reprice

> delete_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

Delete CostContainZelisClaimDetailReprice

Deletes an CostContainZelisClaimDetailReprice

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Delete CostContainZelisClaimDetailReprice
  api_instance.delete_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->delete_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the delete_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

```ruby
begin
  # Delete CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.delete_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->delete_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
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


## get_cost_contain_zelis_claim_detail_reprice

> <CostContainZelisClaimDetailRepriceVBAResponse> get_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

Get CostContainZelisClaimDetailReprice

Gets CostContainZelisClaimDetailReprice

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq

begin
  # Get CostContainZelisClaimDetailReprice
  result = api_instance.get_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->get_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the get_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimDetailRepriceVBAResponse>, Integer, Hash)> get_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)

```ruby
begin
  # Get CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.get_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimDetailRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->get_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
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

[**CostContainZelisClaimDetailRepriceVBAResponse**](CostContainZelisClaimDetailRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_claim_detail_reprice

> <CostContainZelisClaimDetailRepriceListVBAResponse> list_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, opts)

List CostContainZelisClaimDetailReprice

Lists all CostContainZelisClaimDetailReprice for the given batchNumber and batchClaim

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisClaimDetailReprice
  result = api_instance.list_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->list_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the list_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimDetailRepriceListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # List CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.list_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimDetailRepriceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->list_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
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

[**CostContainZelisClaimDetailRepriceListVBAResponse**](CostContainZelisClaimDetailRepriceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_claim_detail_reprice

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)

Create or Update Batch CostContainZelisClaimDetailReprice

Create or Update multiple CostContainZelisClaimDetailReprice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
cost_contain_zelis_claim_detail_reprice = [Vba::CostContainZelisClaimDetailReprice.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example'})] # Array<CostContainZelisClaimDetailReprice> | 

begin
  # Create or Update Batch CostContainZelisClaimDetailReprice
  result = api_instance.update_batch_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->update_batch_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)

```ruby
begin
  # Create or Update Batch CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_detail_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->update_batch_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **cost_contain_zelis_claim_detail_reprice** | [**Array&lt;CostContainZelisClaimDetailReprice&gt;**](CostContainZelisClaimDetailReprice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_claim_detail_reprice

> <CostContainZelisClaimDetailRepriceVBAResponse> update_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice)

Update CostContainZelisClaimDetailReprice

Updates a specific CostContainZelisClaimDetailReprice.

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

api_instance = Vba::ZelisCostContainmentClaimDetailRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_seq = 'claim_seq_example' # String | Claim Seq
adjustment_seq = 'adjustment_seq_example' # String | Adjustment Seq
cost_contain_zelis_claim_detail_reprice = Vba::CostContainZelisClaimDetailReprice.new({batch_number: 37, batch_claim: 37, claim_seq: 'claim_seq_example', adjustment_seq: 'adjustment_seq_example'}) # CostContainZelisClaimDetailReprice | 

begin
  # Update CostContainZelisClaimDetailReprice
  result = api_instance.update_cost_contain_zelis_claim_detail_reprice(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->update_cost_contain_zelis_claim_detail_reprice: #{e}"
end
```

#### Using the update_cost_contain_zelis_claim_detail_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimDetailRepriceVBAResponse>, Integer, Hash)> update_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice)

```ruby
begin
  # Update CostContainZelisClaimDetailReprice
  data, status_code, headers = api_instance.update_cost_contain_zelis_claim_detail_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_seq, adjustment_seq, cost_contain_zelis_claim_detail_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimDetailRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimDetailRepricingApi->update_cost_contain_zelis_claim_detail_reprice_with_http_info: #{e}"
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
| **cost_contain_zelis_claim_detail_reprice** | [**CostContainZelisClaimDetailReprice**](CostContainZelisClaimDetailReprice.md) |  |  |

### Return type

[**CostContainZelisClaimDetailRepriceVBAResponse**](CostContainZelisClaimDetailRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

