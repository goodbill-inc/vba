# Vba::JobsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_job**](JobsApi.md#create_job) | **POST** /jobs | Create Job |
| [**delete_job**](JobsApi.md#delete_job) | **DELETE** /jobs/{jobID} | Delete Job |
| [**get_job**](JobsApi.md#get_job) | **GET** /jobs/{jobID} | Get Job |
| [**list_job**](JobsApi.md#list_job) | **GET** /jobs | List Job |
| [**run_job**](JobsApi.md#run_job) | **POST** /jobs/{jobID}/run-job | Run Job |
| [**update_batch_job**](JobsApi.md#update_batch_job) | **PUT** /jobs-batch | Create or Update Batch Job |
| [**update_job**](JobsApi.md#update_job) | **PUT** /jobs/{jobID} | Update Job |


## create_job

> <JobVBAResponse> create_job(vbasoftware_database, job)

Create Job

Creates a new Job

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job = Vba::Job.new({job_id: 'job_id_example'}) # Job | 

begin
  # Create Job
  result = api_instance.create_job(vbasoftware_database, job)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->create_job: #{e}"
end
```

#### Using the create_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobVBAResponse>, Integer, Hash)> create_job_with_http_info(vbasoftware_database, job)

```ruby
begin
  # Create Job
  data, status_code, headers = api_instance.create_job_with_http_info(vbasoftware_database, job)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->create_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job** | [**Job**](Job.md) |  |  |

### Return type

[**JobVBAResponse**](JobVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_job

> delete_job(vbasoftware_database, job_id)

Delete Job

Deletes an Job

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID

begin
  # Delete Job
  api_instance.delete_job(vbasoftware_database, job_id)
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->delete_job: #{e}"
end
```

#### Using the delete_job_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_job_with_http_info(vbasoftware_database, job_id)

```ruby
begin
  # Delete Job
  data, status_code, headers = api_instance.delete_job_with_http_info(vbasoftware_database, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->delete_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_job

> <JobVBAResponse> get_job(vbasoftware_database, job_id)

Get Job

Gets Job

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID

begin
  # Get Job
  result = api_instance.get_job(vbasoftware_database, job_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobVBAResponse>, Integer, Hash)> get_job_with_http_info(vbasoftware_database, job_id)

```ruby
begin
  # Get Job
  data, status_code, headers = api_instance.get_job_with_http_info(vbasoftware_database, job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |

### Return type

[**JobVBAResponse**](JobVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_job

> <JobListVBAResponse> list_job(vbasoftware_database, opts)

List Job

Lists all Job

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Job
  result = api_instance.list_job(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->list_job: #{e}"
end
```

#### Using the list_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobListVBAResponse>, Integer, Hash)> list_job_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Job
  data, status_code, headers = api_instance.list_job_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->list_job_with_http_info: #{e}"
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

[**JobListVBAResponse**](JobListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## run_job

> run_job(vbasoftware_database, job_id, job_execution_meta_data)

Run Job

Execute a Job Runner Job.

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_meta_data = [Vba::JobExecutionMetaData.new({job_execution_key: 37, job_execution_attribute: 'job_execution_attribute_example'})] # Array<JobExecutionMetaData> | 

begin
  # Run Job
  api_instance.run_job(vbasoftware_database, job_id, job_execution_meta_data)
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->run_job: #{e}"
end
```

#### Using the run_job_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> run_job_with_http_info(vbasoftware_database, job_id, job_execution_meta_data)

```ruby
begin
  # Run Job
  data, status_code, headers = api_instance.run_job_with_http_info(vbasoftware_database, job_id, job_execution_meta_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->run_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_meta_data** | [**Array&lt;JobExecutionMetaData&gt;**](JobExecutionMetaData.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## update_batch_job

> <MultiCodeResponseListVBAResponse> update_batch_job(vbasoftware_database, job)

Create or Update Batch Job

Create or Update multiple Job at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job = [Vba::Job.new({job_id: 'job_id_example'})] # Array<Job> | 

begin
  # Create or Update Batch Job
  result = api_instance.update_batch_job(vbasoftware_database, job)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->update_batch_job: #{e}"
end
```

#### Using the update_batch_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_job_with_http_info(vbasoftware_database, job)

```ruby
begin
  # Create or Update Batch Job
  data, status_code, headers = api_instance.update_batch_job_with_http_info(vbasoftware_database, job)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->update_batch_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job** | [**Array&lt;Job&gt;**](Job.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_job

> <JobVBAResponse> update_job(vbasoftware_database, job_id, job)

Update Job

Updates a specific Job.

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

api_instance = Vba::JobsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job = Vba::Job.new({job_id: 'job_id_example'}) # Job | 

begin
  # Update Job
  result = api_instance.update_job(vbasoftware_database, job_id, job)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->update_job: #{e}"
end
```

#### Using the update_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobVBAResponse>, Integer, Hash)> update_job_with_http_info(vbasoftware_database, job_id, job)

```ruby
begin
  # Update Job
  data, status_code, headers = api_instance.update_job_with_http_info(vbasoftware_database, job_id, job)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobsApi->update_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job** | [**Job**](Job.md) |  |  |

### Return type

[**JobVBAResponse**](JobVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

