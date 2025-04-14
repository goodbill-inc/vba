# Vba::WorkflowTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_type**](WorkflowTypesApi.md#create_workflow_type) | **POST** /workflow-types | Create WorkflowType |
| [**delete_workflow_type**](WorkflowTypesApi.md#delete_workflow_type) | **DELETE** /workflow-types/{workflowType} | Delete WorkflowType |
| [**get_workflow_type**](WorkflowTypesApi.md#get_workflow_type) | **GET** /workflow-types/{workflowType} | Get WorkflowType |
| [**list_workflow_type**](WorkflowTypesApi.md#list_workflow_type) | **GET** /workflow-types | List WorkflowType |
| [**update_batch_workflow_type**](WorkflowTypesApi.md#update_batch_workflow_type) | **PUT** /workflow-types-batch | Create or Update Batch WorkflowType |
| [**update_workflow_type**](WorkflowTypesApi.md#update_workflow_type) | **PUT** /workflow-types/{workflowType} | Update WorkflowType |


## create_workflow_type

> <WorkflowTypeVBAResponse> create_workflow_type(vbasoftware_database, workflow_type)

Create WorkflowType

Creates a new WorkflowType

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = Vba::WorkflowType.new({workflow_type: 'workflow_type_example'}) # WorkflowType | 

begin
  # Create WorkflowType
  result = api_instance.create_workflow_type(vbasoftware_database, workflow_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->create_workflow_type: #{e}"
end
```

#### Using the create_workflow_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeVBAResponse>, Integer, Hash)> create_workflow_type_with_http_info(vbasoftware_database, workflow_type)

```ruby
begin
  # Create WorkflowType
  data, status_code, headers = api_instance.create_workflow_type_with_http_info(vbasoftware_database, workflow_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->create_workflow_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | [**WorkflowType**](WorkflowType.md) |  |  |

### Return type

[**WorkflowTypeVBAResponse**](WorkflowTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_type

> delete_workflow_type(vbasoftware_database, workflow_type)

Delete WorkflowType

Deletes an WorkflowType

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type

begin
  # Delete WorkflowType
  api_instance.delete_workflow_type(vbasoftware_database, workflow_type)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->delete_workflow_type: #{e}"
end
```

#### Using the delete_workflow_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_type_with_http_info(vbasoftware_database, workflow_type)

```ruby
begin
  # Delete WorkflowType
  data, status_code, headers = api_instance.delete_workflow_type_with_http_info(vbasoftware_database, workflow_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->delete_workflow_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_type

> <WorkflowTypeVBAResponse> get_workflow_type(vbasoftware_database, workflow_type)

Get WorkflowType

Gets WorkflowType

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type

begin
  # Get WorkflowType
  result = api_instance.get_workflow_type(vbasoftware_database, workflow_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->get_workflow_type: #{e}"
end
```

#### Using the get_workflow_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeVBAResponse>, Integer, Hash)> get_workflow_type_with_http_info(vbasoftware_database, workflow_type)

```ruby
begin
  # Get WorkflowType
  data, status_code, headers = api_instance.get_workflow_type_with_http_info(vbasoftware_database, workflow_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->get_workflow_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |

### Return type

[**WorkflowTypeVBAResponse**](WorkflowTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_type

> <WorkflowTypeListVBAResponse> list_workflow_type(vbasoftware_database, opts)

List WorkflowType

Lists all WorkflowType

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowType
  result = api_instance.list_workflow_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->list_workflow_type: #{e}"
end
```

#### Using the list_workflow_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeListVBAResponse>, Integer, Hash)> list_workflow_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List WorkflowType
  data, status_code, headers = api_instance.list_workflow_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->list_workflow_type_with_http_info: #{e}"
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

[**WorkflowTypeListVBAResponse**](WorkflowTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_type

> <MultiCodeResponseListVBAResponse> update_batch_workflow_type(vbasoftware_database, workflow_type)

Create or Update Batch WorkflowType

Create or Update multiple WorkflowType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = [Vba::WorkflowType.new({workflow_type: 'workflow_type_example'})] # Array<WorkflowType> | 

begin
  # Create or Update Batch WorkflowType
  result = api_instance.update_batch_workflow_type(vbasoftware_database, workflow_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->update_batch_workflow_type: #{e}"
end
```

#### Using the update_batch_workflow_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_type_with_http_info(vbasoftware_database, workflow_type)

```ruby
begin
  # Create or Update Batch WorkflowType
  data, status_code, headers = api_instance.update_batch_workflow_type_with_http_info(vbasoftware_database, workflow_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->update_batch_workflow_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | [**Array&lt;WorkflowType&gt;**](WorkflowType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_type

> <WorkflowTypeVBAResponse> update_workflow_type(vbasoftware_database, workflow_type, workflow_type2)

Update WorkflowType

Updates a specific WorkflowType.

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

api_instance = Vba::WorkflowTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_type2 = Vba::WorkflowType.new({workflow_type: 'workflow_type_example'}) # WorkflowType | 

begin
  # Update WorkflowType
  result = api_instance.update_workflow_type(vbasoftware_database, workflow_type, workflow_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->update_workflow_type: #{e}"
end
```

#### Using the update_workflow_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeVBAResponse>, Integer, Hash)> update_workflow_type_with_http_info(vbasoftware_database, workflow_type, workflow_type2)

```ruby
begin
  # Update WorkflowType
  data, status_code, headers = api_instance.update_workflow_type_with_http_info(vbasoftware_database, workflow_type, workflow_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypesApi->update_workflow_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_type2** | [**WorkflowType**](WorkflowType.md) |  |  |

### Return type

[**WorkflowTypeVBAResponse**](WorkflowTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

