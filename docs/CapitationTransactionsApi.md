# Vba::CapitationTransactionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_transaction**](CapitationTransactionsApi.md#create_capitation_transaction) | **POST** /capitation-transactions | Create CapitationTransaction |
| [**delete_capitation_transaction**](CapitationTransactionsApi.md#delete_capitation_transaction) | **DELETE** /capitation-transactions/{capitationTransactionKey} | Delete CapitationTransaction |
| [**get_capitation_transaction**](CapitationTransactionsApi.md#get_capitation_transaction) | **GET** /capitation-transactions/{capitationTransactionKey} | Get CapitationTransaction |
| [**list_capitation_transaction**](CapitationTransactionsApi.md#list_capitation_transaction) | **GET** /capitation-transactions | List CapitationTransaction |
| [**update_batch_capitation_transaction**](CapitationTransactionsApi.md#update_batch_capitation_transaction) | **PUT** /capitation-transactions-batch | Create or Update Batch CapitationTransaction |
| [**update_capitation_transaction**](CapitationTransactionsApi.md#update_capitation_transaction) | **PUT** /capitation-transactions/{capitationTransactionKey} | Update CapitationTransaction |


## create_capitation_transaction

> <CapitationTransactionVBAResponse> create_capitation_transaction(vbasoftware_database, capitation_transaction)

Create CapitationTransaction

Creates a new CapitationTransaction

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction = Vba::CapitationTransaction.new({capitation_transaction_key: 37}) # CapitationTransaction | 

begin
  # Create CapitationTransaction
  result = api_instance.create_capitation_transaction(vbasoftware_database, capitation_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->create_capitation_transaction: #{e}"
end
```

#### Using the create_capitation_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionVBAResponse>, Integer, Hash)> create_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction)

```ruby
begin
  # Create CapitationTransaction
  data, status_code, headers = api_instance.create_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->create_capitation_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction** | [**CapitationTransaction**](CapitationTransaction.md) |  |  |

### Return type

[**CapitationTransactionVBAResponse**](CapitationTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_transaction

> delete_capitation_transaction(vbasoftware_database, capitation_transaction_key)

Delete CapitationTransaction

Deletes an CapitationTransaction

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key

begin
  # Delete CapitationTransaction
  api_instance.delete_capitation_transaction(vbasoftware_database, capitation_transaction_key)
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->delete_capitation_transaction: #{e}"
end
```

#### Using the delete_capitation_transaction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key)

```ruby
begin
  # Delete CapitationTransaction
  data, status_code, headers = api_instance.delete_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->delete_capitation_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_transaction

> <CapitationTransactionVBAResponse> get_capitation_transaction(vbasoftware_database, capitation_transaction_key)

Get CapitationTransaction

Gets CapitationTransaction

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key

begin
  # Get CapitationTransaction
  result = api_instance.get_capitation_transaction(vbasoftware_database, capitation_transaction_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->get_capitation_transaction: #{e}"
end
```

#### Using the get_capitation_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionVBAResponse>, Integer, Hash)> get_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key)

```ruby
begin
  # Get CapitationTransaction
  data, status_code, headers = api_instance.get_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->get_capitation_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |

### Return type

[**CapitationTransactionVBAResponse**](CapitationTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_transaction

> <CapitationTransactionListVBAResponse> list_capitation_transaction(vbasoftware_database, opts)

List CapitationTransaction

Lists all CapitationTransaction

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationTransaction
  result = api_instance.list_capitation_transaction(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->list_capitation_transaction: #{e}"
end
```

#### Using the list_capitation_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionListVBAResponse>, Integer, Hash)> list_capitation_transaction_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationTransaction
  data, status_code, headers = api_instance.list_capitation_transaction_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->list_capitation_transaction_with_http_info: #{e}"
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

[**CapitationTransactionListVBAResponse**](CapitationTransactionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_transaction

> <MultiCodeResponseListVBAResponse> update_batch_capitation_transaction(vbasoftware_database, capitation_transaction)

Create or Update Batch CapitationTransaction

Create or Update multiple CapitationTransaction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction = [Vba::CapitationTransaction.new({capitation_transaction_key: 37})] # Array<CapitationTransaction> | 

begin
  # Create or Update Batch CapitationTransaction
  result = api_instance.update_batch_capitation_transaction(vbasoftware_database, capitation_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->update_batch_capitation_transaction: #{e}"
end
```

#### Using the update_batch_capitation_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction)

```ruby
begin
  # Create or Update Batch CapitationTransaction
  data, status_code, headers = api_instance.update_batch_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->update_batch_capitation_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction** | [**Array&lt;CapitationTransaction&gt;**](CapitationTransaction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_transaction

> <CapitationTransactionVBAResponse> update_capitation_transaction(vbasoftware_database, capitation_transaction_key, capitation_transaction)

Update CapitationTransaction

Updates a specific CapitationTransaction.

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

api_instance = Vba::CapitationTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_transaction_key = 56 # Integer | CapitationTransaction Key
capitation_transaction = Vba::CapitationTransaction.new({capitation_transaction_key: 37}) # CapitationTransaction | 

begin
  # Update CapitationTransaction
  result = api_instance.update_capitation_transaction(vbasoftware_database, capitation_transaction_key, capitation_transaction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->update_capitation_transaction: #{e}"
end
```

#### Using the update_capitation_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionVBAResponse>, Integer, Hash)> update_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_transaction)

```ruby
begin
  # Update CapitationTransaction
  data, status_code, headers = api_instance.update_capitation_transaction_with_http_info(vbasoftware_database, capitation_transaction_key, capitation_transaction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationTransactionsApi->update_capitation_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key |  |
| **capitation_transaction** | [**CapitationTransaction**](CapitationTransaction.md) |  |  |

### Return type

[**CapitationTransactionVBAResponse**](CapitationTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

