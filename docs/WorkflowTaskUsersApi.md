# Vba::WorkflowTaskUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_task_user**](WorkflowTaskUsersApi.md#create_workflow_task_user) | **POST** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users | Create WorkflowTaskUser |
| [**delete_workflow_task_user**](WorkflowTaskUsersApi.md#delete_workflow_task_user) | **DELETE** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users/{userID} | Delete WorkflowTaskUser |
| [**get_workflow_task_user**](WorkflowTaskUsersApi.md#get_workflow_task_user) | **GET** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users/{userID} | Get WorkflowTaskUser |
| [**list_workflow_task_user**](WorkflowTaskUsersApi.md#list_workflow_task_user) | **GET** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users | List WorkflowTaskUser |
| [**update_batch_workflow_task_user**](WorkflowTaskUsersApi.md#update_batch_workflow_task_user) | **PUT** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users-batch | Create or Update Batch WorkflowTaskUser |
| [**update_workflow_task_user**](WorkflowTaskUsersApi.md#update_workflow_task_user) | **PUT** /workflows/{workflowKey}/tasks/{workflowTaskSeq}/users/{userID} | Update WorkflowTaskUser |


## create_workflow_task_user

> <WorkflowTaskUserVBAResponse> create_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)

Create WorkflowTaskUser

Creates a new WorkflowTaskUser

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_user = Vba::WorkflowTaskUser.new({workflow_key: 37, workflow_task_seq: 37, user_id: 'user_id_example', set_complete: false, set_process: false, set_reject: false}) # WorkflowTaskUser | 

begin
  # Create WorkflowTaskUser
  result = api_instance.create_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->create_workflow_task_user: #{e}"
end
```

#### Using the create_workflow_task_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskUserVBAResponse>, Integer, Hash)> create_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)

```ruby
begin
  # Create WorkflowTaskUser
  data, status_code, headers = api_instance.create_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->create_workflow_task_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_user** | [**WorkflowTaskUser**](WorkflowTaskUser.md) |  |  |

### Return type

[**WorkflowTaskUserVBAResponse**](WorkflowTaskUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_task_user

> delete_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id)

Delete WorkflowTaskUser

Deletes an WorkflowTaskUser

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
user_id = 'user_id_example' # String | User ID

begin
  # Delete WorkflowTaskUser
  api_instance.delete_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->delete_workflow_task_user: #{e}"
end
```

#### Using the delete_workflow_task_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id)

```ruby
begin
  # Delete WorkflowTaskUser
  data, status_code, headers = api_instance.delete_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->delete_workflow_task_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_task_user

> <WorkflowTaskUserVBAResponse> get_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id)

Get WorkflowTaskUser

Gets WorkflowTaskUser

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
user_id = 'user_id_example' # String | User ID

begin
  # Get WorkflowTaskUser
  result = api_instance.get_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->get_workflow_task_user: #{e}"
end
```

#### Using the get_workflow_task_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskUserVBAResponse>, Integer, Hash)> get_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id)

```ruby
begin
  # Get WorkflowTaskUser
  data, status_code, headers = api_instance.get_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->get_workflow_task_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **user_id** | **String** | User ID |  |

### Return type

[**WorkflowTaskUserVBAResponse**](WorkflowTaskUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_task_user

> <WorkflowTaskUserListVBAResponse> list_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, opts)

List WorkflowTaskUser

Lists all WorkflowTaskUser for the given workflowKey and workflowTaskSeq

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowTaskUser
  result = api_instance.list_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->list_workflow_task_user: #{e}"
end
```

#### Using the list_workflow_task_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskUserListVBAResponse>, Integer, Hash)> list_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, opts)

```ruby
begin
  # List WorkflowTaskUser
  data, status_code, headers = api_instance.list_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->list_workflow_task_user_with_http_info: #{e}"
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

[**WorkflowTaskUserListVBAResponse**](WorkflowTaskUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_task_user

> <MultiCodeResponseListVBAResponse> update_batch_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)

Create or Update Batch WorkflowTaskUser

Create or Update multiple WorkflowTaskUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
workflow_task_user = [Vba::WorkflowTaskUser.new({workflow_key: 37, workflow_task_seq: 37, user_id: 'user_id_example', set_complete: false, set_process: false, set_reject: false})] # Array<WorkflowTaskUser> | 

begin
  # Create or Update Batch WorkflowTaskUser
  result = api_instance.update_batch_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->update_batch_workflow_task_user: #{e}"
end
```

#### Using the update_batch_workflow_task_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)

```ruby
begin
  # Create or Update Batch WorkflowTaskUser
  data, status_code, headers = api_instance.update_batch_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, workflow_task_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->update_batch_workflow_task_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **workflow_task_user** | [**Array&lt;WorkflowTaskUser&gt;**](WorkflowTaskUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_task_user

> <WorkflowTaskUserVBAResponse> update_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id, workflow_task_user)

Update WorkflowTaskUser

Updates a specific WorkflowTaskUser.

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

api_instance = Vba::WorkflowTaskUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_task_seq = 56 # Integer | WorkflowTask Seq
user_id = 'user_id_example' # String | User ID
workflow_task_user = Vba::WorkflowTaskUser.new({workflow_key: 37, workflow_task_seq: 37, user_id: 'user_id_example', set_complete: false, set_process: false, set_reject: false}) # WorkflowTaskUser | 

begin
  # Update WorkflowTaskUser
  result = api_instance.update_workflow_task_user(vbasoftware_database, workflow_key, workflow_task_seq, user_id, workflow_task_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->update_workflow_task_user: #{e}"
end
```

#### Using the update_workflow_task_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowTaskUserVBAResponse>, Integer, Hash)> update_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id, workflow_task_user)

```ruby
begin
  # Update WorkflowTaskUser
  data, status_code, headers = api_instance.update_workflow_task_user_with_http_info(vbasoftware_database, workflow_key, workflow_task_seq, user_id, workflow_task_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowTaskUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowTaskUsersApi->update_workflow_task_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_task_seq** | **Integer** | WorkflowTask Seq |  |
| **user_id** | **String** | User ID |  |
| **workflow_task_user** | [**WorkflowTaskUser**](WorkflowTaskUser.md) |  |  |

### Return type

[**WorkflowTaskUserVBAResponse**](WorkflowTaskUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

