# Vba::PremInvoiceListApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_prem_invoices_individual**](PremInvoiceListApi.md#list_prem_invoices_individual) | **GET** /premium-invoices/individual | Retrieve Premium Invoices for Individual Subscribers |


## list_prem_invoices_individual

> <PremInvoiceIndividualListVBAResponse> list_prem_invoices_individual(vbasoftware_database, opts)

Retrieve Premium Invoices for Individual Subscribers

Retrieves a list of Premium Invoices for individual subscribers.

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

api_instance = Vba::PremInvoiceListApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  invoice_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | The date that the invoice was generated.
}

begin
  # Retrieve Premium Invoices for Individual Subscribers
  result = api_instance.list_prem_invoices_individual(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremInvoiceListApi->list_prem_invoices_individual: #{e}"
end
```

#### Using the list_prem_invoices_individual_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceIndividualListVBAResponse>, Integer, Hash)> list_prem_invoices_individual_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # Retrieve Premium Invoices for Individual Subscribers
  data, status_code, headers = api_instance.list_prem_invoices_individual_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceIndividualListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremInvoiceListApi->list_prem_invoices_individual_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_date** | **Time** | The date that the invoice was generated. | [optional] |

### Return type

[**PremInvoiceIndividualListVBAResponse**](PremInvoiceIndividualListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

