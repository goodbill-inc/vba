# Vba::BillingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**billing_apply_payment_category**](BillingApi.md#billing_apply_payment_category) | **POST** /billing-apply-payment-category | Billing Apply Payment Category |
| [**billing_apply_payment_on_account_category**](BillingApi.md#billing_apply_payment_on_account_category) | **POST** /billing-apply-payment-on-account-category | Billing Apply Payment On Account Category |
| [**billing_auto_apply**](BillingApi.md#billing_auto_apply) | **POST** /billing-auto-apply | Billing Auto-Apply |
| [**billing_refund**](BillingApi.md#billing_refund) | **POST** /billing-refund | Billing Refund |


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

api_instance = Vba::BillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_apply_payment_config = Vba::BillingApplyPaymentConfig.new # BillingApplyPaymentConfig | 

begin
  # Billing Apply Payment Category
  api_instance.billing_apply_payment_category(vbasoftware_database, billing_apply_payment_config)
rescue Vba::ApiError => e
  puts "Error when calling BillingApi->billing_apply_payment_category: #{e}"
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
  puts "Error when calling BillingApi->billing_apply_payment_category_with_http_info: #{e}"
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

api_instance = Vba::BillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_apply_payment_on_account_config = Vba::BillingApplyPaymentOnAccountConfig.new # BillingApplyPaymentOnAccountConfig | 

begin
  # Billing Apply Payment On Account Category
  api_instance.billing_apply_payment_on_account_category(vbasoftware_database, billing_apply_payment_on_account_config)
rescue Vba::ApiError => e
  puts "Error when calling BillingApi->billing_apply_payment_on_account_category: #{e}"
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
  puts "Error when calling BillingApi->billing_apply_payment_on_account_category_with_http_info: #{e}"
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

api_instance = Vba::BillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_auto_apply_config = Vba::BillingAutoApplyConfig.new # BillingAutoApplyConfig | 

begin
  # Billing Auto-Apply
  api_instance.billing_auto_apply(vbasoftware_database, billing_auto_apply_config)
rescue Vba::ApiError => e
  puts "Error when calling BillingApi->billing_auto_apply: #{e}"
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
  puts "Error when calling BillingApi->billing_auto_apply_with_http_info: #{e}"
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

api_instance = Vba::BillingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_refund = Vba::BillingRefund.new # BillingRefund | 

begin
  # Billing Refund
  api_instance.billing_refund(vbasoftware_database, billing_refund)
rescue Vba::ApiError => e
  puts "Error when calling BillingApi->billing_refund: #{e}"
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
  puts "Error when calling BillingApi->billing_refund_with_http_info: #{e}"
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

