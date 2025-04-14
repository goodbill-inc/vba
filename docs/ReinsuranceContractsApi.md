# Vba::ReinsuranceContractsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contract_from_existing**](ReinsuranceContractsApi.md#add_contract_from_existing) | **POST** /reinsurance-contract-copy | Copy and existing ReinsContract to a new ReinsContract |
| [**add_contract_from_template**](ReinsuranceContractsApi.md#add_contract_from_template) | **POST** /reinsurance-contract-add-from-template | Add ReinsContract from a Template ReinsContract |
| [**create_reins_contract**](ReinsuranceContractsApi.md#create_reins_contract) | **POST** /reinsurance-contracts | Create ReinsContract |
| [**delete_reins_contract**](ReinsuranceContractsApi.md#delete_reins_contract) | **DELETE** /reinsurance-contracts/{reinsContractKey} | Delete ReinsContract |
| [**generate_reins_level_transaction**](ReinsuranceContractsApi.md#generate_reins_level_transaction) | **POST** /reinsurance-contracts/{reinsContractKey}/generate-level-transaction | Generate Level Transactions for this Contract |
| [**generate_reins_transaction**](ReinsuranceContractsApi.md#generate_reins_transaction) | **POST** /reinsurance-contracts/{reinsContractKey}/generate-transaction | Generate Transactions for this Contract |
| [**get_reins_contract**](ReinsuranceContractsApi.md#get_reins_contract) | **GET** /reinsurance-contracts/{reinsContractKey} | Get ReinsContract |
| [**list_reins_contract**](ReinsuranceContractsApi.md#list_reins_contract) | **GET** /reinsurance-contracts | List ReinsContract |
| [**update_batch_reins_contract**](ReinsuranceContractsApi.md#update_batch_reins_contract) | **PUT** /reinsurance-contracts-batch | Create or Update Batch ReinsContract |
| [**update_reins_contract**](ReinsuranceContractsApi.md#update_reins_contract) | **PUT** /reinsurance-contracts/{reinsContractKey} | Update ReinsContract |


## add_contract_from_existing

> <ReinsContractVBAResponse> add_contract_from_existing(vbasoftware_database, reins_service_add_from_existing)

Copy and existing ReinsContract to a new ReinsContract

Copy everything from an existing contract to a new Contract.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_service_add_from_existing = Vba::ReinsServiceAddFromExisting.new # ReinsServiceAddFromExisting | 

begin
  # Copy and existing ReinsContract to a new ReinsContract
  result = api_instance.add_contract_from_existing(vbasoftware_database, reins_service_add_from_existing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->add_contract_from_existing: #{e}"
end
```

#### Using the add_contract_from_existing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractVBAResponse>, Integer, Hash)> add_contract_from_existing_with_http_info(vbasoftware_database, reins_service_add_from_existing)

```ruby
begin
  # Copy and existing ReinsContract to a new ReinsContract
  data, status_code, headers = api_instance.add_contract_from_existing_with_http_info(vbasoftware_database, reins_service_add_from_existing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->add_contract_from_existing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_service_add_from_existing** | [**ReinsServiceAddFromExisting**](ReinsServiceAddFromExisting.md) |  |  |

### Return type

[**ReinsContractVBAResponse**](ReinsContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## add_contract_from_template

> <ReinsContractVBAResponse> add_contract_from_template(vbasoftware_database, reins_service_add_from_template)

Add ReinsContract from a Template ReinsContract

Take the information from a template and apply it to one or more new contracts based on that template contract.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_service_add_from_template = Vba::ReinsServiceAddFromTemplate.new # ReinsServiceAddFromTemplate | 

begin
  # Add ReinsContract from a Template ReinsContract
  result = api_instance.add_contract_from_template(vbasoftware_database, reins_service_add_from_template)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->add_contract_from_template: #{e}"
end
```

#### Using the add_contract_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractVBAResponse>, Integer, Hash)> add_contract_from_template_with_http_info(vbasoftware_database, reins_service_add_from_template)

```ruby
begin
  # Add ReinsContract from a Template ReinsContract
  data, status_code, headers = api_instance.add_contract_from_template_with_http_info(vbasoftware_database, reins_service_add_from_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->add_contract_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_service_add_from_template** | [**ReinsServiceAddFromTemplate**](ReinsServiceAddFromTemplate.md) |  |  |

### Return type

[**ReinsContractVBAResponse**](ReinsContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_reins_contract

> <ReinsContractVBAResponse> create_reins_contract(vbasoftware_database, reins_contract)

Create ReinsContract

Creates a new ReinsContract

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract = Vba::ReinsContract.new({reins_contract_key: 37, adjudicate_threshold_pct: false, enroll_disenroll_by_on_agg_report: false, spec_threshold_notify: false, specific_deductible_family: false, specific_reporting_threshold_pct: false, template_contract: false, use_reins_level: false}) # ReinsContract | 

begin
  # Create ReinsContract
  result = api_instance.create_reins_contract(vbasoftware_database, reins_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->create_reins_contract: #{e}"
end
```

#### Using the create_reins_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractVBAResponse>, Integer, Hash)> create_reins_contract_with_http_info(vbasoftware_database, reins_contract)

```ruby
begin
  # Create ReinsContract
  data, status_code, headers = api_instance.create_reins_contract_with_http_info(vbasoftware_database, reins_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->create_reins_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract** | [**ReinsContract**](ReinsContract.md) |  |  |

### Return type

[**ReinsContractVBAResponse**](ReinsContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract

> delete_reins_contract(vbasoftware_database, reins_contract_key)

Delete ReinsContract

Deletes an ReinsContract

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # Delete ReinsContract
  api_instance.delete_reins_contract(vbasoftware_database, reins_contract_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->delete_reins_contract: #{e}"
end
```

#### Using the delete_reins_contract_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_with_http_info(vbasoftware_database, reins_contract_key)

```ruby
begin
  # Delete ReinsContract
  data, status_code, headers = api_instance.delete_reins_contract_with_http_info(vbasoftware_database, reins_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->delete_reins_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_reins_level_transaction

> <Int32VBAResponse> generate_reins_level_transaction(vbasoftware_database, reins_contract_key)

Generate Level Transactions for this Contract

Based on submitted information, generate reinsurance level transactions for this contract.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # Generate Level Transactions for this Contract
  result = api_instance.generate_reins_level_transaction(vbasoftware_database, reins_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->generate_reins_level_transaction: #{e}"
end
```

#### Using the generate_reins_level_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> generate_reins_level_transaction_with_http_info(vbasoftware_database, reins_contract_key)

```ruby
begin
  # Generate Level Transactions for this Contract
  data, status_code, headers = api_instance.generate_reins_level_transaction_with_http_info(vbasoftware_database, reins_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->generate_reins_level_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## generate_reins_transaction

> <GenerateReinsTransactionVBAResponse> generate_reins_transaction(vbasoftware_database, reins_contract_key, auto_apply_deductible, opts)

Generate Transactions for this Contract

Based on submitted information, generate reinsurance transactions for this contract.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
auto_apply_deductible = true # Boolean | Auto Apply Deductible
opts = {
  subscriber_id: 'subscriber_id_example', # String | Subscriber ID
  member_seq: 'member_seq_example' # String | Member Sequence
}

begin
  # Generate Transactions for this Contract
  result = api_instance.generate_reins_transaction(vbasoftware_database, reins_contract_key, auto_apply_deductible, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->generate_reins_transaction: #{e}"
end
```

#### Using the generate_reins_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateReinsTransactionVBAResponse>, Integer, Hash)> generate_reins_transaction_with_http_info(vbasoftware_database, reins_contract_key, auto_apply_deductible, opts)

```ruby
begin
  # Generate Transactions for this Contract
  data, status_code, headers = api_instance.generate_reins_transaction_with_http_info(vbasoftware_database, reins_contract_key, auto_apply_deductible, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateReinsTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->generate_reins_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **auto_apply_deductible** | **Boolean** | Auto Apply Deductible |  |
| **subscriber_id** | **String** | Subscriber ID | [optional] |
| **member_seq** | **String** | Member Sequence | [optional] |

### Return type

[**GenerateReinsTransactionVBAResponse**](GenerateReinsTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_reins_contract

> <ReinsContractVBAResponse> get_reins_contract(vbasoftware_database, reins_contract_key)

Get ReinsContract

Gets ReinsContract

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # Get ReinsContract
  result = api_instance.get_reins_contract(vbasoftware_database, reins_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->get_reins_contract: #{e}"
end
```

#### Using the get_reins_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractVBAResponse>, Integer, Hash)> get_reins_contract_with_http_info(vbasoftware_database, reins_contract_key)

```ruby
begin
  # Get ReinsContract
  data, status_code, headers = api_instance.get_reins_contract_with_http_info(vbasoftware_database, reins_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->get_reins_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |

### Return type

[**ReinsContractVBAResponse**](ReinsContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract

> <ReinsContractListVBAResponse> list_reins_contract(vbasoftware_database, opts)

List ReinsContract

Lists all ReinsContract

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContract
  result = api_instance.list_reins_contract(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->list_reins_contract: #{e}"
end
```

#### Using the list_reins_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractListVBAResponse>, Integer, Hash)> list_reins_contract_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContract
  data, status_code, headers = api_instance.list_reins_contract_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->list_reins_contract_with_http_info: #{e}"
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

[**ReinsContractListVBAResponse**](ReinsContractListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract(vbasoftware_database, reins_contract)

Create or Update Batch ReinsContract

Create or Update multiple ReinsContract at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract = [Vba::ReinsContract.new({reins_contract_key: 37, adjudicate_threshold_pct: false, enroll_disenroll_by_on_agg_report: false, spec_threshold_notify: false, specific_deductible_family: false, specific_reporting_threshold_pct: false, template_contract: false, use_reins_level: false})] # Array<ReinsContract> | 

begin
  # Create or Update Batch ReinsContract
  result = api_instance.update_batch_reins_contract(vbasoftware_database, reins_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->update_batch_reins_contract: #{e}"
end
```

#### Using the update_batch_reins_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_with_http_info(vbasoftware_database, reins_contract)

```ruby
begin
  # Create or Update Batch ReinsContract
  data, status_code, headers = api_instance.update_batch_reins_contract_with_http_info(vbasoftware_database, reins_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->update_batch_reins_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract** | [**Array&lt;ReinsContract&gt;**](ReinsContract.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract

> <ReinsContractVBAResponse> update_reins_contract(vbasoftware_database, reins_contract_key, reins_contract)

Update ReinsContract

Updates a specific ReinsContract.

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

api_instance = Vba::ReinsuranceContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract = Vba::ReinsContract.new({reins_contract_key: 37, adjudicate_threshold_pct: false, enroll_disenroll_by_on_agg_report: false, spec_threshold_notify: false, specific_deductible_family: false, specific_reporting_threshold_pct: false, template_contract: false, use_reins_level: false}) # ReinsContract | 

begin
  # Update ReinsContract
  result = api_instance.update_reins_contract(vbasoftware_database, reins_contract_key, reins_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->update_reins_contract: #{e}"
end
```

#### Using the update_reins_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractVBAResponse>, Integer, Hash)> update_reins_contract_with_http_info(vbasoftware_database, reins_contract_key, reins_contract)

```ruby
begin
  # Update ReinsContract
  data, status_code, headers = api_instance.update_reins_contract_with_http_info(vbasoftware_database, reins_contract_key, reins_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractsApi->update_reins_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract** | [**ReinsContract**](ReinsContract.md) |  |  |

### Return type

[**ReinsContractVBAResponse**](ReinsContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

