# Vba::WorkflowUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_user**](WorkflowUsersApi.md#create_workflow_user) | **POST** /workflows/{workflowKey}/users | Create WorkflowUser |
| [**delete_workflow_user**](WorkflowUsersApi.md#delete_workflow_user) | **DELETE** /workflows/{workflowKey}/users/{userID} | Delete WorkflowUser |
| [**get_workflow_user**](WorkflowUsersApi.md#get_workflow_user) | **GET** /workflows/{workflowKey}/users/{userID} | Get WorkflowUser |
| [**list_workflow_user**](WorkflowUsersApi.md#list_workflow_user) | **GET** /workflows/{workflowKey}/users | List WorkflowUser |
| [**update_batch_workflow_user**](WorkflowUsersApi.md#update_batch_workflow_user) | **PUT** /workflows/{workflowKey}/users-batch | Create or Update Batch WorkflowUser |
| [**update_workflow_user**](WorkflowUsersApi.md#update_workflow_user) | **PUT** /workflows/{workflowKey}/users/{userID} | Update WorkflowUser |


## create_workflow_user

> <WorkflowUserVBAResponse> create_workflow_user(vbasoftware_database, workflow_key, workflow_user)

Create WorkflowUser

Creates a new WorkflowUser

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_user = Vba::WorkflowUser.new({workflow_key: 37, user_id: 'user_id_example'}) # WorkflowUser | 

begin
  # Create WorkflowUser
  result = api_instance.create_workflow_user(vbasoftware_database, workflow_key, workflow_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->create_workflow_user: #{e}"
end
```

#### Using the create_workflow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowUserVBAResponse>, Integer, Hash)> create_workflow_user_with_http_info(vbasoftware_database, workflow_key, workflow_user)

```ruby
begin
  # Create WorkflowUser
  data, status_code, headers = api_instance.create_workflow_user_with_http_info(vbasoftware_database, workflow_key, workflow_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->create_workflow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_user** | [**WorkflowUser**](WorkflowUser.md) |  |  |

### Return type

[**WorkflowUserVBAResponse**](WorkflowUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_user

> delete_workflow_user(vbasoftware_database, workflow_key, user_id)

Delete WorkflowUser

Deletes an WorkflowUser

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
user_id = 'user_id_example' # String | User ID

begin
  # Delete WorkflowUser
  api_instance.delete_workflow_user(vbasoftware_database, workflow_key, user_id)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->delete_workflow_user: #{e}"
end
```

#### Using the delete_workflow_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id)

```ruby
begin
  # Delete WorkflowUser
  data, status_code, headers = api_instance.delete_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->delete_workflow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_user

> <WorkflowUserVBAResponse> get_workflow_user(vbasoftware_database, workflow_key, user_id)

Get WorkflowUser

Gets WorkflowUser

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
user_id = 'user_id_example' # String | User ID

begin
  # Get WorkflowUser
  result = api_instance.get_workflow_user(vbasoftware_database, workflow_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->get_workflow_user: #{e}"
end
```

#### Using the get_workflow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowUserVBAResponse>, Integer, Hash)> get_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id)

```ruby
begin
  # Get WorkflowUser
  data, status_code, headers = api_instance.get_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->get_workflow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**WorkflowUserVBAResponse**](WorkflowUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_user

> <WorkflowUserListVBAResponse> list_workflow_user(vbasoftware_database, workflow_key, opts)

List WorkflowUser

Lists all WorkflowUser for the given workflowKey

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowUser
  result = api_instance.list_workflow_user(vbasoftware_database, workflow_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->list_workflow_user: #{e}"
end
```

#### Using the list_workflow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowUserListVBAResponse>, Integer, Hash)> list_workflow_user_with_http_info(vbasoftware_database, workflow_key, opts)

```ruby
begin
  # List WorkflowUser
  data, status_code, headers = api_instance.list_workflow_user_with_http_info(vbasoftware_database, workflow_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->list_workflow_user_with_http_info: #{e}"
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

[**WorkflowUserListVBAResponse**](WorkflowUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_user

> <MultiCodeResponseListVBAResponse> update_batch_workflow_user(vbasoftware_database, workflow_key, workflow_user)

Create or Update Batch WorkflowUser

Create or Update multiple WorkflowUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
workflow_user = [Vba::WorkflowUser.new({workflow_key: 37, user_id: 'user_id_example'})] # Array<WorkflowUser> | 

begin
  # Create or Update Batch WorkflowUser
  result = api_instance.update_batch_workflow_user(vbasoftware_database, workflow_key, workflow_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->update_batch_workflow_user: #{e}"
end
```

#### Using the update_batch_workflow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_user_with_http_info(vbasoftware_database, workflow_key, workflow_user)

```ruby
begin
  # Create or Update Batch WorkflowUser
  data, status_code, headers = api_instance.update_batch_workflow_user_with_http_info(vbasoftware_database, workflow_key, workflow_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->update_batch_workflow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **workflow_user** | [**Array&lt;WorkflowUser&gt;**](WorkflowUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_user

> <WorkflowUserVBAResponse> update_workflow_user(vbasoftware_database, workflow_key, user_id, workflow_user)

Update WorkflowUser

Updates a specific WorkflowUser.

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

api_instance = Vba::WorkflowUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_key = 56 # Integer | Workflow Key
user_id = 'user_id_example' # String | User ID
workflow_user = Vba::WorkflowUser.new({workflow_key: 37, user_id: 'user_id_example'}) # WorkflowUser | 

begin
  # Update WorkflowUser
  result = api_instance.update_workflow_user(vbasoftware_database, workflow_key, user_id, workflow_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->update_workflow_user: #{e}"
end
```

#### Using the update_workflow_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowUserVBAResponse>, Integer, Hash)> update_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id, workflow_user)

```ruby
begin
  # Update WorkflowUser
  data, status_code, headers = api_instance.update_workflow_user_with_http_info(vbasoftware_database, workflow_key, user_id, workflow_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowUsersApi->update_workflow_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_key** | **Integer** | Workflow Key |  |
| **user_id** | **String** | User ID |  |
| **workflow_user** | [**WorkflowUser**](WorkflowUser.md) |  |  |

### Return type

[**WorkflowUserVBAResponse**](WorkflowUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

