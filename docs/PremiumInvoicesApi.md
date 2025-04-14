# Vba::PremiumInvoicesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice**](PremiumInvoicesApi.md#create_prem_invoice) | **POST** /premium-invoices | Create PremInvoice |
| [**delete_prem_invoice**](PremiumInvoicesApi.md#delete_prem_invoice) | **DELETE** /premium-invoices/{invoiceKey} | Delete PremInvoice |
| [**finalize_invoice**](PremiumInvoicesApi.md#finalize_invoice) | **POST** /invoice-finalize/{invoiceKey} | Finalize Invoice |
| [**full_delete_invoice**](PremiumInvoicesApi.md#full_delete_invoice) | **POST** /invoice-full-delete/{invoiceKey} | Delete an Invoice with additional options |
| [**generate_prem_invoice_division**](PremiumInvoicesApi.md#generate_prem_invoice_division) | **POST** /generate-division-invoice | Generate Division Invoice |
| [**generate_prem_invoice_group**](PremiumInvoicesApi.md#generate_prem_invoice_group) | **POST** /generate-group-invoice | Generate Group Invoice |
| [**generate_prem_invoice_group_division**](PremiumInvoicesApi.md#generate_prem_invoice_group_division) | **POST** /generate-group-division-invoice | Generate Group and Division Invoice |
| [**generate_prem_invoice_group_division_captive**](PremiumInvoicesApi.md#generate_prem_invoice_group_division_captive) | **POST** /generate-group-division-captive-invoice | Generate GroupDivisionCaptive Invoice |
| [**generate_prem_invoice_self_admin_division**](PremiumInvoicesApi.md#generate_prem_invoice_self_admin_division) | **POST** /generate-self-admin-division-invoice | Generate Self-Admin Division Invoice |
| [**generate_prem_invoice_self_admin_group**](PremiumInvoicesApi.md#generate_prem_invoice_self_admin_group) | **POST** /generate-self-admin-group-invoice | Generate Self-Admin Group Invoice |
| [**generate_prem_invoice_subscriber**](PremiumInvoicesApi.md#generate_prem_invoice_subscriber) | **POST** /generate-subscriber-invoice | Generate Subscriber Invoice |
| [**get_prem_invoice**](PremiumInvoicesApi.md#get_prem_invoice) | **GET** /premium-invoices/{invoiceKey} | Get PremInvoice |
| [**get_prem_invoice_group_summary**](PremiumInvoicesApi.md#get_prem_invoice_group_summary) | **GET** /premium-invoices-group-summary | Get PremInvoice Group Summary |
| [**get_prem_invoice_summary**](PremiumInvoicesApi.md#get_prem_invoice_summary) | **GET** /premium-invoices/{invoiceKey}/summary | Get PremInvoice Summary |
| [**invoice_clear_applied**](PremiumInvoicesApi.md#invoice_clear_applied) | **POST** /invoice-clear-applied/{invoiceKey} | Clear Applied on Invoice |
| [**list_prem_invoice**](PremiumInvoicesApi.md#list_prem_invoice) | **GET** /premium-invoices | List PremInvoice |
| [**list_prem_invoice_generate**](PremiumInvoicesApi.md#list_prem_invoice_generate) | **GET** /list-generate-bill/{invoiceDate} | List Invoices to be Generated |
| [**list_prem_invoice_generate_self_admin**](PremiumInvoicesApi.md#list_prem_invoice_generate_self_admin) | **GET** /list-generate-self-admin/{invoiceDate} | List Self-Admin Invoices to be Generated |
| [**list_prem_invoice_slim**](PremiumInvoicesApi.md#list_prem_invoice_slim) | **GET** /premium-invoices-slim | List PremInvoiceSlim |
| [**prem_invoice_apply_payment_header_adjustment**](PremiumInvoicesApi.md#prem_invoice_apply_payment_header_adjustment) | **POST** /premium-invoice-apply-payment-adj | PremInvoice Apply Payments by Header Adjustment |
| [**prem_invoice_apply_payment_self_admin**](PremiumInvoicesApi.md#prem_invoice_apply_payment_self_admin) | **POST** /premium-invoice-apply-payment-self-admin | PremInvoice Apply Payments for Self-Admin |
| [**prem_invoice_apply_payment_subscriber**](PremiumInvoicesApi.md#prem_invoice_apply_payment_subscriber) | **POST** /premium-invoice-apply-payment-sub | PremInvoice Apply Payments by Subscriber |
| [**prem_invoice_apply_payment_subscriber_payor_id**](PremiumInvoicesApi.md#prem_invoice_apply_payment_subscriber_payor_id) | **POST** /premium-invoice-apply-payment-sub-payor_id | PremInvoice Apply Payments by Subscriber and Payor ID |
| [**prem_invoice_apply_payment_subscriber_plan_type**](PremiumInvoicesApi.md#prem_invoice_apply_payment_subscriber_plan_type) | **POST** /premium-invoice-apply-payment-sub-plan-type | PremInvoice Apply Payments by Subscriber and Plan Type |
| [**prem_invoice_auto_apply**](PremiumInvoicesApi.md#prem_invoice_auto_apply) | **POST** /premium-invoices/{invoiceKey}/auto-apply | PremInvoice Auto-Apply |
| [**prem_invoice_auto_apply_self_admin**](PremiumInvoicesApi.md#prem_invoice_auto_apply_self_admin) | **POST** /premium-invoices/{invoiceKey}/auto-apply-self-admin | PremInvoice Auto-Apply for Self-Admin |
| [**regenerate_invoice**](PremiumInvoicesApi.md#regenerate_invoice) | **POST** /invoice-regenerate/{invoiceKey} | Regenerate Invoice |
| [**reset_self_admin_invoice**](PremiumInvoicesApi.md#reset_self_admin_invoice) | **POST** /reset-self-admin-invoice/{invoiceKey} | Reset Self-Admin Invoice |
| [**update_batch_prem_invoice**](PremiumInvoicesApi.md#update_batch_prem_invoice) | **PUT** /premium-invoices-batch | Create or Update Batch PremInvoice |
| [**update_prem_invoice**](PremiumInvoicesApi.md#update_prem_invoice) | **PUT** /premium-invoices/{invoiceKey} | Update PremInvoice |


## create_prem_invoice

> <PremInvoiceVBAResponse> create_prem_invoice(vbasoftware_database, prem_invoice)

Create PremInvoice

Creates a new PremInvoice

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice = Vba::PremInvoice.new({invoice_key: 37, finalized: false}) # PremInvoice | 

begin
  # Create PremInvoice
  result = api_instance.create_prem_invoice(vbasoftware_database, prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->create_prem_invoice: #{e}"
end
```

#### Using the create_prem_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> create_prem_invoice_with_http_info(vbasoftware_database, prem_invoice)

```ruby
begin
  # Create PremInvoice
  data, status_code, headers = api_instance.create_prem_invoice_with_http_info(vbasoftware_database, prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->create_prem_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice** | [**PremInvoice**](PremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice

> delete_prem_invoice(vbasoftware_database, invoice_key)

Delete PremInvoice

Deletes an PremInvoice

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Delete PremInvoice
  api_instance.delete_prem_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->delete_prem_invoice: #{e}"
end
```

#### Using the delete_prem_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Delete PremInvoice
  data, status_code, headers = api_instance.delete_prem_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->delete_prem_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## finalize_invoice

> finalize_invoice(vbasoftware_database, invoice_key)

Finalize Invoice

This will finalize the selected Invoice.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Finalize Invoice
  api_instance.finalize_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->finalize_invoice: #{e}"
end
```

#### Using the finalize_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> finalize_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Finalize Invoice
  data, status_code, headers = api_instance.finalize_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->finalize_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## full_delete_invoice

> full_delete_invoice(vbasoftware_database, invoice_key, delete_additional_invoices, keep_manual_adjustments)

Delete an Invoice with additional options

This process will delete an invoice and remove attached records, update or delete adjustments based on selected options.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
delete_additional_invoices = true # Boolean | Delete Additional Invoices
keep_manual_adjustments = true # Boolean | Keep Manual Adjustments

begin
  # Delete an Invoice with additional options
  api_instance.full_delete_invoice(vbasoftware_database, invoice_key, delete_additional_invoices, keep_manual_adjustments)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->full_delete_invoice: #{e}"
end
```

#### Using the full_delete_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> full_delete_invoice_with_http_info(vbasoftware_database, invoice_key, delete_additional_invoices, keep_manual_adjustments)

```ruby
begin
  # Delete an Invoice with additional options
  data, status_code, headers = api_instance.full_delete_invoice_with_http_info(vbasoftware_database, invoice_key, delete_additional_invoices, keep_manual_adjustments)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->full_delete_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **delete_additional_invoices** | **Boolean** | Delete Additional Invoices |  |
| **keep_manual_adjustments** | **Boolean** | Keep Manual Adjustments |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_prem_invoice_division

> <PremInvoiceVBAResponse> generate_prem_invoice_division(vbasoftware_database, generate_prem_invoice)

Generate Division Invoice

Creates a new Premium Billing Invoice for the selected Group/Division.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Division Invoice
  result = api_instance.generate_prem_invoice_division(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_division: #{e}"
end
```

#### Using the generate_prem_invoice_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_division_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Division Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_division_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## generate_prem_invoice_group

> <PremInvoiceVBAResponse> generate_prem_invoice_group(vbasoftware_database, generate_prem_invoice)

Generate Group Invoice

Creates a new Premium Billing Invoice for the selected Group.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Group Invoice
  result = api_instance.generate_prem_invoice_group(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group: #{e}"
end
```

#### Using the generate_prem_invoice_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_group_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Group Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_group_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## generate_prem_invoice_group_division

> generate_prem_invoice_group_division(vbasoftware_database, generate_prem_invoice)

Generate Group and Division Invoice

Creates a new Premium Billing Invoice the selected Group for any Division with the Group Invoice Level AND a separate Invoice for each Division flagged as Division Invoice Level.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Group and Division Invoice
  api_instance.generate_prem_invoice_group_division(vbasoftware_database, generate_prem_invoice)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group_division: #{e}"
end
```

#### Using the generate_prem_invoice_group_division_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_prem_invoice_group_division_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Group and Division Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_group_division_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## generate_prem_invoice_group_division_captive

> <PremInvoiceVBAResponse> generate_prem_invoice_group_division_captive(vbasoftware_database, generate_prem_invoice)

Generate GroupDivisionCaptive Invoice

Creates a new Premium Billing Invoice for the selected GroupDivisionCaptive.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate GroupDivisionCaptive Invoice
  result = api_instance.generate_prem_invoice_group_division_captive(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group_division_captive: #{e}"
end
```

#### Using the generate_prem_invoice_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_group_division_captive_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate GroupDivisionCaptive Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_group_division_captive_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## generate_prem_invoice_self_admin_division

> <PremInvoiceVBAResponse> generate_prem_invoice_self_admin_division(vbasoftware_database, generate_prem_invoice)

Generate Self-Admin Division Invoice

Creates a new Self-Admin Invoice for the selected Group/Division.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Self-Admin Division Invoice
  result = api_instance.generate_prem_invoice_self_admin_division(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_self_admin_division: #{e}"
end
```

#### Using the generate_prem_invoice_self_admin_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_self_admin_division_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Self-Admin Division Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_self_admin_division_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_self_admin_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## generate_prem_invoice_self_admin_group

> <PremInvoiceVBAResponse> generate_prem_invoice_self_admin_group(vbasoftware_database, generate_prem_invoice)

Generate Self-Admin Group Invoice

Creates a new Self-Admin Invoice for the selected Group.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Self-Admin Group Invoice
  result = api_instance.generate_prem_invoice_self_admin_group(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_self_admin_group: #{e}"
end
```

#### Using the generate_prem_invoice_self_admin_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_self_admin_group_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Self-Admin Group Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_self_admin_group_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_self_admin_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## generate_prem_invoice_subscriber

> <PremInvoiceVBAResponse> generate_prem_invoice_subscriber(vbasoftware_database, generate_prem_invoice)

Generate Subscriber Invoice

Creates a new Premium Billing Invoice for the selected Subscriber.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Subscriber Invoice
  result = api_instance.generate_prem_invoice_subscriber(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_subscriber: #{e}"
end
```

#### Using the generate_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> generate_prem_invoice_subscriber_with_http_info(vbasoftware_database, generate_prem_invoice)

```ruby
begin
  # Generate Subscriber Invoice
  data, status_code, headers = api_instance.generate_prem_invoice_subscriber_with_http_info(vbasoftware_database, generate_prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->generate_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **generate_prem_invoice** | [**GeneratePremInvoice**](GeneratePremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_prem_invoice

> <PremInvoiceVBAResponse> get_prem_invoice(vbasoftware_database, invoice_key)

Get PremInvoice

Gets PremInvoice

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Get PremInvoice
  result = api_instance.get_prem_invoice(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice: #{e}"
end
```

#### Using the get_prem_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> get_prem_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Get PremInvoice
  data, status_code, headers = api_instance.get_prem_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_prem_invoice_group_summary

> <PremInvoiceGroupSummaryVBAResponse> get_prem_invoice_group_summary(vbasoftware_database, group_id, invoice_year)

Get PremInvoice Group Summary

Gets PremInvoice Summary for the specified group id and invoice year.  First PremInvoiceSelfAdmin table is checked for the group id, if found the values are aggregated from come from PremInvoiceSelfAdmin; if the group is not found in PremInvoiceSelfAdmin, the PremInvoiceSubscriber table is checked for this group.  If not present in either table, an error is returned.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
invoice_year = 56 # Integer | Invoice Year

begin
  # Get PremInvoice Group Summary
  result = api_instance.get_prem_invoice_group_summary(vbasoftware_database, group_id, invoice_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice_group_summary: #{e}"
end
```

#### Using the get_prem_invoice_group_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceGroupSummaryVBAResponse>, Integer, Hash)> get_prem_invoice_group_summary_with_http_info(vbasoftware_database, group_id, invoice_year)

```ruby
begin
  # Get PremInvoice Group Summary
  data, status_code, headers = api_instance.get_prem_invoice_group_summary_with_http_info(vbasoftware_database, group_id, invoice_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceGroupSummaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice_group_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **invoice_year** | **Integer** | Invoice Year |  |

### Return type

[**PremInvoiceGroupSummaryVBAResponse**](PremInvoiceGroupSummaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_prem_invoice_summary

> <PremInvoiceGroupSummaryVBAResponse> get_prem_invoice_summary(vbasoftware_database, invoice_key)

Get PremInvoice Summary

Gets PremInvoice Summary for the specified invoice.  First PremInvoiceSelfAdmin table is checked for the invoice key, if found the values are aggregated from come from PremInvoiceSelfAdmin; if the invoice key is not found in PremInvoiceSelfAdmin, the PremInvoiceSubscriber table is checked.  If not present in either table, an error is returned.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Get PremInvoice Summary
  result = api_instance.get_prem_invoice_summary(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice_summary: #{e}"
end
```

#### Using the get_prem_invoice_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceGroupSummaryVBAResponse>, Integer, Hash)> get_prem_invoice_summary_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Get PremInvoice Summary
  data, status_code, headers = api_instance.get_prem_invoice_summary_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceGroupSummaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->get_prem_invoice_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**PremInvoiceGroupSummaryVBAResponse**](PremInvoiceGroupSummaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## invoice_clear_applied

> invoice_clear_applied(vbasoftware_database, invoice_key)

Clear Applied on Invoice

Clear Applied data on invoice.  Delete received records.  Update Received Amounts.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Clear Applied on Invoice
  api_instance.invoice_clear_applied(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->invoice_clear_applied: #{e}"
end
```

#### Using the invoice_clear_applied_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_clear_applied_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Clear Applied on Invoice
  data, status_code, headers = api_instance.invoice_clear_applied_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->invoice_clear_applied_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_prem_invoice

> <PremInvoiceListVBAResponse> list_prem_invoice(vbasoftware_database, opts)

List PremInvoice

Lists all PremInvoice.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoice
  result = api_instance.list_prem_invoice(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice: #{e}"
end
```

#### Using the list_prem_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceListVBAResponse>, Integer, Hash)> list_prem_invoice_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremInvoice
  data, status_code, headers = api_instance.list_prem_invoice_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_with_http_info: #{e}"
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

[**PremInvoiceListVBAResponse**](PremInvoiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_generate

> <PremInvoiceGenerateInvListListVBAResponse> list_prem_invoice_generate(vbasoftware_database, invoice_date)

List Invoices to be Generated

List of Invoices to be generated based on the selected Invoice Date.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Invoice Date

begin
  # List Invoices to be Generated
  result = api_instance.list_prem_invoice_generate(vbasoftware_database, invoice_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_generate: #{e}"
end
```

#### Using the list_prem_invoice_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceGenerateInvListListVBAResponse>, Integer, Hash)> list_prem_invoice_generate_with_http_info(vbasoftware_database, invoice_date)

```ruby
begin
  # List Invoices to be Generated
  data, status_code, headers = api_instance.list_prem_invoice_generate_with_http_info(vbasoftware_database, invoice_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceGenerateInvListListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_date** | **Time** | Invoice Date |  |

### Return type

[**PremInvoiceGenerateInvListListVBAResponse**](PremInvoiceGenerateInvListListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_generate_self_admin

> <PremInvoiceGenerateSelfAdminInvListListVBAResponse> list_prem_invoice_generate_self_admin(vbasoftware_database, invoice_date)

List Self-Admin Invoices to be Generated

List of Self-Admin Invoices to be generated based on the selected Invoice Date.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Invoice Date

begin
  # List Self-Admin Invoices to be Generated
  result = api_instance.list_prem_invoice_generate_self_admin(vbasoftware_database, invoice_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_generate_self_admin: #{e}"
end
```

#### Using the list_prem_invoice_generate_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceGenerateSelfAdminInvListListVBAResponse>, Integer, Hash)> list_prem_invoice_generate_self_admin_with_http_info(vbasoftware_database, invoice_date)

```ruby
begin
  # List Self-Admin Invoices to be Generated
  data, status_code, headers = api_instance.list_prem_invoice_generate_self_admin_with_http_info(vbasoftware_database, invoice_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceGenerateSelfAdminInvListListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_generate_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_date** | **Time** | Invoice Date |  |

### Return type

[**PremInvoiceGenerateSelfAdminInvListListVBAResponse**](PremInvoiceGenerateSelfAdminInvListListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_slim

> <PremInvoiceSlimListVBAResponse> list_prem_invoice_slim(vbasoftware_database, opts)

List PremInvoiceSlim

Gets a 'Slim' list of PremInvoices.  The Slim model has a limited subset of fields intended for quick loading.  You may provide the GroupID and/or Invoice Year to filter the list to include only those Invoices in which the Group/Invoice Year match an invoice with the same Group/Invoice Year wihtin the PremInvoiceSubscriber and PremInvoiceSelfAdmin tables.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example', # String | Group ID
  invoice_year: 56, # Integer | Invoice Year
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSlim
  result = api_instance.list_prem_invoice_slim(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_slim: #{e}"
end
```

#### Using the list_prem_invoice_slim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSlimListVBAResponse>, Integer, Hash)> list_prem_invoice_slim_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremInvoiceSlim
  data, status_code, headers = api_instance.list_prem_invoice_slim_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSlimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->list_prem_invoice_slim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |
| **invoice_year** | **Integer** | Invoice Year | [optional][default to -1] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceSlimListVBAResponse**](PremInvoiceSlimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## prem_invoice_apply_payment_header_adjustment

> prem_invoice_apply_payment_header_adjustment(vbasoftware_database, prem_invoice_apply_payment)

PremInvoice Apply Payments by Header Adjustment

PremInvoice Apply Payments by Header Adjustment

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Header Adjustment
  api_instance.prem_invoice_apply_payment_header_adjustment(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_header_adjustment: #{e}"
end
```

#### Using the prem_invoice_apply_payment_header_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_apply_payment_header_adjustment_with_http_info(vbasoftware_database, prem_invoice_apply_payment)

```ruby
begin
  # PremInvoice Apply Payments by Header Adjustment
  data, status_code, headers = api_instance.prem_invoice_apply_payment_header_adjustment_with_http_info(vbasoftware_database, prem_invoice_apply_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_header_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_apply_payment** | [**PremInvoiceApplyPayment**](PremInvoiceApplyPayment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## prem_invoice_apply_payment_self_admin

> prem_invoice_apply_payment_self_admin(vbasoftware_database, prem_invoice_apply_payment)

PremInvoice Apply Payments for Self-Admin

PremInvoice Apply Payments for Self-Admin

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments for Self-Admin
  api_instance.prem_invoice_apply_payment_self_admin(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_self_admin: #{e}"
end
```

#### Using the prem_invoice_apply_payment_self_admin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_apply_payment_self_admin_with_http_info(vbasoftware_database, prem_invoice_apply_payment)

```ruby
begin
  # PremInvoice Apply Payments for Self-Admin
  data, status_code, headers = api_instance.prem_invoice_apply_payment_self_admin_with_http_info(vbasoftware_database, prem_invoice_apply_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_apply_payment** | [**PremInvoiceApplyPayment**](PremInvoiceApplyPayment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## prem_invoice_apply_payment_subscriber

> prem_invoice_apply_payment_subscriber(vbasoftware_database, prem_invoice_apply_payment)

PremInvoice Apply Payments by Subscriber

PremInvoice Apply Payments by Subscriber

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber
  api_instance.prem_invoice_apply_payment_subscriber(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber: #{e}"
end
```

#### Using the prem_invoice_apply_payment_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_apply_payment_subscriber_with_http_info(vbasoftware_database, prem_invoice_apply_payment)

```ruby
begin
  # PremInvoice Apply Payments by Subscriber
  data, status_code, headers = api_instance.prem_invoice_apply_payment_subscriber_with_http_info(vbasoftware_database, prem_invoice_apply_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_apply_payment** | [**PremInvoiceApplyPayment**](PremInvoiceApplyPayment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## prem_invoice_apply_payment_subscriber_payor_id

> prem_invoice_apply_payment_subscriber_payor_id(vbasoftware_database, prem_invoice_apply_payment)

PremInvoice Apply Payments by Subscriber and Payor ID

PremInvoice Apply Payments by Subscriber and Payor ID

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber and Payor ID
  api_instance.prem_invoice_apply_payment_subscriber_payor_id(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber_payor_id: #{e}"
end
```

#### Using the prem_invoice_apply_payment_subscriber_payor_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_apply_payment_subscriber_payor_id_with_http_info(vbasoftware_database, prem_invoice_apply_payment)

```ruby
begin
  # PremInvoice Apply Payments by Subscriber and Payor ID
  data, status_code, headers = api_instance.prem_invoice_apply_payment_subscriber_payor_id_with_http_info(vbasoftware_database, prem_invoice_apply_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber_payor_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_apply_payment** | [**PremInvoiceApplyPayment**](PremInvoiceApplyPayment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## prem_invoice_apply_payment_subscriber_plan_type

> prem_invoice_apply_payment_subscriber_plan_type(vbasoftware_database, prem_invoice_apply_payment)

PremInvoice Apply Payments by Subscriber and Plan Type

PremInvoice Apply Payments by Subscriber and Plan Type

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber and Plan Type
  api_instance.prem_invoice_apply_payment_subscriber_plan_type(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber_plan_type: #{e}"
end
```

#### Using the prem_invoice_apply_payment_subscriber_plan_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_apply_payment_subscriber_plan_type_with_http_info(vbasoftware_database, prem_invoice_apply_payment)

```ruby
begin
  # PremInvoice Apply Payments by Subscriber and Plan Type
  data, status_code, headers = api_instance.prem_invoice_apply_payment_subscriber_plan_type_with_http_info(vbasoftware_database, prem_invoice_apply_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_apply_payment_subscriber_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_apply_payment** | [**PremInvoiceApplyPayment**](PremInvoiceApplyPayment.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## prem_invoice_auto_apply

> prem_invoice_auto_apply(vbasoftware_database, invoice_key)

PremInvoice Auto-Apply

Auto-Apply all payements to the selected invoice.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # PremInvoice Auto-Apply
  api_instance.prem_invoice_auto_apply(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_auto_apply: #{e}"
end
```

#### Using the prem_invoice_auto_apply_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_auto_apply_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # PremInvoice Auto-Apply
  data, status_code, headers = api_instance.prem_invoice_auto_apply_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_auto_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## prem_invoice_auto_apply_self_admin

> prem_invoice_auto_apply_self_admin(vbasoftware_database, invoice_key)

PremInvoice Auto-Apply for Self-Admin

Auto-Apply all payements to the selected Self-Admin invoice.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # PremInvoice Auto-Apply for Self-Admin
  api_instance.prem_invoice_auto_apply_self_admin(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_auto_apply_self_admin: #{e}"
end
```

#### Using the prem_invoice_auto_apply_self_admin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> prem_invoice_auto_apply_self_admin_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # PremInvoice Auto-Apply for Self-Admin
  data, status_code, headers = api_instance.prem_invoice_auto_apply_self_admin_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->prem_invoice_auto_apply_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## regenerate_invoice

> regenerate_invoice(vbasoftware_database, invoice_key)

Regenerate Invoice

This will delete the invoice, remove attached adjustments, payments, etc. Then Regenerate the Invoice using the same Invoice Key.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Regenerate Invoice
  api_instance.regenerate_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->regenerate_invoice: #{e}"
end
```

#### Using the regenerate_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> regenerate_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Regenerate Invoice
  data, status_code, headers = api_instance.regenerate_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->regenerate_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## reset_self_admin_invoice

> reset_self_admin_invoice(vbasoftware_database, invoice_key)

Reset Self-Admin Invoice

Reset a Self-Admin Invoice removing received amounts, adjustments applied, etc.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Reset Self-Admin Invoice
  api_instance.reset_self_admin_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->reset_self_admin_invoice: #{e}"
end
```

#### Using the reset_self_admin_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_self_admin_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Reset Self-Admin Invoice
  data, status_code, headers = api_instance.reset_self_admin_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->reset_self_admin_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_prem_invoice

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice(vbasoftware_database, prem_invoice)

Create or Update Batch PremInvoice

Create or Update multiple PremInvoice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice = [Vba::PremInvoice.new({invoice_key: 37, finalized: false})] # Array<PremInvoice> | 

begin
  # Create or Update Batch PremInvoice
  result = api_instance.update_batch_prem_invoice(vbasoftware_database, prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->update_batch_prem_invoice: #{e}"
end
```

#### Using the update_batch_prem_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_with_http_info(vbasoftware_database, prem_invoice)

```ruby
begin
  # Create or Update Batch PremInvoice
  data, status_code, headers = api_instance.update_batch_prem_invoice_with_http_info(vbasoftware_database, prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->update_batch_prem_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice** | [**Array&lt;PremInvoice&gt;**](PremInvoice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice

> <PremInvoiceVBAResponse> update_prem_invoice(vbasoftware_database, invoice_key, prem_invoice)

Update PremInvoice

Updates a specific PremInvoice.

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

api_instance = Vba::PremiumInvoicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice = Vba::PremInvoice.new({invoice_key: 37, finalized: false}) # PremInvoice | 

begin
  # Update PremInvoice
  result = api_instance.update_prem_invoice(vbasoftware_database, invoice_key, prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->update_prem_invoice: #{e}"
end
```

#### Using the update_prem_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceVBAResponse>, Integer, Hash)> update_prem_invoice_with_http_info(vbasoftware_database, invoice_key, prem_invoice)

```ruby
begin
  # Update PremInvoice
  data, status_code, headers = api_instance.update_prem_invoice_with_http_info(vbasoftware_database, invoice_key, prem_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesApi->update_prem_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice** | [**PremInvoice**](PremInvoice.md) |  |  |

### Return type

[**PremInvoiceVBAResponse**](PremInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

