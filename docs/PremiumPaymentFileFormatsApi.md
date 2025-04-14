# Vba::PremiumPaymentFileFormatsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#create_prem_payment_file_format) | **POST** /premium-payment-file-formats | Create PremPaymentFileFormat |
| [**delete_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#delete_prem_payment_file_format) | **DELETE** /premium-payment-file-formats/{paymentFileFormatKey} | Delete PremPaymentFileFormat |
| [**get_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#get_prem_payment_file_format) | **GET** /premium-payment-file-formats/{paymentFileFormatKey} | Get PremPaymentFileFormat |
| [**list_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#list_prem_payment_file_format) | **GET** /premium-payment-file-formats | List PremPaymentFileFormat |
| [**update_batch_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#update_batch_prem_payment_file_format) | **PUT** /premium-payment-file-formats-batch | Create or Update Batch PremPaymentFileFormat |
| [**update_prem_payment_file_format**](PremiumPaymentFileFormatsApi.md#update_prem_payment_file_format) | **PUT** /premium-payment-file-formats/{paymentFileFormatKey} | Update PremPaymentFileFormat |


## create_prem_payment_file_format

> <PremPaymentFileFormatVBAResponse> create_prem_payment_file_format(vbasoftware_database, prem_payment_file_format)

Create PremPaymentFileFormat

Creates a new PremPaymentFileFormat

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_file_format = Vba::PremPaymentFileFormat.new({payment_file_format_key: 37}) # PremPaymentFileFormat | 

begin
  # Create PremPaymentFileFormat
  result = api_instance.create_prem_payment_file_format(vbasoftware_database, prem_payment_file_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->create_prem_payment_file_format: #{e}"
end
```

#### Using the create_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentFileFormatVBAResponse>, Integer, Hash)> create_prem_payment_file_format_with_http_info(vbasoftware_database, prem_payment_file_format)

```ruby
begin
  # Create PremPaymentFileFormat
  data, status_code, headers = api_instance.create_prem_payment_file_format_with_http_info(vbasoftware_database, prem_payment_file_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentFileFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->create_prem_payment_file_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_file_format** | [**PremPaymentFileFormat**](PremPaymentFileFormat.md) |  |  |

### Return type

[**PremPaymentFileFormatVBAResponse**](PremPaymentFileFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_payment_file_format

> delete_prem_payment_file_format(vbasoftware_database, payment_file_format_key)

Delete PremPaymentFileFormat

Deletes an PremPaymentFileFormat

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_file_format_key = 56 # Integer | Payment File Format Key

begin
  # Delete PremPaymentFileFormat
  api_instance.delete_prem_payment_file_format(vbasoftware_database, payment_file_format_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->delete_prem_payment_file_format: #{e}"
end
```

#### Using the delete_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key)

```ruby
begin
  # Delete PremPaymentFileFormat
  data, status_code, headers = api_instance.delete_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->delete_prem_payment_file_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_file_format_key** | **Integer** | Payment File Format Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_payment_file_format

> <PremPaymentFileFormatVBAResponse> get_prem_payment_file_format(vbasoftware_database, payment_file_format_key)

Get PremPaymentFileFormat

Gets PremPaymentFileFormat

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_file_format_key = 56 # Integer | Payment File Format Key

begin
  # Get PremPaymentFileFormat
  result = api_instance.get_prem_payment_file_format(vbasoftware_database, payment_file_format_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->get_prem_payment_file_format: #{e}"
end
```

#### Using the get_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentFileFormatVBAResponse>, Integer, Hash)> get_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key)

```ruby
begin
  # Get PremPaymentFileFormat
  data, status_code, headers = api_instance.get_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentFileFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->get_prem_payment_file_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_file_format_key** | **Integer** | Payment File Format Key |  |

### Return type

[**PremPaymentFileFormatVBAResponse**](PremPaymentFileFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_payment_file_format

> <PremPaymentFileFormatListVBAResponse> list_prem_payment_file_format(vbasoftware_database, opts)

List PremPaymentFileFormat

Lists all PremPaymentFileFormat

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPaymentFileFormat
  result = api_instance.list_prem_payment_file_format(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->list_prem_payment_file_format: #{e}"
end
```

#### Using the list_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentFileFormatListVBAResponse>, Integer, Hash)> list_prem_payment_file_format_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremPaymentFileFormat
  data, status_code, headers = api_instance.list_prem_payment_file_format_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentFileFormatListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->list_prem_payment_file_format_with_http_info: #{e}"
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

[**PremPaymentFileFormatListVBAResponse**](PremPaymentFileFormatListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_payment_file_format

> <MultiCodeResponseListVBAResponse> update_batch_prem_payment_file_format(vbasoftware_database, prem_payment_file_format)

Create or Update Batch PremPaymentFileFormat

Create or Update multiple PremPaymentFileFormat at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_payment_file_format = [Vba::PremPaymentFileFormat.new({payment_file_format_key: 37})] # Array<PremPaymentFileFormat> | 

begin
  # Create or Update Batch PremPaymentFileFormat
  result = api_instance.update_batch_prem_payment_file_format(vbasoftware_database, prem_payment_file_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->update_batch_prem_payment_file_format: #{e}"
end
```

#### Using the update_batch_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_payment_file_format_with_http_info(vbasoftware_database, prem_payment_file_format)

```ruby
begin
  # Create or Update Batch PremPaymentFileFormat
  data, status_code, headers = api_instance.update_batch_prem_payment_file_format_with_http_info(vbasoftware_database, prem_payment_file_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->update_batch_prem_payment_file_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_payment_file_format** | [**Array&lt;PremPaymentFileFormat&gt;**](PremPaymentFileFormat.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_payment_file_format

> <PremPaymentFileFormatVBAResponse> update_prem_payment_file_format(vbasoftware_database, payment_file_format_key, prem_payment_file_format)

Update PremPaymentFileFormat

Updates a specific PremPaymentFileFormat.

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

api_instance = Vba::PremiumPaymentFileFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_file_format_key = 56 # Integer | Payment File Format Key
prem_payment_file_format = Vba::PremPaymentFileFormat.new({payment_file_format_key: 37}) # PremPaymentFileFormat | 

begin
  # Update PremPaymentFileFormat
  result = api_instance.update_prem_payment_file_format(vbasoftware_database, payment_file_format_key, prem_payment_file_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->update_prem_payment_file_format: #{e}"
end
```

#### Using the update_prem_payment_file_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPaymentFileFormatVBAResponse>, Integer, Hash)> update_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key, prem_payment_file_format)

```ruby
begin
  # Update PremPaymentFileFormat
  data, status_code, headers = api_instance.update_prem_payment_file_format_with_http_info(vbasoftware_database, payment_file_format_key, prem_payment_file_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPaymentFileFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPaymentFileFormatsApi->update_prem_payment_file_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_file_format_key** | **Integer** | Payment File Format Key |  |
| **prem_payment_file_format** | [**PremPaymentFileFormat**](PremPaymentFileFormat.md) |  |  |

### Return type

[**PremPaymentFileFormatVBAResponse**](PremPaymentFileFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

