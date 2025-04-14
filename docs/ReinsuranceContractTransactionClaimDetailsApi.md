# Vba::ReinsuranceContractTransactionClaimDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#create_reins_contract_trans_claim_detail) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details | Create ReinsContractTransClaimDetail |
| [**delete_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#delete_reins_contract_trans_claim_detail) | **DELETE** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details/{reinsContractTransClaimDetailKey} | Delete ReinsContractTransClaimDetail |
| [**get_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#get_reins_contract_trans_claim_detail) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details/{reinsContractTransClaimDetailKey} | Get ReinsContractTransClaimDetail |
| [**list_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#list_reins_contract_trans_claim_detail) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details | List ReinsContractTransClaimDetail |
| [**update_batch_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#update_batch_reins_contract_trans_claim_detail) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details-batch | Create or Update Batch ReinsContractTransClaimDetail |
| [**update_reins_contract_trans_claim_detail**](ReinsuranceContractTransactionClaimDetailsApi.md#update_reins_contract_trans_claim_detail) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber}/details/{reinsContractTransClaimDetailKey} | Update ReinsContractTransClaimDetail |


## create_reins_contract_trans_claim_detail

> <ReinsContractTransClaimDetailVBAResponse> create_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)

Create ReinsContractTransClaimDetail

Creates a new ReinsContractTransClaimDetail

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim_detail = Vba::ReinsContractTransClaimDetail.new({reins_contract_trans_claim_detail_key: 37, claim_number: 37, reins_contract_trans_key: 37}) # ReinsContractTransClaimDetail | 

begin
  # Create ReinsContractTransClaimDetail
  result = api_instance.create_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->create_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the create_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimDetailVBAResponse>, Integer, Hash)> create_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)

```ruby
begin
  # Create ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.create_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->create_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim_detail** | [**ReinsContractTransClaimDetail**](ReinsContractTransClaimDetail.md) |  |  |

### Return type

[**ReinsContractTransClaimDetailVBAResponse**](ReinsContractTransClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans_claim_detail

> delete_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)

Delete ReinsContractTransClaimDetail

Deletes an ReinsContractTransClaimDetail

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim_detail_key = 56 # Integer | ReinsContractTransClaimDetail Key

begin
  # Delete ReinsContractTransClaimDetail
  api_instance.delete_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->delete_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the delete_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)

```ruby
begin
  # Delete ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.delete_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->delete_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim_detail_key** | **Integer** | ReinsContractTransClaimDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans_claim_detail

> <ReinsContractTransClaimDetailVBAResponse> get_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)

Get ReinsContractTransClaimDetail

Gets ReinsContractTransClaimDetail

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim_detail_key = 56 # Integer | ReinsContractTransClaimDetail Key

begin
  # Get ReinsContractTransClaimDetail
  result = api_instance.get_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->get_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the get_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimDetailVBAResponse>, Integer, Hash)> get_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)

```ruby
begin
  # Get ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.get_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->get_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim_detail_key** | **Integer** | ReinsContractTransClaimDetail Key |  |

### Return type

[**ReinsContractTransClaimDetailVBAResponse**](ReinsContractTransClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans_claim_detail

> <ReinsContractTransClaimDetailListVBAResponse> list_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)

List ReinsContractTransClaimDetail

Lists all ReinsContractTransClaimDetail for the given reinsContractTransKey and claimNumber

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTransClaimDetail
  result = api_instance.list_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->list_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the list_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimDetailListVBAResponse>, Integer, Hash)> list_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)

```ruby
begin
  # List ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.list_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->list_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractTransClaimDetailListVBAResponse**](ReinsContractTransClaimDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_trans_claim_detail

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)

Create or Update Batch ReinsContractTransClaimDetail

Create or Update multiple ReinsContractTransClaimDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim_detail = [Vba::ReinsContractTransClaimDetail.new({reins_contract_trans_claim_detail_key: 37, claim_number: 37, reins_contract_trans_key: 37})] # Array<ReinsContractTransClaimDetail> | 

begin
  # Create or Update Batch ReinsContractTransClaimDetail
  result = api_instance.update_batch_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->update_batch_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)

```ruby
begin
  # Create or Update Batch ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->update_batch_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim_detail** | [**Array&lt;ReinsContractTransClaimDetail&gt;**](ReinsContractTransClaimDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans_claim_detail

> <ReinsContractTransClaimDetailVBAResponse> update_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key, reins_contract_trans_claim_detail)

Update ReinsContractTransClaimDetail

Updates a specific ReinsContractTransClaimDetail.

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

api_instance = Vba::ReinsuranceContractTransactionClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim_detail_key = 56 # Integer | ReinsContractTransClaimDetail Key
reins_contract_trans_claim_detail = Vba::ReinsContractTransClaimDetail.new({reins_contract_trans_claim_detail_key: 37, claim_number: 37, reins_contract_trans_key: 37}) # ReinsContractTransClaimDetail | 

begin
  # Update ReinsContractTransClaimDetail
  result = api_instance.update_reins_contract_trans_claim_detail(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key, reins_contract_trans_claim_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->update_reins_contract_trans_claim_detail: #{e}"
end
```

#### Using the update_reins_contract_trans_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimDetailVBAResponse>, Integer, Hash)> update_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key, reins_contract_trans_claim_detail)

```ruby
begin
  # Update ReinsContractTransClaimDetail
  data, status_code, headers = api_instance.update_reins_contract_trans_claim_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim_detail_key, reins_contract_trans_claim_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimDetailsApi->update_reins_contract_trans_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim_detail_key** | **Integer** | ReinsContractTransClaimDetail Key |  |
| **reins_contract_trans_claim_detail** | [**ReinsContractTransClaimDetail**](ReinsContractTransClaimDetail.md) |  |  |

### Return type

[**ReinsContractTransClaimDetailVBAResponse**](ReinsContractTransClaimDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

