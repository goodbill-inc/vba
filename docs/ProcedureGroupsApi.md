# Vba::ProcedureGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_group**](ProcedureGroupsApi.md#create_procedure_group) | **POST** /procedure-groups | Create ProcedureGroup |
| [**delete_procedure_group**](ProcedureGroupsApi.md#delete_procedure_group) | **DELETE** /procedure-groups/{procedureGroup} | Delete ProcedureGroup |
| [**get_procedure_group**](ProcedureGroupsApi.md#get_procedure_group) | **GET** /procedure-groups/{procedureGroup} | Get ProcedureGroup |
| [**list_procedure_group**](ProcedureGroupsApi.md#list_procedure_group) | **GET** /procedure-groups | List ProcedureGroup |
| [**update_batch_procedure_group**](ProcedureGroupsApi.md#update_batch_procedure_group) | **PUT** /procedure-groups-batch | Create or Update Batch ProcedureGroup |
| [**update_procedure_group**](ProcedureGroupsApi.md#update_procedure_group) | **PUT** /procedure-groups/{procedureGroup} | Update ProcedureGroup |


## create_procedure_group

> <ProcedureGroupVBAResponse> create_procedure_group(vbasoftware_database, procedure_group)

Create ProcedureGroup

Creates a new ProcedureGroup

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_group = Vba::ProcedureGroup.new({procedure_group: 37}) # ProcedureGroup | 

begin
  # Create ProcedureGroup
  result = api_instance.create_procedure_group(vbasoftware_database, procedure_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->create_procedure_group: #{e}"
end
```

#### Using the create_procedure_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureGroupVBAResponse>, Integer, Hash)> create_procedure_group_with_http_info(vbasoftware_database, procedure_group)

```ruby
begin
  # Create ProcedureGroup
  data, status_code, headers = api_instance.create_procedure_group_with_http_info(vbasoftware_database, procedure_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->create_procedure_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_group** | [**ProcedureGroup**](ProcedureGroup.md) |  |  |

### Return type

[**ProcedureGroupVBAResponse**](ProcedureGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_group

> delete_procedure_group(vbasoftware_database, procedure_group)

Delete ProcedureGroup

Deletes an ProcedureGroup

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_group = 56 # Integer | Procedure Group

begin
  # Delete ProcedureGroup
  api_instance.delete_procedure_group(vbasoftware_database, procedure_group)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->delete_procedure_group: #{e}"
end
```

#### Using the delete_procedure_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_group_with_http_info(vbasoftware_database, procedure_group)

```ruby
begin
  # Delete ProcedureGroup
  data, status_code, headers = api_instance.delete_procedure_group_with_http_info(vbasoftware_database, procedure_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->delete_procedure_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_group** | **Integer** | Procedure Group |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_group

> <ProcedureGroupVBAResponse> get_procedure_group(vbasoftware_database, procedure_group)

Get ProcedureGroup

Gets ProcedureGroup

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_group = 56 # Integer | Procedure Group

begin
  # Get ProcedureGroup
  result = api_instance.get_procedure_group(vbasoftware_database, procedure_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->get_procedure_group: #{e}"
end
```

#### Using the get_procedure_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureGroupVBAResponse>, Integer, Hash)> get_procedure_group_with_http_info(vbasoftware_database, procedure_group)

```ruby
begin
  # Get ProcedureGroup
  data, status_code, headers = api_instance.get_procedure_group_with_http_info(vbasoftware_database, procedure_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->get_procedure_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_group** | **Integer** | Procedure Group |  |

### Return type

[**ProcedureGroupVBAResponse**](ProcedureGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_group

> <ProcedureGroupListVBAResponse> list_procedure_group(vbasoftware_database, opts)

List ProcedureGroup

Lists all ProcedureGroup

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProcedureGroup
  result = api_instance.list_procedure_group(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->list_procedure_group: #{e}"
end
```

#### Using the list_procedure_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureGroupListVBAResponse>, Integer, Hash)> list_procedure_group_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProcedureGroup
  data, status_code, headers = api_instance.list_procedure_group_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->list_procedure_group_with_http_info: #{e}"
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

[**ProcedureGroupListVBAResponse**](ProcedureGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_group

> <MultiCodeResponseListVBAResponse> update_batch_procedure_group(vbasoftware_database, procedure_group)

Create or Update Batch ProcedureGroup

Create or Update multiple ProcedureGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_group = [Vba::ProcedureGroup.new({procedure_group: 37})] # Array<ProcedureGroup> | 

begin
  # Create or Update Batch ProcedureGroup
  result = api_instance.update_batch_procedure_group(vbasoftware_database, procedure_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->update_batch_procedure_group: #{e}"
end
```

#### Using the update_batch_procedure_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_group_with_http_info(vbasoftware_database, procedure_group)

```ruby
begin
  # Create or Update Batch ProcedureGroup
  data, status_code, headers = api_instance.update_batch_procedure_group_with_http_info(vbasoftware_database, procedure_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->update_batch_procedure_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_group** | [**Array&lt;ProcedureGroup&gt;**](ProcedureGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_group

> <ProcedureGroupVBAResponse> update_procedure_group(vbasoftware_database, procedure_group, procedure_group2)

Update ProcedureGroup

Updates a specific ProcedureGroup.

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

api_instance = Vba::ProcedureGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_group = 56 # Integer | Procedure Group
procedure_group2 = Vba::ProcedureGroup.new({procedure_group: 37}) # ProcedureGroup | 

begin
  # Update ProcedureGroup
  result = api_instance.update_procedure_group(vbasoftware_database, procedure_group, procedure_group2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->update_procedure_group: #{e}"
end
```

#### Using the update_procedure_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureGroupVBAResponse>, Integer, Hash)> update_procedure_group_with_http_info(vbasoftware_database, procedure_group, procedure_group2)

```ruby
begin
  # Update ProcedureGroup
  data, status_code, headers = api_instance.update_procedure_group_with_http_info(vbasoftware_database, procedure_group, procedure_group2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureGroupsApi->update_procedure_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_group** | **Integer** | Procedure Group |  |
| **procedure_group2** | [**ProcedureGroup**](ProcedureGroup.md) |  |  |

### Return type

[**ProcedureGroupVBAResponse**](ProcedureGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

