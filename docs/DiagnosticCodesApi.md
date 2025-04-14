# Vba::DiagnosticCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_diagnostic_code**](DiagnosticCodesApi.md#create_diagnostic_code) | **POST** /diagnostic-codes | Create DiagnosticCode |
| [**delete_diagnostic_code**](DiagnosticCodesApi.md#delete_diagnostic_code) | **DELETE** /diagnostic-codes/{diagnosticCode}/{diagnosticCodeType}/{effectiveDate} | Delete DiagnosticCode |
| [**get_current_diagnostic_code**](DiagnosticCodesApi.md#get_current_diagnostic_code) | **GET** /diagnostic-codes/{diagnosticCode}/{diagnosticCodeType}/current-diag | Get The Most Recent DiagnosticCode |
| [**get_diagnostic_code**](DiagnosticCodesApi.md#get_diagnostic_code) | **GET** /diagnostic-codes/{diagnosticCode}/{diagnosticCodeType}/{effectiveDate} | Get DiagnosticCode |
| [**list_diagnostic_code**](DiagnosticCodesApi.md#list_diagnostic_code) | **GET** /diagnostic-codes | List DiagnosticCode |
| [**update_batch_diagnostic_code**](DiagnosticCodesApi.md#update_batch_diagnostic_code) | **PUT** /diagnostic-codes-batch | Create or Update Batch DiagnosticCode |
| [**update_diagnostic_code**](DiagnosticCodesApi.md#update_diagnostic_code) | **PUT** /diagnostic-codes/{diagnosticCode}/{diagnosticCodeType}/{effectiveDate} | Update DiagnosticCode |


## create_diagnostic_code

> <DiagnosticCodeVBAResponse> create_diagnostic_code(vbasoftware_database, diagnostic_code)

Create DiagnosticCode

Creates a new DiagnosticCode

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = Vba::DiagnosticCode.new({diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, accident: false, age_restricted: false, pre_ex: false, sec111: false, trigger_diagnosis: false, valid: false}) # DiagnosticCode | 

begin
  # Create DiagnosticCode
  result = api_instance.create_diagnostic_code(vbasoftware_database, diagnostic_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->create_diagnostic_code: #{e}"
end
```

#### Using the create_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeVBAResponse>, Integer, Hash)> create_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code)

```ruby
begin
  # Create DiagnosticCode
  data, status_code, headers = api_instance.create_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->create_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | [**DiagnosticCode**](DiagnosticCode.md) |  |  |

### Return type

[**DiagnosticCodeVBAResponse**](DiagnosticCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_diagnostic_code

> delete_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)

Delete DiagnosticCode

Deletes an DiagnosticCode

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete DiagnosticCode
  api_instance.delete_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->delete_diagnostic_code: #{e}"
end
```

#### Using the delete_diagnostic_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)

```ruby
begin
  # Delete DiagnosticCode
  data, status_code, headers = api_instance.delete_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->delete_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_current_diagnostic_code

> <DiagnosticCodeVBAResponse> get_current_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type)

Get The Most Recent DiagnosticCode

Gets The Most Recent DiagnosticCode

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type

begin
  # Get The Most Recent DiagnosticCode
  result = api_instance.get_current_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->get_current_diagnostic_code: #{e}"
end
```

#### Using the get_current_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeVBAResponse>, Integer, Hash)> get_current_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type)

```ruby
begin
  # Get The Most Recent DiagnosticCode
  data, status_code, headers = api_instance.get_current_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->get_current_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |

### Return type

[**DiagnosticCodeVBAResponse**](DiagnosticCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_diagnostic_code

> <DiagnosticCodeVBAResponse> get_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)

Get DiagnosticCode

Gets DiagnosticCode

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get DiagnosticCode
  result = api_instance.get_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->get_diagnostic_code: #{e}"
end
```

#### Using the get_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeVBAResponse>, Integer, Hash)> get_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)

```ruby
begin
  # Get DiagnosticCode
  data, status_code, headers = api_instance.get_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->get_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**DiagnosticCodeVBAResponse**](DiagnosticCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_diagnostic_code

> <DiagnosticCodeListVBAResponse> list_diagnostic_code(vbasoftware_database, opts)

List DiagnosticCode

Lists all DiagnosticCode

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DiagnosticCode
  result = api_instance.list_diagnostic_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->list_diagnostic_code: #{e}"
end
```

#### Using the list_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeListVBAResponse>, Integer, Hash)> list_diagnostic_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DiagnosticCode
  data, status_code, headers = api_instance.list_diagnostic_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->list_diagnostic_code_with_http_info: #{e}"
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

[**DiagnosticCodeListVBAResponse**](DiagnosticCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_diagnostic_code

> <MultiCodeResponseListVBAResponse> update_batch_diagnostic_code(vbasoftware_database, diagnostic_code)

Create or Update Batch DiagnosticCode

Create or Update multiple DiagnosticCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = [Vba::DiagnosticCode.new({diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, accident: false, age_restricted: false, pre_ex: false, sec111: false, trigger_diagnosis: false, valid: false})] # Array<DiagnosticCode> | 

begin
  # Create or Update Batch DiagnosticCode
  result = api_instance.update_batch_diagnostic_code(vbasoftware_database, diagnostic_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->update_batch_diagnostic_code: #{e}"
end
```

#### Using the update_batch_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code)

```ruby
begin
  # Create or Update Batch DiagnosticCode
  data, status_code, headers = api_instance.update_batch_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->update_batch_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | [**Array&lt;DiagnosticCode&gt;**](DiagnosticCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_diagnostic_code

> <DiagnosticCodeVBAResponse> update_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date, diagnostic_code2)

Update DiagnosticCode

Updates a specific DiagnosticCode.

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

api_instance = Vba::DiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code = 'diagnostic_code_example' # String | Diagnostic Code
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
diagnostic_code2 = Vba::DiagnosticCode.new({diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, accident: false, age_restricted: false, pre_ex: false, sec111: false, trigger_diagnosis: false, valid: false}) # DiagnosticCode | 

begin
  # Update DiagnosticCode
  result = api_instance.update_diagnostic_code(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date, diagnostic_code2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->update_diagnostic_code: #{e}"
end
```

#### Using the update_diagnostic_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeVBAResponse>, Integer, Hash)> update_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date, diagnostic_code2)

```ruby
begin
  # Update DiagnosticCode
  data, status_code, headers = api_instance.update_diagnostic_code_with_http_info(vbasoftware_database, diagnostic_code, diagnostic_code_type, effective_date, diagnostic_code2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodesApi->update_diagnostic_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code** | **String** | Diagnostic Code |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **effective_date** | **Time** | Effective Date |  |
| **diagnostic_code2** | [**DiagnosticCode**](DiagnosticCode.md) |  |  |

### Return type

[**DiagnosticCodeVBAResponse**](DiagnosticCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

