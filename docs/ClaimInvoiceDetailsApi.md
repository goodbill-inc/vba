# Vba::ClaimInvoiceDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#create_claim_invoice_detail) | **POST** /claim-invoice-details | Create ClaimInvoiceDetail |
| [**delete_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#delete_claim_invoice_detail) | **DELETE** /claim-invoice/{invoiceKey}/details/{batchNumber}/{batchClaim} | Delete ClaimInvoiceDetail |
| [**get_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#get_claim_invoice_detail) | **GET** /claim-invoice/{invoiceKey}/details/{batchNumber}/{batchClaim} | Get ClaimInvoiceDetail |
| [**list_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#list_claim_invoice_detail) | **GET** /claim-invoice/{invoiceKey}/details | List ClaimInvoiceDetail |
| [**update_batch_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#update_batch_claim_invoice_detail) | **PUT** /claim-invoice/{invoiceKey}/details-batch | Create or Update Batch ClaimInvoiceDetail |
| [**update_claim_invoice_detail**](ClaimInvoiceDetailsApi.md#update_claim_invoice_detail) | **PUT** /claim-invoice/{invoiceKey}/details/{batchNumber}/{batchClaim} | Update ClaimInvoiceDetail |


## create_claim_invoice_detail

> <ClaimInvoiceDetailVBAResponse> create_claim_invoice_detail(vbasoftware_database, claim_invoice_detail)

Create ClaimInvoiceDetail

Creates a new ClaimInvoiceDetail

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_detail = Vba::ClaimInvoiceDetail.new({invoice_key: 37, batch_number: 37, batch_claim: 37}) # ClaimInvoiceDetail | 

begin
  # Create ClaimInvoiceDetail
  result = api_instance.create_claim_invoice_detail(vbasoftware_database, claim_invoice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->create_claim_invoice_detail: #{e}"
end
```

#### Using the create_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceDetailVBAResponse>, Integer, Hash)> create_claim_invoice_detail_with_http_info(vbasoftware_database, claim_invoice_detail)

```ruby
begin
  # Create ClaimInvoiceDetail
  data, status_code, headers = api_instance.create_claim_invoice_detail_with_http_info(vbasoftware_database, claim_invoice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->create_claim_invoice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_detail** | [**ClaimInvoiceDetail**](ClaimInvoiceDetail.md) |  |  |

### Return type

[**ClaimInvoiceDetailVBAResponse**](ClaimInvoiceDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_detail

> delete_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim)

Delete ClaimInvoiceDetail

Deletes an ClaimInvoiceDetail

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete ClaimInvoiceDetail
  api_instance.delete_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->delete_claim_invoice_detail: #{e}"
end
```

#### Using the delete_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim)

```ruby
begin
  # Delete ClaimInvoiceDetail
  data, status_code, headers = api_instance.delete_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->delete_claim_invoice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_detail

> <ClaimInvoiceDetailVBAResponse> get_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim)

Get ClaimInvoiceDetail

Gets ClaimInvoiceDetail

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get ClaimInvoiceDetail
  result = api_instance.get_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->get_claim_invoice_detail: #{e}"
end
```

#### Using the get_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceDetailVBAResponse>, Integer, Hash)> get_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim)

```ruby
begin
  # Get ClaimInvoiceDetail
  data, status_code, headers = api_instance.get_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->get_claim_invoice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**ClaimInvoiceDetailVBAResponse**](ClaimInvoiceDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_detail

> <ClaimInvoiceDetailListVBAResponse> list_claim_invoice_detail(vbasoftware_database, invoice_key, opts)

List ClaimInvoiceDetail

Lists all ClaimInvoiceDetail for the given invoiceKey

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoiceDetail
  result = api_instance.list_claim_invoice_detail(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->list_claim_invoice_detail: #{e}"
end
```

#### Using the list_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceDetailListVBAResponse>, Integer, Hash)> list_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List ClaimInvoiceDetail
  data, status_code, headers = api_instance.list_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->list_claim_invoice_detail_with_http_info: #{e}"
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

[**ClaimInvoiceDetailListVBAResponse**](ClaimInvoiceDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_detail(vbasoftware_database, invoice_key, claim_invoice_detail)

Create or Update Batch ClaimInvoiceDetail

Create or Update multiple ClaimInvoiceDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice_detail = [Vba::ClaimInvoiceDetail.new({invoice_key: 37, batch_number: 37, batch_claim: 37})] # Array<ClaimInvoiceDetail> | 

begin
  # Create or Update Batch ClaimInvoiceDetail
  result = api_instance.update_batch_claim_invoice_detail(vbasoftware_database, invoice_key, claim_invoice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->update_batch_claim_invoice_detail: #{e}"
end
```

#### Using the update_batch_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, claim_invoice_detail)

```ruby
begin
  # Create or Update Batch ClaimInvoiceDetail
  data, status_code, headers = api_instance.update_batch_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, claim_invoice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->update_batch_claim_invoice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice_detail** | [**Array&lt;ClaimInvoiceDetail&gt;**](ClaimInvoiceDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_detail

> <ClaimInvoiceDetailVBAResponse> update_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim, claim_invoice_detail)

Update ClaimInvoiceDetail

Updates a specific ClaimInvoiceDetail.

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

api_instance = Vba::ClaimInvoiceDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_invoice_detail = Vba::ClaimInvoiceDetail.new({invoice_key: 37, batch_number: 37, batch_claim: 37}) # ClaimInvoiceDetail | 

begin
  # Update ClaimInvoiceDetail
  result = api_instance.update_claim_invoice_detail(vbasoftware_database, invoice_key, batch_number, batch_claim, claim_invoice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->update_claim_invoice_detail: #{e}"
end
```

#### Using the update_claim_invoice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceDetailVBAResponse>, Integer, Hash)> update_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim, claim_invoice_detail)

```ruby
begin
  # Update ClaimInvoiceDetail
  data, status_code, headers = api_instance.update_claim_invoice_detail_with_http_info(vbasoftware_database, invoice_key, batch_number, batch_claim, claim_invoice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceDetailsApi->update_claim_invoice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_invoice_detail** | [**ClaimInvoiceDetail**](ClaimInvoiceDetail.md) |  |  |

### Return type

[**ClaimInvoiceDetailVBAResponse**](ClaimInvoiceDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

