# Vba::ProcedureCodeQualifiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#create_procedure_code_qualifier) | **POST** /procedure-code-qualifiers | Create ProcedureCodeQualifier |
| [**delete_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#delete_procedure_code_qualifier) | **DELETE** /procedure-code-qualifiers/{qualifier} | Delete ProcedureCodeQualifier |
| [**get_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#get_procedure_code_qualifier) | **GET** /procedure-code-qualifiers/{qualifier} | Get ProcedureCodeQualifier |
| [**list_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#list_procedure_code_qualifier) | **GET** /procedure-code-qualifiers | List ProcedureCodeQualifier |
| [**update_batch_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#update_batch_procedure_code_qualifier) | **PUT** /procedure-code-qualifiers-batch | Create or Update Batch ProcedureCodeQualifier |
| [**update_procedure_code_qualifier**](ProcedureCodeQualifiersApi.md#update_procedure_code_qualifier) | **PUT** /procedure-code-qualifiers/{qualifier} | Update ProcedureCodeQualifier |


## create_procedure_code_qualifier

> <ProcedureCodeQualifierVBAResponse> create_procedure_code_qualifier(vbasoftware_database, procedure_code_qualifier)

Create ProcedureCodeQualifier

Creates a new ProcedureCodeQualifier

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code_qualifier = Vba::ProcedureCodeQualifier.new({qualifier: 'qualifier_example'}) # ProcedureCodeQualifier | 

begin
  # Create ProcedureCodeQualifier
  result = api_instance.create_procedure_code_qualifier(vbasoftware_database, procedure_code_qualifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->create_procedure_code_qualifier: #{e}"
end
```

#### Using the create_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeQualifierVBAResponse>, Integer, Hash)> create_procedure_code_qualifier_with_http_info(vbasoftware_database, procedure_code_qualifier)

```ruby
begin
  # Create ProcedureCodeQualifier
  data, status_code, headers = api_instance.create_procedure_code_qualifier_with_http_info(vbasoftware_database, procedure_code_qualifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeQualifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->create_procedure_code_qualifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code_qualifier** | [**ProcedureCodeQualifier**](ProcedureCodeQualifier.md) |  |  |

### Return type

[**ProcedureCodeQualifierVBAResponse**](ProcedureCodeQualifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_code_qualifier

> delete_procedure_code_qualifier(vbasoftware_database, qualifier)

Delete ProcedureCodeQualifier

Deletes an ProcedureCodeQualifier

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
qualifier = 'qualifier_example' # String | Qualifier

begin
  # Delete ProcedureCodeQualifier
  api_instance.delete_procedure_code_qualifier(vbasoftware_database, qualifier)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->delete_procedure_code_qualifier: #{e}"
end
```

#### Using the delete_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier)

```ruby
begin
  # Delete ProcedureCodeQualifier
  data, status_code, headers = api_instance.delete_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->delete_procedure_code_qualifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **qualifier** | **String** | Qualifier |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_code_qualifier

> <ProcedureCodeQualifierVBAResponse> get_procedure_code_qualifier(vbasoftware_database, qualifier)

Get ProcedureCodeQualifier

Gets ProcedureCodeQualifier

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
qualifier = 'qualifier_example' # String | Qualifier

begin
  # Get ProcedureCodeQualifier
  result = api_instance.get_procedure_code_qualifier(vbasoftware_database, qualifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->get_procedure_code_qualifier: #{e}"
end
```

#### Using the get_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeQualifierVBAResponse>, Integer, Hash)> get_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier)

```ruby
begin
  # Get ProcedureCodeQualifier
  data, status_code, headers = api_instance.get_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeQualifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->get_procedure_code_qualifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **qualifier** | **String** | Qualifier |  |

### Return type

[**ProcedureCodeQualifierVBAResponse**](ProcedureCodeQualifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_code_qualifier

> <ProcedureCodeQualifierListVBAResponse> list_procedure_code_qualifier(vbasoftware_database, opts)

List ProcedureCodeQualifier

Lists all ProcedureCodeQualifier

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProcedureCodeQualifier
  result = api_instance.list_procedure_code_qualifier(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->list_procedure_code_qualifier: #{e}"
end
```

#### Using the list_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeQualifierListVBAResponse>, Integer, Hash)> list_procedure_code_qualifier_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProcedureCodeQualifier
  data, status_code, headers = api_instance.list_procedure_code_qualifier_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeQualifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->list_procedure_code_qualifier_with_http_info: #{e}"
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

[**ProcedureCodeQualifierListVBAResponse**](ProcedureCodeQualifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_code_qualifier

> <MultiCodeResponseListVBAResponse> update_batch_procedure_code_qualifier(vbasoftware_database, procedure_code_qualifier)

Create or Update Batch ProcedureCodeQualifier

Create or Update multiple ProcedureCodeQualifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_code_qualifier = [Vba::ProcedureCodeQualifier.new({qualifier: 'qualifier_example'})] # Array<ProcedureCodeQualifier> | 

begin
  # Create or Update Batch ProcedureCodeQualifier
  result = api_instance.update_batch_procedure_code_qualifier(vbasoftware_database, procedure_code_qualifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->update_batch_procedure_code_qualifier: #{e}"
end
```

#### Using the update_batch_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_code_qualifier_with_http_info(vbasoftware_database, procedure_code_qualifier)

```ruby
begin
  # Create or Update Batch ProcedureCodeQualifier
  data, status_code, headers = api_instance.update_batch_procedure_code_qualifier_with_http_info(vbasoftware_database, procedure_code_qualifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->update_batch_procedure_code_qualifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_code_qualifier** | [**Array&lt;ProcedureCodeQualifier&gt;**](ProcedureCodeQualifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_code_qualifier

> <ProcedureCodeQualifierVBAResponse> update_procedure_code_qualifier(vbasoftware_database, qualifier, procedure_code_qualifier)

Update ProcedureCodeQualifier

Updates a specific ProcedureCodeQualifier.

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

api_instance = Vba::ProcedureCodeQualifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
qualifier = 'qualifier_example' # String | Qualifier
procedure_code_qualifier = Vba::ProcedureCodeQualifier.new({qualifier: 'qualifier_example'}) # ProcedureCodeQualifier | 

begin
  # Update ProcedureCodeQualifier
  result = api_instance.update_procedure_code_qualifier(vbasoftware_database, qualifier, procedure_code_qualifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->update_procedure_code_qualifier: #{e}"
end
```

#### Using the update_procedure_code_qualifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCodeQualifierVBAResponse>, Integer, Hash)> update_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier, procedure_code_qualifier)

```ruby
begin
  # Update ProcedureCodeQualifier
  data, status_code, headers = api_instance.update_procedure_code_qualifier_with_http_info(vbasoftware_database, qualifier, procedure_code_qualifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCodeQualifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCodeQualifiersApi->update_procedure_code_qualifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **qualifier** | **String** | Qualifier |  |
| **procedure_code_qualifier** | [**ProcedureCodeQualifier**](ProcedureCodeQualifier.md) |  |  |

### Return type

[**ProcedureCodeQualifierVBAResponse**](ProcedureCodeQualifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

