# Vba::AdvAccountingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounting_fund_request**](AdvAccountingApi.md#accounting_fund_request) | **POST** /accounting-fund-request | Claim Account Funding |
| [**add_funding_deposit**](AdvAccountingApi.md#add_funding_deposit) | **POST** /funding-deposits/{depositKey}/add-funding | Add Funding to Deposit |
| [**add_reconciliation**](AdvAccountingApi.md#add_reconciliation) | **POST** /funding-reconciliation-add | Add Reconciliation |
| [**claim_refund**](AdvAccountingApi.md#claim_refund) | **POST** /accounting-claim-refund | Claim Refund |
| [**get_funding_account_balance**](AdvAccountingApi.md#get_funding_account_balance) | **GET** /funding-accounts/{accountKey}/account-balance | Get FundingAccount Balance |
| [**get_name_on_check**](AdvAccountingApi.md#get_name_on_check) | **POST** /checks-name-on-check | Get Name and Address Information |
| [**get_payor_account_balance**](AdvAccountingApi.md#get_payor_account_balance) | **GET** /payor-accounts/{payorAccountKey}/account-balance | Get PayorAccount Balance |
| [**hold_funds**](AdvAccountingApi.md#hold_funds) | **POST** /funding/{fundingKey}/hold | Hold Funds |
| [**mass_update_claim_funded_status**](AdvAccountingApi.md#mass_update_claim_funded_status) | **POST** /accounting-update-claim-funded-status | Mass Update Claim Funded Status |
| [**process_checks**](AdvAccountingApi.md#process_checks) | **POST** /checks-process | Process Checks |
| [**reallocate_funds**](AdvAccountingApi.md#reallocate_funds) | **PUT** /funding/{fundingKey}/payors/{payorId}/accounts/{accountKey}/reallocate | Reacllocate Funds |
| [**reconcile_funds**](AdvAccountingApi.md#reconcile_funds) | **POST** /funding-reconciliation-reconcile-funds | Reconcile Funds |
| [**transfer_funds**](AdvAccountingApi.md#transfer_funds) | **PUT** /funding/{fundingKey}/transfer | Transfer Funds |
| [**undo_void_check**](AdvAccountingApi.md#undo_void_check) | **POST** /checks-undo-void | Undo Void Check |
| [**void_check**](AdvAccountingApi.md#void_check) | **POST** /checks/{checkID}/void | Void Check |
| [**void_funds**](AdvAccountingApi.md#void_funds) | **PUT** /funding/{fundingKey}/void | Void Funds |


## accounting_fund_request

> <BooleanVBAResponse> accounting_fund_request(vbasoftware_database, fundaccountbalancelist)

Claim Account Funding

Submit a list of Payor/Account information to be funded based on configured parameters.  Returns whether there are invalid entries in your list that were skipped during processing.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fundaccountbalancelist = [Vba::FUNDACCOUNTBALANCELIST.new] # Array<FUNDACCOUNTBALANCELIST> | 

begin
  # Claim Account Funding
  result = api_instance.accounting_fund_request(vbasoftware_database, fundaccountbalancelist)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->accounting_fund_request: #{e}"
end
```

#### Using the accounting_fund_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanVBAResponse>, Integer, Hash)> accounting_fund_request_with_http_info(vbasoftware_database, fundaccountbalancelist)

```ruby
begin
  # Claim Account Funding
  data, status_code, headers = api_instance.accounting_fund_request_with_http_info(vbasoftware_database, fundaccountbalancelist)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->accounting_fund_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fundaccountbalancelist** | [**Array&lt;FUNDACCOUNTBALANCELIST&gt;**](FUNDACCOUNTBALANCELIST.md) |  |  |

### Return type

[**BooleanVBAResponse**](BooleanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## add_funding_deposit

> <FundingDepositVBAResponse> add_funding_deposit(vbasoftware_database, deposit_key, funding)

Add Funding to Deposit

Creates Funding items and attaches them to an existing Deposit.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key
funding = [Vba::Funding.new({funding_key: 37})] # Array<Funding> | 

begin
  # Add Funding to Deposit
  result = api_instance.add_funding_deposit(vbasoftware_database, deposit_key, funding)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->add_funding_deposit: #{e}"
end
```

#### Using the add_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositVBAResponse>, Integer, Hash)> add_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding)

```ruby
begin
  # Add Funding to Deposit
  data, status_code, headers = api_instance.add_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->add_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |
| **funding** | [**Array&lt;Funding&gt;**](Funding.md) |  |  |

### Return type

[**FundingDepositVBAResponse**](FundingDepositVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## add_reconciliation

> <FundingReconcileVBAResponse> add_reconciliation(vbasoftware_database, funding_statement)

Add Reconciliation

Creates a new FundingReconcile along with attaching any Checks/Deposits identified.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement = Vba::FundingStatement.new # FundingStatement | 

begin
  # Add Reconciliation
  result = api_instance.add_reconciliation(vbasoftware_database, funding_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->add_reconciliation: #{e}"
end
```

#### Using the add_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> add_reconciliation_with_http_info(vbasoftware_database, funding_statement)

```ruby
begin
  # Add Reconciliation
  data, status_code, headers = api_instance.add_reconciliation_with_http_info(vbasoftware_database, funding_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->add_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement** | [**FundingStatement**](FundingStatement.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## claim_refund

> claim_refund(vbasoftware_database, funding_process_claim_refund)

Claim Refund

Process a Claim Refund creating the necessary Backout and Reentry claims and adding Claim Reference values.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_process_claim_refund = Vba::FundingProcessClaimRefund.new # FundingProcessClaimRefund | 

begin
  # Claim Refund
  api_instance.claim_refund(vbasoftware_database, funding_process_claim_refund)
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->claim_refund: #{e}"
end
```

#### Using the claim_refund_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> claim_refund_with_http_info(vbasoftware_database, funding_process_claim_refund)

```ruby
begin
  # Claim Refund
  data, status_code, headers = api_instance.claim_refund_with_http_info(vbasoftware_database, funding_process_claim_refund)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->claim_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_process_claim_refund** | [**FundingProcessClaimRefund**](FundingProcessClaimRefund.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## get_funding_account_balance

> <FundingAccountBalanceVBAResponse> get_funding_account_balance(vbasoftware_database, account_key)

Get FundingAccount Balance

Gets FundingAccount balance details

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key

begin
  # Get FundingAccount Balance
  result = api_instance.get_funding_account_balance(vbasoftware_database, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_funding_account_balance: #{e}"
end
```

#### Using the get_funding_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountBalanceVBAResponse>, Integer, Hash)> get_funding_account_balance_with_http_info(vbasoftware_database, account_key)

```ruby
begin
  # Get FundingAccount Balance
  data, status_code, headers = api_instance.get_funding_account_balance_with_http_info(vbasoftware_database, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountBalanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_funding_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**FundingAccountBalanceVBAResponse**](FundingAccountBalanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_name_on_check

> <FundingNameOnCheckVBAResponse> get_name_on_check(vbasoftware_database, funding_name_on_check)

Get Name and Address Information

Using Send Check To and a dynamic Pay To ID, get the delivery information for a potential check.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_name_on_check = Vba::FundingNameOnCheck.new({send_check_to: 'send_check_to_example', pay_to_id: 'pay_to_id_example'}) # FundingNameOnCheck | 

begin
  # Get Name and Address Information
  result = api_instance.get_name_on_check(vbasoftware_database, funding_name_on_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_name_on_check: #{e}"
end
```

#### Using the get_name_on_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingNameOnCheckVBAResponse>, Integer, Hash)> get_name_on_check_with_http_info(vbasoftware_database, funding_name_on_check)

```ruby
begin
  # Get Name and Address Information
  data, status_code, headers = api_instance.get_name_on_check_with_http_info(vbasoftware_database, funding_name_on_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingNameOnCheckVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_name_on_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_name_on_check** | [**FundingNameOnCheck**](FundingNameOnCheck.md) |  |  |

### Return type

[**FundingNameOnCheckVBAResponse**](FundingNameOnCheckVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_payor_account_balance

> <FundingAccountBalanceVBAResponse> get_payor_account_balance(vbasoftware_database, payor_account_key)

Get PayorAccount Balance

Gets PayorAccount Balance details

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key

begin
  # Get PayorAccount Balance
  result = api_instance.get_payor_account_balance(vbasoftware_database, payor_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_payor_account_balance: #{e}"
end
```

#### Using the get_payor_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountBalanceVBAResponse>, Integer, Hash)> get_payor_account_balance_with_http_info(vbasoftware_database, payor_account_key)

```ruby
begin
  # Get PayorAccount Balance
  data, status_code, headers = api_instance.get_payor_account_balance_with_http_info(vbasoftware_database, payor_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountBalanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->get_payor_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |

### Return type

[**FundingAccountBalanceVBAResponse**](FundingAccountBalanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## hold_funds

> <FundingVBAResponse> hold_funds(vbasoftware_database, funding_key, hold_amount)

Hold Funds

Lower the existing funding item by the hold amount and create a new funding for the hold amount.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
hold_amount = 1.2 # Float | 

begin
  # Hold Funds
  result = api_instance.hold_funds(vbasoftware_database, funding_key, hold_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->hold_funds: #{e}"
end
```

#### Using the hold_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> hold_funds_with_http_info(vbasoftware_database, funding_key, hold_amount)

```ruby
begin
  # Hold Funds
  data, status_code, headers = api_instance.hold_funds_with_http_info(vbasoftware_database, funding_key, hold_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->hold_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **hold_amount** | **Float** |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: text/plain, application/json, text/json


## mass_update_claim_funded_status

> mass_update_claim_funded_status(vbasoftware_database, vba_update_claim_funded_status)

Mass Update Claim Funded Status

Pass in a list of claims and what Claim_Funded_Status to update that claim to and have it updated in mass without iterating through claim records.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_update_claim_funded_status = [Vba::VBAUpdateClaimFundedStatus.new] # Array<VBAUpdateClaimFundedStatus> | 

begin
  # Mass Update Claim Funded Status
  api_instance.mass_update_claim_funded_status(vbasoftware_database, vba_update_claim_funded_status)
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->mass_update_claim_funded_status: #{e}"
end
```

#### Using the mass_update_claim_funded_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mass_update_claim_funded_status_with_http_info(vbasoftware_database, vba_update_claim_funded_status)

```ruby
begin
  # Mass Update Claim Funded Status
  data, status_code, headers = api_instance.mass_update_claim_funded_status_with_http_info(vbasoftware_database, vba_update_claim_funded_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->mass_update_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_update_claim_funded_status** | [**Array&lt;VBAUpdateClaimFundedStatus&gt;**](VBAUpdateClaimFundedStatus.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## process_checks

> <Int32VBAResponse> process_checks(vbasoftware_database, funding_process_check)

Process Checks

Initiates the process of Check Processing. If the request is valid, the system will generate the necessary actions to process checks and respond with a success status code of 202 Accepted, along with the generated process key.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_process_check = Vba::FundingProcessCheck.new # FundingProcessCheck | 

begin
  # Process Checks
  result = api_instance.process_checks(vbasoftware_database, funding_process_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->process_checks: #{e}"
end
```

#### Using the process_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> process_checks_with_http_info(vbasoftware_database, funding_process_check)

```ruby
begin
  # Process Checks
  data, status_code, headers = api_instance.process_checks_with_http_info(vbasoftware_database, funding_process_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->process_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_process_check** | [**FundingProcessCheck**](FundingProcessCheck.md) |  |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## reallocate_funds

> <FundingVBAResponse> reallocate_funds(vbasoftware_database, funding_key, payor_id, account_key)

Reacllocate Funds

Change the Payor ID and Account Key of an existing funding item.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
payor_id = 'payor_id_example' # String | Payor ID
account_key = 56 # Integer | Account Key

begin
  # Reacllocate Funds
  result = api_instance.reallocate_funds(vbasoftware_database, funding_key, payor_id, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->reallocate_funds: #{e}"
end
```

#### Using the reallocate_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> reallocate_funds_with_http_info(vbasoftware_database, funding_key, payor_id, account_key)

```ruby
begin
  # Reacllocate Funds
  data, status_code, headers = api_instance.reallocate_funds_with_http_info(vbasoftware_database, funding_key, payor_id, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->reallocate_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **payor_id** | **String** | Payor ID |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## reconcile_funds

> <FundingReconcileVBAResponse> reconcile_funds(vbasoftware_database, funding_statement)

Reconcile Funds

Reconcile all Deposits, Checks, and Funding associated with this Reconciliation as well as creating offset debits and credits.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement = Vba::FundingStatement.new # FundingStatement | 

begin
  # Reconcile Funds
  result = api_instance.reconcile_funds(vbasoftware_database, funding_statement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->reconcile_funds: #{e}"
end
```

#### Using the reconcile_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingReconcileVBAResponse>, Integer, Hash)> reconcile_funds_with_http_info(vbasoftware_database, funding_statement)

```ruby
begin
  # Reconcile Funds
  data, status_code, headers = api_instance.reconcile_funds_with_http_info(vbasoftware_database, funding_statement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingReconcileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->reconcile_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement** | [**FundingStatement**](FundingStatement.md) |  |  |

### Return type

[**FundingReconcileVBAResponse**](FundingReconcileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## transfer_funds

> <FundingVBAResponse> transfer_funds(vbasoftware_database, funding_key, funding_transfer_funds)

Transfer Funds

Transfer funds from one account to another.  Additionally, can auto-create a premium distribution if a Funding_Key of 0 is sent.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
funding_transfer_funds = Vba::FundingTransferFunds.new # FundingTransferFunds | 

begin
  # Transfer Funds
  result = api_instance.transfer_funds(vbasoftware_database, funding_key, funding_transfer_funds)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->transfer_funds: #{e}"
end
```

#### Using the transfer_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> transfer_funds_with_http_info(vbasoftware_database, funding_key, funding_transfer_funds)

```ruby
begin
  # Transfer Funds
  data, status_code, headers = api_instance.transfer_funds_with_http_info(vbasoftware_database, funding_key, funding_transfer_funds)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->transfer_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **funding_transfer_funds** | [**FundingTransferFunds**](FundingTransferFunds.md) |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## undo_void_check

> <Int32VBAResponse> undo_void_check(vbasoftware_database, check_id)

Undo Void Check

Undo a previously voided check by Check ID.  Returns the VBAProcess Key for log review and verification.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID

begin
  # Undo Void Check
  result = api_instance.undo_void_check(vbasoftware_database, check_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->undo_void_check: #{e}"
end
```

#### Using the undo_void_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> undo_void_check_with_http_info(vbasoftware_database, check_id)

```ruby
begin
  # Undo Void Check
  data, status_code, headers = api_instance.undo_void_check_with_http_info(vbasoftware_database, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->undo_void_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## void_check

> <ChecksVBAResponse> void_check(vbasoftware_database, check_id, funding_void_check)

Void Check

Voids an existing Check

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
funding_void_check = Vba::FundingVoidCheck.new # FundingVoidCheck | 

begin
  # Void Check
  result = api_instance.void_check(vbasoftware_database, check_id, funding_void_check)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->void_check: #{e}"
end
```

#### Using the void_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksVBAResponse>, Integer, Hash)> void_check_with_http_info(vbasoftware_database, check_id, funding_void_check)

```ruby
begin
  # Void Check
  data, status_code, headers = api_instance.void_check_with_http_info(vbasoftware_database, check_id, funding_void_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->void_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **funding_void_check** | [**FundingVoidCheck**](FundingVoidCheck.md) |  |  |

### Return type

[**ChecksVBAResponse**](ChecksVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## void_funds

> <FundingVBAResponse> void_funds(vbasoftware_database, funding_key)

Void Funds

Void an existing funding item.

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

api_instance = Vba::AdvAccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key

begin
  # Void Funds
  result = api_instance.void_funds(vbasoftware_database, funding_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->void_funds: #{e}"
end
```

#### Using the void_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> void_funds_with_http_info(vbasoftware_database, funding_key)

```ruby
begin
  # Void Funds
  data, status_code, headers = api_instance.void_funds_with_http_info(vbasoftware_database, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvAccountingApi->void_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

