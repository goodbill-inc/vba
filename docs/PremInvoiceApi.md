# Vba::PremInvoiceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_prem_invoice_gateway_actuals**](PremInvoiceApi.md#update_prem_invoice_gateway_actuals) | **PUT** /update-prem-invoice-self-admin-with-gateway-actuals/{invoiceKey}/{requestKey} | Update PremInvoiceSelfAdmin with Gateway Actuals |


## update_prem_invoice_gateway_actuals

> <PremInvoiceSelfAdminListVBAResponse> update_prem_invoice_gateway_actuals(vbasoftware_database, invoice_key, request_key)

Update PremInvoiceSelfAdmin with Gateway Actuals

Updates the PremInvoiceSelfAdmin table with live data retrieved from VBAGateway

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

api_instance = Vba::PremInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
request_key = 56 # Integer | Request Key

begin
  # Update PremInvoiceSelfAdmin with Gateway Actuals
  result = api_instance.update_prem_invoice_gateway_actuals(vbasoftware_database, invoice_key, request_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremInvoiceApi->update_prem_invoice_gateway_actuals: #{e}"
end
```

#### Using the update_prem_invoice_gateway_actuals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminListVBAResponse>, Integer, Hash)> update_prem_invoice_gateway_actuals_with_http_info(vbasoftware_database, invoice_key, request_key)

```ruby
begin
  # Update PremInvoiceSelfAdmin with Gateway Actuals
  data, status_code, headers = api_instance.update_prem_invoice_gateway_actuals_with_http_info(vbasoftware_database, invoice_key, request_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremInvoiceApi->update_prem_invoice_gateway_actuals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **request_key** | **Integer** | Request Key |  |

### Return type

[**PremInvoiceSelfAdminListVBAResponse**](PremInvoiceSelfAdminListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

