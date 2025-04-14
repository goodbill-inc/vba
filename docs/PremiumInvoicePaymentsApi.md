# Vba::PremiumInvoicePaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#create_prem_invoice_payment) | **POST** /premium-invoice-payments | Create PremInvoicePayment |
| [**delete_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#delete_prem_invoice_payment) | **DELETE** /premium-invoice-payments/{invoiceKey}/{premPaymentKey} | Delete PremInvoicePayment |
| [**get_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#get_prem_invoice_payment) | **GET** /premium-invoice-payments/{invoiceKey}/{premPaymentKey} | Get PremInvoicePayment |
| [**list_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#list_prem_invoice_payment) | **GET** /premium-invoice-payments | List PremInvoicePayment |
| [**list_prem_invoice_payment_ext**](PremiumInvoicePaymentsApi.md#list_prem_invoice_payment_ext) | **GET** /premium-invoice-payments-ext/{invoiceKey} | List PremInvoicePayment Extended |
| [**update_batch_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#update_batch_prem_invoice_payment) | **PUT** /premium-invoice-payments-batch | Create or Update Batch PremInvoicePayment |
| [**update_prem_invoice_payment**](PremiumInvoicePaymentsApi.md#update_prem_invoice_payment) | **PUT** /premium-invoice-payments/{invoiceKey}/{premPaymentKey} | Update PremInvoicePayment |


## create_prem_invoice_payment

> <PremInvoicePaymentVBAResponse> create_prem_invoice_payment(vbasoftware_database, prem_invoice_payment)

Create PremInvoicePayment

Creates a new PremInvoicePayment

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_payment = Vba::PremInvoicePayment.new({invoice_key: 37, prem_payment_key: 37}) # PremInvoicePayment | 

begin
  # Create PremInvoicePayment
  result = api_instance.create_prem_invoice_payment(vbasoftware_database, prem_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->create_prem_invoice_payment: #{e}"
end
```

#### Using the create_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoicePaymentVBAResponse>, Integer, Hash)> create_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment)

```ruby
begin
  # Create PremInvoicePayment
  data, status_code, headers = api_instance.create_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->create_prem_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_payment** | [**PremInvoicePayment**](PremInvoicePayment.md) |  |  |

### Return type

[**PremInvoicePaymentVBAResponse**](PremInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_payment

> delete_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key)

Delete PremInvoicePayment

Deletes an PremInvoicePayment

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Delete PremInvoicePayment
  api_instance.delete_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->delete_prem_invoice_payment: #{e}"
end
```

#### Using the delete_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key)

```ruby
begin
  # Delete PremInvoicePayment
  data, status_code, headers = api_instance.delete_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->delete_prem_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_payment

> <PremInvoicePaymentVBAResponse> get_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key)

Get PremInvoicePayment

Gets PremInvoicePayment

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_payment_key = 56 # Integer | PremPayment Key

begin
  # Get PremInvoicePayment
  result = api_instance.get_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->get_prem_invoice_payment: #{e}"
end
```

#### Using the get_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoicePaymentVBAResponse>, Integer, Hash)> get_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key)

```ruby
begin
  # Get PremInvoicePayment
  data, status_code, headers = api_instance.get_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->get_prem_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |

### Return type

[**PremInvoicePaymentVBAResponse**](PremInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_payment

> <PremInvoicePaymentListVBAResponse> list_prem_invoice_payment(vbasoftware_database, opts)

List PremInvoicePayment

Lists all PremInvoicePayment

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoicePayment
  result = api_instance.list_prem_invoice_payment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->list_prem_invoice_payment: #{e}"
end
```

#### Using the list_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoicePaymentListVBAResponse>, Integer, Hash)> list_prem_invoice_payment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremInvoicePayment
  data, status_code, headers = api_instance.list_prem_invoice_payment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoicePaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->list_prem_invoice_payment_with_http_info: #{e}"
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

[**PremInvoicePaymentListVBAResponse**](PremInvoicePaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_payment_ext

> <PremInvoicePaymentExtListVBAResponse> list_prem_invoice_payment_ext(vbasoftware_database, invoice_key, opts)

List PremInvoicePayment Extended

Lists PremInvoicePayment Extended objects which include invoice posted payments and payment applied fields.

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  invoice_year: 56, # Integer | Invoice Year
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoicePayment Extended
  result = api_instance.list_prem_invoice_payment_ext(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->list_prem_invoice_payment_ext: #{e}"
end
```

#### Using the list_prem_invoice_payment_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoicePaymentExtListVBAResponse>, Integer, Hash)> list_prem_invoice_payment_ext_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List PremInvoicePayment Extended
  data, status_code, headers = api_instance.list_prem_invoice_payment_ext_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoicePaymentExtListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->list_prem_invoice_payment_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **invoice_year** | **Integer** | Invoice Year | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoicePaymentExtListVBAResponse**](PremInvoicePaymentExtListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_payment

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_payment(vbasoftware_database, prem_invoice_payment)

Create or Update Batch PremInvoicePayment

Create or Update multiple PremInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_payment = [Vba::PremInvoicePayment.new({invoice_key: 37, prem_payment_key: 37})] # Array<PremInvoicePayment> | 

begin
  # Create or Update Batch PremInvoicePayment
  result = api_instance.update_batch_prem_invoice_payment(vbasoftware_database, prem_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->update_batch_prem_invoice_payment: #{e}"
end
```

#### Using the update_batch_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment)

```ruby
begin
  # Create or Update Batch PremInvoicePayment
  data, status_code, headers = api_instance.update_batch_prem_invoice_payment_with_http_info(vbasoftware_database, prem_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->update_batch_prem_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_payment** | [**Array&lt;PremInvoicePayment&gt;**](PremInvoicePayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_payment

> <PremInvoicePaymentVBAResponse> update_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment)

Update PremInvoicePayment

Updates a specific PremInvoicePayment.

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

api_instance = Vba::PremiumInvoicePaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_payment_key = 56 # Integer | PremPayment Key
prem_invoice_payment = Vba::PremInvoicePayment.new({invoice_key: 37, prem_payment_key: 37}) # PremInvoicePayment | 

begin
  # Update PremInvoicePayment
  result = api_instance.update_prem_invoice_payment(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->update_prem_invoice_payment: #{e}"
end
```

#### Using the update_prem_invoice_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoicePaymentVBAResponse>, Integer, Hash)> update_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment)

```ruby
begin
  # Update PremInvoicePayment
  data, status_code, headers = api_instance.update_prem_invoice_payment_with_http_info(vbasoftware_database, invoice_key, prem_payment_key, prem_invoice_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoicePaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicePaymentsApi->update_prem_invoice_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_payment_key** | **Integer** | PremPayment Key |  |
| **prem_invoice_payment** | [**PremInvoicePayment**](PremInvoicePayment.md) |  |  |

### Return type

[**PremInvoicePaymentVBAResponse**](PremInvoicePaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

