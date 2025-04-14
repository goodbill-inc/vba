# Vba::PremiumInvoicesReceivedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_received**](PremiumInvoicesReceivedApi.md#create_prem_invoice_received) | **POST** /premium-invoices-received | Create PremInvoiceReceived |
| [**delete_prem_invoice_received**](PremiumInvoicesReceivedApi.md#delete_prem_invoice_received) | **DELETE** /premium-invoices-received/{premInvoiceReceivedKey} | Delete PremInvoiceReceived |
| [**get_prem_invoice_received**](PremiumInvoicesReceivedApi.md#get_prem_invoice_received) | **GET** /premium-invoices-received/{premInvoiceReceivedKey} | Get PremInvoiceReceived |
| [**list_prem_invoice_received**](PremiumInvoicesReceivedApi.md#list_prem_invoice_received) | **GET** /premium-invoices-received | List PremInvoiceReceived |
| [**update_batch_prem_invoice_received**](PremiumInvoicesReceivedApi.md#update_batch_prem_invoice_received) | **PUT** /premium-invoices-received-batch | Create or Update Batch PremInvoiceReceived |
| [**update_prem_invoice_received**](PremiumInvoicesReceivedApi.md#update_prem_invoice_received) | **PUT** /premium-invoices-received/{premInvoiceReceivedKey} | Update PremInvoiceReceived |


## create_prem_invoice_received

> <PremInvoiceReceivedVBAResponse> create_prem_invoice_received(vbasoftware_database, prem_invoice_received)

Create PremInvoiceReceived

Creates a new PremInvoiceReceived

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_received = Vba::PremInvoiceReceived.new({prem_invoice_received_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', invoice_key: 37, prem_payment_key: 37, prem_rate_key: 37, subscriber_id: 'subscriber_id_example'}) # PremInvoiceReceived | 

begin
  # Create PremInvoiceReceived
  result = api_instance.create_prem_invoice_received(vbasoftware_database, prem_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->create_prem_invoice_received: #{e}"
end
```

#### Using the create_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceReceivedVBAResponse>, Integer, Hash)> create_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received)

```ruby
begin
  # Create PremInvoiceReceived
  data, status_code, headers = api_instance.create_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->create_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_received** | [**PremInvoiceReceived**](PremInvoiceReceived.md) |  |  |

### Return type

[**PremInvoiceReceivedVBAResponse**](PremInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_received

> delete_prem_invoice_received(vbasoftware_database, prem_invoice_received_key)

Delete PremInvoiceReceived

Deletes an PremInvoiceReceived

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_received_key = 56 # Integer | PremInvoiceReceived Key

begin
  # Delete PremInvoiceReceived
  api_instance.delete_prem_invoice_received(vbasoftware_database, prem_invoice_received_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->delete_prem_invoice_received: #{e}"
end
```

#### Using the delete_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key)

```ruby
begin
  # Delete PremInvoiceReceived
  data, status_code, headers = api_instance.delete_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->delete_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_received_key** | **Integer** | PremInvoiceReceived Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_received

> <PremInvoiceReceivedVBAResponse> get_prem_invoice_received(vbasoftware_database, prem_invoice_received_key)

Get PremInvoiceReceived

Gets PremInvoiceReceived

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_received_key = 56 # Integer | PremInvoiceReceived Key

begin
  # Get PremInvoiceReceived
  result = api_instance.get_prem_invoice_received(vbasoftware_database, prem_invoice_received_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->get_prem_invoice_received: #{e}"
end
```

#### Using the get_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceReceivedVBAResponse>, Integer, Hash)> get_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key)

```ruby
begin
  # Get PremInvoiceReceived
  data, status_code, headers = api_instance.get_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->get_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_received_key** | **Integer** | PremInvoiceReceived Key |  |

### Return type

[**PremInvoiceReceivedVBAResponse**](PremInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_received

> <PremInvoiceReceivedListVBAResponse> list_prem_invoice_received(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, opts)

List PremInvoiceReceived

Lists all PremInvoiceReceived for the given invoiceKey and groupID and divisionID and subscriberID and premRateKey

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceReceived
  result = api_instance.list_prem_invoice_received(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->list_prem_invoice_received: #{e}"
end
```

#### Using the list_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceReceivedListVBAResponse>, Integer, Hash)> list_prem_invoice_received_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, opts)

```ruby
begin
  # List PremInvoiceReceived
  data, status_code, headers = api_instance.list_prem_invoice_received_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceReceivedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->list_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceReceivedListVBAResponse**](PremInvoiceReceivedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_received

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_received(vbasoftware_database, prem_invoice_received)

Create or Update Batch PremInvoiceReceived

Create or Update multiple PremInvoiceReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_received = [Vba::PremInvoiceReceived.new({prem_invoice_received_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', invoice_key: 37, prem_payment_key: 37, prem_rate_key: 37, subscriber_id: 'subscriber_id_example'})] # Array<PremInvoiceReceived> | 

begin
  # Create or Update Batch PremInvoiceReceived
  result = api_instance.update_batch_prem_invoice_received(vbasoftware_database, prem_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->update_batch_prem_invoice_received: #{e}"
end
```

#### Using the update_batch_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received)

```ruby
begin
  # Create or Update Batch PremInvoiceReceived
  data, status_code, headers = api_instance.update_batch_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->update_batch_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_received** | [**Array&lt;PremInvoiceReceived&gt;**](PremInvoiceReceived.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_received

> <PremInvoiceReceivedVBAResponse> update_prem_invoice_received(vbasoftware_database, prem_invoice_received_key, prem_invoice_received)

Update PremInvoiceReceived

Updates a specific PremInvoiceReceived.

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

api_instance = Vba::PremiumInvoicesReceivedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_invoice_received_key = 56 # Integer | PremInvoiceReceived Key
prem_invoice_received = Vba::PremInvoiceReceived.new({prem_invoice_received_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', invoice_key: 37, prem_payment_key: 37, prem_rate_key: 37, subscriber_id: 'subscriber_id_example'}) # PremInvoiceReceived | 

begin
  # Update PremInvoiceReceived
  result = api_instance.update_prem_invoice_received(vbasoftware_database, prem_invoice_received_key, prem_invoice_received)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->update_prem_invoice_received: #{e}"
end
```

#### Using the update_prem_invoice_received_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceReceivedVBAResponse>, Integer, Hash)> update_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key, prem_invoice_received)

```ruby
begin
  # Update PremInvoiceReceived
  data, status_code, headers = api_instance.update_prem_invoice_received_with_http_info(vbasoftware_database, prem_invoice_received_key, prem_invoice_received)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceReceivedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesReceivedApi->update_prem_invoice_received_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_invoice_received_key** | **Integer** | PremInvoiceReceived Key |  |
| **prem_invoice_received** | [**PremInvoiceReceived**](PremInvoiceReceived.md) |  |  |

### Return type

[**PremInvoiceReceivedVBAResponse**](PremInvoiceReceivedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

