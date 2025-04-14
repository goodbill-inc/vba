# Vba::PayorAccountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor_account**](PayorAccountsApi.md#create_payor_account) | **POST** /payor-accounts | Create PayorAccount |
| [**delete_payor_account**](PayorAccountsApi.md#delete_payor_account) | **DELETE** /payor-accounts/{payorAccountKey} | Delete PayorAccount |
| [**get_payor_account**](PayorAccountsApi.md#get_payor_account) | **GET** /payor-accounts/{payorAccountKey} | Get PayorAccount |
| [**get_payor_account_balance**](PayorAccountsApi.md#get_payor_account_balance) | **GET** /payor-accounts/{payorAccountKey}/account-balance | Get PayorAccount Balance |
| [**list_payor_account**](PayorAccountsApi.md#list_payor_account) | **GET** /payor-accounts | List PayorAccount |
| [**list_payor_account_check_processing**](PayorAccountsApi.md#list_payor_account_check_processing) | **GET** /payor-accounts/check-processing | List Payor Accounts for Check Processing |
| [**list_payor_funding_account_claims_information**](PayorAccountsApi.md#list_payor_funding_account_claims_information) | **GET** /payor/{payorId}/funding-accounts/{accountKey}/claims-info | List Claims Information from a Payor&#39;s Funding Account |
| [**update_batch_payor_account**](PayorAccountsApi.md#update_batch_payor_account) | **PUT** /payor-accounts-batch | Create or Update Batch PayorAccount |
| [**update_payor_account**](PayorAccountsApi.md#update_payor_account) | **PUT** /payor-accounts/{payorAccountKey} | Update PayorAccount |


## create_payor_account

> <PayorAccountVBAResponse> create_payor_account(vbasoftware_database, payor_account)

Create PayorAccount

Creates a new PayorAccount

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account = Vba::PayorAccount.new({payor_account_key: 37, account_key: 37, payor_id: 'payor_id_example', single_check_per_claim: false}) # PayorAccount | 

begin
  # Create PayorAccount
  result = api_instance.create_payor_account(vbasoftware_database, payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->create_payor_account: #{e}"
end
```

#### Using the create_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountVBAResponse>, Integer, Hash)> create_payor_account_with_http_info(vbasoftware_database, payor_account)

```ruby
begin
  # Create PayorAccount
  data, status_code, headers = api_instance.create_payor_account_with_http_info(vbasoftware_database, payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->create_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account** | [**PayorAccount**](PayorAccount.md) |  |  |

### Return type

[**PayorAccountVBAResponse**](PayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor_account

> delete_payor_account(vbasoftware_database, payor_account_key)

Delete PayorAccount

Deletes an PayorAccount

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key

begin
  # Delete PayorAccount
  api_instance.delete_payor_account(vbasoftware_database, payor_account_key)
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->delete_payor_account: #{e}"
end
```

#### Using the delete_payor_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_account_with_http_info(vbasoftware_database, payor_account_key)

```ruby
begin
  # Delete PayorAccount
  data, status_code, headers = api_instance.delete_payor_account_with_http_info(vbasoftware_database, payor_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->delete_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor_account

> <PayorAccountVBAResponse> get_payor_account(vbasoftware_database, payor_account_key)

Get PayorAccount

Gets PayorAccount

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key

begin
  # Get PayorAccount
  result = api_instance.get_payor_account(vbasoftware_database, payor_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->get_payor_account: #{e}"
end
```

#### Using the get_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountVBAResponse>, Integer, Hash)> get_payor_account_with_http_info(vbasoftware_database, payor_account_key)

```ruby
begin
  # Get PayorAccount
  data, status_code, headers = api_instance.get_payor_account_with_http_info(vbasoftware_database, payor_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->get_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |

### Return type

[**PayorAccountVBAResponse**](PayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key

begin
  # Get PayorAccount Balance
  result = api_instance.get_payor_account_balance(vbasoftware_database, payor_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->get_payor_account_balance: #{e}"
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
  puts "Error when calling PayorAccountsApi->get_payor_account_balance_with_http_info: #{e}"
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


## list_payor_account

> <PayorAccountListVBAResponse> list_payor_account(vbasoftware_database, opts)

List PayorAccount

Lists PayorAccounts with optional Payor_ID filter.

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  payor_id: 'payor_id_example', # String | Payor ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayorAccount
  result = api_instance.list_payor_account(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_account: #{e}"
end
```

#### Using the list_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountListVBAResponse>, Integer, Hash)> list_payor_account_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PayorAccount
  data, status_code, headers = api_instance.list_payor_account_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PayorAccountListVBAResponse**](PayorAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_account_check_processing

> <VBAPayorAccountCheckProcessingVBAResponse> list_payor_account_check_processing(vbasoftware_database)

List Payor Accounts for Check Processing

Gets a list of Payor Accounts for Check Processing

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Payor Accounts for Check Processing
  result = api_instance.list_payor_account_check_processing(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_account_check_processing: #{e}"
end
```

#### Using the list_payor_account_check_processing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAPayorAccountCheckProcessingVBAResponse>, Integer, Hash)> list_payor_account_check_processing_with_http_info(vbasoftware_database)

```ruby
begin
  # List Payor Accounts for Check Processing
  data, status_code, headers = api_instance.list_payor_account_check_processing_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAPayorAccountCheckProcessingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_account_check_processing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**VBAPayorAccountCheckProcessingVBAResponse**](VBAPayorAccountCheckProcessingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_funding_account_claims_information

> <VBAFundingAccountClaimInfoListVBAResponse> list_payor_funding_account_claims_information(vbasoftware_database, payor_id, account_key)

List Claims Information from a Payor's Funding Account

List Claims Information from a Payor's Funding Account

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
account_key = 56 # Integer | Payor's Funding Account Key

begin
  # List Claims Information from a Payor's Funding Account
  result = api_instance.list_payor_funding_account_claims_information(vbasoftware_database, payor_id, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_funding_account_claims_information: #{e}"
end
```

#### Using the list_payor_funding_account_claims_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAFundingAccountClaimInfoListVBAResponse>, Integer, Hash)> list_payor_funding_account_claims_information_with_http_info(vbasoftware_database, payor_id, account_key)

```ruby
begin
  # List Claims Information from a Payor's Funding Account
  data, status_code, headers = api_instance.list_payor_funding_account_claims_information_with_http_info(vbasoftware_database, payor_id, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAFundingAccountClaimInfoListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->list_payor_funding_account_claims_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **account_key** | **Integer** | Payor&#39;s Funding Account Key |  |

### Return type

[**VBAFundingAccountClaimInfoListVBAResponse**](VBAFundingAccountClaimInfoListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor_account

> <MultiCodeResponseListVBAResponse> update_batch_payor_account(vbasoftware_database, payor_account)

Create or Update Batch PayorAccount

Create or Update multiple PayorAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account = [Vba::PayorAccount.new({payor_account_key: 37, account_key: 37, payor_id: 'payor_id_example', single_check_per_claim: false})] # Array<PayorAccount> | 

begin
  # Create or Update Batch PayorAccount
  result = api_instance.update_batch_payor_account(vbasoftware_database, payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->update_batch_payor_account: #{e}"
end
```

#### Using the update_batch_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_account_with_http_info(vbasoftware_database, payor_account)

```ruby
begin
  # Create or Update Batch PayorAccount
  data, status_code, headers = api_instance.update_batch_payor_account_with_http_info(vbasoftware_database, payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->update_batch_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account** | [**Array&lt;PayorAccount&gt;**](PayorAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payor_account

> <PayorAccountVBAResponse> update_payor_account(vbasoftware_database, payor_account_key, payor_account)

Update PayorAccount

Updates a specific PayorAccount.

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

api_instance = Vba::PayorAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_key = 56 # Integer | Payor Account Key
payor_account = Vba::PayorAccount.new({payor_account_key: 37, account_key: 37, payor_id: 'payor_id_example', single_check_per_claim: false}) # PayorAccount | 

begin
  # Update PayorAccount
  result = api_instance.update_payor_account(vbasoftware_database, payor_account_key, payor_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->update_payor_account: #{e}"
end
```

#### Using the update_payor_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountVBAResponse>, Integer, Hash)> update_payor_account_with_http_info(vbasoftware_database, payor_account_key, payor_account)

```ruby
begin
  # Update PayorAccount
  data, status_code, headers = api_instance.update_payor_account_with_http_info(vbasoftware_database, payor_account_key, payor_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountsApi->update_payor_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_key** | **Integer** | Payor Account Key |  |
| **payor_account** | [**PayorAccount**](PayorAccount.md) |  |  |

### Return type

[**PayorAccountVBAResponse**](PayorAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

