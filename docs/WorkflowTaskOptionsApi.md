# Vba::WorkflowTaskOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_task_option**](WorkflowTaskOptionsApi.md#create_workflow_task_option) | **POST** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/options | Create WorkflowTaskOption |
| [**delete_workflow_task_option**](WorkflowTaskOptionsApi.md#delete_workflow_task_option) | **DELETE** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/options/{workflowTaskOption} | Delete WorkflowTaskOption |
| [**get_workflow_task_option**](WorkflowTaskOptionsApi.md#get_workflow_task_option) | **GET** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/options/{workflowTaskOption} | Get WorkflowTaskOption |
| [**list_workflow_task_option**](WorkflowTaskOptionsApi.md#list_workflow_task_option) | **GET** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/options | List WorkflowTaskOption |
| [**update_batch_workflow_task_option**](WorkflowTaskOptionsApi.md#update_batch_workflow_task_option) | **PUT** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/options-batch | Create Batch WorkflowTaskOption |


## create_workflow_task_option

> <WorkflowTaskOptionVBAResponse> create_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

Create WorkflowTaskOption

Creates a new WorkflowTaskOption

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

api_instance = Vba::WorkflowTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_option = Vba::WorkflowTaskOption.new({workflow_key: 37, workflow_task_seq: 37, workflow_task_option: 'workflow_task_option_example'}) # WorkflowTaskOption | 

begin
  # Create WorkflowTaskOption
  result = api_instance.create_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->create_workflow_task_option: #{e}"
end
```

#### Using the create_workflow_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskOptionVBAResponse>, Integer, Hash)> create_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

```ruby
begin
  # Create WorkflowTaskOption
  data, status_code, headers = api_instance.create_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->create_workflow_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_option** | [**WorkflowTaskOption**](WorkflowTaskOption.md) |  |  |

### Return type

[**WorkflowTaskOptionVBAResponse**](WorkflowTaskOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_task_option

> delete_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

Delete WorkflowTaskOption

Deletes an WorkflowTaskOption

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

api_instance = Vba::WorkflowTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_option = 'workflow_task_option_example' # String | WorkflowTask Option

begin
  # Delete WorkflowTaskOption
  api_instance.delete_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->delete_workflow_task_option: #{e}"
end
```

#### Using the delete_workflow_task_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

```ruby
begin
  # Delete WorkflowTaskOption
  data, status_code, headers = api_instance.delete_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->delete_workflow_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_option** | **String** | WorkflowTask Option |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_task_option

> <WorkflowTaskOptionVBAResponse> get_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

Get WorkflowTaskOption

Gets WorkflowTaskOption

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

api_instance = Vba::WorkflowTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_option = 'workflow_task_option_example' # String | WorkflowTask Option

begin
  # Get WorkflowTaskOption
  result = api_instance.get_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->get_workflow_task_option: #{e}"
end
```

#### Using the get_workflow_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskOptionVBAResponse>, Integer, Hash)> get_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

```ruby
begin
  # Get WorkflowTaskOption
  data, status_code, headers = api_instance.get_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->get_workflow_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_option** | **String** | WorkflowTask Option |  |

### Return type

[**WorkflowTaskOptionVBAResponse**](WorkflowTaskOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_task_option

> <WorkflowTaskOptionListVBAResponse> list_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, opts)

List WorkflowTaskOption

Lists all WorkflowTaskOption for the given workflowKey and workflowTaskSeq

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

api_instance = Vba::WorkflowTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowTaskOption
  result = api_instance.list_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->list_workflow_task_option: #{e}"
end
```

#### Using the list_workflow_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskOptionListVBAResponse>, Integer, Hash)> list_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, opts)

```ruby
begin
  # List WorkflowTaskOption
  data, status_code, headers = api_instance.list_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->list_workflow_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**WorkflowTaskOptionListVBAResponse**](WorkflowTaskOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_task_option

> <MultiCodeResponseListVBAResponse> update_batch_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

Create Batch WorkflowTaskOption

Create multiple WorkflowTaskOption at once.  If the entity does not exist, it will be created. If the entity does exist, an error message will be treturned.

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

api_instance = Vba::WorkflowTaskOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_option = [Vba::WorkflowTaskOption.new({workflow_key: 37, workflow_task_seq: 37, workflow_task_option: 'workflow_task_option_example'})] # Array<WorkflowTaskOption> | 

begin
  # Create Batch WorkflowTaskOption
  result = api_instance.update_batch_workflow_task_option(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->update_batch_workflow_task_option: #{e}"
end
```

#### Using the update_batch_workflow_task_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)

```ruby
begin
  # Create Batch WorkflowTaskOption
  data, status_code, headers = api_instance.update_batch_workflow_task_option_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskOptionsApi->update_batch_workflow_task_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_option** | [**Array&lt;WorkflowTaskOption&gt;**](WorkflowTaskOption.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

