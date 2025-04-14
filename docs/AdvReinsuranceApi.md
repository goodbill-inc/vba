# Vba::AdvReinsuranceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contract_from_existing**](AdvReinsuranceApi.md#add_contract_from_existing) | **POST** /reinsurance-contract-copy | Copy and existing ReinsContract to a new ReinsContract |
| [**add_contract_from_template**](AdvReinsuranceApi.md#add_contract_from_template) | **POST** /reinsurance-contract-add-from-template | Add ReinsContract from a Template ReinsContract |
| [**apply_agg_spec_ded_reins_contract_trans**](AdvReinsuranceApi.md#apply_agg_spec_ded_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-agg-spec-deductible | Apply Agg. Spec. Deductible ReinsContractTrans |
| [**apply_ded_reins_contract_trans**](AdvReinsuranceApi.md#apply_ded_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-deductible | Apply Deductible ReinsContractTrans |
| [**apply_reimbursement_reins_contract_trans**](AdvReinsuranceApi.md#apply_reimbursement_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/apply-reimbursement | Apply Reimbursement ReinsContractTrans |
| [**calculate_reins_contract_trans**](AdvReinsuranceApi.md#calculate_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/calculate | Calculate ReinsContractTrans |
| [**generate_reins_level_transaction**](AdvReinsuranceApi.md#generate_reins_level_transaction) | **POST** /reinsurance-contracts/{reinsContractKey}/generate-level-transaction | Generate Level Transactions for this Contract |
| [**generate_reins_transaction**](AdvReinsuranceApi.md#generate_reins_transaction) | **POST** /reinsurance-contracts/{reinsContractKey}/generate-transaction | Generate Transactions for this Contract |
| [**reset_reins_contract_trans**](AdvReinsuranceApi.md#reset_reins_contract_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/transactions/{reinsContractTransKey}/reset | Reset ReinsContractTrans |


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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_service_add_from_existing = Vba::ReinsServiceAddFromExisting.new # ReinsServiceAddFromExisting | 

begin
  # Copy and existing ReinsContract to a new ReinsContract
  result = api_instance.add_contract_from_existing(vbasoftware_database, reins_service_add_from_existing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->add_contract_from_existing: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->add_contract_from_existing_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_service_add_from_template = Vba::ReinsServiceAddFromTemplate.new # ReinsServiceAddFromTemplate | 

begin
  # Add ReinsContract from a Template ReinsContract
  result = api_instance.add_contract_from_template(vbasoftware_database, reins_service_add_from_template)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->add_contract_from_template: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->add_contract_from_template_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Agg. Spec. Deductible ReinsContractTrans
  api_instance.apply_agg_spec_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->apply_agg_spec_ded_reins_contract_trans: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->apply_agg_spec_ded_reins_contract_trans_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Deductible ReinsContractTrans
  api_instance.apply_ded_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->apply_ded_reins_contract_trans: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->apply_ded_reins_contract_trans_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Apply Reimbursement ReinsContractTrans
  api_instance.apply_reimbursement_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->apply_reimbursement_reins_contract_trans: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->apply_reimbursement_reins_contract_trans_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Calculate ReinsContractTrans
  result = api_instance.calculate_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->calculate_reins_contract_trans: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->calculate_reins_contract_trans_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # Generate Level Transactions for this Contract
  result = api_instance.generate_reins_level_transaction(vbasoftware_database, reins_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->generate_reins_level_transaction: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->generate_reins_level_transaction_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
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
  puts "Error when calling AdvReinsuranceApi->generate_reins_transaction: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->generate_reins_transaction_with_http_info: #{e}"
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

api_instance = Vba::AdvReinsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_trans_key = 56 # Integer | ReinsContractTrans Key

begin
  # Reset ReinsContractTrans
  api_instance.reset_reins_contract_trans(vbasoftware_database, reins_contract_key, reins_contract_trans_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvReinsuranceApi->reset_reins_contract_trans: #{e}"
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
  puts "Error when calling AdvReinsuranceApi->reset_reins_contract_trans_with_http_info: #{e}"
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

