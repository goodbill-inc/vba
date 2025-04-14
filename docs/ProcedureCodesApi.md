# Vba::ProcedureCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_code**](ProcedureCodesApi.md#create_procedure_code) | **POST** /procedure-codes | Create ProcedureCode |
| [**delete_procedure_code**](ProcedureCodesApi.md#delete_procedure_code) | **DELETE** /procedure-codes/{procedureCode} | Delete ProcedureCode |
| [**get_procedure_code**](ProcedureCodesApi.md#get_procedure_code) | **GET** /procedure-codes/{procedureCode} | Get ProcedureCode |
| [**list_procedure_code**](ProcedureCodesApi.md#list_procedure_code) | **GET** /procedure-codes | List ProcedureCode |
| [**update_batch_procedure_code**](ProcedureCodesApi.md#update_batch_procedure_code) | **PUT** /procedure-codes-batch | Create or Update Batch ProcedureCode |
| [**update_procedure_code**](ProcedureCodesApi.md#update_procedure_code) | **PUT** /procedure-codes/{procedureCode} | Update ProcedureCode |


## create_procedure_code

> <ProcedureCodeVBAResponse> create_procedure_code(vbasoftware_database, procedure_code)

Create ProcedureCode

Creates a new ProcedureCode

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code = Vba::ProcedureCode.new({procedure_code: 'procedure_code_example', age_restricted: false, require_auth: false}) # ProcedureCode | 

begin
  # Create ProcedureCode
  result = api_instance.create_procedure_code(vbasoftware_database, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->create_procedure_code: #{e}"
end
```

#### Using the create_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeVBAResponse>, Integer, Hash)> create_procedure_code_with_http_info(vbasoftware_database, procedure_code)

```ruby
begin
  # Create ProcedureCode
  data, status_code, headers = api_instance.create_procedure_code_with_http_info(vbasoftware_database, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->create_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code** | [**ProcedureCode**](ProcedureCode.md) |  |  |

### Return type

[**ProcedureCodeVBAResponse**](ProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_code

> delete_procedure_code(vbasoftware_database, procedure_code)

Delete ProcedureCode

Deletes an ProcedureCode

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Delete ProcedureCode
  api_instance.delete_procedure_code(vbasoftware_database, procedure_code)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->delete_procedure_code: #{e}"
end
```

#### Using the delete_procedure_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_code_with_http_info(vbasoftware_database, procedure_code)

```ruby
begin
  # Delete ProcedureCode
  data, status_code, headers = api_instance.delete_procedure_code_with_http_info(vbasoftware_database, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->delete_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_code

> <ProcedureCodeVBAResponse> get_procedure_code(vbasoftware_database, procedure_code)

Get ProcedureCode

Gets ProcedureCode

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Get ProcedureCode
  result = api_instance.get_procedure_code(vbasoftware_database, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->get_procedure_code: #{e}"
end
```

#### Using the get_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeVBAResponse>, Integer, Hash)> get_procedure_code_with_http_info(vbasoftware_database, procedure_code)

```ruby
begin
  # Get ProcedureCode
  data, status_code, headers = api_instance.get_procedure_code_with_http_info(vbasoftware_database, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->get_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

[**ProcedureCodeVBAResponse**](ProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_code

> <ProcedureCodeListVBAResponse> list_procedure_code(vbasoftware_database, opts)

List ProcedureCode

Lists all ProcedureCode

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProcedureCode
  result = api_instance.list_procedure_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->list_procedure_code: #{e}"
end
```

#### Using the list_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeListVBAResponse>, Integer, Hash)> list_procedure_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProcedureCode
  data, status_code, headers = api_instance.list_procedure_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->list_procedure_code_with_http_info: #{e}"
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

[**ProcedureCodeListVBAResponse**](ProcedureCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_code

> <MultiCodeResponseListVBAResponse> update_batch_procedure_code(vbasoftware_database, procedure_code)

Create or Update Batch ProcedureCode

Create or Update multiple ProcedureCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code = [Vba::ProcedureCode.new({procedure_code: 'procedure_code_example', age_restricted: false, require_auth: false})] # Array<ProcedureCode> | 

begin
  # Create or Update Batch ProcedureCode
  result = api_instance.update_batch_procedure_code(vbasoftware_database, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->update_batch_procedure_code: #{e}"
end
```

#### Using the update_batch_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_code_with_http_info(vbasoftware_database, procedure_code)

```ruby
begin
  # Create or Update Batch ProcedureCode
  data, status_code, headers = api_instance.update_batch_procedure_code_with_http_info(vbasoftware_database, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->update_batch_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code** | [**Array&lt;ProcedureCode&gt;**](ProcedureCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_code

> <ProcedureCodeVBAResponse> update_procedure_code(vbasoftware_database, procedure_code, procedure_code2)

Update ProcedureCode

Updates a specific ProcedureCode.

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

api_instance = Vba::ProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code = 'procedure_code_example' # String | Procedure Code
procedure_code2 = Vba::ProcedureCode.new({procedure_code: 'procedure_code_example', age_restricted: false, require_auth: false}) # ProcedureCode | 

begin
  # Update ProcedureCode
  result = api_instance.update_procedure_code(vbasoftware_database, procedure_code, procedure_code2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->update_procedure_code: #{e}"
end
```

#### Using the update_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeVBAResponse>, Integer, Hash)> update_procedure_code_with_http_info(vbasoftware_database, procedure_code, procedure_code2)

```ruby
begin
  # Update ProcedureCode
  data, status_code, headers = api_instance.update_procedure_code_with_http_info(vbasoftware_database, procedure_code, procedure_code2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodesApi->update_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code** | **String** | Procedure Code |  |
| **procedure_code2** | [**ProcedureCode**](ProcedureCode.md) |  |  |

### Return type

[**ProcedureCodeVBAResponse**](ProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

