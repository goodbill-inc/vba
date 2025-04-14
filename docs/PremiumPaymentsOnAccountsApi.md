# Vba::PremiumPaymentsOnAccountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#create_prem_payment_on_account) | **POST** /premium-payments/{premPaymentKey}/account-payments | Create PremPaymentOnAccount |
| [**delete_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#delete_prem_payment_on_account) | **DELETE** /premium-payments/{premPaymentKey}/account-payments/{premPaymentOnAccountKey} | Delete PremPaymentOnAccount |
| [**get_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#get_prem_payment_on_account) | **GET** /premium-payments/{premPaymentKey}/account-payments/{premPaymentOnAccountKey} | Get PremPaymentOnAccount |
| [**list_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#list_prem_payment_on_account) | **GET** /premium-payments/{premPaymentKey}/account-payments | List PremPaymentOnAccount |
| [**update_batch_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#update_batch_prem_payment_on_account) | **PUT** /premium-payments/{premPaymentKey}/account-payments-batch | Create or Update Batch PremPaymentOnAccount |
| [**update_prem_payment_on_account**](PremiumPaymentsOnAccountsApi.md#update_prem_payment_on_account) | **PUT** /premium-payments/{premPaymentKey}/account-payments/{premPaymentOnAccountKey} | Update PremPaymentOnAccount |


## create_prem_payment_on_account

> <PremPaymentOnAccountVBAResponse> create_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account)

Create PremPaymentOnAccount

Creates a new PremPaymentOnAccount

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_on_account = Vba::PremPaymentOnAccount.new({prem_payment_on_account_key: 37, prem_payment_key: 37}) # PremPaymentOnAccount | 

begin
  # Create PremPaymentOnAccount
  result = api_instance.create_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->create_prem_payment_on_account: #{e}"
end
```

#### Using the create_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentOnAccountVBAResponse>, Integer, Hash)> create_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account)

```ruby
begin
  # Create PremPaymentOnAccount
  data, status_code, headers = api_instance.create_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentOnAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->create_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_on_account** | [**PremPaymentOnAccount**](PremPaymentOnAccount.md) |  |  |

### Return type

[**PremPaymentOnAccountVBAResponse**](PremPaymentOnAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_payment_on_account

> delete_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)

Delete PremPaymentOnAccount

Deletes an PremPaymentOnAccount

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_on_account_key = 56 # Integer | PremPaymentOnAccount Key

begin
  # Delete PremPaymentOnAccount
  api_instance.delete_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->delete_prem_payment_on_account: #{e}"
end
```

#### Using the delete_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)

```ruby
begin
  # Delete PremPaymentOnAccount
  data, status_code, headers = api_instance.delete_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->delete_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_on_account_key** | **Integer** | PremPaymentOnAccount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_payment_on_account

> <PremPaymentOnAccountVBAResponse> get_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)

Get PremPaymentOnAccount

Gets PremPaymentOnAccount

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_on_account_key = 56 # Integer | PremPaymentOnAccount Key

begin
  # Get PremPaymentOnAccount
  result = api_instance.get_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->get_prem_payment_on_account: #{e}"
end
```

#### Using the get_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentOnAccountVBAResponse>, Integer, Hash)> get_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)

```ruby
begin
  # Get PremPaymentOnAccount
  data, status_code, headers = api_instance.get_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentOnAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->get_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_on_account_key** | **Integer** | PremPaymentOnAccount Key |  |

### Return type

[**PremPaymentOnAccountVBAResponse**](PremPaymentOnAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_payment_on_account

> <PremPaymentOnAccountListVBAResponse> list_prem_payment_on_account(vbasoftware_database, prem_payment_key, opts)

List PremPaymentOnAccount

Lists all PremPaymentOnAccount for the given premPaymentKey

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPaymentOnAccount
  result = api_instance.list_prem_payment_on_account(vbasoftware_database, prem_payment_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->list_prem_payment_on_account: #{e}"
end
```

#### Using the list_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentOnAccountListVBAResponse>, Integer, Hash)> list_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, opts)

```ruby
begin
  # List PremPaymentOnAccount
  data, status_code, headers = api_instance.list_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentOnAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->list_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremPaymentOnAccountListVBAResponse**](PremPaymentOnAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_payment_on_account

> <MultiCodeResponseListVBAResponse> update_batch_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account)

Create or Update Batch PremPaymentOnAccount

Create or Update multiple PremPaymentOnAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_on_account = [Vba::PremPaymentOnAccount.new({prem_payment_on_account_key: 37, prem_payment_key: 37})] # Array<PremPaymentOnAccount> | 

begin
  # Create or Update Batch PremPaymentOnAccount
  result = api_instance.update_batch_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->update_batch_prem_payment_on_account: #{e}"
end
```

#### Using the update_batch_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account)

```ruby
begin
  # Create or Update Batch PremPaymentOnAccount
  data, status_code, headers = api_instance.update_batch_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->update_batch_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_on_account** | [**Array&lt;PremPaymentOnAccount&gt;**](PremPaymentOnAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_payment_on_account

> <PremPaymentOnAccountVBAResponse> update_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key, prem_payment_on_account)

Update PremPaymentOnAccount

Updates a specific PremPaymentOnAccount.

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

api_instance = Vba::PremiumPaymentsOnAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment_on_account_key = 56 # Integer | PremPaymentOnAccount Key
prem_payment_on_account = Vba::PremPaymentOnAccount.new({prem_payment_on_account_key: 37, prem_payment_key: 37}) # PremPaymentOnAccount | 

begin
  # Update PremPaymentOnAccount
  result = api_instance.update_prem_payment_on_account(vbasoftware_database, prem_payment_key, prem_payment_on_account_key, prem_payment_on_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->update_prem_payment_on_account: #{e}"
end
```

#### Using the update_prem_payment_on_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentOnAccountVBAResponse>, Integer, Hash)> update_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key, prem_payment_on_account)

```ruby
begin
  # Update PremPaymentOnAccount
  data, status_code, headers = api_instance.update_prem_payment_on_account_with_http_info(vbasoftware_database, prem_payment_key, prem_payment_on_account_key, prem_payment_on_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentOnAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsOnAccountsApi->update_prem_payment_on_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment_on_account_key** | **Integer** | PremPaymentOnAccount Key |  |
| **prem_payment_on_account** | [**PremPaymentOnAccount**](PremPaymentOnAccount.md) |  |  |

### Return type

[**PremPaymentOnAccountVBAResponse**](PremPaymentOnAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

