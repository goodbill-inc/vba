# Vba::ClaimTransactionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_transaction**](ClaimTransactionsApi.md#create_claim_transaction) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions | Create ClaimTransaction |
| [**delete_claim_transaction**](ClaimTransactionsApi.md#delete_claim_transaction) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions/{claimTransactionKey} | Delete ClaimTransaction |
| [**get_claim_transaction**](ClaimTransactionsApi.md#get_claim_transaction) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions/{claimTransactionKey} | Get ClaimTransaction |
| [**list_claim_transaction**](ClaimTransactionsApi.md#list_claim_transaction) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions | List ClaimTransaction |
| [**update_batch_claim_transaction**](ClaimTransactionsApi.md#update_batch_claim_transaction) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions-batch | Create or Update Batch ClaimTransaction |
| [**update_claim_transaction**](ClaimTransactionsApi.md#update_claim_transaction) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/transactions/{claimTransactionKey} | Update ClaimTransaction |


## create_claim_transaction

> <ClaimTransactionVBAResponse> create_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction)

Create ClaimTransaction

Creates a new ClaimTransaction

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_transaction = Vba::ClaimTransaction.new({claim_transaction_key: 37, transaction_date: Time.now, transaction_user: 'transaction_user_example'}) # ClaimTransaction | 

begin
  # Create ClaimTransaction
  result = api_instance.create_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->create_claim_transaction: #{e}"
end
```

#### Using the create_claim_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimTransactionVBAResponse>, Integer, Hash)> create_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction)

```ruby
begin
  # Create ClaimTransaction
  data, status_code, headers = api_instance.create_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->create_claim_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_transaction** | [**ClaimTransaction**](ClaimTransaction.md) |  |  |

### Return type

[**ClaimTransactionVBAResponse**](ClaimTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_transaction

> delete_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)

Delete ClaimTransaction

Deletes an ClaimTransaction

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_transaction_key = 56 # Integer | ClaimTransaction Key

begin
  # Delete ClaimTransaction
  api_instance.delete_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->delete_claim_transaction: #{e}"
end
```

#### Using the delete_claim_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)

```ruby
begin
  # Delete ClaimTransaction
  data, status_code, headers = api_instance.delete_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->delete_claim_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_transaction_key** | **Integer** | ClaimTransaction Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_transaction

> <ClaimTransactionVBAResponse> get_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)

Get ClaimTransaction

Gets ClaimTransaction

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_transaction_key = 56 # Integer | ClaimTransaction Key

begin
  # Get ClaimTransaction
  result = api_instance.get_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->get_claim_transaction: #{e}"
end
```

#### Using the get_claim_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimTransactionVBAResponse>, Integer, Hash)> get_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)

```ruby
begin
  # Get ClaimTransaction
  data, status_code, headers = api_instance.get_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->get_claim_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_transaction_key** | **Integer** | ClaimTransaction Key |  |

### Return type

[**ClaimTransactionVBAResponse**](ClaimTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_transaction

> <ClaimTransactionListVBAResponse> list_claim_transaction(vbasoftware_database, batch_number, batch_claim, opts)

List ClaimTransaction

Lists all ClaimTransaction for the given batchNumber and batchClaim

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimTransaction
  result = api_instance.list_claim_transaction(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->list_claim_transaction: #{e}"
end
```

#### Using the list_claim_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimTransactionListVBAResponse>, Integer, Hash)> list_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # List ClaimTransaction
  data, status_code, headers = api_instance.list_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimTransactionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->list_claim_transaction_with_http_info: #{e}"
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

[**ClaimTransactionListVBAResponse**](ClaimTransactionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_transaction

> <MultiCodeResponseListVBAResponse> update_batch_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction)

Create or Update Batch ClaimTransaction

Create or Update multiple ClaimTransaction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_transaction = [Vba::ClaimTransaction.new({claim_transaction_key: 37, transaction_date: Time.now, transaction_user: 'transaction_user_example'})] # Array<ClaimTransaction> | 

begin
  # Create or Update Batch ClaimTransaction
  result = api_instance.update_batch_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->update_batch_claim_transaction: #{e}"
end
```

#### Using the update_batch_claim_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction)

```ruby
begin
  # Create or Update Batch ClaimTransaction
  data, status_code, headers = api_instance.update_batch_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->update_batch_claim_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_transaction** | [**Array&lt;ClaimTransaction&gt;**](ClaimTransaction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_transaction

> <ClaimTransactionVBAResponse> update_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key, claim_transaction)

Update ClaimTransaction

Updates a specific ClaimTransaction.

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

api_instance = Vba::ClaimTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_transaction_key = 56 # Integer | ClaimTransaction Key
claim_transaction = Vba::ClaimTransaction.new({claim_transaction_key: 37, transaction_date: Time.now, transaction_user: 'transaction_user_example'}) # ClaimTransaction | 

begin
  # Update ClaimTransaction
  result = api_instance.update_claim_transaction(vbasoftware_database, batch_number, batch_claim, claim_transaction_key, claim_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->update_claim_transaction: #{e}"
end
```

#### Using the update_claim_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimTransactionVBAResponse>, Integer, Hash)> update_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key, claim_transaction)

```ruby
begin
  # Update ClaimTransaction
  data, status_code, headers = api_instance.update_claim_transaction_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_transaction_key, claim_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimTransactionsApi->update_claim_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_transaction_key** | **Integer** | ClaimTransaction Key |  |
| **claim_transaction** | [**ClaimTransaction**](ClaimTransaction.md) |  |  |

### Return type

[**ClaimTransactionVBAResponse**](ClaimTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

