# Vba::AccountingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounting_fund_request**](AccountingApi.md#accounting_fund_request) | **POST** /accounting-fund-request | Claim Account Funding |
| [**claim_refund**](AccountingApi.md#claim_refund) | **POST** /accounting-claim-refund | Claim Refund |
| [**mass_update_claim_funded_status**](AccountingApi.md#mass_update_claim_funded_status) | **POST** /accounting-update-claim-funded-status | Mass Update Claim Funded Status |


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

api_instance = Vba::AccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fundaccountbalancelist = [Vba::FUNDACCOUNTBALANCELIST.new] # Array<FUNDACCOUNTBALANCELIST> | 

begin
  # Claim Account Funding
  result = api_instance.accounting_fund_request(vbasoftware_database, fundaccountbalancelist)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AccountingApi->accounting_fund_request: #{e}"
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
  puts "Error when calling AccountingApi->accounting_fund_request_with_http_info: #{e}"
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

api_instance = Vba::AccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_process_claim_refund = Vba::FundingProcessClaimRefund.new # FundingProcessClaimRefund | 

begin
  # Claim Refund
  api_instance.claim_refund(vbasoftware_database, funding_process_claim_refund)
rescue Vba::ApiError => e
  puts "Error when calling AccountingApi->claim_refund: #{e}"
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
  puts "Error when calling AccountingApi->claim_refund_with_http_info: #{e}"
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

api_instance = Vba::AccountingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_update_claim_funded_status = [Vba::VBAUpdateClaimFundedStatus.new] # Array<VBAUpdateClaimFundedStatus> | 

begin
  # Mass Update Claim Funded Status
  api_instance.mass_update_claim_funded_status(vbasoftware_database, vba_update_claim_funded_status)
rescue Vba::ApiError => e
  puts "Error when calling AccountingApi->mass_update_claim_funded_status: #{e}"
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
  puts "Error when calling AccountingApi->mass_update_claim_funded_status_with_http_info: #{e}"
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

