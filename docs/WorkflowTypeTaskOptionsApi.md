# Vba::WorkflowTypeTaskOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#create_workflow_type_task_option) | **POST** /workflow-types/{workflowType}/task-options | Create WorkflowTypeTaskOption |
| [**delete_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#delete_workflow_type_task_option) | **DELETE** /workflow-types/{workflowType}/task-options/{workflowTaskOption} | Delete WorkflowTypeTaskOption |
| [**get_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#get_workflow_type_task_option) | **GET** /workflow-types/{workflowType}/task-options/{workflowTaskOption} | Get WorkflowTypeTaskOption |
| [**list_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#list_workflow_type_task_option) | **GET** /workflow-types/{workflowType}/task-options | List WorkflowTypeTaskOption |
| [**update_batch_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#update_batch_workflow_type_task_option) | **PUT** /workflow-types/{workflowType}/task-options-batch | Create or Update Batch WorkflowTypeTaskOption |
| [**update_workflow_type_task_option**](WorkflowTypeTaskOptionsApi.md#update_workflow_type_task_option) | **PUT** /workflow-types/{workflowType}/task-options/{workflowTaskOption} | Update WorkflowTypeTaskOption |


## create_workflow_type_task_option

> <WorkflowTypeTaskOptionVBAResponse> create_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option)

Create WorkflowTypeTaskOption

Creates a new WorkflowTypeTaskOption

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_type_task_option = Vba::WorkflowTypeTaskOption.new({workflow_type: 'workflow_type_example', workflow_task_option: 'workflow_task_option_example', system_process_option: false}) # WorkflowTypeTaskOption | 

begin
  # Create WorkflowTypeTaskOption
  result = api_instance.create_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->create_workflow_type_task_option: #{e}"
end
```

#### Using the create_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeTaskOptionVBAResponse>, Integer, Hash)> create_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option)

```ruby
begin
  # Create WorkflowTypeTaskOption
  data, status_code, headers = api_instance.create_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeTaskOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->create_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_type_task_option** | [**WorkflowTypeTaskOption**](WorkflowTypeTaskOption.md) |  |  |

### Return type

[**WorkflowTypeTaskOptionVBAResponse**](WorkflowTypeTaskOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_type_task_option

> delete_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option)

Delete WorkflowTypeTaskOption

Deletes an WorkflowTypeTaskOption

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_task_option = 'workflow_task_option_example' # String | WorkflowTask Option

begin
  # Delete WorkflowTypeTaskOption
  api_instance.delete_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->delete_workflow_type_task_option: #{e}"
end
```

#### Using the delete_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option)

```ruby
begin
  # Delete WorkflowTypeTaskOption
  data, status_code, headers = api_instance.delete_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->delete_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_task_option** | **String** | WorkflowTask Option |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_type_task_option

> <WorkflowTypeTaskOptionVBAResponse> get_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option)

Get WorkflowTypeTaskOption

Gets WorkflowTypeTaskOption

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_task_option = 'workflow_task_option_example' # String | WorkflowTask Option

begin
  # Get WorkflowTypeTaskOption
  result = api_instance.get_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->get_workflow_type_task_option: #{e}"
end
```

#### Using the get_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeTaskOptionVBAResponse>, Integer, Hash)> get_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option)

```ruby
begin
  # Get WorkflowTypeTaskOption
  data, status_code, headers = api_instance.get_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeTaskOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->get_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_task_option** | **String** | WorkflowTask Option |  |

### Return type

[**WorkflowTypeTaskOptionVBAResponse**](WorkflowTypeTaskOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_type_task_option

> <WorkflowTypeTaskOptionListVBAResponse> list_workflow_type_task_option(vbasoftware_database, workflow_type, opts)

List WorkflowTypeTaskOption

Lists all WorkflowTypeTaskOption for the given workflowType

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowTypeTaskOption
  result = api_instance.list_workflow_type_task_option(vbasoftware_database, workflow_type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->list_workflow_type_task_option: #{e}"
end
```

#### Using the list_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeTaskOptionListVBAResponse>, Integer, Hash)> list_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, opts)

```ruby
begin
  # List WorkflowTypeTaskOption
  data, status_code, headers = api_instance.list_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeTaskOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->list_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**WorkflowTypeTaskOptionListVBAResponse**](WorkflowTypeTaskOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_type_task_option

> <MultiCodeResponseListVBAResponse> update_batch_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option)

Create or Update Batch WorkflowTypeTaskOption

Create or Update multiple WorkflowTypeTaskOption at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_type_task_option = [Vba::WorkflowTypeTaskOption.new({workflow_type: 'workflow_type_example', workflow_task_option: 'workflow_task_option_example', system_process_option: false})] # Array<WorkflowTypeTaskOption> | 

begin
  # Create or Update Batch WorkflowTypeTaskOption
  result = api_instance.update_batch_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_type_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->update_batch_workflow_type_task_option: #{e}"
end
```

#### Using the update_batch_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option)

```ruby
begin
  # Create or Update Batch WorkflowTypeTaskOption
  data, status_code, headers = api_instance.update_batch_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_type_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->update_batch_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_type_task_option** | [**Array&lt;WorkflowTypeTaskOption&gt;**](WorkflowTypeTaskOption.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_type_task_option

> <WorkflowTypeTaskOptionVBAResponse> update_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option)

Update WorkflowTypeTaskOption

Updates a specific WorkflowTypeTaskOption.

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

api_instance = Vba::WorkflowTypeTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_type = 'workflow_type_example' # String | Workflow Type
workflow_task_option = 'workflow_task_option_example' # String | WorkflowTask Option
workflow_type_task_option = Vba::WorkflowTypeTaskOption.new({workflow_type: 'workflow_type_example', workflow_task_option: 'workflow_task_option_example', system_process_option: false}) # WorkflowTypeTaskOption | 

begin
  # Update WorkflowTypeTaskOption
  result = api_instance.update_workflow_type_task_option(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->update_workflow_type_task_option: #{e}"
end
```

#### Using the update_workflow_type_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTypeTaskOptionVBAResponse>, Integer, Hash)> update_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option)

```ruby
begin
  # Update WorkflowTypeTaskOption
  data, status_code, headers = api_instance.update_workflow_type_task_option_with_http_info(vbasoftware_database, workflow_type, workflow_task_option, workflow_type_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTypeTaskOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTypeTaskOptionsApi->update_workflow_type_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_type** | **String** | Workflow Type |  |
| **workflow_task_option** | **String** | WorkflowTask Option |  |
| **workflow_type_task_option** | [**WorkflowTypeTaskOption**](WorkflowTypeTaskOption.md) |  |  |

### Return type

[**WorkflowTypeTaskOptionVBAResponse**](WorkflowTypeTaskOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

