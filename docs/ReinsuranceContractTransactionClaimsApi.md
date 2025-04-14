# Vba::ReinsuranceContractTransactionClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#create_reins_contract_trans_claim) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims | Create ReinsContractTransClaim |
| [**delete_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#delete_reins_contract_trans_claim) | **DELETE** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber} | Delete ReinsContractTransClaim |
| [**get_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#get_reins_contract_trans_claim) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber} | Get ReinsContractTransClaim |
| [**list_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#list_reins_contract_trans_claim) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims | List ReinsContractTransClaim |
| [**update_batch_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#update_batch_reins_contract_trans_claim) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims-batch | Create or Update Batch ReinsContractTransClaim |
| [**update_reins_contract_trans_claim**](ReinsuranceContractTransactionClaimsApi.md#update_reins_contract_trans_claim) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claims/{claimNumber} | Update ReinsContractTransClaim |


## create_reins_contract_trans_claim

> <ReinsContractTransClaimVBAResponse> create_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)

Create ReinsContractTransClaim

Creates a new ReinsContractTransClaim

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_claim = Vba::ReinsContractTransClaim.new({reins_contract_trans_key: 37, claim_number: 37}) # ReinsContractTransClaim | 

begin
  # Create ReinsContractTransClaim
  result = api_instance.create_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->create_reins_contract_trans_claim: #{e}"
end
```

#### Using the create_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimVBAResponse>, Integer, Hash)> create_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)

```ruby
begin
  # Create ReinsContractTransClaim
  data, status_code, headers = api_instance.create_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->create_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_claim** | [**ReinsContractTransClaim**](ReinsContractTransClaim.md) |  |  |

### Return type

[**ReinsContractTransClaimVBAResponse**](ReinsContractTransClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans_claim

> delete_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)

Delete ReinsContractTransClaim

Deletes an ReinsContractTransClaim

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number

begin
  # Delete ReinsContractTransClaim
  api_instance.delete_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->delete_reins_contract_trans_claim: #{e}"
end
```

#### Using the delete_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)

```ruby
begin
  # Delete ReinsContractTransClaim
  data, status_code, headers = api_instance.delete_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->delete_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans_claim

> <ReinsContractTransClaimVBAResponse> get_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)

Get ReinsContractTransClaim

Gets ReinsContractTransClaim

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number

begin
  # Get ReinsContractTransClaim
  result = api_instance.get_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->get_reins_contract_trans_claim: #{e}"
end
```

#### Using the get_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimVBAResponse>, Integer, Hash)> get_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)

```ruby
begin
  # Get ReinsContractTransClaim
  data, status_code, headers = api_instance.get_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->get_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

[**ReinsContractTransClaimVBAResponse**](ReinsContractTransClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans_claim

> <ReinsContractTransClaimListVBAResponse> list_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)

List ReinsContractTransClaim

Lists all ReinsContractTransClaim for the given reinsContractTransKey

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTransClaim
  result = api_instance.list_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->list_reins_contract_trans_claim: #{e}"
end
```

#### Using the list_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimListVBAResponse>, Integer, Hash)> list_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)

```ruby
begin
  # List ReinsContractTransClaim
  data, status_code, headers = api_instance.list_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->list_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractTransClaimListVBAResponse**](ReinsContractTransClaimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_trans_claim

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)

Create or Update Batch ReinsContractTransClaim

Create or Update multiple ReinsContractTransClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_claim = [Vba::ReinsContractTransClaim.new({reins_contract_trans_key: 37, claim_number: 37})] # Array<ReinsContractTransClaim> | 

begin
  # Create or Update Batch ReinsContractTransClaim
  result = api_instance.update_batch_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->update_batch_reins_contract_trans_claim: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)

```ruby
begin
  # Create or Update Batch ReinsContractTransClaim
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->update_batch_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_claim** | [**Array&lt;ReinsContractTransClaim&gt;**](ReinsContractTransClaim.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans_claim

> <ReinsContractTransClaimVBAResponse> update_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim)

Update ReinsContractTransClaim

Updates a specific ReinsContractTransClaim.

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

api_instance = Vba::ReinsuranceContractTransactionClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
claim_number = 56 # Integer | Claim Number
reins_contract_trans_claim = Vba::ReinsContractTransClaim.new({reins_contract_trans_key: 37, claim_number: 37}) # ReinsContractTransClaim | 

begin
  # Update ReinsContractTransClaim
  result = api_instance.update_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->update_reins_contract_trans_claim: #{e}"
end
```

#### Using the update_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimVBAResponse>, Integer, Hash)> update_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim)

```ruby
begin
  # Update ReinsContractTransClaim
  data, status_code, headers = api_instance.update_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, claim_number, reins_contract_trans_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimsApi->update_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_contract_trans_claim** | [**ReinsContractTransClaim**](ReinsContractTransClaim.md) |  |  |

### Return type

[**ReinsContractTransClaimVBAResponse**](ReinsContractTransClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

