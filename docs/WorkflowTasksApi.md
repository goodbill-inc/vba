# Vba::WorkflowTasksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_task**](WorkflowTasksApi.md#create_workflow_task) | **POST** /workflows/{workflowKey}/tasks | Create WorkflowTask |
| [**delete_workflow_task**](WorkflowTasksApi.md#delete_workflow_task) | **DELETE** /workflows/{workflowKey}/tasks/{workflowTaskSeq} | Delete WorkflowTask |
| [**get_workflow_task**](WorkflowTasksApi.md#get_workflow_task) | **GET** /workflows/{workflowKey}/tasks/{workflowTaskSeq} | Get WorkflowTask |
| [**list_workflow_task**](WorkflowTasksApi.md#list_workflow_task) | **GET** /workflows/{workflowKey}/tasks | List WorkflowTask |
| [**update_batch_workflow_task**](WorkflowTasksApi.md#update_batch_workflow_task) | **PUT** /workflows/{workflowKey}/tasks-batch | Create or Update Batch WorkflowTask |
| [**update_workflow_task**](WorkflowTasksApi.md#update_workflow_task) | **PUT** /workflows/{workflowKey}/tasks/{workflowTaskSeq} | Update WorkflowTask |


## create_workflow_task

> <WorkflowTaskVBAResponse> create_workflow_task(vbasoftware_database, workflow_key, workflow_task)

Create WorkflowTask

Creates a new WorkflowTask

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task = Vba::WorkflowTask.new({workflow_key: 37, workflow_task_seq: 37}) # WorkflowTask | 

begin
  # Create WorkflowTask
  result = api_instance.create_workflow_task(vbasoftware_database, workflow_key, workflow_task)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->create_workflow_task: #{e}"
end
```

#### Using the create_workflow_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskVBAResponse>, Integer, Hash)> create_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task)

```ruby
begin
  # Create WorkflowTask
  data, status_code, headers = api_instance.create_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->create_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task** | [**WorkflowTask**](WorkflowTask.md) |  |  |

### Return type

[**WorkflowTaskVBAResponse**](WorkflowTaskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_task

> delete_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq)

Delete WorkflowTask

Deletes an WorkflowTask

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq

begin
  # Delete WorkflowTask
  api_instance.delete_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->delete_workflow_task: #{e}"
end
```

#### Using the delete_workflow_task_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq)

```ruby
begin
  # Delete WorkflowTask
  data, status_code, headers = api_instance.delete_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->delete_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_task

> <WorkflowTaskVBAResponse> get_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq)

Get WorkflowTask

Gets WorkflowTask

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq

begin
  # Get WorkflowTask
  result = api_instance.get_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->get_workflow_task: #{e}"
end
```

#### Using the get_workflow_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskVBAResponse>, Integer, Hash)> get_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq)

```ruby
begin
  # Get WorkflowTask
  data, status_code, headers = api_instance.get_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->get_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |

### Return type

[**WorkflowTaskVBAResponse**](WorkflowTaskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_task

> <WorkflowTaskListVBAResponse> list_workflow_task(vbasoftware_database, workflow_key, opts)

List WorkflowTask

Lists all WorkflowTask for the given workflowKey

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowTask
  result = api_instance.list_workflow_task(vbasoftware_database, workflow_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->list_workflow_task: #{e}"
end
```

#### Using the list_workflow_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskListVBAResponse>, Integer, Hash)> list_workflow_task_with_http_info(vbasoftware_database, workflow_key, opts)

```ruby
begin
  # List WorkflowTask
  data, status_code, headers = api_instance.list_workflow_task_with_http_info(vbasoftware_database, workflow_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->list_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**WorkflowTaskListVBAResponse**](WorkflowTaskListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_task

> <MultiCodeResponseListVBAResponse> update_batch_workflow_task(vbasoftware_database, workflow_key, workflow_task)

Create or Update Batch WorkflowTask

Create or Update multiple WorkflowTask at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task = [Vba::WorkflowTask.new({workflow_key: 37, workflow_task_seq: 37})] # Array<WorkflowTask> | 

begin
  # Create or Update Batch WorkflowTask
  result = api_instance.update_batch_workflow_task(vbasoftware_database, workflow_key, workflow_task)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->update_batch_workflow_task: #{e}"
end
```

#### Using the update_batch_workflow_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task)

```ruby
begin
  # Create or Update Batch WorkflowTask
  data, status_code, headers = api_instance.update_batch_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->update_batch_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task** | [**Array&lt;WorkflowTask&gt;**](WorkflowTask.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_task

> <WorkflowTaskVBAResponse> update_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task)

Update WorkflowTask

Updates a specific WorkflowTask.

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

api_instance = Vba::WorkflowTasksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task = Vba::WorkflowTask.new({workflow_key: 37, workflow_task_seq: 37}) # WorkflowTask | 

begin
  # Update WorkflowTask
  result = api_instance.update_workflow_task(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->update_workflow_task: #{e}"
end
```

#### Using the update_workflow_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskVBAResponse>, Integer, Hash)> update_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task)

```ruby
begin
  # Update WorkflowTask
  data, status_code, headers = api_instance.update_workflow_task_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTasksApi->update_workflow_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task** | [**WorkflowTask**](WorkflowTask.md) |  |  |

### Return type

[**WorkflowTaskVBAResponse**](WorkflowTaskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

