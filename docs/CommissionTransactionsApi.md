# Vba::CommissionTransactionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_transaction**](CommissionTransactionsApi.md#create_commission_transaction) | **POST** /commission-transactions | Create CommissionTransaction |
| [**delete_commission_transaction**](CommissionTransactionsApi.md#delete_commission_transaction) | **DELETE** /commission-transactions/{commTransKey} | Delete CommissionTransaction |
| [**get_commission_transaction**](CommissionTransactionsApi.md#get_commission_transaction) | **GET** /commission-transactions/{commTransKey} | Get CommissionTransaction |
| [**list_commission_transaction**](CommissionTransactionsApi.md#list_commission_transaction) | **GET** /commission-transactions | List CommissionTransaction |
| [**update_batch_commission_transaction**](CommissionTransactionsApi.md#update_batch_commission_transaction) | **PUT** /commission-transactions-batch | Create or Update Batch CommissionTransaction |
| [**update_commission_transaction**](CommissionTransactionsApi.md#update_commission_transaction) | **PUT** /commission-transactions/{commTransKey} | Update CommissionTransaction |


## create_commission_transaction

> <CommissionTransactionVBAResponse> create_commission_transaction(vbasoftware_database, commission_transaction)

Create CommissionTransaction

Creates a new CommissionTransaction

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_transaction = Vba::CommissionTransaction.new({commission_transaction_key: 37}) # CommissionTransaction | 

begin
  # Create CommissionTransaction
  result = api_instance.create_commission_transaction(vbasoftware_database, commission_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->create_commission_transaction: #{e}"
end
```

#### Using the create_commission_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionTransactionVBAResponse>, Integer, Hash)> create_commission_transaction_with_http_info(vbasoftware_database, commission_transaction)

```ruby
begin
  # Create CommissionTransaction
  data, status_code, headers = api_instance.create_commission_transaction_with_http_info(vbasoftware_database, commission_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->create_commission_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_transaction** | [**CommissionTransaction**](CommissionTransaction.md) |  |  |

### Return type

[**CommissionTransactionVBAResponse**](CommissionTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_transaction

> delete_commission_transaction(vbasoftware_database, comm_trans_key)

Delete CommissionTransaction

Deletes an CommissionTransaction

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key

begin
  # Delete CommissionTransaction
  api_instance.delete_commission_transaction(vbasoftware_database, comm_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->delete_commission_transaction: #{e}"
end
```

#### Using the delete_commission_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key)

```ruby
begin
  # Delete CommissionTransaction
  data, status_code, headers = api_instance.delete_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->delete_commission_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_transaction

> <CommissionTransactionVBAResponse> get_commission_transaction(vbasoftware_database, comm_trans_key)

Get CommissionTransaction

Gets CommissionTransaction

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key

begin
  # Get CommissionTransaction
  result = api_instance.get_commission_transaction(vbasoftware_database, comm_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->get_commission_transaction: #{e}"
end
```

#### Using the get_commission_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionTransactionVBAResponse>, Integer, Hash)> get_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key)

```ruby
begin
  # Get CommissionTransaction
  data, status_code, headers = api_instance.get_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->get_commission_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |

### Return type

[**CommissionTransactionVBAResponse**](CommissionTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_transaction

> <CommissionTransactionListVBAResponse> list_commission_transaction(vbasoftware_database, opts)

List CommissionTransaction

Lists all CommissionTransaction

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionTransaction
  result = api_instance.list_commission_transaction(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->list_commission_transaction: #{e}"
end
```

#### Using the list_commission_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionTransactionListVBAResponse>, Integer, Hash)> list_commission_transaction_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionTransaction
  data, status_code, headers = api_instance.list_commission_transaction_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionTransactionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->list_commission_transaction_with_http_info: #{e}"
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

[**CommissionTransactionListVBAResponse**](CommissionTransactionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_transaction

> <MultiCodeResponseListVBAResponse> update_batch_commission_transaction(vbasoftware_database, commission_transaction)

Create or Update Batch CommissionTransaction

Create or Update multiple CommissionTransaction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_transaction = [Vba::CommissionTransaction.new({commission_transaction_key: 37})] # Array<CommissionTransaction> | 

begin
  # Create or Update Batch CommissionTransaction
  result = api_instance.update_batch_commission_transaction(vbasoftware_database, commission_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->update_batch_commission_transaction: #{e}"
end
```

#### Using the update_batch_commission_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_transaction_with_http_info(vbasoftware_database, commission_transaction)

```ruby
begin
  # Create or Update Batch CommissionTransaction
  data, status_code, headers = api_instance.update_batch_commission_transaction_with_http_info(vbasoftware_database, commission_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->update_batch_commission_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_transaction** | [**Array&lt;CommissionTransaction&gt;**](CommissionTransaction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_transaction

> <CommissionTransactionVBAResponse> update_commission_transaction(vbasoftware_database, comm_trans_key, commission_transaction)

Update CommissionTransaction

Updates a specific CommissionTransaction.

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

api_instance = Vba::CommissionTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_trans_key = 56 # Integer | CommissionTransaction Key
commission_transaction = Vba::CommissionTransaction.new({commission_transaction_key: 37}) # CommissionTransaction | 

begin
  # Update CommissionTransaction
  result = api_instance.update_commission_transaction(vbasoftware_database, comm_trans_key, commission_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->update_commission_transaction: #{e}"
end
```

#### Using the update_commission_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionTransactionVBAResponse>, Integer, Hash)> update_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key, commission_transaction)

```ruby
begin
  # Update CommissionTransaction
  data, status_code, headers = api_instance.update_commission_transaction_with_http_info(vbasoftware_database, comm_trans_key, commission_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionTransactionsApi->update_commission_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_trans_key** | **Integer** | CommissionTransaction Key |  |
| **commission_transaction** | [**CommissionTransaction**](CommissionTransaction.md) |  |  |

### Return type

[**CommissionTransactionVBAResponse**](CommissionTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

