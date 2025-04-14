# Vba::CLIACertificateProcedureCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#create_clia_certificate_procedure_code) | **POST** /clia-certificates/{certificateID}/procedure-codes | Create CLIACertificateProcedureCode |
| [**delete_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#delete_clia_certificate_procedure_code) | **DELETE** /clia-certificates/{certificateID}/procedure-codes/{procedureCode} | Delete CLIACertificateProcedureCode |
| [**get_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#get_clia_certificate_procedure_code) | **GET** /clia-certificates/{certificateID}/procedure-codes/{procedureCode} | Get CLIACertificateProcedureCode |
| [**list_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#list_clia_certificate_procedure_code) | **GET** /clia-certificates/{certificateID}/procedure-codes | List CLIACertificateProcedureCode |
| [**update_batch_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#update_batch_clia_certificate_procedure_code) | **PUT** /clia-certificates/{certificateID}/procedure-codes-batch | Create or Update Batch CLIACertificateProcedureCode |
| [**update_clia_certificate_procedure_code**](CLIACertificateProcedureCodesApi.md#update_clia_certificate_procedure_code) | **PUT** /clia-certificates/{certificateID}/procedure-codes/{procedureCode} | Update CLIACertificateProcedureCode |


## create_clia_certificate_procedure_code

> <CLIACertificateProcedureCodeVBAResponse> create_clia_certificate_procedure_code(vbasoftware_database, certificate_id, clia_certificate_procedure_code)

Create CLIACertificateProcedureCode

Creates a new CLIACertificateProcedureCode

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
clia_certificate_procedure_code = Vba::CLIACertificateProcedureCode.new({certificate_id: 37, procedure_code: 'procedure_code_example', effective_date: Time.now}) # CLIACertificateProcedureCode | 

begin
  # Create CLIACertificateProcedureCode
  result = api_instance.create_clia_certificate_procedure_code(vbasoftware_database, certificate_id, clia_certificate_procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->create_clia_certificate_procedure_code: #{e}"
end
```

#### Using the create_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProcedureCodeVBAResponse>, Integer, Hash)> create_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, clia_certificate_procedure_code)

```ruby
begin
  # Create CLIACertificateProcedureCode
  data, status_code, headers = api_instance.create_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, clia_certificate_procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->create_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **clia_certificate_procedure_code** | [**CLIACertificateProcedureCode**](CLIACertificateProcedureCode.md) |  |  |

### Return type

[**CLIACertificateProcedureCodeVBAResponse**](CLIACertificateProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_clia_certificate_procedure_code

> delete_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code)

Delete CLIACertificateProcedureCode

Deletes an CLIACertificateProcedureCode

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Delete CLIACertificateProcedureCode
  api_instance.delete_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code)
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->delete_clia_certificate_procedure_code: #{e}"
end
```

#### Using the delete_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code)

```ruby
begin
  # Delete CLIACertificateProcedureCode
  data, status_code, headers = api_instance.delete_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->delete_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_clia_certificate_procedure_code

> <CLIACertificateProcedureCodeVBAResponse> get_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code)

Get CLIACertificateProcedureCode

Gets CLIACertificateProcedureCode

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
procedure_code = 'procedure_code_example' # String | Procedure Code

begin
  # Get CLIACertificateProcedureCode
  result = api_instance.get_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->get_clia_certificate_procedure_code: #{e}"
end
```

#### Using the get_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProcedureCodeVBAResponse>, Integer, Hash)> get_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code)

```ruby
begin
  # Get CLIACertificateProcedureCode
  data, status_code, headers = api_instance.get_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->get_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **procedure_code** | **String** | Procedure Code |  |

### Return type

[**CLIACertificateProcedureCodeVBAResponse**](CLIACertificateProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_clia_certificate_procedure_code

> <CLIACertificateProcedureCodeListVBAResponse> list_clia_certificate_procedure_code(vbasoftware_database, certificate_id, opts)

List CLIACertificateProcedureCode

Lists all CLIACertificateProcedureCode for the given certificateID

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CLIACertificateProcedureCode
  result = api_instance.list_clia_certificate_procedure_code(vbasoftware_database, certificate_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->list_clia_certificate_procedure_code: #{e}"
end
```

#### Using the list_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProcedureCodeListVBAResponse>, Integer, Hash)> list_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, opts)

```ruby
begin
  # List CLIACertificateProcedureCode
  data, status_code, headers = api_instance.list_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProcedureCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->list_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CLIACertificateProcedureCodeListVBAResponse**](CLIACertificateProcedureCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_clia_certificate_procedure_code

> <MultiCodeResponseListVBAResponse> update_batch_clia_certificate_procedure_code(vbasoftware_database, certificate_id, clia_certificate_procedure_code)

Create or Update Batch CLIACertificateProcedureCode

Create or Update multiple CLIACertificateProcedureCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
clia_certificate_procedure_code = [Vba::CLIACertificateProcedureCode.new({certificate_id: 37, procedure_code: 'procedure_code_example', effective_date: Time.now})] # Array<CLIACertificateProcedureCode> | 

begin
  # Create or Update Batch CLIACertificateProcedureCode
  result = api_instance.update_batch_clia_certificate_procedure_code(vbasoftware_database, certificate_id, clia_certificate_procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->update_batch_clia_certificate_procedure_code: #{e}"
end
```

#### Using the update_batch_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, clia_certificate_procedure_code)

```ruby
begin
  # Create or Update Batch CLIACertificateProcedureCode
  data, status_code, headers = api_instance.update_batch_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, clia_certificate_procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->update_batch_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **clia_certificate_procedure_code** | [**Array&lt;CLIACertificateProcedureCode&gt;**](CLIACertificateProcedureCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_clia_certificate_procedure_code

> <CLIACertificateProcedureCodeVBAResponse> update_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code, clia_certificate_procedure_code)

Update CLIACertificateProcedureCode

Updates a specific CLIACertificateProcedureCode.

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

api_instance = Vba::CLIACertificateProcedureCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
certificate_id = 56 # Integer | Certificate ID
procedure_code = 'procedure_code_example' # String | Procedure Code
clia_certificate_procedure_code = Vba::CLIACertificateProcedureCode.new({certificate_id: 37, procedure_code: 'procedure_code_example', effective_date: Time.now}) # CLIACertificateProcedureCode | 

begin
  # Update CLIACertificateProcedureCode
  result = api_instance.update_clia_certificate_procedure_code(vbasoftware_database, certificate_id, procedure_code, clia_certificate_procedure_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->update_clia_certificate_procedure_code: #{e}"
end
```

#### Using the update_clia_certificate_procedure_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProcedureCodeVBAResponse>, Integer, Hash)> update_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code, clia_certificate_procedure_code)

```ruby
begin
  # Update CLIACertificateProcedureCode
  data, status_code, headers = api_instance.update_clia_certificate_procedure_code_with_http_info(vbasoftware_database, certificate_id, procedure_code, clia_certificate_procedure_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProcedureCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CLIACertificateProcedureCodesApi->update_clia_certificate_procedure_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **procedure_code** | **String** | Procedure Code |  |
| **clia_certificate_procedure_code** | [**CLIACertificateProcedureCode**](CLIACertificateProcedureCode.md) |  |  |

### Return type

[**CLIACertificateProcedureCodeVBAResponse**](CLIACertificateProcedureCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

