# Vba::DiagnosticCodeGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#create_diagnostic_code_group) | **POST** /diagnostic-code-groups | Create DiagnosticCodeGroup |
| [**delete_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#delete_diagnostic_code_group) | **DELETE** /diagnostic-code-groups/{diagnosticGroup} | Delete DiagnosticCodeGroup |
| [**get_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#get_diagnostic_code_group) | **GET** /diagnostic-code-groups/{diagnosticGroup} | Get DiagnosticCodeGroup |
| [**list_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#list_diagnostic_code_group) | **GET** /diagnostic-code-groups | List DiagnosticCodeGroup |
| [**update_batch_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#update_batch_diagnostic_code_group) | **PUT** /diagnostic-code-groups-batch | Create or Update Batch DiagnosticCodeGroup |
| [**update_diagnostic_code_group**](DiagnosticCodeGroupsApi.md#update_diagnostic_code_group) | **PUT** /diagnostic-code-groups/{diagnosticGroup} | Update DiagnosticCodeGroup |


## create_diagnostic_code_group

> <DiagnosticCodeGroupVBAResponse> create_diagnostic_code_group(vbasoftware_database, diagnostic_code_group)

Create DiagnosticCodeGroup

Creates a new DiagnosticCodeGroup

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_group = Vba::DiagnosticCodeGroup.new({diagnostic_group: 'diagnostic_group_example'}) # DiagnosticCodeGroup | 

begin
  # Create DiagnosticCodeGroup
  result = api_instance.create_diagnostic_code_group(vbasoftware_database, diagnostic_code_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->create_diagnostic_code_group: #{e}"
end
```

#### Using the create_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeGroupVBAResponse>, Integer, Hash)> create_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_code_group)

```ruby
begin
  # Create DiagnosticCodeGroup
  data, status_code, headers = api_instance.create_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_code_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->create_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_group** | [**DiagnosticCodeGroup**](DiagnosticCodeGroup.md) |  |  |

### Return type

[**DiagnosticCodeGroupVBAResponse**](DiagnosticCodeGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_diagnostic_code_group

> delete_diagnostic_code_group(vbasoftware_database, diagnostic_group)

Delete DiagnosticCodeGroup

Deletes an DiagnosticCodeGroup

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_group = 'diagnostic_group_example' # String | Diagnostic Group

begin
  # Delete DiagnosticCodeGroup
  api_instance.delete_diagnostic_code_group(vbasoftware_database, diagnostic_group)
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->delete_diagnostic_code_group: #{e}"
end
```

#### Using the delete_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group)

```ruby
begin
  # Delete DiagnosticCodeGroup
  data, status_code, headers = api_instance.delete_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->delete_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_group** | **String** | Diagnostic Group |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_diagnostic_code_group

> <DiagnosticCodeGroupVBAResponse> get_diagnostic_code_group(vbasoftware_database, diagnostic_group)

Get DiagnosticCodeGroup

Gets DiagnosticCodeGroup

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_group = 'diagnostic_group_example' # String | Diagnostic Group

begin
  # Get DiagnosticCodeGroup
  result = api_instance.get_diagnostic_code_group(vbasoftware_database, diagnostic_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->get_diagnostic_code_group: #{e}"
end
```

#### Using the get_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeGroupVBAResponse>, Integer, Hash)> get_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group)

```ruby
begin
  # Get DiagnosticCodeGroup
  data, status_code, headers = api_instance.get_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->get_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_group** | **String** | Diagnostic Group |  |

### Return type

[**DiagnosticCodeGroupVBAResponse**](DiagnosticCodeGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_diagnostic_code_group

> <DiagnosticCodeGroupListVBAResponse> list_diagnostic_code_group(vbasoftware_database)

List DiagnosticCodeGroup

Lists all DiagnosticCodeGroup

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List DiagnosticCodeGroup
  result = api_instance.list_diagnostic_code_group(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->list_diagnostic_code_group: #{e}"
end
```

#### Using the list_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeGroupListVBAResponse>, Integer, Hash)> list_diagnostic_code_group_with_http_info(vbasoftware_database)

```ruby
begin
  # List DiagnosticCodeGroup
  data, status_code, headers = api_instance.list_diagnostic_code_group_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->list_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**DiagnosticCodeGroupListVBAResponse**](DiagnosticCodeGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_diagnostic_code_group

> <MultiCodeResponseListVBAResponse> update_batch_diagnostic_code_group(vbasoftware_database, diagnostic_code_group)

Create or Update Batch DiagnosticCodeGroup

Create or Update multiple DiagnosticCodeGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_code_group = [Vba::DiagnosticCodeGroup.new({diagnostic_group: 'diagnostic_group_example'})] # Array<DiagnosticCodeGroup> | 

begin
  # Create or Update Batch DiagnosticCodeGroup
  result = api_instance.update_batch_diagnostic_code_group(vbasoftware_database, diagnostic_code_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->update_batch_diagnostic_code_group: #{e}"
end
```

#### Using the update_batch_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_code_group)

```ruby
begin
  # Create or Update Batch DiagnosticCodeGroup
  data, status_code, headers = api_instance.update_batch_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_code_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->update_batch_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_code_group** | [**Array&lt;DiagnosticCodeGroup&gt;**](DiagnosticCodeGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_diagnostic_code_group

> <DiagnosticCodeGroupVBAResponse> update_diagnostic_code_group(vbasoftware_database, diagnostic_group, diagnostic_code_group)

Update DiagnosticCodeGroup

Updates a specific DiagnosticCodeGroup.

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

api_instance = Vba::DiagnosticCodeGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
diagnostic_group = 'diagnostic_group_example' # String | Diagnostic Group
diagnostic_code_group = Vba::DiagnosticCodeGroup.new({diagnostic_group: 'diagnostic_group_example'}) # DiagnosticCodeGroup | 

begin
  # Update DiagnosticCodeGroup
  result = api_instance.update_diagnostic_code_group(vbasoftware_database, diagnostic_group, diagnostic_code_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->update_diagnostic_code_group: #{e}"
end
```

#### Using the update_diagnostic_code_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiagnosticCodeGroupVBAResponse>, Integer, Hash)> update_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group, diagnostic_code_group)

```ruby
begin
  # Update DiagnosticCodeGroup
  data, status_code, headers = api_instance.update_diagnostic_code_group_with_http_info(vbasoftware_database, diagnostic_group, diagnostic_code_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiagnosticCodeGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DiagnosticCodeGroupsApi->update_diagnostic_code_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **diagnostic_group** | **String** | Diagnostic Group |  |
| **diagnostic_code_group** | [**DiagnosticCodeGroup**](DiagnosticCodeGroup.md) |  |  |

### Return type

[**DiagnosticCodeGroupVBAResponse**](DiagnosticCodeGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

