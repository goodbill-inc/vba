# Vba::ClaimInvoiceReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_invoice_received**](ClaimInvoiceReceivedApi.md#create_claim_invoice_received) | **POST** /claim-invoice-received | Create ClaimInvoiceReceived |
| [**delete_claim_invoice_received**](ClaimInvoiceReceivedApi.md#delete_claim_invoice_received) | **DELETE** /claim-invoice-received/{claimInvoiceReceivedKey} | Delete ClaimInvoiceReceived |
| [**get_claim_invoice_received**](ClaimInvoiceReceivedApi.md#get_claim_invoice_received) | **GET** /claim-invoice-received/{claimInvoiceReceivedKey} | Get ClaimInvoiceReceived |
| [**list_claim_invoice_received**](ClaimInvoiceReceivedApi.md#list_claim_invoice_received) | **GET** /claim-invoice/{invoiceKey}/received | List ClaimInvoiceReceived |
| [**update_batch_claim_invoice_received**](ClaimInvoiceReceivedApi.md#update_batch_claim_invoice_received) | **PUT** /claim-invoice/{invoiceKey}/received-batch | Create or Update Batch ClaimInvoiceReceived |
| [**update_claim_invoice_received**](ClaimInvoiceReceivedApi.md#update_claim_invoice_received) | **PUT** /claim-invoice-received/{claimInvoiceReceivedKey} | Update ClaimInvoiceReceived |


## create_claim_invoice_received

> <ClaimInvoiceReceivedVBAResponse> create_claim_invoice_received(vbasoftware_database, claim_invoice_received)

Create ClaimInvoiceReceived

Creates a new ClaimInvoiceReceived

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_received = Vba::ClaimInvoiceReceived.new({claim_invoice_received_key: 37, claim_payment_key: 37, invoice_key: 37}) # ClaimInvoiceReceived | 

begin
  # Create ClaimInvoiceReceived
  result = api_instance.create_claim_invoice_received(vbasoftware_database, claim_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->create_claim_invoice_received: #{e}"
end
```

#### Using the create_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceReceivedVBAResponse>, Integer, Hash)> create_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received)

```ruby
begin
  # Create ClaimInvoiceReceived
  data, status_code, headers = api_instance.create_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->create_claim_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_received** | [**ClaimInvoiceReceived**](ClaimInvoiceReceived.md) |  |  |

### Return type

[**ClaimInvoiceReceivedVBAResponse**](ClaimInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_invoice_received

> delete_claim_invoice_received(vbasoftware_database, claim_invoice_received_key)

Delete ClaimInvoiceReceived

Deletes an ClaimInvoiceReceived

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_received_key = 56 # Integer | ClaimInvoiceReceived Key

begin
  # Delete ClaimInvoiceReceived
  api_instance.delete_claim_invoice_received(vbasoftware_database, claim_invoice_received_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->delete_claim_invoice_received: #{e}"
end
```

#### Using the delete_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key)

```ruby
begin
  # Delete ClaimInvoiceReceived
  data, status_code, headers = api_instance.delete_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->delete_claim_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_received_key** | **Integer** | ClaimInvoiceReceived Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_invoice_received

> <ClaimInvoiceReceivedVBAResponse> get_claim_invoice_received(vbasoftware_database, claim_invoice_received_key)

Get ClaimInvoiceReceived

Gets ClaimInvoiceReceived

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_received_key = 56 # Integer | ClaimInvoiceReceived Key

begin
  # Get ClaimInvoiceReceived
  result = api_instance.get_claim_invoice_received(vbasoftware_database, claim_invoice_received_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->get_claim_invoice_received: #{e}"
end
```

#### Using the get_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceReceivedVBAResponse>, Integer, Hash)> get_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key)

```ruby
begin
  # Get ClaimInvoiceReceived
  data, status_code, headers = api_instance.get_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->get_claim_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_received_key** | **Integer** | ClaimInvoiceReceived Key |  |

### Return type

[**ClaimInvoiceReceivedVBAResponse**](ClaimInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_invoice_received

> <ClaimInvoiceReceivedListVBAResponse> list_claim_invoice_received(vbasoftware_database, invoice_key, opts)

List ClaimInvoiceReceived

Lists all ClaimInvoiceReceived for the given invoiceKey

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimInvoiceReceived
  result = api_instance.list_claim_invoice_received(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->list_claim_invoice_received: #{e}"
end
```

#### Using the list_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceReceivedListVBAResponse>, Integer, Hash)> list_claim_invoice_received_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List ClaimInvoiceReceived
  data, status_code, headers = api_instance.list_claim_invoice_received_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->list_claim_invoice_received_with_http_info: #{e}"
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

[**ClaimInvoiceReceivedListVBAResponse**](ClaimInvoiceReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_invoice_received

> <MultiCodeResponseListVBAResponse> update_batch_claim_invoice_received(vbasoftware_database, invoice_key, claim_invoice_received)

Create or Update Batch ClaimInvoiceReceived

Create or Update multiple ClaimInvoiceReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
claim_invoice_received = [Vba::ClaimInvoiceReceived.new({claim_invoice_received_key: 37, claim_payment_key: 37, invoice_key: 37})] # Array<ClaimInvoiceReceived> | 

begin
  # Create or Update Batch ClaimInvoiceReceived
  result = api_instance.update_batch_claim_invoice_received(vbasoftware_database, invoice_key, claim_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->update_batch_claim_invoice_received: #{e}"
end
```

#### Using the update_batch_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_invoice_received_with_http_info(vbasoftware_database, invoice_key, claim_invoice_received)

```ruby
begin
  # Create or Update Batch ClaimInvoiceReceived
  data, status_code, headers = api_instance.update_batch_claim_invoice_received_with_http_info(vbasoftware_database, invoice_key, claim_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->update_batch_claim_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **claim_invoice_received** | [**Array&lt;ClaimInvoiceReceived&gt;**](ClaimInvoiceReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_invoice_received

> <ClaimInvoiceReceivedVBAResponse> update_claim_invoice_received(vbasoftware_database, claim_invoice_received_key, claim_invoice_received)

Update ClaimInvoiceReceived

Updates a specific ClaimInvoiceReceived.

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

api_instance = Vba::ClaimInvoiceReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_invoice_received_key = 56 # Integer | ClaimInvoiceReceived Key
claim_invoice_received = Vba::ClaimInvoiceReceived.new({claim_invoice_received_key: 37, claim_payment_key: 37, invoice_key: 37}) # ClaimInvoiceReceived | 

begin
  # Update ClaimInvoiceReceived
  result = api_instance.update_claim_invoice_received(vbasoftware_database, claim_invoice_received_key, claim_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->update_claim_invoice_received: #{e}"
end
```

#### Using the update_claim_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimInvoiceReceivedVBAResponse>, Integer, Hash)> update_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key, claim_invoice_received)

```ruby
begin
  # Update ClaimInvoiceReceived
  data, status_code, headers = api_instance.update_claim_invoice_received_with_http_info(vbasoftware_database, claim_invoice_received_key, claim_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimInvoiceReceivedApi->update_claim_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_invoice_received_key** | **Integer** | ClaimInvoiceReceived Key |  |
| **claim_invoice_received** | [**ClaimInvoiceReceived**](ClaimInvoiceReceived.md) |  |  |

### Return type

[**ClaimInvoiceReceivedVBAResponse**](ClaimInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

