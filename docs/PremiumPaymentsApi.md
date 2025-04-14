# Vba::PremiumPaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_payment**](PremiumPaymentsApi.md#create_prem_payment) | **POST** /premium-payments | Create PremPayment |
| [**delete_prem_payment**](PremiumPaymentsApi.md#delete_prem_payment) | **DELETE** /premium-payments/{premPaymentKey} | Delete PremPayment |
| [**get_prem_payment**](PremiumPaymentsApi.md#get_prem_payment) | **GET** /premium-payments/{premPaymentKey} | Get PremPayment |
| [**list_prem_apply_payment_category**](PremiumPaymentsApi.md#list_prem_apply_payment_category) | **GET** /list-apply-payment-category | List Premium for Payment Application |
| [**list_prem_payment**](PremiumPaymentsApi.md#list_prem_payment) | **GET** /premium-payments | List PremPayment |
| [**process_invoice_tolerance**](PremiumPaymentsApi.md#process_invoice_tolerance) | **POST** /process-invoice-tolerance/{invoiceKey} | Process or Check Invoice Tolerance |
| [**process_payment_file**](PremiumPaymentsApi.md#process_payment_file) | **POST** /process-payment-file | Process Payment File |
| [**undo_premium_payment**](PremiumPaymentsApi.md#undo_premium_payment) | **POST** /undo-premium-payment/{premPaymentKey} | Undo an Applied Premium Payment |
| [**update_batch_prem_payment**](PremiumPaymentsApi.md#update_batch_prem_payment) | **PUT** /premium-payments-batch | Create or Update Batch PremPayment |
| [**update_prem_payment**](PremiumPaymentsApi.md#update_prem_payment) | **PUT** /premium-payments/{premPaymentKey} | Update PremPayment |


## create_prem_payment

> <PremPaymentVBAResponse> create_prem_payment(vbasoftware_database, prem_payment)

Create PremPayment

Creates a new PremPayment

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment = Vba::PremPayment.new({prem_payment_key: 37}) # PremPayment | 

begin
  # Create PremPayment
  result = api_instance.create_prem_payment(vbasoftware_database, prem_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->create_prem_payment: #{e}"
end
```

#### Using the create_prem_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentVBAResponse>, Integer, Hash)> create_prem_payment_with_http_info(vbasoftware_database, prem_payment)

```ruby
begin
  # Create PremPayment
  data, status_code, headers = api_instance.create_prem_payment_with_http_info(vbasoftware_database, prem_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->create_prem_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment** | [**PremPayment**](PremPayment.md) |  |  |

### Return type

[**PremPaymentVBAResponse**](PremPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_payment

> delete_prem_payment(vbasoftware_database, prem_payment_key)

Delete PremPayment

Deletes an PremPayment

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Delete PremPayment
  api_instance.delete_prem_payment(vbasoftware_database, prem_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->delete_prem_payment: #{e}"
end
```

#### Using the delete_prem_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_payment_with_http_info(vbasoftware_database, prem_payment_key)

```ruby
begin
  # Delete PremPayment
  data, status_code, headers = api_instance.delete_prem_payment_with_http_info(vbasoftware_database, prem_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->delete_prem_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_payment

> <PremPaymentVBAResponse> get_prem_payment(vbasoftware_database, prem_payment_key)

Get PremPayment

Gets PremPayment

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Get PremPayment
  result = api_instance.get_prem_payment(vbasoftware_database, prem_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->get_prem_payment: #{e}"
end
```

#### Using the get_prem_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentVBAResponse>, Integer, Hash)> get_prem_payment_with_http_info(vbasoftware_database, prem_payment_key)

```ruby
begin
  # Get PremPayment
  data, status_code, headers = api_instance.get_prem_payment_with_http_info(vbasoftware_database, prem_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->get_prem_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |

### Return type

[**PremPaymentVBAResponse**](PremPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_apply_payment_category

> <PremApplyPaymentCategoryResultListVBAResponse> list_prem_apply_payment_category(vbasoftware_database, group_id, division_id, subscriber_id, invoice_level)

List Premium for Payment Application

List Invoice Detail that can have premimum applied based on payment information and applied payment category.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
invoice_level = 'invoice_level_example' # String | Invoice Level

begin
  # List Premium for Payment Application
  result = api_instance.list_prem_apply_payment_category(vbasoftware_database, group_id, division_id, subscriber_id, invoice_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->list_prem_apply_payment_category: #{e}"
end
```

#### Using the list_prem_apply_payment_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremApplyPaymentCategoryResultListVBAResponse>, Integer, Hash)> list_prem_apply_payment_category_with_http_info(vbasoftware_database, group_id, division_id, subscriber_id, invoice_level)

```ruby
begin
  # List Premium for Payment Application
  data, status_code, headers = api_instance.list_prem_apply_payment_category_with_http_info(vbasoftware_database, group_id, division_id, subscriber_id, invoice_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremApplyPaymentCategoryResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->list_prem_apply_payment_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **invoice_level** | **String** | Invoice Level |  |

### Return type

[**PremApplyPaymentCategoryResultListVBAResponse**](PremApplyPaymentCategoryResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_payment

> <PremPaymentListVBAResponse> list_prem_payment(vbasoftware_database, opts)

List PremPayment

Lists all PremPayment

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPayment
  result = api_instance.list_prem_payment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->list_prem_payment: #{e}"
end
```

#### Using the list_prem_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentListVBAResponse>, Integer, Hash)> list_prem_payment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremPayment
  data, status_code, headers = api_instance.list_prem_payment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->list_prem_payment_with_http_info: #{e}"
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

[**PremPaymentListVBAResponse**](PremPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## process_invoice_tolerance

> <BooleanVBAResponse> process_invoice_tolerance(vbasoftware_database, invoice_key, amount_due, verify_only)

Process or Check Invoice Tolerance

Given an Invoice and amount due, either check if an Invoice falls withing Tolerance range to performan a write-off, or go ahead and perform the write-off.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
amount_due = 1.2 # Float | Amount Due
verify_only = true # Boolean | Verify Only

begin
  # Process or Check Invoice Tolerance
  result = api_instance.process_invoice_tolerance(vbasoftware_database, invoice_key, amount_due, verify_only)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->process_invoice_tolerance: #{e}"
end
```

#### Using the process_invoice_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanVBAResponse>, Integer, Hash)> process_invoice_tolerance_with_http_info(vbasoftware_database, invoice_key, amount_due, verify_only)

```ruby
begin
  # Process or Check Invoice Tolerance
  data, status_code, headers = api_instance.process_invoice_tolerance_with_http_info(vbasoftware_database, invoice_key, amount_due, verify_only)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->process_invoice_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **amount_due** | **Float** | Amount Due |  |
| **verify_only** | **Boolean** | Verify Only |  |

### Return type

[**BooleanVBAResponse**](BooleanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## process_payment_file

> <VBAProcessPaymentFileResponseVBAResponse> process_payment_file(vbasoftware_database, vba_process_payment_file)

Process Payment File

Import a defined Payment File in .csv format to then have payments created and, optionally, attached to invoices.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_process_payment_file = Vba::VBAProcessPaymentFile.new # VBAProcessPaymentFile | 

begin
  # Process Payment File
  result = api_instance.process_payment_file(vbasoftware_database, vba_process_payment_file)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->process_payment_file: #{e}"
end
```

#### Using the process_payment_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessPaymentFileResponseVBAResponse>, Integer, Hash)> process_payment_file_with_http_info(vbasoftware_database, vba_process_payment_file)

```ruby
begin
  # Process Payment File
  data, status_code, headers = api_instance.process_payment_file_with_http_info(vbasoftware_database, vba_process_payment_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessPaymentFileResponseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->process_payment_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_process_payment_file** | [**VBAProcessPaymentFile**](VBAProcessPaymentFile.md) |  |  |

### Return type

[**VBAProcessPaymentFileResponseVBAResponse**](VBAProcessPaymentFileResponseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## undo_premium_payment

> undo_premium_payment(vbasoftware_database, prem_payment_key)

Undo an Applied Premium Payment

Based on the supplied PremPayment_Key, remove this payment from any invoice it is attached, and then recalc the received on each affected invoice.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Undo an Applied Premium Payment
  api_instance.undo_premium_payment(vbasoftware_database, prem_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->undo_premium_payment: #{e}"
end
```

#### Using the undo_premium_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> undo_premium_payment_with_http_info(vbasoftware_database, prem_payment_key)

```ruby
begin
  # Undo an Applied Premium Payment
  data, status_code, headers = api_instance.undo_premium_payment_with_http_info(vbasoftware_database, prem_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->undo_premium_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_prem_payment

> <MultiCodeResponseListVBAResponse> update_batch_prem_payment(vbasoftware_database, prem_payment)

Create or Update Batch PremPayment

Create or Update multiple PremPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment = [Vba::PremPayment.new({prem_payment_key: 37})] # Array<PremPayment> | 

begin
  # Create or Update Batch PremPayment
  result = api_instance.update_batch_prem_payment(vbasoftware_database, prem_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->update_batch_prem_payment: #{e}"
end
```

#### Using the update_batch_prem_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_payment_with_http_info(vbasoftware_database, prem_payment)

```ruby
begin
  # Create or Update Batch PremPayment
  data, status_code, headers = api_instance.update_batch_prem_payment_with_http_info(vbasoftware_database, prem_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->update_batch_prem_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment** | [**Array&lt;PremPayment&gt;**](PremPayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_payment

> <PremPaymentVBAResponse> update_prem_payment(vbasoftware_database, prem_payment_key, prem_payment)

Update PremPayment

Updates a specific PremPayment.

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

api_instance = Vba::PremiumPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key
prem_payment = Vba::PremPayment.new({prem_payment_key: 37}) # PremPayment | 

begin
  # Update PremPayment
  result = api_instance.update_prem_payment(vbasoftware_database, prem_payment_key, prem_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->update_prem_payment: #{e}"
end
```

#### Using the update_prem_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentVBAResponse>, Integer, Hash)> update_prem_payment_with_http_info(vbasoftware_database, prem_payment_key, prem_payment)

```ruby
begin
  # Update PremPayment
  data, status_code, headers = api_instance.update_prem_payment_with_http_info(vbasoftware_database, prem_payment_key, prem_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentsApi->update_prem_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_payment** | [**PremPayment**](PremPayment.md) |  |  |

### Return type

[**PremPaymentVBAResponse**](PremPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

