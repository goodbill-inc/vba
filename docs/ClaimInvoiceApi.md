# Vba::ClaimInvoiceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice**](ClaimInvoiceApi.md#create_claim_invoice) | **POST** /claim-invoice | Create ClaimInvoice |
| [**delete_claim_invoice**](ClaimInvoiceApi.md#delete_claim_invoice) | **DELETE** /claim-invoice/{invoiceKey} | Delete ClaimInvoice |
| [**get_claim_invoice**](ClaimInvoiceApi.md#get_claim_invoice) | **GET** /claim-invoice/{invoiceKey} | Get ClaimInvoice |
| [**list_claim_invoice**](ClaimInvoiceApi.md#list_claim_invoice) | **GET** /claim-invoice | List ClaimInvoice |
| [**update_batch_claim_invoice**](ClaimInvoiceApi.md#update_batch_claim_invoice) | **PUT** /claim-invoice-batch | Create or Update Batch ClaimInvoice |
| [**update_claim_invoice**](ClaimInvoiceApi.md#update_claim_invoice) | **PUT** /claim-invoice/{invoiceKey} | Update ClaimInvoice |


## create_claim_invoice

> <ClaimInvoiceVBAResponse> create_claim_invoice(vbasoftware_database, claim_invoice)

Create ClaimInvoice

Creates a new ClaimInvoice

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice = Vba::ClaimInvoice.new({invoice_key: 37}) # ClaimInvoice | 

begin
  # Create ClaimInvoice
  result = api_instance.create_claim_invoice(vbasoftware_database, claim_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->create_claim_invoice: #{e}"
end
```

#### Using the create_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceVBAResponse>, Integer, Hash)> create_claim_invoice_with_http_info(vbasoftware_database, claim_invoice)

```ruby
begin
  # Create ClaimInvoice
  data, status_code, headers = api_instance.create_claim_invoice_with_http_info(vbasoftware_database, claim_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->create_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice** | [**ClaimInvoice**](ClaimInvoice.md) |  |  |

### Return type

[**ClaimInvoiceVBAResponse**](ClaimInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice

> delete_claim_invoice(vbasoftware_database, invoice_key)

Delete ClaimInvoice

Deletes an ClaimInvoice

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Delete ClaimInvoice
  api_instance.delete_claim_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->delete_claim_invoice: #{e}"
end
```

#### Using the delete_claim_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Delete ClaimInvoice
  data, status_code, headers = api_instance.delete_claim_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->delete_claim_invoice_with_http_info: #{e}"
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


## get_claim_invoice

> <ClaimInvoiceVBAResponse> get_claim_invoice(vbasoftware_database, invoice_key)

Get ClaimInvoice

Gets ClaimInvoice

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Get ClaimInvoice
  result = api_instance.get_claim_invoice(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->get_claim_invoice: #{e}"
end
```

#### Using the get_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceVBAResponse>, Integer, Hash)> get_claim_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Get ClaimInvoice
  data, status_code, headers = api_instance.get_claim_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->get_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**ClaimInvoiceVBAResponse**](ClaimInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice

> <ClaimInvoiceListVBAResponse> list_claim_invoice(vbasoftware_database, opts)

List ClaimInvoice

Lists all ClaimInvoice

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoice
  result = api_instance.list_claim_invoice(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->list_claim_invoice: #{e}"
end
```

#### Using the list_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceListVBAResponse>, Integer, Hash)> list_claim_invoice_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimInvoice
  data, status_code, headers = api_instance.list_claim_invoice_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->list_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ClaimInvoiceListVBAResponse**](ClaimInvoiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice(vbasoftware_database, claim_invoice)

Create or Update Batch ClaimInvoice

Create or Update multiple ClaimInvoice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice = [Vba::ClaimInvoice.new({invoice_key: 37})] # Array<ClaimInvoice> | 

begin
  # Create or Update Batch ClaimInvoice
  result = api_instance.update_batch_claim_invoice(vbasoftware_database, claim_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->update_batch_claim_invoice: #{e}"
end
```

#### Using the update_batch_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_with_http_info(vbasoftware_database, claim_invoice)

```ruby
begin
  # Create or Update Batch ClaimInvoice
  data, status_code, headers = api_instance.update_batch_claim_invoice_with_http_info(vbasoftware_database, claim_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->update_batch_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice** | [**Array&lt;ClaimInvoice&gt;**](ClaimInvoice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice

> <ClaimInvoiceVBAResponse> update_claim_invoice(vbasoftware_database, invoice_key, claim_invoice)

Update ClaimInvoice

Updates a specific ClaimInvoice.

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

api_instance = Vba::ClaimInvoiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice = Vba::ClaimInvoice.new({invoice_key: 37}) # ClaimInvoice | 

begin
  # Update ClaimInvoice
  result = api_instance.update_claim_invoice(vbasoftware_database, invoice_key, claim_invoice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->update_claim_invoice: #{e}"
end
```

#### Using the update_claim_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceVBAResponse>, Integer, Hash)> update_claim_invoice_with_http_info(vbasoftware_database, invoice_key, claim_invoice)

```ruby
begin
  # Update ClaimInvoice
  data, status_code, headers = api_instance.update_claim_invoice_with_http_info(vbasoftware_database, invoice_key, claim_invoice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceApi->update_claim_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice** | [**ClaimInvoice**](ClaimInvoice.md) |  |  |

### Return type

[**ClaimInvoiceVBAResponse**](ClaimInvoiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

