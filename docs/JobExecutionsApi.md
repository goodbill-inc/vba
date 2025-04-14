# Vba::JobExecutionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_job_execution**](JobExecutionsApi.md#create_job_execution) | **POST** /jobs/{jobID}/executions | Create JobExecution |
| [**delete_job_execution**](JobExecutionsApi.md#delete_job_execution) | **DELETE** /jobs/{jobID}/executions/{jobExecutionKey} | Delete JobExecution |
| [**get_job_execution**](JobExecutionsApi.md#get_job_execution) | **GET** /jobs/{jobID}/executions/{jobExecutionKey} | Get JobExecution |
| [**list_job_execution**](JobExecutionsApi.md#list_job_execution) | **GET** /jobs/{jobID}/executions | List JobExecution |
| [**update_batch_job_execution**](JobExecutionsApi.md#update_batch_job_execution) | **PUT** /jobs/{jobID}/executions-batch | Create or Update Batch JobExecution |
| [**update_job_execution**](JobExecutionsApi.md#update_job_execution) | **PUT** /jobs/{jobID}/executions/{jobExecutionKey} | Update JobExecution |


## create_job_execution

> <JobExecutionVBAResponse> create_job_execution(vbasoftware_database, job_id, job_execution)

Create JobExecution

Creates a new JobExecution

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution = Vba::JobExecution.new({job_execution_key: 37, job_id: 'job_id_example'}) # JobExecution | 

begin
  # Create JobExecution
  result = api_instance.create_job_execution(vbasoftware_database, job_id, job_execution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->create_job_execution: #{e}"
end
```

#### Using the create_job_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionVBAResponse>, Integer, Hash)> create_job_execution_with_http_info(vbasoftware_database, job_id, job_execution)

```ruby
begin
  # Create JobExecution
  data, status_code, headers = api_instance.create_job_execution_with_http_info(vbasoftware_database, job_id, job_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->create_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution** | [**JobExecution**](JobExecution.md) |  |  |

### Return type

[**JobExecutionVBAResponse**](JobExecutionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_job_execution

> delete_job_execution(vbasoftware_database, job_id, job_execution_key)

Delete JobExecution

Deletes an JobExecution

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key

begin
  # Delete JobExecution
  api_instance.delete_job_execution(vbasoftware_database, job_id, job_execution_key)
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->delete_job_execution: #{e}"
end
```

#### Using the delete_job_execution_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key)

```ruby
begin
  # Delete JobExecution
  data, status_code, headers = api_instance.delete_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->delete_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_job_execution

> <JobExecutionVBAResponse> get_job_execution(vbasoftware_database, job_id, job_execution_key)

Get JobExecution

Gets JobExecution

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key

begin
  # Get JobExecution
  result = api_instance.get_job_execution(vbasoftware_database, job_id, job_execution_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->get_job_execution: #{e}"
end
```

#### Using the get_job_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionVBAResponse>, Integer, Hash)> get_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key)

```ruby
begin
  # Get JobExecution
  data, status_code, headers = api_instance.get_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->get_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |

### Return type

[**JobExecutionVBAResponse**](JobExecutionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_job_execution

> <JobExecutionListVBAResponse> list_job_execution(vbasoftware_database, job_id, opts)

List JobExecution

Lists all JobExecution for the given jobID

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List JobExecution
  result = api_instance.list_job_execution(vbasoftware_database, job_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->list_job_execution: #{e}"
end
```

#### Using the list_job_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionListVBAResponse>, Integer, Hash)> list_job_execution_with_http_info(vbasoftware_database, job_id, opts)

```ruby
begin
  # List JobExecution
  data, status_code, headers = api_instance.list_job_execution_with_http_info(vbasoftware_database, job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->list_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**JobExecutionListVBAResponse**](JobExecutionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_job_execution

> <MultiCodeResponseListVBAResponse> update_batch_job_execution(vbasoftware_database, job_id, job_execution)

Create or Update Batch JobExecution

Create or Update multiple JobExecution at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution = [Vba::JobExecution.new({job_execution_key: 37, job_id: 'job_id_example'})] # Array<JobExecution> | 

begin
  # Create or Update Batch JobExecution
  result = api_instance.update_batch_job_execution(vbasoftware_database, job_id, job_execution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->update_batch_job_execution: #{e}"
end
```

#### Using the update_batch_job_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_job_execution_with_http_info(vbasoftware_database, job_id, job_execution)

```ruby
begin
  # Create or Update Batch JobExecution
  data, status_code, headers = api_instance.update_batch_job_execution_with_http_info(vbasoftware_database, job_id, job_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->update_batch_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution** | [**Array&lt;JobExecution&gt;**](JobExecution.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_job_execution

> <JobExecutionVBAResponse> update_job_execution(vbasoftware_database, job_id, job_execution_key, job_execution)

Update JobExecution

Updates a specific JobExecution.

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

api_instance = Vba::JobExecutionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution = Vba::JobExecution.new({job_execution_key: 37, job_id: 'job_id_example'}) # JobExecution | 

begin
  # Update JobExecution
  result = api_instance.update_job_execution(vbasoftware_database, job_id, job_execution_key, job_execution)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->update_job_execution: #{e}"
end
```

#### Using the update_job_execution_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionVBAResponse>, Integer, Hash)> update_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution)

```ruby
begin
  # Update JobExecution
  data, status_code, headers = api_instance.update_job_execution_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionsApi->update_job_execution_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution** | [**JobExecution**](JobExecution.md) |  |  |

### Return type

[**JobExecutionVBAResponse**](JobExecutionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

