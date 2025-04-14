# Vba::PremiumInvoicesSelfAdminReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#create_prem_invoice_self_admin_received) | **POST** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received | Create PremInvoiceSelfAdminReceived |
| [**delete_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#delete_prem_invoice_self_admin_received) | **DELETE** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received/{premInvoiceSelfAdminReceivedKey} | Delete PremInvoiceSelfAdminReceived |
| [**get_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#get_prem_invoice_self_admin_received) | **GET** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received/{premInvoiceSelfAdminReceivedKey} | Get PremInvoiceSelfAdminReceived |
| [**list_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#list_prem_invoice_self_admin_received) | **GET** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received | List PremInvoiceSelfAdminReceived |
| [**update_batch_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#update_batch_prem_invoice_self_admin_received) | **PUT** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received-batch | Create or Update Batch PremInvoiceSelfAdminReceived |
| [**update_prem_invoice_self_admin_received**](PremiumInvoicesSelfAdminReceivedApi.md#update_prem_invoice_self_admin_received) | **PUT** /premium-invoices-self-admin/{premInvoiceSelfAdminKey}/received/{premInvoiceSelfAdminReceivedKey} | Update PremInvoiceSelfAdminReceived |


## create_prem_invoice_self_admin_received

> <PremInvoiceSelfAdminReceivedVBAResponse> create_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)

Create PremInvoiceSelfAdminReceived

Creates a new PremInvoiceSelfAdminReceived

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin_received = Vba::PremInvoiceSelfAdminReceived.new({prem_invoice_self_admin_received_key: 37, prem_invoice_self_admin_key: 37}) # PremInvoiceSelfAdminReceived | 

begin
  # Create PremInvoiceSelfAdminReceived
  result = api_instance.create_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->create_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the create_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminReceivedVBAResponse>, Integer, Hash)> create_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)

```ruby
begin
  # Create PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.create_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->create_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin_received** | [**PremInvoiceSelfAdminReceived**](PremInvoiceSelfAdminReceived.md) |  |  |

### Return type

[**PremInvoiceSelfAdminReceivedVBAResponse**](PremInvoiceSelfAdminReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_self_admin_received

> delete_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)

Delete PremInvoiceSelfAdminReceived

Deletes an PremInvoiceSelfAdminReceived

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin_received_key = 56 # Integer | PremInvoiceSelfAdminReceived Key

begin
  # Delete PremInvoiceSelfAdminReceived
  api_instance.delete_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->delete_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the delete_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)

```ruby
begin
  # Delete PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.delete_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->delete_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin_received_key** | **Integer** | PremInvoiceSelfAdminReceived Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_self_admin_received

> <PremInvoiceSelfAdminReceivedVBAResponse> get_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)

Get PremInvoiceSelfAdminReceived

Gets PremInvoiceSelfAdminReceived

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin_received_key = 56 # Integer | PremInvoiceSelfAdminReceived Key

begin
  # Get PremInvoiceSelfAdminReceived
  result = api_instance.get_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->get_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the get_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminReceivedVBAResponse>, Integer, Hash)> get_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)

```ruby
begin
  # Get PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.get_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->get_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin_received_key** | **Integer** | PremInvoiceSelfAdminReceived Key |  |

### Return type

[**PremInvoiceSelfAdminReceivedVBAResponse**](PremInvoiceSelfAdminReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_self_admin_received

> <PremInvoiceSelfAdminReceivedListVBAResponse> list_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, opts)

List PremInvoiceSelfAdminReceived

Lists all PremInvoiceSelfAdminReceived for the given premInvoiceSelfAdminKey

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSelfAdminReceived
  result = api_instance.list_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->list_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the list_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminReceivedListVBAResponse>, Integer, Hash)> list_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, opts)

```ruby
begin
  # List PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.list_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->list_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceSelfAdminReceivedListVBAResponse**](PremInvoiceSelfAdminReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_self_admin_received

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)

Create or Update Batch PremInvoiceSelfAdminReceived

Create or Update multiple PremInvoiceSelfAdminReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin_received = [Vba::PremInvoiceSelfAdminReceived.new({prem_invoice_self_admin_received_key: 37, prem_invoice_self_admin_key: 37})] # Array<PremInvoiceSelfAdminReceived> | 

begin
  # Create or Update Batch PremInvoiceSelfAdminReceived
  result = api_instance.update_batch_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->update_batch_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the update_batch_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)

```ruby
begin
  # Create or Update Batch PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.update_batch_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->update_batch_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin_received** | [**Array&lt;PremInvoiceSelfAdminReceived&gt;**](PremInvoiceSelfAdminReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_self_admin_received

> <PremInvoiceSelfAdminReceivedVBAResponse> update_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key, prem_invoice_self_admin_received)

Update PremInvoiceSelfAdminReceived

Updates a specific PremInvoiceSelfAdminReceived.

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

api_instance = Vba::PremiumInvoicesSelfAdminReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin_received_key = 56 # Integer | PremInvoiceSelfAdminReceived Key
prem_invoice_self_admin_received = Vba::PremInvoiceSelfAdminReceived.new({prem_invoice_self_admin_received_key: 37, prem_invoice_self_admin_key: 37}) # PremInvoiceSelfAdminReceived | 

begin
  # Update PremInvoiceSelfAdminReceived
  result = api_instance.update_prem_invoice_self_admin_received(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key, prem_invoice_self_admin_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->update_prem_invoice_self_admin_received: #{e}"
end
```

#### Using the update_prem_invoice_self_admin_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminReceivedVBAResponse>, Integer, Hash)> update_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key, prem_invoice_self_admin_received)

```ruby
begin
  # Update PremInvoiceSelfAdminReceived
  data, status_code, headers = api_instance.update_prem_invoice_self_admin_received_with_http_info(vbasoftware_database, prem_invoice_self_admin_key, prem_invoice_self_admin_received_key, prem_invoice_self_admin_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminReceivedApi->update_prem_invoice_self_admin_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin_received_key** | **Integer** | PremInvoiceSelfAdminReceived Key |  |
| **prem_invoice_self_admin_received** | [**PremInvoiceSelfAdminReceived**](PremInvoiceSelfAdminReceived.md) |  |  |

### Return type

[**PremInvoiceSelfAdminReceivedVBAResponse**](PremInvoiceSelfAdminReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

