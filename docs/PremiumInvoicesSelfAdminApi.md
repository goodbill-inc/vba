# Vba::PremiumInvoicesSelfAdminApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#create_prem_invoice_self_admin) | **POST** /premium-invoices/{invoiceKey}/self-admin | Create PremInvoiceSelfAdmin |
| [**delete_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#delete_prem_invoice_self_admin) | **DELETE** /premium-invoices/{invoiceKey}/self-admin/{premInvoiceSelfAdminKey} | Delete PremInvoiceSelfAdmin |
| [**get_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#get_prem_invoice_self_admin) | **GET** /premium-invoices/{invoiceKey}/self-admin/{premInvoiceSelfAdminKey} | Get PremInvoiceSelfAdmin |
| [**list_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#list_prem_invoice_self_admin) | **GET** /premium-invoices/{invoiceKey}/self-admin | List PremInvoiceSelfAdmin |
| [**update_batch_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#update_batch_prem_invoice_self_admin) | **PUT** /premium-invoices/{invoiceKey}/self-admin-batch | Create or Update Batch PremInvoiceSelfAdmin |
| [**update_prem_invoice_self_admin**](PremiumInvoicesSelfAdminApi.md#update_prem_invoice_self_admin) | **PUT** /premium-invoices/{invoiceKey}/self-admin/{premInvoiceSelfAdminKey} | Update PremInvoiceSelfAdmin |


## create_prem_invoice_self_admin

> <PremInvoiceSelfAdminVBAResponse> create_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin)

Create PremInvoiceSelfAdmin

Creates a new PremInvoiceSelfAdmin

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_self_admin = Vba::PremInvoiceSelfAdmin.new({prem_invoice_self_admin_key: 37, invoice_key: 37}) # PremInvoiceSelfAdmin | 

begin
  # Create PremInvoiceSelfAdmin
  result = api_instance.create_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->create_prem_invoice_self_admin: #{e}"
end
```

#### Using the create_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminVBAResponse>, Integer, Hash)> create_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin)

```ruby
begin
  # Create PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.create_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->create_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_self_admin** | [**PremInvoiceSelfAdmin**](PremInvoiceSelfAdmin.md) |  |  |

### Return type

[**PremInvoiceSelfAdminVBAResponse**](PremInvoiceSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_self_admin

> delete_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)

Delete PremInvoiceSelfAdmin

Deletes an PremInvoiceSelfAdmin

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key

begin
  # Delete PremInvoiceSelfAdmin
  api_instance.delete_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->delete_prem_invoice_self_admin: #{e}"
end
```

#### Using the delete_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)

```ruby
begin
  # Delete PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.delete_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->delete_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_self_admin

> <PremInvoiceSelfAdminVBAResponse> get_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)

Get PremInvoiceSelfAdmin

Gets PremInvoiceSelfAdmin

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key

begin
  # Get PremInvoiceSelfAdmin
  result = api_instance.get_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->get_prem_invoice_self_admin: #{e}"
end
```

#### Using the get_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminVBAResponse>, Integer, Hash)> get_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)

```ruby
begin
  # Get PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.get_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->get_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |

### Return type

[**PremInvoiceSelfAdminVBAResponse**](PremInvoiceSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_self_admin

> <PremInvoiceSelfAdminListVBAResponse> list_prem_invoice_self_admin(vbasoftware_database, invoice_key, opts)

List PremInvoiceSelfAdmin

Lists all PremInvoiceSelfAdmin for the given invoiceKey

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSelfAdmin
  result = api_instance.list_prem_invoice_self_admin(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->list_prem_invoice_self_admin: #{e}"
end
```

#### Using the list_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminListVBAResponse>, Integer, Hash)> list_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.list_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->list_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceSelfAdminListVBAResponse**](PremInvoiceSelfAdminListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_self_admin

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin)

Create or Update Batch PremInvoiceSelfAdmin

Create or Update multiple PremInvoiceSelfAdmin at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_self_admin = [Vba::PremInvoiceSelfAdmin.new({prem_invoice_self_admin_key: 37, invoice_key: 37})] # Array<PremInvoiceSelfAdmin> | 

begin
  # Create or Update Batch PremInvoiceSelfAdmin
  result = api_instance.update_batch_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->update_batch_prem_invoice_self_admin: #{e}"
end
```

#### Using the update_batch_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin)

```ruby
begin
  # Create or Update Batch PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.update_batch_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->update_batch_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_self_admin** | [**Array&lt;PremInvoiceSelfAdmin&gt;**](PremInvoiceSelfAdmin.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_self_admin

> <PremInvoiceSelfAdminVBAResponse> update_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key, prem_invoice_self_admin)

Update PremInvoiceSelfAdmin

Updates a specific PremInvoiceSelfAdmin.

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

api_instance = Vba::PremiumInvoicesSelfAdminApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_self_admin_key = 56 # Integer | PremInvoiceSelfAdmin Key
prem_invoice_self_admin = Vba::PremInvoiceSelfAdmin.new({prem_invoice_self_admin_key: 37, invoice_key: 37}) # PremInvoiceSelfAdmin | 

begin
  # Update PremInvoiceSelfAdmin
  result = api_instance.update_prem_invoice_self_admin(vbasoftware_database, invoice_key, prem_invoice_self_admin_key, prem_invoice_self_admin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->update_prem_invoice_self_admin: #{e}"
end
```

#### Using the update_prem_invoice_self_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSelfAdminVBAResponse>, Integer, Hash)> update_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key, prem_invoice_self_admin)

```ruby
begin
  # Update PremInvoiceSelfAdmin
  data, status_code, headers = api_instance.update_prem_invoice_self_admin_with_http_info(vbasoftware_database, invoice_key, prem_invoice_self_admin_key, prem_invoice_self_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSelfAdminVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoicesSelfAdminApi->update_prem_invoice_self_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_self_admin_key** | **Integer** | PremInvoiceSelfAdmin Key |  |
| **prem_invoice_self_admin** | [**PremInvoiceSelfAdmin**](PremInvoiceSelfAdmin.md) |  |  |

### Return type

[**PremInvoiceSelfAdminVBAResponse**](PremInvoiceSelfAdminVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

