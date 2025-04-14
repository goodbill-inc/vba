# Vba::ClaimInvoiceAdjustmentReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#create_claim_invoice_adjustment_reason) | **POST** /claim-invoice-adjustment-reasons | Create ClaimInvoiceAdjustmentReason |
| [**delete_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#delete_claim_invoice_adjustment_reason) | **DELETE** /claim-invoice-adjustment-reasons/{adjustmentReason} | Delete ClaimInvoiceAdjustmentReason |
| [**get_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#get_claim_invoice_adjustment_reason) | **GET** /claim-invoice-adjustment-reasons/{adjustmentReason} | Get ClaimInvoiceAdjustmentReason |
| [**list_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#list_claim_invoice_adjustment_reason) | **GET** /claim-invoice-adjustment-reasons | List ClaimInvoiceAdjustmentReason |
| [**update_batch_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#update_batch_claim_invoice_adjustment_reason) | **PUT** /claim-invoice-adjustment-reasons-batch | Create or Update Batch ClaimInvoiceAdjustmentReason |
| [**update_claim_invoice_adjustment_reason**](ClaimInvoiceAdjustmentReasonsApi.md#update_claim_invoice_adjustment_reason) | **PUT** /claim-invoice-adjustment-reasons/{adjustmentReason} | Update ClaimInvoiceAdjustmentReason |


## create_claim_invoice_adjustment_reason

> <ClaimInvoiceAdjustmentReasonVBAResponse> create_claim_invoice_adjustment_reason(vbasoftware_database, claim_invoice_adjustment_reason)

Create ClaimInvoiceAdjustmentReason

Creates a new ClaimInvoiceAdjustmentReason

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_reason = Vba::ClaimInvoiceAdjustmentReason.new({adjustment_reason: 37, description: 'description_example'}) # ClaimInvoiceAdjustmentReason | 

begin
  # Create ClaimInvoiceAdjustmentReason
  result = api_instance.create_claim_invoice_adjustment_reason(vbasoftware_database, claim_invoice_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->create_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the create_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReasonVBAResponse>, Integer, Hash)> create_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, claim_invoice_adjustment_reason)

```ruby
begin
  # Create ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.create_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, claim_invoice_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->create_claim_invoice_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_reason** | [**ClaimInvoiceAdjustmentReason**](ClaimInvoiceAdjustmentReason.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentReasonVBAResponse**](ClaimInvoiceAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_adjustment_reason

> delete_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason)

Delete ClaimInvoiceAdjustmentReason

Deletes an ClaimInvoiceAdjustmentReason

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
adjustment_reason = 56 # Integer | Adjustment Reason

begin
  # Delete ClaimInvoiceAdjustmentReason
  api_instance.delete_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->delete_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the delete_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason)

```ruby
begin
  # Delete ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.delete_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->delete_claim_invoice_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **adjustment_reason** | **Integer** | Adjustment Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_adjustment_reason

> <ClaimInvoiceAdjustmentReasonVBAResponse> get_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason)

Get ClaimInvoiceAdjustmentReason

Gets ClaimInvoiceAdjustmentReason

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
adjustment_reason = 56 # Integer | Adjustment Reason

begin
  # Get ClaimInvoiceAdjustmentReason
  result = api_instance.get_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->get_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the get_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReasonVBAResponse>, Integer, Hash)> get_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason)

```ruby
begin
  # Get ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.get_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->get_claim_invoice_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **adjustment_reason** | **Integer** | Adjustment Reason |  |

### Return type

[**ClaimInvoiceAdjustmentReasonVBAResponse**](ClaimInvoiceAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_adjustment_reason

> <ClaimInvoiceAdjustmentReasonListVBAResponse> list_claim_invoice_adjustment_reason(vbasoftware_database, opts)

List ClaimInvoiceAdjustmentReason

Lists all ClaimInvoiceAdjustmentReason

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoiceAdjustmentReason
  result = api_instance.list_claim_invoice_adjustment_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->list_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the list_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReasonListVBAResponse>, Integer, Hash)> list_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.list_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->list_claim_invoice_adjustment_reason_with_http_info: #{e}"
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

[**ClaimInvoiceAdjustmentReasonListVBAResponse**](ClaimInvoiceAdjustmentReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_adjustment_reason

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_adjustment_reason(vbasoftware_database, claim_invoice_adjustment_reason)

Create or Update Batch ClaimInvoiceAdjustmentReason

Create or Update multiple ClaimInvoiceAdjustmentReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_reason = [Vba::ClaimInvoiceAdjustmentReason.new({adjustment_reason: 37, description: 'description_example'})] # Array<ClaimInvoiceAdjustmentReason> | 

begin
  # Create or Update Batch ClaimInvoiceAdjustmentReason
  result = api_instance.update_batch_claim_invoice_adjustment_reason(vbasoftware_database, claim_invoice_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->update_batch_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the update_batch_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, claim_invoice_adjustment_reason)

```ruby
begin
  # Create or Update Batch ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.update_batch_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, claim_invoice_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->update_batch_claim_invoice_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_reason** | [**Array&lt;ClaimInvoiceAdjustmentReason&gt;**](ClaimInvoiceAdjustmentReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_adjustment_reason

> <ClaimInvoiceAdjustmentReasonVBAResponse> update_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason, claim_invoice_adjustment_reason)

Update ClaimInvoiceAdjustmentReason

Updates a specific ClaimInvoiceAdjustmentReason.

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

api_instance = Vba::ClaimInvoiceAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
adjustment_reason = 56 # Integer | Adjustment Reason
claim_invoice_adjustment_reason = Vba::ClaimInvoiceAdjustmentReason.new({adjustment_reason: 37, description: 'description_example'}) # ClaimInvoiceAdjustmentReason | 

begin
  # Update ClaimInvoiceAdjustmentReason
  result = api_instance.update_claim_invoice_adjustment_reason(vbasoftware_database, adjustment_reason, claim_invoice_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->update_claim_invoice_adjustment_reason: #{e}"
end
```

#### Using the update_claim_invoice_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReasonVBAResponse>, Integer, Hash)> update_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason, claim_invoice_adjustment_reason)

```ruby
begin
  # Update ClaimInvoiceAdjustmentReason
  data, status_code, headers = api_instance.update_claim_invoice_adjustment_reason_with_http_info(vbasoftware_database, adjustment_reason, claim_invoice_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReasonsApi->update_claim_invoice_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **adjustment_reason** | **Integer** | Adjustment Reason |  |
| **claim_invoice_adjustment_reason** | [**ClaimInvoiceAdjustmentReason**](ClaimInvoiceAdjustmentReason.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentReasonVBAResponse**](ClaimInvoiceAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

