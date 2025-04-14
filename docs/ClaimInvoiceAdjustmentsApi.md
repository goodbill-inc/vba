# Vba::ClaimInvoiceAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#create_claim_invoice_adjustment) | **POST** /claim-invoice-adjustments | Create ClaimInvoiceAdjustment |
| [**delete_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#delete_claim_invoice_adjustment) | **DELETE** /claim-invoice-adjustments/{claimInvoiceAdjustmentKey} | Delete ClaimInvoiceAdjustment |
| [**get_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#get_claim_invoice_adjustment) | **GET** /claim-invoice-adjustments/{claimInvoiceAdjustmentKey} | Get ClaimInvoiceAdjustment |
| [**list_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#list_claim_invoice_adjustment) | **GET** /claim-invoice/{invoiceKey}/adjustments | List ClaimInvoiceAdjustment |
| [**update_batch_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#update_batch_claim_invoice_adjustment) | **PUT** /claim-invoice/{invoiceKey}/adjustments-batch | Create or Update Batch ClaimInvoiceAdjustment |
| [**update_claim_invoice_adjustment**](ClaimInvoiceAdjustmentsApi.md#update_claim_invoice_adjustment) | **PUT** /claim-invoice-adjustments/{claimInvoiceAdjustmentKey} | Update ClaimInvoiceAdjustment |


## create_claim_invoice_adjustment

> <ClaimInvoiceAdjustmentVBAResponse> create_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment)

Create ClaimInvoiceAdjustment

Creates a new ClaimInvoiceAdjustment

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment = Vba::ClaimInvoiceAdjustment.new({claim_invoice_adjustment_key: 37, invoice_key: 37}) # ClaimInvoiceAdjustment | 

begin
  # Create ClaimInvoiceAdjustment
  result = api_instance.create_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->create_claim_invoice_adjustment: #{e}"
end
```

#### Using the create_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentVBAResponse>, Integer, Hash)> create_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment)

```ruby
begin
  # Create ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.create_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->create_claim_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment** | [**ClaimInvoiceAdjustment**](ClaimInvoiceAdjustment.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentVBAResponse**](ClaimInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_adjustment

> delete_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key)

Delete ClaimInvoiceAdjustment

Deletes an ClaimInvoiceAdjustment

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_key = 56 # Integer | ClaimInvoiceAdjustment Key

begin
  # Delete ClaimInvoiceAdjustment
  api_instance.delete_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->delete_claim_invoice_adjustment: #{e}"
end
```

#### Using the delete_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key)

```ruby
begin
  # Delete ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.delete_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->delete_claim_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_key** | **Integer** | ClaimInvoiceAdjustment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_adjustment

> <ClaimInvoiceAdjustmentVBAResponse> get_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key)

Get ClaimInvoiceAdjustment

Gets ClaimInvoiceAdjustment

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_key = 56 # Integer | ClaimInvoiceAdjustment Key

begin
  # Get ClaimInvoiceAdjustment
  result = api_instance.get_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->get_claim_invoice_adjustment: #{e}"
end
```

#### Using the get_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentVBAResponse>, Integer, Hash)> get_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key)

```ruby
begin
  # Get ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.get_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->get_claim_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_key** | **Integer** | ClaimInvoiceAdjustment Key |  |

### Return type

[**ClaimInvoiceAdjustmentVBAResponse**](ClaimInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_adjustment

> <ClaimInvoiceAdjustmentListVBAResponse> list_claim_invoice_adjustment(vbasoftware_database, invoice_key, opts)

List ClaimInvoiceAdjustment

Lists all ClaimInvoiceAdjustment for the given invoiceKey

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoiceAdjustment
  result = api_instance.list_claim_invoice_adjustment(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->list_claim_invoice_adjustment: #{e}"
end
```

#### Using the list_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentListVBAResponse>, Integer, Hash)> list_claim_invoice_adjustment_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.list_claim_invoice_adjustment_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->list_claim_invoice_adjustment_with_http_info: #{e}"
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

[**ClaimInvoiceAdjustmentListVBAResponse**](ClaimInvoiceAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_adjustment

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_adjustment(vbasoftware_database, invoice_key, claim_invoice_adjustment)

Create or Update Batch ClaimInvoiceAdjustment

Create or Update multiple ClaimInvoiceAdjustment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice_adjustment = [Vba::ClaimInvoiceAdjustment.new({claim_invoice_adjustment_key: 37, invoice_key: 37})] # Array<ClaimInvoiceAdjustment> | 

begin
  # Create or Update Batch ClaimInvoiceAdjustment
  result = api_instance.update_batch_claim_invoice_adjustment(vbasoftware_database, invoice_key, claim_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->update_batch_claim_invoice_adjustment: #{e}"
end
```

#### Using the update_batch_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_adjustment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_adjustment)

```ruby
begin
  # Create or Update Batch ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.update_batch_claim_invoice_adjustment_with_http_info(vbasoftware_database, invoice_key, claim_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->update_batch_claim_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice_adjustment** | [**Array&lt;ClaimInvoiceAdjustment&gt;**](ClaimInvoiceAdjustment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_adjustment

> <ClaimInvoiceAdjustmentVBAResponse> update_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key, claim_invoice_adjustment)

Update ClaimInvoiceAdjustment

Updates a specific ClaimInvoiceAdjustment.

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

api_instance = Vba::ClaimInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_key = 56 # Integer | ClaimInvoiceAdjustment Key
claim_invoice_adjustment = Vba::ClaimInvoiceAdjustment.new({claim_invoice_adjustment_key: 37, invoice_key: 37}) # ClaimInvoiceAdjustment | 

begin
  # Update ClaimInvoiceAdjustment
  result = api_instance.update_claim_invoice_adjustment(vbasoftware_database, claim_invoice_adjustment_key, claim_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->update_claim_invoice_adjustment: #{e}"
end
```

#### Using the update_claim_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentVBAResponse>, Integer, Hash)> update_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key, claim_invoice_adjustment)

```ruby
begin
  # Update ClaimInvoiceAdjustment
  data, status_code, headers = api_instance.update_claim_invoice_adjustment_with_http_info(vbasoftware_database, claim_invoice_adjustment_key, claim_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentsApi->update_claim_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_key** | **Integer** | ClaimInvoiceAdjustment Key |  |
| **claim_invoice_adjustment** | [**ClaimInvoiceAdjustment**](ClaimInvoiceAdjustment.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentVBAResponse**](ClaimInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

