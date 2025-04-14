# Vba::ReinsuranceContractTransactionReimbursementsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#create_reins_contract_trans_reimburse) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements | Create ReinsContractTransReimburse |
| [**delete_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#delete_reins_contract_trans_reimburse) | **DELETE** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements/{reinsContractTransReimburseKey} | Delete ReinsContractTransReimburse |
| [**get_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#get_reins_contract_trans_reimburse) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements/{reinsContractTransReimburseKey} | Get ReinsContractTransReimburse |
| [**list_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#list_reins_contract_trans_reimburse) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements | List ReinsContractTransReimburse |
| [**update_batch_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#update_batch_reins_contract_trans_reimburse) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements-batch | Create or Update Batch ReinsContractTransReimburse |
| [**update_reins_contract_trans_reimburse**](ReinsuranceContractTransactionReimbursementsApi.md#update_reins_contract_trans_reimburse) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimbursements/{reinsContractTransReimburseKey} | Update ReinsContractTransReimburse |


## create_reins_contract_trans_reimburse

> <ReinsContractTransReimburseVBAResponse> create_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)

Create ReinsContractTransReimburse

Creates a new ReinsContractTransReimburse

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_reimburse = Vba::ReinsContractTransReimburse.new({reins_contract_trans_reimburse_key: 37, funding_key: 37, reins_contract_trans_key: 37}) # ReinsContractTransReimburse | 

begin
  # Create ReinsContractTransReimburse
  result = api_instance.create_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->create_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the create_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransReimburseVBAResponse>, Integer, Hash)> create_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)

```ruby
begin
  # Create ReinsContractTransReimburse
  data, status_code, headers = api_instance.create_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransReimburseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->create_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_reimburse** | [**ReinsContractTransReimburse**](ReinsContractTransReimburse.md) |  |  |

### Return type

[**ReinsContractTransReimburseVBAResponse**](ReinsContractTransReimburseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans_reimburse

> delete_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)

Delete ReinsContractTransReimburse

Deletes an ReinsContractTransReimburse

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_reimburse_key = 56 # Integer | ReinsContractTransReimburse Key

begin
  # Delete ReinsContractTransReimburse
  api_instance.delete_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->delete_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the delete_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)

```ruby
begin
  # Delete ReinsContractTransReimburse
  data, status_code, headers = api_instance.delete_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->delete_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_reimburse_key** | **Integer** | ReinsContractTransReimburse Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans_reimburse

> <ReinsContractTransReimburseVBAResponse> get_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)

Get ReinsContractTransReimburse

Gets ReinsContractTransReimburse

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_reimburse_key = 56 # Integer | ReinsContractTransReimburse Key

begin
  # Get ReinsContractTransReimburse
  result = api_instance.get_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->get_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the get_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransReimburseVBAResponse>, Integer, Hash)> get_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)

```ruby
begin
  # Get ReinsContractTransReimburse
  data, status_code, headers = api_instance.get_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransReimburseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->get_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_reimburse_key** | **Integer** | ReinsContractTransReimburse Key |  |

### Return type

[**ReinsContractTransReimburseVBAResponse**](ReinsContractTransReimburseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans_reimburse

> <ReinsContractTransReimburseListVBAResponse> list_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)

List ReinsContractTransReimburse

Lists all ReinsContractTransReimburse for the given reinsContractTransKey

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTransReimburse
  result = api_instance.list_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->list_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the list_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransReimburseListVBAResponse>, Integer, Hash)> list_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)

```ruby
begin
  # List ReinsContractTransReimburse
  data, status_code, headers = api_instance.list_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransReimburseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->list_reins_contract_trans_reimburse_with_http_info: #{e}"
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

[**ReinsContractTransReimburseListVBAResponse**](ReinsContractTransReimburseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_trans_reimburse

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)

Create or Update Batch ReinsContractTransReimburse

Create or Update multiple ReinsContractTransReimburse at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_reimburse = [Vba::ReinsContractTransReimburse.new({reins_contract_trans_reimburse_key: 37, funding_key: 37, reins_contract_trans_key: 37})] # Array<ReinsContractTransReimburse> | 

begin
  # Create or Update Batch ReinsContractTransReimburse
  result = api_instance.update_batch_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->update_batch_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)

```ruby
begin
  # Create or Update Batch ReinsContractTransReimburse
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->update_batch_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_reimburse** | [**Array&lt;ReinsContractTransReimburse&gt;**](ReinsContractTransReimburse.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans_reimburse

> <ReinsContractTransReimburseVBAResponse> update_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key, reins_contract_trans_reimburse)

Update ReinsContractTransReimburse

Updates a specific ReinsContractTransReimburse.

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

api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans_reimburse_key = 56 # Integer | ReinsContractTransReimburse Key
reins_contract_trans_reimburse = Vba::ReinsContractTransReimburse.new({reins_contract_trans_reimburse_key: 37, funding_key: 37, reins_contract_trans_key: 37}) # ReinsContractTransReimburse | 

begin
  # Update ReinsContractTransReimburse
  result = api_instance.update_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key, reins_contract_trans_reimburse)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->update_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the update_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransReimburseVBAResponse>, Integer, Hash)> update_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key, reins_contract_trans_reimburse)

```ruby
begin
  # Update ReinsContractTransReimburse
  data, status_code, headers = api_instance.update_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans_reimburse_key, reins_contract_trans_reimburse)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransReimburseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionReimbursementsApi->update_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans_reimburse_key** | **Integer** | ReinsContractTransReimburse Key |  |
| **reins_contract_trans_reimburse** | [**ReinsContractTransReimburse**](ReinsContractTransReimburse.md) |  |  |

### Return type

[**ReinsContractTransReimburseVBAResponse**](ReinsContractTransReimburseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

