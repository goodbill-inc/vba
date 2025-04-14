# Vba::ReinsuranceContractTransactionClaimStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#create_reins_contract_trans_claim_status) | **POST** /reinsurance-contracts-transaction-claim-statuses | Create ReinsContractTransClaimStatus |
| [**delete_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#delete_reins_contract_trans_claim_status) | **DELETE** /reinsurance-contracts-transaction-claim-statuses/{claimTransactionStatus} | Delete ReinsContractTransClaimStatus |
| [**get_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#get_reins_contract_trans_claim_status) | **GET** /reinsurance-contracts-transaction-claim-statuses/{claimTransactionStatus} | Get ReinsContractTransClaimStatus |
| [**list_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#list_reins_contract_trans_claim_status) | **GET** /reinsurance-contracts-transaction-claim-statuses | List ReinsContractTransClaimStatus |
| [**update_batch_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#update_batch_reins_contract_trans_claim_status) | **PUT** /reinsurance-contracts-transaction-claim-statuses-batch | Create or Update Batch ReinsContractTransClaimStatus |
| [**update_reins_contract_trans_claim_status**](ReinsuranceContractTransactionClaimStatusesApi.md#update_reins_contract_trans_claim_status) | **PUT** /reinsurance-contracts-transaction-claim-statuses/{claimTransactionStatus} | Update ReinsContractTransClaimStatus |


## create_reins_contract_trans_claim_status

> <ReinsContractTransClaimStatusVBAResponse> create_reins_contract_trans_claim_status(vbasoftware_database, reins_contract_trans_claim_status)

Create ReinsContractTransClaimStatus

Creates a new ReinsContractTransClaimStatus

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_trans_claim_status = Vba::ReinsContractTransClaimStatus.new({claim_transaction_status: 'claim_transaction_status_example'}) # ReinsContractTransClaimStatus | 

begin
  # Create ReinsContractTransClaimStatus
  result = api_instance.create_reins_contract_trans_claim_status(vbasoftware_database, reins_contract_trans_claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->create_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the create_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimStatusVBAResponse>, Integer, Hash)> create_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, reins_contract_trans_claim_status)

```ruby
begin
  # Create ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.create_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, reins_contract_trans_claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->create_reins_contract_trans_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_trans_claim_status** | [**ReinsContractTransClaimStatus**](ReinsContractTransClaimStatus.md) |  |  |

### Return type

[**ReinsContractTransClaimStatusVBAResponse**](ReinsContractTransClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans_claim_status

> delete_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status)

Delete ReinsContractTransClaimStatus

Deletes an ReinsContractTransClaimStatus

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_transaction_status = 'claim_transaction_status_example' # String | ClaimTransaction Status

begin
  # Delete ReinsContractTransClaimStatus
  api_instance.delete_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->delete_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the delete_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status)

```ruby
begin
  # Delete ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.delete_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->delete_reins_contract_trans_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_transaction_status** | **String** | ClaimTransaction Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans_claim_status

> <ReinsContractTransClaimStatusVBAResponse> get_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status)

Get ReinsContractTransClaimStatus

Gets ReinsContractTransClaimStatus

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_transaction_status = 'claim_transaction_status_example' # String | ClaimTransaction Status

begin
  # Get ReinsContractTransClaimStatus
  result = api_instance.get_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->get_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the get_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimStatusVBAResponse>, Integer, Hash)> get_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status)

```ruby
begin
  # Get ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.get_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->get_reins_contract_trans_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_transaction_status** | **String** | ClaimTransaction Status |  |

### Return type

[**ReinsContractTransClaimStatusVBAResponse**](ReinsContractTransClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans_claim_status

> <ReinsContractTransClaimStatusListVBAResponse> list_reins_contract_trans_claim_status(vbasoftware_database, opts)

List ReinsContractTransClaimStatus

Lists all ReinsContractTransClaimStatus

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTransClaimStatus
  result = api_instance.list_reins_contract_trans_claim_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->list_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the list_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimStatusListVBAResponse>, Integer, Hash)> list_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.list_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->list_reins_contract_trans_claim_status_with_http_info: #{e}"
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

[**ReinsContractTransClaimStatusListVBAResponse**](ReinsContractTransClaimStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_trans_claim_status

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans_claim_status(vbasoftware_database, reins_contract_trans_claim_status)

Create or Update Batch ReinsContractTransClaimStatus

Create or Update multiple ReinsContractTransClaimStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_trans_claim_status = [Vba::ReinsContractTransClaimStatus.new({claim_transaction_status: 'claim_transaction_status_example'})] # Array<ReinsContractTransClaimStatus> | 

begin
  # Create or Update Batch ReinsContractTransClaimStatus
  result = api_instance.update_batch_reins_contract_trans_claim_status(vbasoftware_database, reins_contract_trans_claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->update_batch_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, reins_contract_trans_claim_status)

```ruby
begin
  # Create or Update Batch ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, reins_contract_trans_claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->update_batch_reins_contract_trans_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_trans_claim_status** | [**Array&lt;ReinsContractTransClaimStatus&gt;**](ReinsContractTransClaimStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans_claim_status

> <ReinsContractTransClaimStatusVBAResponse> update_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status, reins_contract_trans_claim_status)

Update ReinsContractTransClaimStatus

Updates a specific ReinsContractTransClaimStatus.

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

api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_transaction_status = 'claim_transaction_status_example' # String | ClaimTransaction Status
reins_contract_trans_claim_status = Vba::ReinsContractTransClaimStatus.new({claim_transaction_status: 'claim_transaction_status_example'}) # ReinsContractTransClaimStatus | 

begin
  # Update ReinsContractTransClaimStatus
  result = api_instance.update_reins_contract_trans_claim_status(vbasoftware_database, claim_transaction_status, reins_contract_trans_claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->update_reins_contract_trans_claim_status: #{e}"
end
```

#### Using the update_reins_contract_trans_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransClaimStatusVBAResponse>, Integer, Hash)> update_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status, reins_contract_trans_claim_status)

```ruby
begin
  # Update ReinsContractTransClaimStatus
  data, status_code, headers = api_instance.update_reins_contract_trans_claim_status_with_http_info(vbasoftware_database, claim_transaction_status, reins_contract_trans_claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionClaimStatusesApi->update_reins_contract_trans_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_transaction_status** | **String** | ClaimTransaction Status |  |
| **reins_contract_trans_claim_status** | [**ReinsContractTransClaimStatus**](ReinsContractTransClaimStatus.md) |  |  |

### Return type

[**ReinsContractTransClaimStatusVBAResponse**](ReinsContractTransClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

