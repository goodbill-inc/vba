# Vba::InvoiceReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_invoice_reason**](InvoiceReasonsApi.md#create_invoice_reason) | **POST** /invoice-reasons | Create InvoiceReason |
| [**delete_invoice_reason**](InvoiceReasonsApi.md#delete_invoice_reason) | **DELETE** /invoice-reasons/{reasonKey} | Delete InvoiceReason |
| [**get_invoice_reason**](InvoiceReasonsApi.md#get_invoice_reason) | **GET** /invoice-reasons/{reasonKey} | Get InvoiceReason |
| [**list_invoice_reason**](InvoiceReasonsApi.md#list_invoice_reason) | **GET** /invoice-reasons | List InvoiceReason |
| [**update_batch_invoice_reason**](InvoiceReasonsApi.md#update_batch_invoice_reason) | **PUT** /invoice-reasons-batch | Create or Update Batch InvoiceReason |
| [**update_invoice_reason**](InvoiceReasonsApi.md#update_invoice_reason) | **PUT** /invoice-reasons/{reasonKey} | Update InvoiceReason |


## create_invoice_reason

> <InvoiceReasonVBAResponse> create_invoice_reason(vbasoftware_database, invoice_reason)

Create InvoiceReason

Creates a new InvoiceReason

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_reason = Vba::InvoiceReason.new({reason_key: 37}) # InvoiceReason | 

begin
  # Create InvoiceReason
  result = api_instance.create_invoice_reason(vbasoftware_database, invoice_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->create_invoice_reason: #{e}"
end
```

#### Using the create_invoice_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceReasonVBAResponse>, Integer, Hash)> create_invoice_reason_with_http_info(vbasoftware_database, invoice_reason)

```ruby
begin
  # Create InvoiceReason
  data, status_code, headers = api_instance.create_invoice_reason_with_http_info(vbasoftware_database, invoice_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->create_invoice_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_reason** | [**InvoiceReason**](InvoiceReason.md) |  |  |

### Return type

[**InvoiceReasonVBAResponse**](InvoiceReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_invoice_reason

> delete_invoice_reason(vbasoftware_database, reason_key)

Delete InvoiceReason

Deletes an InvoiceReason

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_key = 56 # Integer | Reason Key

begin
  # Delete InvoiceReason
  api_instance.delete_invoice_reason(vbasoftware_database, reason_key)
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->delete_invoice_reason: #{e}"
end
```

#### Using the delete_invoice_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_invoice_reason_with_http_info(vbasoftware_database, reason_key)

```ruby
begin
  # Delete InvoiceReason
  data, status_code, headers = api_instance.delete_invoice_reason_with_http_info(vbasoftware_database, reason_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->delete_invoice_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_key** | **Integer** | Reason Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_invoice_reason

> <InvoiceReasonVBAResponse> get_invoice_reason(vbasoftware_database, reason_key)

Get InvoiceReason

Gets InvoiceReason

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_key = 56 # Integer | Reason Key

begin
  # Get InvoiceReason
  result = api_instance.get_invoice_reason(vbasoftware_database, reason_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->get_invoice_reason: #{e}"
end
```

#### Using the get_invoice_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceReasonVBAResponse>, Integer, Hash)> get_invoice_reason_with_http_info(vbasoftware_database, reason_key)

```ruby
begin
  # Get InvoiceReason
  data, status_code, headers = api_instance.get_invoice_reason_with_http_info(vbasoftware_database, reason_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->get_invoice_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_key** | **Integer** | Reason Key |  |

### Return type

[**InvoiceReasonVBAResponse**](InvoiceReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_invoice_reason

> <InvoiceReasonListVBAResponse> list_invoice_reason(vbasoftware_database, opts)

List InvoiceReason

Lists all InvoiceReason

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List InvoiceReason
  result = api_instance.list_invoice_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->list_invoice_reason: #{e}"
end
```

#### Using the list_invoice_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceReasonListVBAResponse>, Integer, Hash)> list_invoice_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List InvoiceReason
  data, status_code, headers = api_instance.list_invoice_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->list_invoice_reason_with_http_info: #{e}"
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

[**InvoiceReasonListVBAResponse**](InvoiceReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_invoice_reason

> <MultiCodeResponseListVBAResponse> update_batch_invoice_reason(vbasoftware_database, invoice_reason)

Create or Update Batch InvoiceReason

Create or Update multiple InvoiceReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_reason = [Vba::InvoiceReason.new({reason_key: 37})] # Array<InvoiceReason> | 

begin
  # Create or Update Batch InvoiceReason
  result = api_instance.update_batch_invoice_reason(vbasoftware_database, invoice_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->update_batch_invoice_reason: #{e}"
end
```

#### Using the update_batch_invoice_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_invoice_reason_with_http_info(vbasoftware_database, invoice_reason)

```ruby
begin
  # Create or Update Batch InvoiceReason
  data, status_code, headers = api_instance.update_batch_invoice_reason_with_http_info(vbasoftware_database, invoice_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->update_batch_invoice_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_reason** | [**Array&lt;InvoiceReason&gt;**](InvoiceReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_invoice_reason

> <InvoiceReasonVBAResponse> update_invoice_reason(vbasoftware_database, reason_key, invoice_reason)

Update InvoiceReason

Updates a specific InvoiceReason.

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

api_instance = Vba::InvoiceReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_key = 56 # Integer | Reason Key
invoice_reason = Vba::InvoiceReason.new({reason_key: 37}) # InvoiceReason | 

begin
  # Update InvoiceReason
  result = api_instance.update_invoice_reason(vbasoftware_database, reason_key, invoice_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->update_invoice_reason: #{e}"
end
```

#### Using the update_invoice_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceReasonVBAResponse>, Integer, Hash)> update_invoice_reason_with_http_info(vbasoftware_database, reason_key, invoice_reason)

```ruby
begin
  # Update InvoiceReason
  data, status_code, headers = api_instance.update_invoice_reason_with_http_info(vbasoftware_database, reason_key, invoice_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InvoiceReasonsApi->update_invoice_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_key** | **Integer** | Reason Key |  |
| **invoice_reason** | [**InvoiceReason**](InvoiceReason.md) |  |  |

### Return type

[**InvoiceReasonVBAResponse**](InvoiceReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

