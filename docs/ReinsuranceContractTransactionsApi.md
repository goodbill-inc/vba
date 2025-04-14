# Vba::ReinsuranceContractTransactionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_agg_spec_ded_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#apply_agg_spec_ded_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-agg-spec-deductible | Apply Agg. Spec. Deductible ReinsContractTrans |
| [**apply_ded_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#apply_ded_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-deductible | Apply Deductible ReinsContractTrans |
| [**apply_reimbursement_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#apply_reimbursement_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-reimbursement | Apply Reimbursement ReinsContractTrans |
| [**calculate_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#calculate_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/calculate | Calculate ReinsContractTrans |
| [**create_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#create_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions | Create ReinsContractTrans |
| [**delete_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#delete_reins_contract_trans) | **DELETE** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey} | Delete ReinsContractTrans |
| [**get_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#get_reins_contract_trans) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey} | Get ReinsContractTrans |
| [**list_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#list_reins_contract_trans) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions | List ReinsContractTrans |
| [**list_vba_reins_contract_trans_claim**](ReinsuranceContractTransactionsApi.md#list_vba_reins_contract_trans_claim) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/claim-info | List ReinsContractTransClaim Info |
| [**list_vba_reins_contract_trans_reimburse**](ReinsuranceContractTransactionsApi.md#list_vba_reins_contract_trans_reimburse) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reimburse-info | List Calculated ReinsContractTransClaim |
| [**list_vba_reins_contract_transaction_summary**](ReinsuranceContractTransactionsApi.md#list_vba_reins_contract_transaction_summary) | **GET** /reinsurance-contracts/{reinsContractKey}/transactions-summary | List ReinsContractTrans |
| [**reset_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#reset_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reset | Reset ReinsContractTrans |
| [**update_batch_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#update_batch_reins_contract_trans) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions-batch | Create or Update Batch ReinsContractTrans |
| [**update_reins_contract_trans**](ReinsuranceContractTransactionsApi.md#update_reins_contract_trans) | **PUT** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey} | Update ReinsContractTrans |


## apply_agg_spec_ded_reins_contract_trans

> apply_agg_spec_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Apply Agg. Spec. Deductible ReinsContractTrans

Using this option will reset all aggregate deductible applied amounts for claims on this transaction. Aggregate Deductible amount is then applied to claims in service date order until Aggregate Specific Deductible is met.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Agg. Spec. Deductible ReinsContractTrans
  api_instance.apply_agg_spec_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_agg_spec_ded_reins_contract_trans: #{e}"
end
```

#### Using the apply_agg_spec_ded_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> apply_agg_spec_ded_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Apply Agg. Spec. Deductible ReinsContractTrans
  data, status_code, headers = api_instance.apply_agg_spec_ded_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_agg_spec_ded_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## apply_ded_reins_contract_trans

> apply_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Apply Deductible ReinsContractTrans

This option will reset all deductible applied amounts for claims on this transaction.  Specific or Lasered Deductible amount is then applied to claims in service date order until deductible is met.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Deductible ReinsContractTrans
  api_instance.apply_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_ded_reins_contract_trans: #{e}"
end
```

#### Using the apply_ded_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> apply_ded_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Apply Deductible ReinsContractTrans
  data, status_code, headers = api_instance.apply_ded_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_ded_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## apply_reimbursement_reins_contract_trans

> apply_reimbursement_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Apply Reimbursement ReinsContractTrans

Using this option will reset all reimbursement applied amounts for claims on this transaction. Received Reimbursement amount is then applied to claims in service date order until reimbursement amount is used.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Reimbursement ReinsContractTrans
  api_instance.apply_reimbursement_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_reimbursement_reins_contract_trans: #{e}"
end
```

#### Using the apply_reimbursement_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> apply_reimbursement_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Apply Reimbursement ReinsContractTrans
  data, status_code, headers = api_instance.apply_reimbursement_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->apply_reimbursement_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## calculate_reins_contract_trans

> <VBAReinsContractTransAmountVBAResponse> calculate_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Calculate ReinsContractTrans

Based on information existing in the ReinsTrans records and the attached ReinsTransClaim records, calculate the header information and return result.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Calculate ReinsContractTrans
  result = api_instance.calculate_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->calculate_reins_contract_trans: #{e}"
end
```

#### Using the calculate_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReinsContractTransAmountVBAResponse>, Integer, Hash)> calculate_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Calculate ReinsContractTrans
  data, status_code, headers = api_instance.calculate_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReinsContractTransAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->calculate_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

[**VBAReinsContractTransAmountVBAResponse**](VBAReinsContractTransAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## create_reins_contract_trans

> <ReinsContractTransVBAResponse> create_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans)

Create ReinsContractTrans

Creates a new ReinsContractTrans

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans = Vba::ReinsContractTrans.new({reins_contract_trans_key: 37, reins_contract_key: 37}) # ReinsContractTrans | 

begin
  # Create ReinsContractTrans
  result = api_instance.create_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->create_reins_contract_trans: #{e}"
end
```

#### Using the create_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransVBAResponse>, Integer, Hash)> create_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans)

```ruby
begin
  # Create ReinsContractTrans
  data, status_code, headers = api_instance.create_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->create_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans** | [**ReinsContractTrans**](ReinsContractTrans.md) |  |  |

### Return type

[**ReinsContractTransVBAResponse**](ReinsContractTransVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_trans

> delete_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Delete ReinsContractTrans

Deletes an ReinsContractTrans

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Delete ReinsContractTrans
  api_instance.delete_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->delete_reins_contract_trans: #{e}"
end
```

#### Using the delete_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Delete ReinsContractTrans
  data, status_code, headers = api_instance.delete_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->delete_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_trans

> <ReinsContractTransVBAResponse> get_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Get ReinsContractTrans

Gets ReinsContractTrans

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Get ReinsContractTrans
  result = api_instance.get_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->get_reins_contract_trans: #{e}"
end
```

#### Using the get_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransVBAResponse>, Integer, Hash)> get_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Get ReinsContractTrans
  data, status_code, headers = api_instance.get_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->get_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

[**ReinsContractTransVBAResponse**](ReinsContractTransVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_trans

> <ReinsContractTransListVBAResponse> list_reins_contract_trans(vbasoftware_database, reins_contract_key, opts)

List ReinsContractTrans

Lists all ReinsContractTrans for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractTrans
  result = api_instance.list_reins_contract_trans(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_reins_contract_trans: #{e}"
end
```

#### Using the list_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransListVBAResponse>, Integer, Hash)> list_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractTrans
  data, status_code, headers = api_instance.list_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractTransListVBAResponse**](ReinsContractTransListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_reins_contract_trans_claim

> <VBAReinsContractTransClaimListVBAResponse> list_vba_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

List ReinsContractTransClaim Info

List all Claims attached to this Reinsurance Transaction along with some associated claim information and amount summaries.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # List ReinsContractTransClaim Info
  result = api_instance.list_vba_reins_contract_trans_claim(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_trans_claim: #{e}"
end
```

#### Using the list_vba_reins_contract_trans_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReinsContractTransClaimListVBAResponse>, Integer, Hash)> list_vba_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # List ReinsContractTransClaim Info
  data, status_code, headers = api_instance.list_vba_reins_contract_trans_claim_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReinsContractTransClaimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_trans_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

[**VBAReinsContractTransClaimListVBAResponse**](VBAReinsContractTransClaimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_reins_contract_trans_reimburse

> <VBAReinsContractTransReimburseListVBAResponse> list_vba_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

List Calculated ReinsContractTransClaim

List all Reimbursements attached to this Reinsurance Transaction along with some associated funding information and amount summaries.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # List Calculated ReinsContractTransClaim
  result = api_instance.list_vba_reins_contract_trans_reimburse(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_trans_reimburse: #{e}"
end
```

#### Using the list_vba_reins_contract_trans_reimburse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReinsContractTransReimburseListVBAResponse>, Integer, Hash)> list_vba_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # List Calculated ReinsContractTransClaim
  data, status_code, headers = api_instance.list_vba_reins_contract_trans_reimburse_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReinsContractTransReimburseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_trans_reimburse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

[**VBAReinsContractTransReimburseListVBAResponse**](VBAReinsContractTransReimburseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_reins_contract_transaction_summary

> <VBAReinsContractTransactionSummaryListVBAResponse> list_vba_reins_contract_transaction_summary(vbasoftware_database, reins_contract_key)

List ReinsContractTrans

Lists all ReinsContractTransactions in a Summary for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # List ReinsContractTrans
  result = api_instance.list_vba_reins_contract_transaction_summary(vbasoftware_database, reins_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_transaction_summary: #{e}"
end
```

#### Using the list_vba_reins_contract_transaction_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReinsContractTransactionSummaryListVBAResponse>, Integer, Hash)> list_vba_reins_contract_transaction_summary_with_http_info(vbasoftware_database, reins_contract_key)

```ruby
begin
  # List ReinsContractTrans
  data, status_code, headers = api_instance.list_vba_reins_contract_transaction_summary_with_http_info(vbasoftware_database, reins_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReinsContractTransactionSummaryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->list_vba_reins_contract_transaction_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |

### Return type

[**VBAReinsContractTransactionSummaryListVBAResponse**](VBAReinsContractTransactionSummaryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## reset_reins_contract_trans

> reset_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

Reset ReinsContractTrans

For all claims attached to this Reinsurance Transaction, reset the various applied amounts (Reimbursed, Not Covered, etc.).

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Reset ReinsContractTrans
  api_instance.reset_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->reset_reins_contract_trans: #{e}"
end
```

#### Using the reset_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)

```ruby
begin
  # Reset ReinsContractTrans
  data, status_code, headers = api_instance.reset_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->reset_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_reins_contract_trans

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans)

Create or Update Batch ReinsContractTrans

Create or Update multiple ReinsContractTrans at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans = [Vba::ReinsContractTrans.new({reins_contract_trans_key: 37, reins_contract_key: 37})] # Array<ReinsContractTrans> | 

begin
  # Create or Update Batch ReinsContractTrans
  result = api_instance.update_batch_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->update_batch_reins_contract_trans: #{e}"
end
```

#### Using the update_batch_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans)

```ruby
begin
  # Create or Update Batch ReinsContractTrans
  data, status_code, headers = api_instance.update_batch_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->update_batch_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans** | [**Array&lt;ReinsContractTrans&gt;**](ReinsContractTrans.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_trans

> <ReinsContractTransVBAResponse> update_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans)

Update ReinsContractTrans

Updates a specific ReinsContractTrans.

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

api_instance = Vba::ReinsuranceContractTransactionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key
reins_contract_trans = Vba::ReinsContractTrans.new({reins_contract_trans_key: 37, reins_contract_key: 37}) # ReinsContractTrans | 

begin
  # Update ReinsContractTrans
  result = api_instance.update_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->update_reins_contract_trans: #{e}"
end
```

#### Using the update_reins_contract_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTransVBAResponse>, Integer, Hash)> update_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans)

```ruby
begin
  # Update ReinsContractTrans
  data, status_code, headers = api_instance.update_reins_contract_trans_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_trans_key, reins_contract_trans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTransVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTransactionsApi->update_reins_contract_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_trans_key** | **Integer** | ReinsContractTrans Key |  |
| **reins_contract_trans** | [**ReinsContractTrans**](ReinsContractTrans.md) |  |  |

### Return type

[**ReinsContractTransVBAResponse**](ReinsContractTransVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

