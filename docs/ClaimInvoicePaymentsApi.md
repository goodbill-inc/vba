# Vba::ClaimInvoicePaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#create_claim_invoice_payment) | **POST** /claim-invoice/{invoiceKey}/payments | Create ClaimInvoicePayment |
| [**delete_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#delete_claim_invoice_payment) | **DELETE** /claim-invoice/{invoiceKey}/payments/{claimPaymentKey} | Delete ClaimInvoicePayment |
| [**get_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#get_claim_invoice_payment) | **GET** /claim-invoice/{invoiceKey}/payments/{claimPaymentKey} | Get ClaimInvoicePayment |
| [**list_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#list_claim_invoice_payment) | **GET** /claim-invoice/{invoiceKey}/payments | List ClaimInvoicePayment |
| [**update_batch_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#update_batch_claim_invoice_payment) | **PUT** /claim-invoice/{invoiceKey}/payments-batch | Create or Update Batch ClaimInvoicePayment |
| [**update_claim_invoice_payment**](ClaimInvoicePaymentsApi.md#update_claim_invoice_payment) | **PUT** /claim-invoice/{invoiceKey}/payments/{claimPaymentKey} | Update ClaimInvoicePayment |


## create_claim_invoice_payment

> <ClaimInvoicePaymentVBAResponse> create_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment)

Create ClaimInvoicePayment

Creates a new ClaimInvoicePayment

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice_payment = Vba::ClaimInvoicePayment.new({invoice_key: 37, claim_payment_key: 37}) # ClaimInvoicePayment | 

begin
  # Create ClaimInvoicePayment
  result = api_instance.create_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->create_claim_invoice_payment: #{e}"
end
```

#### Using the create_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoicePaymentVBAResponse>, Integer, Hash)> create_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment)

```ruby
begin
  # Create ClaimInvoicePayment
  data, status_code, headers = api_instance.create_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->create_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice_payment** | [**ClaimInvoicePayment**](ClaimInvoicePayment.md) |  |  |

### Return type

[**ClaimInvoicePaymentVBAResponse**](ClaimInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_payment

> delete_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key)

Delete ClaimInvoicePayment

Deletes an ClaimInvoicePayment

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_payment_key = 56 # Integer | ClaimPayment Key

begin
  # Delete ClaimInvoicePayment
  api_instance.delete_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->delete_claim_invoice_payment: #{e}"
end
```

#### Using the delete_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key)

```ruby
begin
  # Delete ClaimInvoicePayment
  data, status_code, headers = api_instance.delete_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->delete_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_payment

> <ClaimInvoicePaymentVBAResponse> get_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key)

Get ClaimInvoicePayment

Gets ClaimInvoicePayment

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_payment_key = 56 # Integer | ClaimPayment Key

begin
  # Get ClaimInvoicePayment
  result = api_instance.get_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->get_claim_invoice_payment: #{e}"
end
```

#### Using the get_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoicePaymentVBAResponse>, Integer, Hash)> get_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key)

```ruby
begin
  # Get ClaimInvoicePayment
  data, status_code, headers = api_instance.get_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->get_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |

### Return type

[**ClaimInvoicePaymentVBAResponse**](ClaimInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_payment

> <ClaimInvoicePaymentListVBAResponse> list_claim_invoice_payment(vbasoftware_database, invoice_key, opts)

List ClaimInvoicePayment

Lists all ClaimInvoicePayment for the given invoiceKey

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoicePayment
  result = api_instance.list_claim_invoice_payment(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->list_claim_invoice_payment: #{e}"
end
```

#### Using the list_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoicePaymentListVBAResponse>, Integer, Hash)> list_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List ClaimInvoicePayment
  data, status_code, headers = api_instance.list_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoicePaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->list_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ClaimInvoicePaymentListVBAResponse**](ClaimInvoicePaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_payment

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment)

Create or Update Batch ClaimInvoicePayment

Create or Update multiple ClaimInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice_payment = [Vba::ClaimInvoicePayment.new({invoice_key: 37, claim_payment_key: 37})] # Array<ClaimInvoicePayment> | 

begin
  # Create or Update Batch ClaimInvoicePayment
  result = api_instance.update_batch_claim_invoice_payment(vbasoftware_database, invoice_key, claim_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->update_batch_claim_invoice_payment: #{e}"
end
```

#### Using the update_batch_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment)

```ruby
begin
  # Create or Update Batch ClaimInvoicePayment
  data, status_code, headers = api_instance.update_batch_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->update_batch_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice_payment** | [**Array&lt;ClaimInvoicePayment&gt;**](ClaimInvoicePayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_payment

> <ClaimInvoicePaymentVBAResponse> update_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment)

Update ClaimInvoicePayment

Updates a specific ClaimInvoicePayment.

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

api_instance = Vba::ClaimInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_payment_key = 56 # Integer | ClaimPayment Key
claim_invoice_payment = Vba::ClaimInvoicePayment.new({invoice_key: 37, claim_payment_key: 37}) # ClaimInvoicePayment | 

begin
  # Update ClaimInvoicePayment
  result = api_instance.update_claim_invoice_payment(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->update_claim_invoice_payment: #{e}"
end
```

#### Using the update_claim_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoicePaymentVBAResponse>, Integer, Hash)> update_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment)

```ruby
begin
  # Update ClaimInvoicePayment
  data, status_code, headers = api_instance.update_claim_invoice_payment_with_http_info(vbasoftware_database, invoice_key, claim_payment_key, claim_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoicePaymentsApi->update_claim_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |
| **claim_invoice_payment** | [**ClaimInvoicePayment**](ClaimInvoicePayment.md) |  |  |

### Return type

[**ClaimInvoicePaymentVBAResponse**](ClaimInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

