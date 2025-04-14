# Vba::WorkflowsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow**](WorkflowsApi.md#create_workflow) | **POST** /workflows | Create Workflow |
| [**delete_workflow**](WorkflowsApi.md#delete_workflow) | **DELETE** /workflows/{workflowKey} | Delete Workflow |
| [**get_workflow**](WorkflowsApi.md#get_workflow) | **GET** /workflows/{workflowKey} | Get Workflow |
| [**list_workflow**](WorkflowsApi.md#list_workflow) | **GET** /workflows | List Workflow |
| [**update_batch_workflow**](WorkflowsApi.md#update_batch_workflow) | **PUT** /workflows-batch | Create or Update Batch Workflow |
| [**update_workflow**](WorkflowsApi.md#update_workflow) | **PUT** /workflows/{workflowKey} | Update Workflow |


## create_workflow

> <WorkflowVBAResponse> create_workflow(vbasoftware_database, workflow)

Create Workflow

Creates a new Workflow

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow = Vba::Workflow.new({workflow_key: 37, disabled: false}) # Workflow | 

begin
  # Create Workflow
  result = api_instance.create_workflow(vbasoftware_database, workflow)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow: #{e}"
end
```

#### Using the create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowVBAResponse>, Integer, Hash)> create_workflow_with_http_info(vbasoftware_database, workflow)

```ruby
begin
  # Create Workflow
  data, status_code, headers = api_instance.create_workflow_with_http_info(vbasoftware_database, workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow** | [**Workflow**](Workflow.md) |  |  |

### Return type

[**WorkflowVBAResponse**](WorkflowVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow

> delete_workflow(vbasoftware_database, workflow_key)

Delete Workflow

Deletes an Workflow

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key

begin
  # Delete Workflow
  api_instance.delete_workflow(vbasoftware_database, workflow_key)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow: #{e}"
end
```

#### Using the delete_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_with_http_info(vbasoftware_database, workflow_key)

```ruby
begin
  # Delete Workflow
  data, status_code, headers = api_instance.delete_workflow_with_http_info(vbasoftware_database, workflow_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow

> <WorkflowVBAResponse> get_workflow(vbasoftware_database, workflow_key)

Get Workflow

Gets Workflow

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key

begin
  # Get Workflow
  result = api_instance.get_workflow(vbasoftware_database, workflow_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow: #{e}"
end
```

#### Using the get_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowVBAResponse>, Integer, Hash)> get_workflow_with_http_info(vbasoftware_database, workflow_key)

```ruby
begin
  # Get Workflow
  data, status_code, headers = api_instance.get_workflow_with_http_info(vbasoftware_database, workflow_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |

### Return type

[**WorkflowVBAResponse**](WorkflowVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow

> <WorkflowListVBAResponse> list_workflow(vbasoftware_database, opts)

List Workflow

Lists all Workflow

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Workflow
  result = api_instance.list_workflow(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow: #{e}"
end
```

#### Using the list_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowListVBAResponse>, Integer, Hash)> list_workflow_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Workflow
  data, status_code, headers = api_instance.list_workflow_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_with_http_info: #{e}"
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

[**WorkflowListVBAResponse**](WorkflowListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow

> <MultiCodeResponseListVBAResponse> update_batch_workflow(vbasoftware_database, workflow)

Create or Update Batch Workflow

Create or Update multiple Workflow at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow = [Vba::Workflow.new({workflow_key: 37, disabled: false})] # Array<Workflow> | 

begin
  # Create or Update Batch Workflow
  result = api_instance.update_batch_workflow(vbasoftware_database, workflow)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->update_batch_workflow: #{e}"
end
```

#### Using the update_batch_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_with_http_info(vbasoftware_database, workflow)

```ruby
begin
  # Create or Update Batch Workflow
  data, status_code, headers = api_instance.update_batch_workflow_with_http_info(vbasoftware_database, workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->update_batch_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow** | [**Array&lt;Workflow&gt;**](Workflow.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow

> <WorkflowVBAResponse> update_workflow(vbasoftware_database, workflow_key, workflow)

Update Workflow

Updates a specific Workflow.

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

api_instance = Vba::WorkflowsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow = Vba::Workflow.new({workflow_key: 37, disabled: false}) # Workflow | 

begin
  # Update Workflow
  result = api_instance.update_workflow(vbasoftware_database, workflow_key, workflow)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow: #{e}"
end
```

#### Using the update_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowVBAResponse>, Integer, Hash)> update_workflow_with_http_info(vbasoftware_database, workflow_key, workflow)

```ruby
begin
  # Update Workflow
  data, status_code, headers = api_instance.update_workflow_with_http_info(vbasoftware_database, workflow_key, workflow)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow** | [**Workflow**](Workflow.md) |  |  |

### Return type

[**WorkflowVBAResponse**](WorkflowVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

