# Vba::WorkflowDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workflow_detail**](WorkflowDetailsApi.md#create_workflow_detail) | **POST** /workflow-details | Create WorkflowDetail |
| [**delete_workflow_detail**](WorkflowDetailsApi.md#delete_workflow_detail) | **DELETE** /workflow-details/{workflowDetailKey} | Delete WorkflowDetail |
| [**get_workflow_detail**](WorkflowDetailsApi.md#get_workflow_detail) | **GET** /workflow-details/{workflowDetailKey} | Get WorkflowDetail |
| [**list_workflow_detail**](WorkflowDetailsApi.md#list_workflow_detail) | **GET** /workflow-details | List WorkflowDetail |
| [**update_batch_workflow_detail**](WorkflowDetailsApi.md#update_batch_workflow_detail) | **PUT** /workflow-details-batch | Create or Update Batch WorkflowDetail |
| [**update_workflow_detail**](WorkflowDetailsApi.md#update_workflow_detail) | **PUT** /workflow-details/{workflowDetailKey} | Update WorkflowDetail |


## create_workflow_detail

> <WorkflowDetailVBAResponse> create_workflow_detail(vbasoftware_database, workflow_detail)

Create WorkflowDetail

Creates a new WorkflowDetail

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_detail = Vba::WorkflowDetail.new({workflow_detail_key: 37}) # WorkflowDetail | 

begin
  # Create WorkflowDetail
  result = api_instance.create_workflow_detail(vbasoftware_database, workflow_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->create_workflow_detail: #{e}"
end
```

#### Using the create_workflow_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowDetailVBAResponse>, Integer, Hash)> create_workflow_detail_with_http_info(vbasoftware_database, workflow_detail)

```ruby
begin
  # Create WorkflowDetail
  data, status_code, headers = api_instance.create_workflow_detail_with_http_info(vbasoftware_database, workflow_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->create_workflow_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_detail** | [**WorkflowDetail**](WorkflowDetail.md) |  |  |

### Return type

[**WorkflowDetailVBAResponse**](WorkflowDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_workflow_detail

> delete_workflow_detail(vbasoftware_database, workflow_detail_key)

Delete WorkflowDetail

Deletes an WorkflowDetail

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_detail_key = 56 # Integer | WorkflowDetail Key

begin
  # Delete WorkflowDetail
  api_instance.delete_workflow_detail(vbasoftware_database, workflow_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->delete_workflow_detail: #{e}"
end
```

#### Using the delete_workflow_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key)

```ruby
begin
  # Delete WorkflowDetail
  data, status_code, headers = api_instance.delete_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->delete_workflow_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_detail_key** | **Integer** | WorkflowDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_workflow_detail

> <WorkflowDetailVBAResponse> get_workflow_detail(vbasoftware_database, workflow_detail_key)

Get WorkflowDetail

Gets WorkflowDetail

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_detail_key = 56 # Integer | WorkflowDetail Key

begin
  # Get WorkflowDetail
  result = api_instance.get_workflow_detail(vbasoftware_database, workflow_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->get_workflow_detail: #{e}"
end
```

#### Using the get_workflow_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowDetailVBAResponse>, Integer, Hash)> get_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key)

```ruby
begin
  # Get WorkflowDetail
  data, status_code, headers = api_instance.get_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->get_workflow_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_detail_key** | **Integer** | WorkflowDetail Key |  |

### Return type

[**WorkflowDetailVBAResponse**](WorkflowDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_workflow_detail

> <WorkflowDetailListVBAResponse> list_workflow_detail(vbasoftware_database, opts)

List WorkflowDetail

Lists all WorkflowDetail

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List WorkflowDetail
  result = api_instance.list_workflow_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->list_workflow_detail: #{e}"
end
```

#### Using the list_workflow_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowDetailListVBAResponse>, Integer, Hash)> list_workflow_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List WorkflowDetail
  data, status_code, headers = api_instance.list_workflow_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->list_workflow_detail_with_http_info: #{e}"
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

[**WorkflowDetailListVBAResponse**](WorkflowDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_workflow_detail

> <MultiCodeResponseListVBAResponse> update_batch_workflow_detail(vbasoftware_database, workflow_detail)

Create or Update Batch WorkflowDetail

Create or Update multiple WorkflowDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_detail = [Vba::WorkflowDetail.new({workflow_detail_key: 37})] # Array<WorkflowDetail> | 

begin
  # Create or Update Batch WorkflowDetail
  result = api_instance.update_batch_workflow_detail(vbasoftware_database, workflow_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->update_batch_workflow_detail: #{e}"
end
```

#### Using the update_batch_workflow_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_workflow_detail_with_http_info(vbasoftware_database, workflow_detail)

```ruby
begin
  # Create or Update Batch WorkflowDetail
  data, status_code, headers = api_instance.update_batch_workflow_detail_with_http_info(vbasoftware_database, workflow_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->update_batch_workflow_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_detail** | [**Array&lt;WorkflowDetail&gt;**](WorkflowDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_workflow_detail

> <WorkflowDetailVBAResponse> update_workflow_detail(vbasoftware_database, workflow_detail_key, workflow_detail)

Update WorkflowDetail

Updates a specific WorkflowDetail.

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

api_instance = Vba::WorkflowDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_detail_key = 56 # Integer | WorkflowDetail Key
workflow_detail = Vba::WorkflowDetail.new({workflow_detail_key: 37}) # WorkflowDetail | 

begin
  # Update WorkflowDetail
  result = api_instance.update_workflow_detail(vbasoftware_database, workflow_detail_key, workflow_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->update_workflow_detail: #{e}"
end
```

#### Using the update_workflow_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowDetailVBAResponse>, Integer, Hash)> update_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key, workflow_detail)

```ruby
begin
  # Update WorkflowDetail
  data, status_code, headers = api_instance.update_workflow_detail_with_http_info(vbasoftware_database, workflow_detail_key, workflow_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling WorkflowDetailsApi->update_workflow_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_detail_key** | **Integer** | WorkflowDetail Key |  |
| **workflow_detail** | [**WorkflowDetail**](WorkflowDetail.md) |  |  |

### Return type

[**WorkflowDetailVBAResponse**](WorkflowDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

