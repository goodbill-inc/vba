# Vba::LocalTaxesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_local_tax**](LocalTaxesApi.md#create_batch_local_tax) | **PUT** /local-taxes-batch | Create Batch LocalTax |
| [**create_local_tax**](LocalTaxesApi.md#create_local_tax) | **POST** /local-taxes | Create LocalTax |
| [**delete_local_tax**](LocalTaxesApi.md#delete_local_tax) | **DELETE** /local-taxes/{localTaxCode} | Delete LocalTax |
| [**get_local_tax**](LocalTaxesApi.md#get_local_tax) | **GET** /local-taxes/{localTaxCode} | Get LocalTax |
| [**list_local_tax**](LocalTaxesApi.md#list_local_tax) | **GET** /local-taxes | List LocalTax |


## create_batch_local_tax

> <MultiCodeResponseListVBAResponse> create_batch_local_tax(vbasoftware_database, local_tax)

Create Batch LocalTax

Create multiple LocalTax at once.  If the entity exists, an error will be returned for that item. If the entity does not exist, it will be created.

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

api_instance = Vba::LocalTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
local_tax = [Vba::LocalTax.new({local_tax_code: 'local_tax_code_example'})] # Array<LocalTax> | 

begin
  # Create Batch LocalTax
  result = api_instance.create_batch_local_tax(vbasoftware_database, local_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->create_batch_local_tax: #{e}"
end
```

#### Using the create_batch_local_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_batch_local_tax_with_http_info(vbasoftware_database, local_tax)

```ruby
begin
  # Create Batch LocalTax
  data, status_code, headers = api_instance.create_batch_local_tax_with_http_info(vbasoftware_database, local_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->create_batch_local_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **local_tax** | [**Array&lt;LocalTax&gt;**](LocalTax.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_local_tax

> <LocalTaxVBAResponse> create_local_tax(vbasoftware_database, local_tax)

Create LocalTax

Creates a new LocalTax

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

api_instance = Vba::LocalTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
local_tax = Vba::LocalTax.new({local_tax_code: 'local_tax_code_example'}) # LocalTax | 

begin
  # Create LocalTax
  result = api_instance.create_local_tax(vbasoftware_database, local_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->create_local_tax: #{e}"
end
```

#### Using the create_local_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalTaxVBAResponse>, Integer, Hash)> create_local_tax_with_http_info(vbasoftware_database, local_tax)

```ruby
begin
  # Create LocalTax
  data, status_code, headers = api_instance.create_local_tax_with_http_info(vbasoftware_database, local_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->create_local_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **local_tax** | [**LocalTax**](LocalTax.md) |  |  |

### Return type

[**LocalTaxVBAResponse**](LocalTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_local_tax

> delete_local_tax(vbasoftware_database, local_tax_code)

Delete LocalTax

Deletes an LocalTax

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

api_instance = Vba::LocalTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
local_tax_code = 'local_tax_code_example' # String | Local Tax Code

begin
  # Delete LocalTax
  api_instance.delete_local_tax(vbasoftware_database, local_tax_code)
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->delete_local_tax: #{e}"
end
```

#### Using the delete_local_tax_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_local_tax_with_http_info(vbasoftware_database, local_tax_code)

```ruby
begin
  # Delete LocalTax
  data, status_code, headers = api_instance.delete_local_tax_with_http_info(vbasoftware_database, local_tax_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->delete_local_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **local_tax_code** | **String** | Local Tax Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_local_tax

> <LocalTaxVBAResponse> get_local_tax(vbasoftware_database, local_tax_code)

Get LocalTax

Gets LocalTax

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

api_instance = Vba::LocalTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
local_tax_code = 'local_tax_code_example' # String | Local Tax Code

begin
  # Get LocalTax
  result = api_instance.get_local_tax(vbasoftware_database, local_tax_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->get_local_tax: #{e}"
end
```

#### Using the get_local_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalTaxVBAResponse>, Integer, Hash)> get_local_tax_with_http_info(vbasoftware_database, local_tax_code)

```ruby
begin
  # Get LocalTax
  data, status_code, headers = api_instance.get_local_tax_with_http_info(vbasoftware_database, local_tax_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->get_local_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **local_tax_code** | **String** | Local Tax Code |  |

### Return type

[**LocalTaxVBAResponse**](LocalTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_local_tax

> <LocalTaxListVBAResponse> list_local_tax(vbasoftware_database, opts)

List LocalTax

Lists all LocalTax

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

api_instance = Vba::LocalTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List LocalTax
  result = api_instance.list_local_tax(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->list_local_tax: #{e}"
end
```

#### Using the list_local_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalTaxListVBAResponse>, Integer, Hash)> list_local_tax_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List LocalTax
  data, status_code, headers = api_instance.list_local_tax_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalTaxListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LocalTaxesApi->list_local_tax_with_http_info: #{e}"
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

[**LocalTaxListVBAResponse**](LocalTaxListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

