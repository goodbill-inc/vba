# Vba::DiagnosticCodeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_diagnostic_code_type**](DiagnosticCodeTypesApi.md#create_diagnostic_code_type) | **POST** /diagnostic-code-types | Create DiagnosticCodeType |
| [**delete_diagnostic_code_type**](DiagnosticCodeTypesApi.md#delete_diagnostic_code_type) | **DELETE** /diagnostic-code-types/{diagnosticCodeType} | Delete DiagnosticCodeType |
| [**get_diagnostic_code_type**](DiagnosticCodeTypesApi.md#get_diagnostic_code_type) | **GET** /diagnostic-code-types/{diagnosticCodeType} | Get DiagnosticCodeType |
| [**list_diagnostic_code_type**](DiagnosticCodeTypesApi.md#list_diagnostic_code_type) | **GET** /diagnostic-code-types | List DiagnosticCodeType |
| [**update_batch_diagnostic_code_type**](DiagnosticCodeTypesApi.md#update_batch_diagnostic_code_type) | **PUT** /diagnostic-code-types-batch | Create or Update Batch DiagnosticCodeType |
| [**update_diagnostic_code_type**](DiagnosticCodeTypesApi.md#update_diagnostic_code_type) | **PUT** /diagnostic-code-types/{diagnosticCodeType} | Update DiagnosticCodeType |


## create_diagnostic_code_type

> <DiagnosticCodeTypeVBAResponse> create_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)

Create DiagnosticCodeType

Creates a new DiagnosticCodeType

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_type = Vba::DiagnosticCodeType.new({diagnostic_code_type: 'diagnostic_code_type_example'}) # DiagnosticCodeType | 

begin
  # Create DiagnosticCodeType
  result = api_instance.create_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->create_diagnostic_code_type: #{e}"
end
```

#### Using the create_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeTypeVBAResponse>, Integer, Hash)> create_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)

```ruby
begin
  # Create DiagnosticCodeType
  data, status_code, headers = api_instance.create_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->create_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_type** | [**DiagnosticCodeType**](DiagnosticCodeType.md) |  |  |

### Return type

[**DiagnosticCodeTypeVBAResponse**](DiagnosticCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_diagnostic_code_type

> delete_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)

Delete DiagnosticCodeType

Deletes an DiagnosticCodeType

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type

begin
  # Delete DiagnosticCodeType
  api_instance.delete_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->delete_diagnostic_code_type: #{e}"
end
```

#### Using the delete_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)

```ruby
begin
  # Delete DiagnosticCodeType
  data, status_code, headers = api_instance.delete_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->delete_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_diagnostic_code_type

> <DiagnosticCodeTypeVBAResponse> get_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)

Get DiagnosticCodeType

Gets DiagnosticCodeType

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type

begin
  # Get DiagnosticCodeType
  result = api_instance.get_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->get_diagnostic_code_type: #{e}"
end
```

#### Using the get_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeTypeVBAResponse>, Integer, Hash)> get_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)

```ruby
begin
  # Get DiagnosticCodeType
  data, status_code, headers = api_instance.get_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->get_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |

### Return type

[**DiagnosticCodeTypeVBAResponse**](DiagnosticCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_diagnostic_code_type

> <DiagnosticCodeTypeListVBAResponse> list_diagnostic_code_type(vbasoftware_database)

List DiagnosticCodeType

Lists all DiagnosticCodeType

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List DiagnosticCodeType
  result = api_instance.list_diagnostic_code_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->list_diagnostic_code_type: #{e}"
end
```

#### Using the list_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeTypeListVBAResponse>, Integer, Hash)> list_diagnostic_code_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List DiagnosticCodeType
  data, status_code, headers = api_instance.list_diagnostic_code_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->list_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**DiagnosticCodeTypeListVBAResponse**](DiagnosticCodeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_diagnostic_code_type

> <MultiCodeResponseListVBAResponse> update_batch_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)

Create or Update Batch DiagnosticCodeType

Create or Update multiple DiagnosticCodeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_type = [Vba::DiagnosticCodeType.new({diagnostic_code_type: 'diagnostic_code_type_example'})] # Array<DiagnosticCodeType> | 

begin
  # Create or Update Batch DiagnosticCodeType
  result = api_instance.update_batch_diagnostic_code_type(vbasoftware_database, diagnostic_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->update_batch_diagnostic_code_type: #{e}"
end
```

#### Using the update_batch_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)

```ruby
begin
  # Create or Update Batch DiagnosticCodeType
  data, status_code, headers = api_instance.update_batch_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->update_batch_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_type** | [**Array&lt;DiagnosticCodeType&gt;**](DiagnosticCodeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_diagnostic_code_type

> <DiagnosticCodeTypeVBAResponse> update_diagnostic_code_type(vbasoftware_database, diagnostic_code_type, diagnostic_code_type2)

Update DiagnosticCodeType

Updates a specific DiagnosticCodeType.

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

api_instance = Vba::DiagnosticCodeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
diagnostic_code_type2 = Vba::DiagnosticCodeType.new({diagnostic_code_type: 'diagnostic_code_type_example'}) # DiagnosticCodeType | 

begin
  # Update DiagnosticCodeType
  result = api_instance.update_diagnostic_code_type(vbasoftware_database, diagnostic_code_type, diagnostic_code_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->update_diagnostic_code_type: #{e}"
end
```

#### Using the update_diagnostic_code_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeTypeVBAResponse>, Integer, Hash)> update_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type, diagnostic_code_type2)

```ruby
begin
  # Update DiagnosticCodeType
  data, status_code, headers = api_instance.update_diagnostic_code_type_with_http_info(vbasoftware_database, diagnostic_code_type, diagnostic_code_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeTypesApi->update_diagnostic_code_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **diagnostic_code_type2** | [**DiagnosticCodeType**](DiagnosticCodeType.md) |  |  |

### Return type

[**DiagnosticCodeTypeVBAResponse**](DiagnosticCodeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

