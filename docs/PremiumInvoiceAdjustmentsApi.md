# Vba::PremiumInvoiceAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#create_prem_invoice_adjustment) | **POST** /premium-invoice-adjustments | Create PremInvoiceAdjustment |
| [**delete_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#delete_prem_invoice_adjustment) | **DELETE** /premium-invoice-adjustments/{invoiceAdjustmentKey} | Delete PremInvoiceAdjustment |
| [**get_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#get_prem_invoice_adjustment) | **GET** /premium-invoice-adjustments/{invoiceAdjustmentKey} | Get PremInvoiceAdjustment |
| [**list_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#list_prem_invoice_adjustment) | **GET** /premium-invoice-adjustments | List PremInvoiceAdjustment |
| [**update_batch_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#update_batch_prem_invoice_adjustment) | **PUT** /premium-invoice-adjustments-batch | Create or Update Batch PremInvoiceAdjustment |
| [**update_prem_invoice_adjustment**](PremiumInvoiceAdjustmentsApi.md#update_prem_invoice_adjustment) | **PUT** /premium-invoice-adjustments/{invoiceAdjustmentKey} | Update PremInvoiceAdjustment |


## create_prem_invoice_adjustment

> <PremInvoiceAdjustmentVBAResponse> create_prem_invoice_adjustment(vbasoftware_database, prem_invoice_adjustment)

Create PremInvoiceAdjustment

Creates a new PremInvoiceAdjustment

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adjustment = Vba::PremInvoiceAdjustment.new({invoice_adjustment_key: 37, auto_adjust: false, avoid_retro: false, min_max_adjust: false, negative_adjustment: false, self_admin_adj: false, use_premium: false}) # PremInvoiceAdjustment | 

begin
  # Create PremInvoiceAdjustment
  result = api_instance.create_prem_invoice_adjustment(vbasoftware_database, prem_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->create_prem_invoice_adjustment: #{e}"
end
```

#### Using the create_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjustmentVBAResponse>, Integer, Hash)> create_prem_invoice_adjustment_with_http_info(vbasoftware_database, prem_invoice_adjustment)

```ruby
begin
  # Create PremInvoiceAdjustment
  data, status_code, headers = api_instance.create_prem_invoice_adjustment_with_http_info(vbasoftware_database, prem_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->create_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adjustment** | [**PremInvoiceAdjustment**](PremInvoiceAdjustment.md) |  |  |

### Return type

[**PremInvoiceAdjustmentVBAResponse**](PremInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_adjustment

> delete_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key)

Delete PremInvoiceAdjustment

Deletes an PremInvoiceAdjustment

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_adjustment_key = 56 # Integer | InvoiceAdjustment Key

begin
  # Delete PremInvoiceAdjustment
  api_instance.delete_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->delete_prem_invoice_adjustment: #{e}"
end
```

#### Using the delete_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key)

```ruby
begin
  # Delete PremInvoiceAdjustment
  data, status_code, headers = api_instance.delete_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->delete_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_adjustment_key** | **Integer** | InvoiceAdjustment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_adjustment

> <PremInvoiceAdjustmentVBAResponse> get_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key)

Get PremInvoiceAdjustment

Gets PremInvoiceAdjustment

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_adjustment_key = 56 # Integer | InvoiceAdjustment Key

begin
  # Get PremInvoiceAdjustment
  result = api_instance.get_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->get_prem_invoice_adjustment: #{e}"
end
```

#### Using the get_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjustmentVBAResponse>, Integer, Hash)> get_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key)

```ruby
begin
  # Get PremInvoiceAdjustment
  data, status_code, headers = api_instance.get_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->get_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_adjustment_key** | **Integer** | InvoiceAdjustment Key |  |

### Return type

[**PremInvoiceAdjustmentVBAResponse**](PremInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_adjustment

> <PremInvoiceAdjustmentListVBAResponse> list_prem_invoice_adjustment(vbasoftware_database, opts)

List PremInvoiceAdjustment

Lists all PremInvoiceAdjustment. Provide invoiceKey query parameter to filter by invoice.  Omit the invoiceKey query parameter to filter by unassigned.

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  invoice_key: 56, # Integer | Invoice Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceAdjustment
  result = api_instance.list_prem_invoice_adjustment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->list_prem_invoice_adjustment: #{e}"
end
```

#### Using the list_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjustmentListVBAResponse>, Integer, Hash)> list_prem_invoice_adjustment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremInvoiceAdjustment
  data, status_code, headers = api_instance.list_prem_invoice_adjustment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->list_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceAdjustmentListVBAResponse**](PremInvoiceAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_adjustment

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_adjustment(vbasoftware_database, prem_invoice_adjustment)

Create or Update Batch PremInvoiceAdjustment

Create or Update multiple PremInvoiceAdjustment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adjustment = [Vba::PremInvoiceAdjustment.new({invoice_adjustment_key: 37, auto_adjust: false, avoid_retro: false, min_max_adjust: false, negative_adjustment: false, self_admin_adj: false, use_premium: false})] # Array<PremInvoiceAdjustment> | 

begin
  # Create or Update Batch PremInvoiceAdjustment
  result = api_instance.update_batch_prem_invoice_adjustment(vbasoftware_database, prem_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->update_batch_prem_invoice_adjustment: #{e}"
end
```

#### Using the update_batch_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_adjustment_with_http_info(vbasoftware_database, prem_invoice_adjustment)

```ruby
begin
  # Create or Update Batch PremInvoiceAdjustment
  data, status_code, headers = api_instance.update_batch_prem_invoice_adjustment_with_http_info(vbasoftware_database, prem_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->update_batch_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adjustment** | [**Array&lt;PremInvoiceAdjustment&gt;**](PremInvoiceAdjustment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_adjustment

> <PremInvoiceAdjustmentVBAResponse> update_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key, prem_invoice_adjustment)

Update PremInvoiceAdjustment

Updates a specific PremInvoiceAdjustment.

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

api_instance = Vba::PremiumInvoiceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_adjustment_key = 56 # Integer | InvoiceAdjustment Key
prem_invoice_adjustment = Vba::PremInvoiceAdjustment.new({invoice_adjustment_key: 37, auto_adjust: false, avoid_retro: false, min_max_adjust: false, negative_adjustment: false, self_admin_adj: false, use_premium: false}) # PremInvoiceAdjustment | 

begin
  # Update PremInvoiceAdjustment
  result = api_instance.update_prem_invoice_adjustment(vbasoftware_database, invoice_adjustment_key, prem_invoice_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->update_prem_invoice_adjustment: #{e}"
end
```

#### Using the update_prem_invoice_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjustmentVBAResponse>, Integer, Hash)> update_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key, prem_invoice_adjustment)

```ruby
begin
  # Update PremInvoiceAdjustment
  data, status_code, headers = api_instance.update_prem_invoice_adjustment_with_http_info(vbasoftware_database, invoice_adjustment_key, prem_invoice_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsApi->update_prem_invoice_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_adjustment_key** | **Integer** | InvoiceAdjustment Key |  |
| **prem_invoice_adjustment** | [**PremInvoiceAdjustment**](PremInvoiceAdjustment.md) |  |  |

### Return type

[**PremInvoiceAdjustmentVBAResponse**](PremInvoiceAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

