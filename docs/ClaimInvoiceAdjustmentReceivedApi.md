# Vba::ClaimInvoiceAdjustmentReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#create_claim_invoice_adjustment_received) | **POST** /claim-invoice-adjustment-received | Create ClaimInvoiceAdjustmentReceived |
| [**delete_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#delete_claim_invoice_adjustment_received) | **DELETE** /claim-invoice-adjustment-received/{claimInvoiceAdjustmentReceivedKey} | Delete ClaimInvoiceAdjustmentReceived |
| [**get_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#get_claim_invoice_adjustment_received) | **GET** /claim-invoice-adjustment-received/{claimInvoiceAdjustmentReceivedKey} | Get ClaimInvoiceAdjustmentReceived |
| [**list_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#list_claim_invoice_adjustment_received) | **GET** /claim-invoice-adjustment/{claimInvoiceAdjustmentKey}/received | List ClaimInvoiceAdjustmentReceived |
| [**update_batch_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#update_batch_claim_invoice_adjustment_received) | **PUT** /claim-invoice-adjustment-received-batch | Create or Update Batch ClaimInvoiceAdjustmentReceived |
| [**update_claim_invoice_adjustment_received**](ClaimInvoiceAdjustmentReceivedApi.md#update_claim_invoice_adjustment_received) | **PUT** /claim-invoice-adjustment-received/{claimInvoiceAdjustmentReceivedKey} | Update ClaimInvoiceAdjustmentReceived |


## create_claim_invoice_adjustment_received

> <ClaimInvoiceAdjustmentReceivedVBAResponse> create_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received)

Create ClaimInvoiceAdjustmentReceived

Creates a new ClaimInvoiceAdjustmentReceived

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_received = Vba::ClaimInvoiceAdjustmentReceived.new({claim_invoice_adjustment_received_key: 37, claim_invoice_adjustment_key: 37, claim_payment_key: 37}) # ClaimInvoiceAdjustmentReceived | 

begin
  # Create ClaimInvoiceAdjustmentReceived
  result = api_instance.create_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->create_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the create_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReceivedVBAResponse>, Integer, Hash)> create_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received)

```ruby
begin
  # Create ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.create_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->create_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_received** | [**ClaimInvoiceAdjustmentReceived**](ClaimInvoiceAdjustmentReceived.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentReceivedVBAResponse**](ClaimInvoiceAdjustmentReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_adjustment_received

> delete_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key)

Delete ClaimInvoiceAdjustmentReceived

Deletes an ClaimInvoiceAdjustmentReceived

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_received_key = 56 # Integer | ClaimInvoiceAdjustmentReceived Key

begin
  # Delete ClaimInvoiceAdjustmentReceived
  api_instance.delete_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->delete_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the delete_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key)

```ruby
begin
  # Delete ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.delete_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->delete_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_received_key** | **Integer** | ClaimInvoiceAdjustmentReceived Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_adjustment_received

> <ClaimInvoiceAdjustmentReceivedVBAResponse> get_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key)

Get ClaimInvoiceAdjustmentReceived

Gets ClaimInvoiceAdjustmentReceived

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_received_key = 56 # Integer | ClaimInvoiceAdjustmentReceived Key

begin
  # Get ClaimInvoiceAdjustmentReceived
  result = api_instance.get_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->get_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the get_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReceivedVBAResponse>, Integer, Hash)> get_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key)

```ruby
begin
  # Get ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.get_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->get_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_received_key** | **Integer** | ClaimInvoiceAdjustmentReceived Key |  |

### Return type

[**ClaimInvoiceAdjustmentReceivedVBAResponse**](ClaimInvoiceAdjustmentReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_adjustment_received

> <ClaimInvoiceAdjustmentReceivedListVBAResponse> list_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_key, opts)

List ClaimInvoiceAdjustmentReceived

Lists all ClaimInvoiceAdjustmentReceived for the given claimInvoiceAdjustmentKey

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_key = 56 # Integer | ClaimInvoiceAdjustment Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoiceAdjustmentReceived
  result = api_instance.list_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->list_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the list_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReceivedListVBAResponse>, Integer, Hash)> list_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_key, opts)

```ruby
begin
  # List ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.list_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->list_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_key** | **Integer** | ClaimInvoiceAdjustment Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ClaimInvoiceAdjustmentReceivedListVBAResponse**](ClaimInvoiceAdjustmentReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_adjustment_received

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received)

Create or Update Batch ClaimInvoiceAdjustmentReceived

Create or Update multiple ClaimInvoiceAdjustmentReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_received = [Vba::ClaimInvoiceAdjustmentReceived.new({claim_invoice_adjustment_received_key: 37, claim_invoice_adjustment_key: 37, claim_payment_key: 37})] # Array<ClaimInvoiceAdjustmentReceived> | 

begin
  # Create or Update Batch ClaimInvoiceAdjustmentReceived
  result = api_instance.update_batch_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->update_batch_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the update_batch_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received)

```ruby
begin
  # Create or Update Batch ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.update_batch_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->update_batch_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_received** | [**Array&lt;ClaimInvoiceAdjustmentReceived&gt;**](ClaimInvoiceAdjustmentReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_adjustment_received

> <ClaimInvoiceAdjustmentReceivedVBAResponse> update_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key, claim_invoice_adjustment_received)

Update ClaimInvoiceAdjustmentReceived

Updates a specific ClaimInvoiceAdjustmentReceived.

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

api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_adjustment_received_key = 56 # Integer | ClaimInvoiceAdjustmentReceived Key
claim_invoice_adjustment_received = Vba::ClaimInvoiceAdjustmentReceived.new({claim_invoice_adjustment_received_key: 37, claim_invoice_adjustment_key: 37, claim_payment_key: 37}) # ClaimInvoiceAdjustmentReceived | 

begin
  # Update ClaimInvoiceAdjustmentReceived
  result = api_instance.update_claim_invoice_adjustment_received(vbasoftware_database, claim_invoice_adjustment_received_key, claim_invoice_adjustment_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->update_claim_invoice_adjustment_received: #{e}"
end
```

#### Using the update_claim_invoice_adjustment_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceAdjustmentReceivedVBAResponse>, Integer, Hash)> update_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key, claim_invoice_adjustment_received)

```ruby
begin
  # Update ClaimInvoiceAdjustmentReceived
  data, status_code, headers = api_instance.update_claim_invoice_adjustment_received_with_http_info(vbasoftware_database, claim_invoice_adjustment_received_key, claim_invoice_adjustment_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceAdjustmentReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceAdjustmentReceivedApi->update_claim_invoice_adjustment_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_adjustment_received_key** | **Integer** | ClaimInvoiceAdjustmentReceived Key |  |
| **claim_invoice_adjustment_received** | [**ClaimInvoiceAdjustmentReceived**](ClaimInvoiceAdjustmentReceived.md) |  |  |

### Return type

[**ClaimInvoiceAdjustmentReceivedVBAResponse**](ClaimInvoiceAdjustmentReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

