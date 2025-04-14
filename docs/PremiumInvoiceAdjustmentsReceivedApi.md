# Vba::PremiumInvoiceAdjustmentsReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#create_prem_invoice_adj_received) | **POST** /premium-invoice-adjustments-received | Create PremInvoiceAdjReceived |
| [**delete_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#delete_prem_invoice_adj_received) | **DELETE** /premium-invoice-adjustments-received/{premInvoiceAdjReceivedKey} | Delete PremInvoiceAdjReceived |
| [**get_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#get_prem_invoice_adj_received) | **GET** /premium-invoice-adjustments-received/{premInvoiceAdjReceivedKey} | Get PremInvoiceAdjReceived |
| [**list_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#list_prem_invoice_adj_received) | **GET** /premium-invoice-adjustments-received | List PremInvoiceAdjReceived |
| [**update_batch_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#update_batch_prem_invoice_adj_received) | **PUT** /premium-invoice-adjustments-received-batch | Create or Update Batch PremInvoiceAdjReceived |
| [**update_prem_invoice_adj_received**](PremiumInvoiceAdjustmentsReceivedApi.md#update_prem_invoice_adj_received) | **PUT** /premium-invoice-adjustments-received/{premInvoiceAdjReceivedKey} | Update PremInvoiceAdjReceived |


## create_prem_invoice_adj_received

> <PremInvoiceAdjReceivedVBAResponse> create_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received)

Create PremInvoiceAdjReceived

Creates a new PremInvoiceAdjReceived

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adj_received = Vba::PremInvoiceAdjReceived.new({prem_invoice_adj_received_key: 37}) # PremInvoiceAdjReceived | 

begin
  # Create PremInvoiceAdjReceived
  result = api_instance.create_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->create_prem_invoice_adj_received: #{e}"
end
```

#### Using the create_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjReceivedVBAResponse>, Integer, Hash)> create_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received)

```ruby
begin
  # Create PremInvoiceAdjReceived
  data, status_code, headers = api_instance.create_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->create_prem_invoice_adj_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adj_received** | [**PremInvoiceAdjReceived**](PremInvoiceAdjReceived.md) |  |  |

### Return type

[**PremInvoiceAdjReceivedVBAResponse**](PremInvoiceAdjReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_adj_received

> delete_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key)

Delete PremInvoiceAdjReceived

Deletes an PremInvoiceAdjReceived

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adj_received_key = 56 # Integer | PremInvoiceAdjReceived Key

begin
  # Delete PremInvoiceAdjReceived
  api_instance.delete_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->delete_prem_invoice_adj_received: #{e}"
end
```

#### Using the delete_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key)

```ruby
begin
  # Delete PremInvoiceAdjReceived
  data, status_code, headers = api_instance.delete_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->delete_prem_invoice_adj_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adj_received_key** | **Integer** | PremInvoiceAdjReceived Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_adj_received

> <PremInvoiceAdjReceivedVBAResponse> get_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key)

Get PremInvoiceAdjReceived

Gets PremInvoiceAdjReceived

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adj_received_key = 56 # Integer | PremInvoiceAdjReceived Key

begin
  # Get PremInvoiceAdjReceived
  result = api_instance.get_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->get_prem_invoice_adj_received: #{e}"
end
```

#### Using the get_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjReceivedVBAResponse>, Integer, Hash)> get_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key)

```ruby
begin
  # Get PremInvoiceAdjReceived
  data, status_code, headers = api_instance.get_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->get_prem_invoice_adj_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adj_received_key** | **Integer** | PremInvoiceAdjReceived Key |  |

### Return type

[**PremInvoiceAdjReceivedVBAResponse**](PremInvoiceAdjReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_adj_received

> <PremInvoiceAdjReceivedListVBAResponse> list_prem_invoice_adj_received(vbasoftware_database, opts)

List PremInvoiceAdjReceived

Lists all PremInvoiceAdjReceived

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceAdjReceived
  result = api_instance.list_prem_invoice_adj_received(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->list_prem_invoice_adj_received: #{e}"
end
```

#### Using the list_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjReceivedListVBAResponse>, Integer, Hash)> list_prem_invoice_adj_received_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremInvoiceAdjReceived
  data, status_code, headers = api_instance.list_prem_invoice_adj_received_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->list_prem_invoice_adj_received_with_http_info: #{e}"
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

[**PremInvoiceAdjReceivedListVBAResponse**](PremInvoiceAdjReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_adj_received

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received)

Create or Update Batch PremInvoiceAdjReceived

Create or Update multiple PremInvoiceAdjReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adj_received = [Vba::PremInvoiceAdjReceived.new({prem_invoice_adj_received_key: 37})] # Array<PremInvoiceAdjReceived> | 

begin
  # Create or Update Batch PremInvoiceAdjReceived
  result = api_instance.update_batch_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->update_batch_prem_invoice_adj_received: #{e}"
end
```

#### Using the update_batch_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received)

```ruby
begin
  # Create or Update Batch PremInvoiceAdjReceived
  data, status_code, headers = api_instance.update_batch_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->update_batch_prem_invoice_adj_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adj_received** | [**Array&lt;PremInvoiceAdjReceived&gt;**](PremInvoiceAdjReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_adj_received

> <PremInvoiceAdjReceivedVBAResponse> update_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key, prem_invoice_adj_received)

Update PremInvoiceAdjReceived

Updates a specific PremInvoiceAdjReceived.

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

api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_adj_received_key = 56 # Integer | PremInvoiceAdjReceived Key
prem_invoice_adj_received = Vba::PremInvoiceAdjReceived.new({prem_invoice_adj_received_key: 37}) # PremInvoiceAdjReceived | 

begin
  # Update PremInvoiceAdjReceived
  result = api_instance.update_prem_invoice_adj_received(vbasoftware_database, prem_invoice_adj_received_key, prem_invoice_adj_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->update_prem_invoice_adj_received: #{e}"
end
```

#### Using the update_prem_invoice_adj_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceAdjReceivedVBAResponse>, Integer, Hash)> update_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key, prem_invoice_adj_received)

```ruby
begin
  # Update PremInvoiceAdjReceived
  data, status_code, headers = api_instance.update_prem_invoice_adj_received_with_http_info(vbasoftware_database, prem_invoice_adj_received_key, prem_invoice_adj_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceAdjReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceAdjustmentsReceivedApi->update_prem_invoice_adj_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_adj_received_key** | **Integer** | PremInvoiceAdjReceived Key |  |
| **prem_invoice_adj_received** | [**PremInvoiceAdjReceived**](PremInvoiceAdjReceived.md) |  |  |

### Return type

[**PremInvoiceAdjReceivedVBAResponse**](PremInvoiceAdjReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

