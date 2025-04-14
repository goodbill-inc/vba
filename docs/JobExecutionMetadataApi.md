# Vba::JobExecutionMetadataApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_job_execution_meta_data**](JobExecutionMetadataApi.md#create_job_execution_meta_data) | **POST** /jobs/{jobID}/executions/{jobExecutionKey}/metadata | Create JobExecutionMetaData |
| [**delete_job_execution_meta_data**](JobExecutionMetadataApi.md#delete_job_execution_meta_data) | **DELETE** /jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute} | Delete JobExecutionMetaData |
| [**get_job_execution_meta_data**](JobExecutionMetadataApi.md#get_job_execution_meta_data) | **GET** /jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute} | Get JobExecutionMetaData |
| [**list_job_execution_meta_data**](JobExecutionMetadataApi.md#list_job_execution_meta_data) | **GET** /jobs/{jobID}/executions/{jobExecutionKey}/metadata | List JobExecutionMetaData |
| [**update_batch_job_execution_meta_data**](JobExecutionMetadataApi.md#update_batch_job_execution_meta_data) | **PUT** /jobs/{jobID}/executions/{jobExecutionKey}/metadata-batch | Create or Update Batch JobExecutionMetaData |
| [**update_job_execution_meta_data**](JobExecutionMetadataApi.md#update_job_execution_meta_data) | **PUT** /jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute} | Update JobExecutionMetaData |


## create_job_execution_meta_data

> <JobExecutionMetaDataVBAResponse> create_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)

Create JobExecutionMetaData

Creates a new JobExecutionMetaData

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution_meta_data = Vba::JobExecutionMetaData.new({job_execution_key: 37, job_execution_attribute: 'job_execution_attribute_example'}) # JobExecutionMetaData | 

begin
  # Create JobExecutionMetaData
  result = api_instance.create_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->create_job_execution_meta_data: #{e}"
end
```

#### Using the create_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionMetaDataVBAResponse>, Integer, Hash)> create_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)

```ruby
begin
  # Create JobExecutionMetaData
  data, status_code, headers = api_instance.create_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionMetaDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->create_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution_meta_data** | [**JobExecutionMetaData**](JobExecutionMetaData.md) |  |  |

### Return type

[**JobExecutionMetaDataVBAResponse**](JobExecutionMetaDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_job_execution_meta_data

> delete_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)

Delete JobExecutionMetaData

Deletes an JobExecutionMetaData

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution_attribute = 'job_execution_attribute_example' # String | JobExecution Attribute

begin
  # Delete JobExecutionMetaData
  api_instance.delete_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->delete_job_execution_meta_data: #{e}"
end
```

#### Using the delete_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)

```ruby
begin
  # Delete JobExecutionMetaData
  data, status_code, headers = api_instance.delete_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->delete_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution_attribute** | **String** | JobExecution Attribute |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_job_execution_meta_data

> <JobExecutionMetaDataVBAResponse> get_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)

Get JobExecutionMetaData

Gets JobExecutionMetaData

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution_attribute = 'job_execution_attribute_example' # String | JobExecution Attribute

begin
  # Get JobExecutionMetaData
  result = api_instance.get_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->get_job_execution_meta_data: #{e}"
end
```

#### Using the get_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionMetaDataVBAResponse>, Integer, Hash)> get_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)

```ruby
begin
  # Get JobExecutionMetaData
  data, status_code, headers = api_instance.get_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionMetaDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->get_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution_attribute** | **String** | JobExecution Attribute |  |

### Return type

[**JobExecutionMetaDataVBAResponse**](JobExecutionMetaDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_job_execution_meta_data

> <JobExecutionMetaDataListVBAResponse> list_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, opts)

List JobExecutionMetaData

Lists all JobExecutionMetaData for the given jobExecutionKey

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List JobExecutionMetaData
  result = api_instance.list_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->list_job_execution_meta_data: #{e}"
end
```

#### Using the list_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionMetaDataListVBAResponse>, Integer, Hash)> list_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, opts)

```ruby
begin
  # List JobExecutionMetaData
  data, status_code, headers = api_instance.list_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionMetaDataListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->list_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**JobExecutionMetaDataListVBAResponse**](JobExecutionMetaDataListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_job_execution_meta_data

> <MultiCodeResponseListVBAResponse> update_batch_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)

Create or Update Batch JobExecutionMetaData

Create or Update multiple JobExecutionMetaData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution_meta_data = [Vba::JobExecutionMetaData.new({job_execution_key: 37, job_execution_attribute: 'job_execution_attribute_example'})] # Array<JobExecutionMetaData> | 

begin
  # Create or Update Batch JobExecutionMetaData
  result = api_instance.update_batch_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->update_batch_job_execution_meta_data: #{e}"
end
```

#### Using the update_batch_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)

```ruby
begin
  # Create or Update Batch JobExecutionMetaData
  data, status_code, headers = api_instance.update_batch_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->update_batch_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution_meta_data** | [**Array&lt;JobExecutionMetaData&gt;**](JobExecutionMetaData.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_job_execution_meta_data

> <JobExecutionMetaDataVBAResponse> update_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data)

Update JobExecutionMetaData

Updates a specific JobExecutionMetaData.

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

api_instance = Vba::JobExecutionMetadataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_id = 'job_id_example' # String | Job ID
job_execution_key = 56 # Integer | JobExecution Key
job_execution_attribute = 'job_execution_attribute_example' # String | JobExecution Attribute
job_execution_meta_data = Vba::JobExecutionMetaData.new({job_execution_key: 37, job_execution_attribute: 'job_execution_attribute_example'}) # JobExecutionMetaData | 

begin
  # Update JobExecutionMetaData
  result = api_instance.update_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->update_job_execution_meta_data: #{e}"
end
```

#### Using the update_job_execution_meta_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobExecutionMetaDataVBAResponse>, Integer, Hash)> update_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data)

```ruby
begin
  # Update JobExecutionMetaData
  data, status_code, headers = api_instance.update_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobExecutionMetaDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobExecutionMetadataApi->update_job_execution_meta_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_id** | **String** | Job ID |  |
| **job_execution_key** | **Integer** | JobExecution Key |  |
| **job_execution_attribute** | **String** | JobExecution Attribute |  |
| **job_execution_meta_data** | [**JobExecutionMetaData**](JobExecutionMetaData.md) |  |  |

### Return type

[**JobExecutionMetaDataVBAResponse**](JobExecutionMetaDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

