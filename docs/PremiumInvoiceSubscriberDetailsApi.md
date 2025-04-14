# Vba::PremiumInvoiceSubscriberDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#create_prem_invoice_subscriber_detail) | **POST** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details | Create PremInvoiceSubscriberDetail |
| [**delete_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#delete_prem_invoice_subscriber_detail) | **DELETE** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details/{premRateKey} | Delete PremInvoiceSubscriberDetail |
| [**get_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#get_prem_invoice_subscriber_detail) | **GET** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details/{premRateKey} | Get PremInvoiceSubscriberDetail |
| [**list_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#list_prem_invoice_subscriber_detail) | **GET** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details | List PremInvoiceSubscriberDetail |
| [**update_batch_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#update_batch_prem_invoice_subscriber_detail) | **PUT** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details-batch | Create or Update Batch PremInvoiceSubscriberDetail |
| [**update_prem_invoice_subscriber_detail**](PremiumInvoiceSubscriberDetailsApi.md#update_prem_invoice_subscriber_detail) | **PUT** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID}/details/{premRateKey} | Update PremInvoiceSubscriberDetail |


## create_prem_invoice_subscriber_detail

> <PremInvoiceSubscriberDetailVBAResponse> create_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)

Create PremInvoiceSubscriberDetail

Creates a new PremInvoiceSubscriberDetail

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_invoice_subscriber_detail = Vba::PremInvoiceSubscriberDetail.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', prem_rate_key: 37, premium_waived: false}) # PremInvoiceSubscriberDetail | 

begin
  # Create PremInvoiceSubscriberDetail
  result = api_instance.create_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->create_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the create_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberDetailVBAResponse>, Integer, Hash)> create_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)

```ruby
begin
  # Create PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.create_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->create_prem_invoice_subscriber_detail_with_http_info: #{e}"
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
| **prem_invoice_subscriber_detail** | [**PremInvoiceSubscriberDetail**](PremInvoiceSubscriberDetail.md) |  |  |

### Return type

[**PremInvoiceSubscriberDetailVBAResponse**](PremInvoiceSubscriberDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_subscriber_detail

> delete_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)

Delete PremInvoiceSubscriberDetail

Deletes an PremInvoiceSubscriberDetail

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Delete PremInvoiceSubscriberDetail
  api_instance.delete_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->delete_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the delete_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)

```ruby
begin
  # Delete PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.delete_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->delete_prem_invoice_subscriber_detail_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_subscriber_detail

> <PremInvoiceSubscriberDetailVBAResponse> get_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)

Get PremInvoiceSubscriberDetail

Gets PremInvoiceSubscriberDetail

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Get PremInvoiceSubscriberDetail
  result = api_instance.get_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->get_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the get_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberDetailVBAResponse>, Integer, Hash)> get_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)

```ruby
begin
  # Get PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.get_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->get_prem_invoice_subscriber_detail_with_http_info: #{e}"
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

### Return type

[**PremInvoiceSubscriberDetailVBAResponse**](PremInvoiceSubscriberDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber_detail

> <PremInvoiceSubscriberDetailListVBAResponse> list_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, opts)

List PremInvoiceSubscriberDetail

Lists all PremInvoiceSubscriberDetail for the given invoiceKey and groupID and divisionID and subscriberID

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSubscriberDetail
  result = api_instance.list_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->list_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberDetailListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, opts)

```ruby
begin
  # List PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->list_prem_invoice_subscriber_detail_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceSubscriberDetailListVBAResponse**](PremInvoiceSubscriberDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_subscriber_detail

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)

Create or Update Batch PremInvoiceSubscriberDetail

Create or Update multiple PremInvoiceSubscriberDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_invoice_subscriber_detail = [Vba::PremInvoiceSubscriberDetail.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', prem_rate_key: 37, premium_waived: false})] # Array<PremInvoiceSubscriberDetail> | 

begin
  # Create or Update Batch PremInvoiceSubscriberDetail
  result = api_instance.update_batch_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->update_batch_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the update_batch_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)

```ruby
begin
  # Create or Update Batch PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.update_batch_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->update_batch_prem_invoice_subscriber_detail_with_http_info: #{e}"
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
| **prem_invoice_subscriber_detail** | [**Array&lt;PremInvoiceSubscriberDetail&gt;**](PremInvoiceSubscriberDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_subscriber_detail

> <PremInvoiceSubscriberDetailVBAResponse> update_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, prem_invoice_subscriber_detail)

Update PremInvoiceSubscriberDetail

Updates a specific PremInvoiceSubscriberDetail.

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

api_instance = Vba::PremiumInvoiceSubscriberDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_rate_key = 56 # Integer | PremRate Key
prem_invoice_subscriber_detail = Vba::PremInvoiceSubscriberDetail.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', prem_rate_key: 37, premium_waived: false}) # PremInvoiceSubscriberDetail | 

begin
  # Update PremInvoiceSubscriberDetail
  result = api_instance.update_prem_invoice_subscriber_detail(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, prem_invoice_subscriber_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->update_prem_invoice_subscriber_detail: #{e}"
end
```

#### Using the update_prem_invoice_subscriber_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberDetailVBAResponse>, Integer, Hash)> update_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, prem_invoice_subscriber_detail)

```ruby
begin
  # Update PremInvoiceSubscriberDetail
  data, status_code, headers = api_instance.update_prem_invoice_subscriber_detail_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_rate_key, prem_invoice_subscriber_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscriberDetailsApi->update_prem_invoice_subscriber_detail_with_http_info: #{e}"
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
| **prem_invoice_subscriber_detail** | [**PremInvoiceSubscriberDetail**](PremInvoiceSubscriberDetail.md) |  |  |

### Return type

[**PremInvoiceSubscriberDetailVBAResponse**](PremInvoiceSubscriberDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

