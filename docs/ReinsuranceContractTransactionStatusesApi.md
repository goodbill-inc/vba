# Vba::ReinsuranceContractTransactionStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#create_reins_contract_trans_status) | **POST** /reinsurance-contracts-transaction-statuses | Create ReinsContractTransStatus |
| [**delete_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#delete_reins_contract_trans_status) | **DELETE** /reinsurance-contracts-transaction-statuses/{transactionStatus} | Delete ReinsContractTransStatus |
| [**get_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#get_reins_contract_trans_status) | **GET** /reinsurance-contracts-transaction-statuses/{transactionStatus} | Get ReinsContractTransStatus |
| [**list_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#list_reins_contract_trans_status) | **GET** /reinsurance-contracts-transaction-statuses | List ReinsContractTransStatus |
| [**update_batch_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#update_batch_reins_contract_trans_status) | **PUT** /reinsurance-contracts-transaction-statuses-batch | Create or Update Batch ReinsContractTransStatus |
| [**update_reins_contract_trans_status**](ReinsuranceContractTransactionStatusesApi.md#update_reins_contract_trans_status) | **PUT** /reinsurance-contracts-transaction-statuses/{transactionStatus} | Update ReinsContractTransStatus |


## create_reins_contract_trans_status

> <ReinsContractTransStatusVBAResponse> create_reins_contract_trans_status(vbasoftware_database, reins_contract_trans_status)

Create ReinsContractTransStatus

Creates a new ReinsContractTransStatus

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_trans_status = Vba::ReinsContractTransStatus.new({transaction_status: 'transaction_status_example'}) # ReinsContractTransStatus | 

begin
  # Create ReinsContractTransStatus
  result = api_instance.create_reins_contract_trans_status(vbasoftware_database, reins_contract_trans_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->create_reins_contract_trans_status: #{e}"
end
```

#### Using the create_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransStatusVBAResponse>, Integer, Hash)> create_reins_contract_trans_status_with_http_info(vbasoftware_database, reins_contract_trans_status)

```ruby
begin
  # Create ReinsContractTransStatus
  data, status_code, headers = api_instance.create_reins_contract_trans_status_with_http_info(vbasoftware_database, reins_contract_trans_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->create_reins_contract_trans_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_trans_status** | [**ReinsContractTransStatus**](ReinsContractTransStatus.md) |  |  |

### Return type

[**ReinsContractTransStatusVBAResponse**](ReinsContractTransStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans_status

> delete_reins_contract_trans_status(vbasoftware_database, transaction_status)

Delete ReinsContractTransStatus

Deletes an ReinsContractTransStatus

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
transaction_status = 'transaction_status_example' # String | Transaction Status

begin
  # Delete ReinsContractTransStatus
  api_instance.delete_reins_contract_trans_status(vbasoftware_database, transaction_status)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->delete_reins_contract_trans_status: #{e}"
end
```

#### Using the delete_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status)

```ruby
begin
  # Delete ReinsContractTransStatus
  data, status_code, headers = api_instance.delete_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->delete_reins_contract_trans_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **transaction_status** | **String** | Transaction Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans_status

> <ReinsContractTransStatusVBAResponse> get_reins_contract_trans_status(vbasoftware_database, transaction_status)

Get ReinsContractTransStatus

Gets ReinsContractTransStatus

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
transaction_status = 'transaction_status_example' # String | Transaction Status

begin
  # Get ReinsContractTransStatus
  result = api_instance.get_reins_contract_trans_status(vbasoftware_database, transaction_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->get_reins_contract_trans_status: #{e}"
end
```

#### Using the get_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransStatusVBAResponse>, Integer, Hash)> get_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status)

```ruby
begin
  # Get ReinsContractTransStatus
  data, status_code, headers = api_instance.get_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->get_reins_contract_trans_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **transaction_status** | **String** | Transaction Status |  |

### Return type

[**ReinsContractTransStatusVBAResponse**](ReinsContractTransStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans_status

> <ReinsContractTransStatusListVBAResponse> list_reins_contract_trans_status(vbasoftware_database, opts)

List ReinsContractTransStatus

Lists all ReinsContractTransStatus

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTransStatus
  result = api_instance.list_reins_contract_trans_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->list_reins_contract_trans_status: #{e}"
end
```

#### Using the list_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransStatusListVBAResponse>, Integer, Hash)> list_reins_contract_trans_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContractTransStatus
  data, status_code, headers = api_instance.list_reins_contract_trans_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->list_reins_contract_trans_status_with_http_info: #{e}"
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

[**ReinsContractTransStatusListVBAResponse**](ReinsContractTransStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_trans_status

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans_status(vbasoftware_database, reins_contract_trans_status)

Create or Update Batch ReinsContractTransStatus

Create or Update multiple ReinsContractTransStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_trans_status = [Vba::ReinsContractTransStatus.new({transaction_status: 'transaction_status_example'})] # Array<ReinsContractTransStatus> | 

begin
  # Create or Update Batch ReinsContractTransStatus
  result = api_instance.update_batch_reins_contract_trans_status(vbasoftware_database, reins_contract_trans_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->update_batch_reins_contract_trans_status: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_status_with_http_info(vbasoftware_database, reins_contract_trans_status)

```ruby
begin
  # Create or Update Batch ReinsContractTransStatus
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_status_with_http_info(vbasoftware_database, reins_contract_trans_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->update_batch_reins_contract_trans_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_trans_status** | [**Array&lt;ReinsContractTransStatus&gt;**](ReinsContractTransStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans_status

> <ReinsContractTransStatusVBAResponse> update_reins_contract_trans_status(vbasoftware_database, transaction_status, reins_contract_trans_status)

Update ReinsContractTransStatus

Updates a specific ReinsContractTransStatus.

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

api_instance = Vba::ReinsuranceContractTransactionStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
transaction_status = 'transaction_status_example' # String | Transaction Status
reins_contract_trans_status = Vba::ReinsContractTransStatus.new({transaction_status: 'transaction_status_example'}) # ReinsContractTransStatus | 

begin
  # Update ReinsContractTransStatus
  result = api_instance.update_reins_contract_trans_status(vbasoftware_database, transaction_status, reins_contract_trans_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->update_reins_contract_trans_status: #{e}"
end
```

#### Using the update_reins_contract_trans_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransStatusVBAResponse>, Integer, Hash)> update_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status, reins_contract_trans_status)

```ruby
begin
  # Update ReinsContractTransStatus
  data, status_code, headers = api_instance.update_reins_contract_trans_status_with_http_info(vbasoftware_database, transaction_status, reins_contract_trans_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionStatusesApi->update_reins_contract_trans_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **transaction_status** | **String** | Transaction Status |  |
| **reins_contract_trans_status** | [**ReinsContractTransStatus**](ReinsContractTransStatus.md) |  |  |

### Return type

[**ReinsContractTransStatusVBAResponse**](ReinsContractTransStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

