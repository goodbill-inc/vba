# Vba::AdvBillingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_prem_rate_from_template**](AdvBillingApi.md#add_prem_rate_from_template) | **POST** /premium-rates/{premRateKey}/add-from-template | Add Rate from Template |
| [**billing_apply_payment_category**](AdvBillingApi.md#billing_apply_payment_category) | **POST** /billing-apply-payment-category | Billing Apply Payment Category |
| [**billing_apply_payment_on_account_category**](AdvBillingApi.md#billing_apply_payment_on_account_category) | **POST** /billing-apply-payment-on-account-category | Billing Apply Payment On Account Category |
| [**billing_auto_apply**](AdvBillingApi.md#billing_auto_apply) | **POST** /billing-auto-apply | Billing Auto-Apply |
| [**billing_rate_change**](AdvBillingApi.md#billing_rate_change) | **POST** /billing-rate-change | Change Premium Rates |
| [**billing_rate_copy**](AdvBillingApi.md#billing_rate_copy) | **POST** /billing-rate-copy | Copy Premium Rates |
| [**billing_refund**](AdvBillingApi.md#billing_refund) | **POST** /billing-refund | Billing Refund |
| [**finalize_invoice**](AdvBillingApi.md#finalize_invoice) | **POST** /invoice-finalize/{invoiceKey} | Finalize Invoice |
| [**full_delete_invoice**](AdvBillingApi.md#full_delete_invoice) | **POST** /invoice-full-delete/{invoiceKey} | Delete an Invoice with additional options |
| [**generate_prem_distribution**](AdvBillingApi.md#generate_prem_distribution) | **POST** /premium-distributions-generate/{groupId}/{asOfDate} | Create Premium Distributions |
| [**generate_prem_distribution_check**](AdvBillingApi.md#generate_prem_distribution_check) | **POST** /premium-distributions-generate-check/{payeeId}/{payorId}/{accountKey}/{checkNumber} | Create Premium Distributions Checks |
| [**generate_prem_invoice_division**](AdvBillingApi.md#generate_prem_invoice_division) | **POST** /generate-division-invoice | Generate Division Invoice |
| [**generate_prem_invoice_group**](AdvBillingApi.md#generate_prem_invoice_group) | **POST** /generate-group-invoice | Generate Group Invoice |
| [**generate_prem_invoice_group_division**](AdvBillingApi.md#generate_prem_invoice_group_division) | **POST** /generate-group-division-invoice | Generate Group and Division Invoice |
| [**generate_prem_invoice_group_division_captive**](AdvBillingApi.md#generate_prem_invoice_group_division_captive) | **POST** /generate-group-division-captive-invoice | Generate GroupDivisionCaptive Invoice |
| [**generate_prem_invoice_self_admin_division**](AdvBillingApi.md#generate_prem_invoice_self_admin_division) | **POST** /generate-self-admin-division-invoice | Generate Self-Admin Division Invoice |
| [**generate_prem_invoice_self_admin_group**](AdvBillingApi.md#generate_prem_invoice_self_admin_group) | **POST** /generate-self-admin-group-invoice | Generate Self-Admin Group Invoice |
| [**generate_prem_invoice_subscriber**](AdvBillingApi.md#generate_prem_invoice_subscriber) | **POST** /generate-subscriber-invoice | Generate Subscriber Invoice |
| [**invoice_clear_applied**](AdvBillingApi.md#invoice_clear_applied) | **POST** /invoice-clear-applied/{invoiceKey} | Clear Applied on Invoice |
| [**list_disenroll_adjustment**](AdvBillingApi.md#list_disenroll_adjustment) | **GET** /subscribers/{subscriberID}/as-of-date/{asOfDate}/disenroll-adjustments | List Billing Adjustments for Disenroll |
| [**list_prem_apply_payment_category**](AdvBillingApi.md#list_prem_apply_payment_category) | **GET** /list-apply-payment-category | List Premium for Payment Application |
| [**list_prem_invoice_generate**](AdvBillingApi.md#list_prem_invoice_generate) | **GET** /list-generate-bill/{invoiceDate} | List Invoices to be Generated |
| [**list_prem_invoice_generate_self_admin**](AdvBillingApi.md#list_prem_invoice_generate_self_admin) | **GET** /list-generate-self-admin/{invoiceDate} | List Self-Admin Invoices to be Generated |
| [**list_retro_adjustment**](AdvBillingApi.md#list_retro_adjustment) | **GET** /list-retro-adjustment | List Retro Adjustments |
| [**list_subscriber_disenroll_adjustment**](AdvBillingApi.md#list_subscriber_disenroll_adjustment) | **GET** /list-subscriber-disenroll-adjustment | List Subscriber Disenroll Adjustments |
| [**prem_invoice_apply_payment_header_adjustment**](AdvBillingApi.md#prem_invoice_apply_payment_header_adjustment) | **POST** /premium-invoice-apply-payment-adj | PremInvoice Apply Payments by Header Adjustment |
| [**prem_invoice_apply_payment_self_admin**](AdvBillingApi.md#prem_invoice_apply_payment_self_admin) | **POST** /premium-invoice-apply-payment-self-admin | PremInvoice Apply Payments for Self-Admin |
| [**prem_invoice_apply_payment_subscriber**](AdvBillingApi.md#prem_invoice_apply_payment_subscriber) | **POST** /premium-invoice-apply-payment-sub | PremInvoice Apply Payments by Subscriber |
| [**prem_invoice_apply_payment_subscriber_payor_id**](AdvBillingApi.md#prem_invoice_apply_payment_subscriber_payor_id) | **POST** /premium-invoice-apply-payment-sub-payor_id | PremInvoice Apply Payments by Subscriber and Payor ID |
| [**prem_invoice_apply_payment_subscriber_plan_type**](AdvBillingApi.md#prem_invoice_apply_payment_subscriber_plan_type) | **POST** /premium-invoice-apply-payment-sub-plan-type | PremInvoice Apply Payments by Subscriber and Plan Type |
| [**prem_invoice_auto_apply**](AdvBillingApi.md#prem_invoice_auto_apply) | **POST** /premium-invoices/{invoiceKey}/auto-apply | PremInvoice Auto-Apply |
| [**prem_invoice_auto_apply_self_admin**](AdvBillingApi.md#prem_invoice_auto_apply_self_admin) | **POST** /premium-invoices/{invoiceKey}/auto-apply-self-admin | PremInvoice Auto-Apply for Self-Admin |
| [**process_invoice_tolerance**](AdvBillingApi.md#process_invoice_tolerance) | **POST** /process-invoice-tolerance/{invoiceKey} | Process or Check Invoice Tolerance |
| [**process_payment_file**](AdvBillingApi.md#process_payment_file) | **POST** /process-payment-file | Process Payment File |
| [**regenerate_invoice**](AdvBillingApi.md#regenerate_invoice) | **POST** /invoice-regenerate/{invoiceKey} | Regenerate Invoice |
| [**report_series_process_generate_invoice**](AdvBillingApi.md#report_series_process_generate_invoice) | **POST** /report-series-process-generate-invoice/{invoiceKey} | Generate Invoice Process Automation |
| [**reset_self_admin_invoice**](AdvBillingApi.md#reset_self_admin_invoice) | **POST** /reset-self-admin-invoice/{invoiceKey} | Reset Self-Admin Invoice |
| [**undo_premium_payment**](AdvBillingApi.md#undo_premium_payment) | **POST** /undo-premium-payment/{premPaymentKey} | Undo an Applied Premium Payment |


## add_prem_rate_from_template

> <PremRateVBAResponse> add_prem_rate_from_template(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)

Add Rate from Template

Create a new Premium Rate based on the selected Template Rate.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
billing_add_rate_from_template_config = Vba::BillingAddRateFromTemplateConfig.new # BillingAddRateFromTemplateConfig | 

begin
  # Add Rate from Template
  result = api_instance.add_prem_rate_from_template(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->add_prem_rate_from_template: #{e}"
end
```

#### Using the add_prem_rate_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateVBAResponse>, Integer, Hash)> add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)

```ruby
begin
  # Add Rate from Template
  data, status_code, headers = api_instance.add_prem_rate_from_template_with_http_info(vbasoftware_database, prem_rate_key, billing_add_rate_from_template_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->add_prem_rate_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **billing_add_rate_from_template_config** | [**BillingAddRateFromTemplateConfig**](BillingAddRateFromTemplateConfig.md) |  |  |

### Return type

[**PremRateVBAResponse**](PremRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## billing_apply_payment_category

> billing_apply_payment_category(vbasoftware_database, billing_apply_payment_config)

Billing Apply Payment Category

Using the ListPremApplyPaymentCategory Operation to get a list of payments and additional configuration, have On Accout and PremPayment information updated.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_apply_payment_config = Vba::BillingApplyPaymentConfig.new # BillingApplyPaymentConfig | 

begin
  # Billing Apply Payment Category
  api_instance.billing_apply_payment_category(vbasoftware_database, billing_apply_payment_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_apply_payment_category: #{e}"
end
```

#### Using the billing_apply_payment_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_apply_payment_category_with_http_info(vbasoftware_database, billing_apply_payment_config)

```ruby
begin
  # Billing Apply Payment Category
  data, status_code, headers = api_instance.billing_apply_payment_category_with_http_info(vbasoftware_database, billing_apply_payment_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_apply_payment_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_apply_payment_config** | [**BillingApplyPaymentConfig**](BillingApplyPaymentConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_apply_payment_on_account_category

> billing_apply_payment_on_account_category(vbasoftware_database, billing_apply_payment_on_account_config)

Billing Apply Payment On Account Category

Using the PremPaymentOnAccount List as a basis for configuration, have On Accout and PremPayment information updated.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_apply_payment_on_account_config = Vba::BillingApplyPaymentOnAccountConfig.new # BillingApplyPaymentOnAccountConfig | 

begin
  # Billing Apply Payment On Account Category
  api_instance.billing_apply_payment_on_account_category(vbasoftware_database, billing_apply_payment_on_account_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_apply_payment_on_account_category: #{e}"
end
```

#### Using the billing_apply_payment_on_account_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_apply_payment_on_account_category_with_http_info(vbasoftware_database, billing_apply_payment_on_account_config)

```ruby
begin
  # Billing Apply Payment On Account Category
  data, status_code, headers = api_instance.billing_apply_payment_on_account_category_with_http_info(vbasoftware_database, billing_apply_payment_on_account_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_apply_payment_on_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_apply_payment_on_account_config** | [**BillingApplyPaymentOnAccountConfig**](BillingApplyPaymentOnAccountConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_auto_apply

> billing_auto_apply(vbasoftware_database, billing_auto_apply_config)

Billing Auto-Apply

Auto Apply Payment based on specified configuration options.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_auto_apply_config = Vba::BillingAutoApplyConfig.new # BillingAutoApplyConfig | 

begin
  # Billing Auto-Apply
  api_instance.billing_auto_apply(vbasoftware_database, billing_auto_apply_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_auto_apply: #{e}"
end
```

#### Using the billing_auto_apply_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_auto_apply_with_http_info(vbasoftware_database, billing_auto_apply_config)

```ruby
begin
  # Billing Auto-Apply
  data, status_code, headers = api_instance.billing_auto_apply_with_http_info(vbasoftware_database, billing_auto_apply_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_auto_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_auto_apply_config** | [**BillingAutoApplyConfig**](BillingAutoApplyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_rate_change

> billing_rate_change(vbasoftware_database, billing_rate_modify_config)

Change Premium Rates

Take a list of Rates and a set of configuration options and change those rates.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_rate_modify_config = Vba::BillingRateModifyConfig.new # BillingRateModifyConfig | 

begin
  # Change Premium Rates
  api_instance.billing_rate_change(vbasoftware_database, billing_rate_modify_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_rate_change: #{e}"
end
```

#### Using the billing_rate_change_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config)

```ruby
begin
  # Change Premium Rates
  data, status_code, headers = api_instance.billing_rate_change_with_http_info(vbasoftware_database, billing_rate_modify_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_rate_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_rate_modify_config** | [**BillingRateModifyConfig**](BillingRateModifyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_rate_copy

> billing_rate_copy(vbasoftware_database, billing_rate_modify_config)

Copy Premium Rates

Take a list of Rates and a set of configuration options and copy those rates.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_rate_modify_config = Vba::BillingRateModifyConfig.new # BillingRateModifyConfig | 

begin
  # Copy Premium Rates
  api_instance.billing_rate_copy(vbasoftware_database, billing_rate_modify_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_rate_copy: #{e}"
end
```

#### Using the billing_rate_copy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config)

```ruby
begin
  # Copy Premium Rates
  data, status_code, headers = api_instance.billing_rate_copy_with_http_info(vbasoftware_database, billing_rate_modify_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_rate_copy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_rate_modify_config** | [**BillingRateModifyConfig**](BillingRateModifyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## billing_refund

> billing_refund(vbasoftware_database, billing_refund)

Billing Refund

Generate the necessary Billing adjustments for an Invoice refund and create a Distribution if needed.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_refund = Vba::BillingRefund.new # BillingRefund | 

begin
  # Billing Refund
  api_instance.billing_refund(vbasoftware_database, billing_refund)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_refund: #{e}"
end
```

#### Using the billing_refund_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> billing_refund_with_http_info(vbasoftware_database, billing_refund)

```ruby
begin
  # Billing Refund
  data, status_code, headers = api_instance.billing_refund_with_http_info(vbasoftware_database, billing_refund)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->billing_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_refund** | [**BillingRefund**](BillingRefund.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Finalize Invoice
  api_instance.finalize_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->finalize_invoice: #{e}"
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
  puts "Error when calling AdvBillingApi->finalize_invoice_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
delete_additional_invoices = true # Boolean | Delete Additional Invoices
keep_manual_adjustments = true # Boolean | Keep Manual Adjustments

begin
  # Delete an Invoice with additional options
  api_instance.full_delete_invoice(vbasoftware_database, invoice_key, delete_additional_invoices, keep_manual_adjustments)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->full_delete_invoice: #{e}"
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
  puts "Error when calling AdvBillingApi->full_delete_invoice_with_http_info: #{e}"
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


## generate_prem_distribution

> generate_prem_distribution(vbasoftware_database, group_id, as_of_date)

Create Premium Distributions

Generate the Premium Distributions for the selected Group and As of Date.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # Create Premium Distributions
  api_instance.generate_prem_distribution(vbasoftware_database, group_id, as_of_date)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_distribution: #{e}"
end
```

#### Using the generate_prem_distribution_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_prem_distribution_with_http_info(vbasoftware_database, group_id, as_of_date)

```ruby
begin
  # Create Premium Distributions
  data, status_code, headers = api_instance.generate_prem_distribution_with_http_info(vbasoftware_database, group_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_distribution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_prem_distribution_check

> generate_prem_distribution_check(vbasoftware_database, payee_id, payor_id, account_key, check_number)

Create Premium Distributions Checks

Generate the Premium Distribution Checks for the selected Payor and Payee.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payor_id = 'payor_id_example' # String | Payor ID
account_key = 56 # Integer | Account Key
check_number = 'check_number_example' # String | Check Number

begin
  # Create Premium Distributions Checks
  api_instance.generate_prem_distribution_check(vbasoftware_database, payee_id, payor_id, account_key, check_number)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_distribution_check: #{e}"
end
```

#### Using the generate_prem_distribution_check_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_prem_distribution_check_with_http_info(vbasoftware_database, payee_id, payor_id, account_key, check_number)

```ruby
begin
  # Create Premium Distributions Checks
  data, status_code, headers = api_instance.generate_prem_distribution_check_with_http_info(vbasoftware_database, payee_id, payor_id, account_key, check_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_distribution_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payor_id** | **String** | Payor ID |  |
| **account_key** | **Integer** | Account Key |  |
| **check_number** | **String** | Check Number |  |

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Division Invoice
  result = api_instance.generate_prem_invoice_division(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_division: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_division_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Group Invoice
  result = api_instance.generate_prem_invoice_group(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Group and Division Invoice
  api_instance.generate_prem_invoice_group_division(vbasoftware_database, generate_prem_invoice)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group_division: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group_division_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate GroupDivisionCaptive Invoice
  result = api_instance.generate_prem_invoice_group_division_captive(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group_division_captive: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_group_division_captive_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Self-Admin Division Invoice
  result = api_instance.generate_prem_invoice_self_admin_division(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_self_admin_division: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_self_admin_division_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Self-Admin Group Invoice
  result = api_instance.generate_prem_invoice_self_admin_group(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_self_admin_group: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_self_admin_group_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
generate_prem_invoice = Vba::GeneratePremInvoice.new # GeneratePremInvoice | 

begin
  # Generate Subscriber Invoice
  result = api_instance.generate_prem_invoice_subscriber(vbasoftware_database, generate_prem_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->generate_prem_invoice_subscriber: #{e}"
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
  puts "Error when calling AdvBillingApi->generate_prem_invoice_subscriber_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Clear Applied on Invoice
  api_instance.invoice_clear_applied(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->invoice_clear_applied: #{e}"
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
  puts "Error when calling AdvBillingApi->invoice_clear_applied_with_http_info: #{e}"
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


## list_disenroll_adjustment

> <EnrollmentDisenrollAdjustmentListVBAResponse> list_disenroll_adjustment(vbasoftware_database, subscriber_id, as_of_date)

List Billing Adjustments for Disenroll

List of Billing Adjustments that would be created based on a Subscriber being disenrolled on the As of Date.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List Billing Adjustments for Disenroll
  result = api_instance.list_disenroll_adjustment(vbasoftware_database, subscriber_id, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_disenroll_adjustment: #{e}"
end
```

#### Using the list_disenroll_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentDisenrollAdjustmentListVBAResponse>, Integer, Hash)> list_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, as_of_date)

```ruby
begin
  # List Billing Adjustments for Disenroll
  data, status_code, headers = api_instance.list_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentDisenrollAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_disenroll_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

[**EnrollmentDisenrollAdjustmentListVBAResponse**](EnrollmentDisenrollAdjustmentListVBAResponse.md)

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

api_instance = Vba::AdvBillingApi.new
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
  puts "Error when calling AdvBillingApi->list_prem_apply_payment_category: #{e}"
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
  puts "Error when calling AdvBillingApi->list_prem_apply_payment_category_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Invoice Date

begin
  # List Invoices to be Generated
  result = api_instance.list_prem_invoice_generate(vbasoftware_database, invoice_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_prem_invoice_generate: #{e}"
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
  puts "Error when calling AdvBillingApi->list_prem_invoice_generate_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Invoice Date

begin
  # List Self-Admin Invoices to be Generated
  result = api_instance.list_prem_invoice_generate_self_admin(vbasoftware_database, invoice_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_prem_invoice_generate_self_admin: #{e}"
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
  puts "Error when calling AdvBillingApi->list_prem_invoice_generate_self_admin_with_http_info: #{e}"
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


## list_retro_adjustment

> <GetTempRetroPremInvoiceAdjustmentsResultListVBAResponse> list_retro_adjustment(vbasoftware_database, group_id, division_id, subscriber_id, eff_date)

List Retro Adjustments

List Retro Adjustments based on a provided Group, Division, Subscriber, and Eff Date.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
eff_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # List Retro Adjustments
  result = api_instance.list_retro_adjustment(vbasoftware_database, group_id, division_id, subscriber_id, eff_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_retro_adjustment: #{e}"
end
```

#### Using the list_retro_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTempRetroPremInvoiceAdjustmentsResultListVBAResponse>, Integer, Hash)> list_retro_adjustment_with_http_info(vbasoftware_database, group_id, division_id, subscriber_id, eff_date)

```ruby
begin
  # List Retro Adjustments
  data, status_code, headers = api_instance.list_retro_adjustment_with_http_info(vbasoftware_database, group_id, division_id, subscriber_id, eff_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTempRetroPremInvoiceAdjustmentsResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_retro_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **eff_date** | **Time** | Effective Date |  |

### Return type

[**GetTempRetroPremInvoiceAdjustmentsResultListVBAResponse**](GetTempRetroPremInvoiceAdjustmentsResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_disenroll_adjustment

> <GetSubscriberDisenrollAdjustmentsResultListVBAResponse> list_subscriber_disenroll_adjustment(vbasoftware_database, subscriber_id, eff_date, show_closed)

List Subscriber Disenroll Adjustments

List Disenroll Adjustments based on a provided Subscriber ID and As of Date (Disenroll Date).

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
eff_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
show_closed = true # Boolean | Show Closed

begin
  # List Subscriber Disenroll Adjustments
  result = api_instance.list_subscriber_disenroll_adjustment(vbasoftware_database, subscriber_id, eff_date, show_closed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_subscriber_disenroll_adjustment: #{e}"
end
```

#### Using the list_subscriber_disenroll_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSubscriberDisenrollAdjustmentsResultListVBAResponse>, Integer, Hash)> list_subscriber_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, eff_date, show_closed)

```ruby
begin
  # List Subscriber Disenroll Adjustments
  data, status_code, headers = api_instance.list_subscriber_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, eff_date, show_closed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSubscriberDisenrollAdjustmentsResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->list_subscriber_disenroll_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **eff_date** | **Time** | Effective Date |  |
| **show_closed** | **Boolean** | Show Closed |  |

### Return type

[**GetSubscriberDisenrollAdjustmentsResultListVBAResponse**](GetSubscriberDisenrollAdjustmentsResultListVBAResponse.md)

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Header Adjustment
  api_instance.prem_invoice_apply_payment_header_adjustment(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_header_adjustment: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_header_adjustment_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments for Self-Admin
  api_instance.prem_invoice_apply_payment_self_admin(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_self_admin: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_self_admin_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber
  api_instance.prem_invoice_apply_payment_subscriber(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber and Payor ID
  api_instance.prem_invoice_apply_payment_subscriber_payor_id(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber_payor_id: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber_payor_id_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_apply_payment = Vba::PremInvoiceApplyPayment.new({invoice_key: 37, prem_payment_key: 37, payment_posted: 3.56, payment_posted_date: Time.now, user_id: 'user_id_example'}) # PremInvoiceApplyPayment | 

begin
  # PremInvoice Apply Payments by Subscriber and Plan Type
  api_instance.prem_invoice_apply_payment_subscriber_plan_type(vbasoftware_database, prem_invoice_apply_payment)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber_plan_type: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_apply_payment_subscriber_plan_type_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # PremInvoice Auto-Apply
  api_instance.prem_invoice_auto_apply(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_auto_apply: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_auto_apply_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # PremInvoice Auto-Apply for Self-Admin
  api_instance.prem_invoice_auto_apply_self_admin(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->prem_invoice_auto_apply_self_admin: #{e}"
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
  puts "Error when calling AdvBillingApi->prem_invoice_auto_apply_self_admin_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
amount_due = 1.2 # Float | Amount Due
verify_only = true # Boolean | Verify Only

begin
  # Process or Check Invoice Tolerance
  result = api_instance.process_invoice_tolerance(vbasoftware_database, invoice_key, amount_due, verify_only)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->process_invoice_tolerance: #{e}"
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
  puts "Error when calling AdvBillingApi->process_invoice_tolerance_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_process_payment_file = Vba::VBAProcessPaymentFile.new # VBAProcessPaymentFile | 

begin
  # Process Payment File
  result = api_instance.process_payment_file(vbasoftware_database, vba_process_payment_file)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->process_payment_file: #{e}"
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
  puts "Error when calling AdvBillingApi->process_payment_file_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Regenerate Invoice
  api_instance.regenerate_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->regenerate_invoice: #{e}"
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
  puts "Error when calling AdvBillingApi->regenerate_invoice_with_http_info: #{e}"
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


## report_series_process_generate_invoice

> report_series_process_generate_invoice(vbasoftware_database, invoice_key)

Generate Invoice Process Automation

This will trigger Generate Invoice Process Automation.

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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Generate Invoice Process Automation
  api_instance.report_series_process_generate_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->report_series_process_generate_invoice: #{e}"
end
```

#### Using the report_series_process_generate_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> report_series_process_generate_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Generate Invoice Process Automation
  data, status_code, headers = api_instance.report_series_process_generate_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->report_series_process_generate_invoice_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Reset Self-Admin Invoice
  api_instance.reset_self_admin_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->reset_self_admin_invoice: #{e}"
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
  puts "Error when calling AdvBillingApi->reset_self_admin_invoice_with_http_info: #{e}"
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

api_instance = Vba::AdvBillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Undo an Applied Premium Payment
  api_instance.undo_premium_payment(vbasoftware_database, prem_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling AdvBillingApi->undo_premium_payment: #{e}"
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
  puts "Error when calling AdvBillingApi->undo_premium_payment_with_http_info: #{e}"
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

