# Vba::JobTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_job_type**](JobTypesApi.md#create_job_type) | **POST** /job-types | Create JobType |
| [**delete_job_type**](JobTypesApi.md#delete_job_type) | **DELETE** /job-types/{jobType} | Delete JobType |
| [**get_job_type**](JobTypesApi.md#get_job_type) | **GET** /job-types/{jobType} | Get JobType |
| [**list_job_type**](JobTypesApi.md#list_job_type) | **GET** /job-types | List JobType |
| [**update_batch_job_type**](JobTypesApi.md#update_batch_job_type) | **PUT** /job-types-batch | Create or Update Batch JobType |
| [**update_job_type**](JobTypesApi.md#update_job_type) | **PUT** /job-types/{jobType} | Update JobType |


## create_job_type

> <JobTypeVBAResponse> create_job_type(vbasoftware_database, job_type)

Create JobType

Creates a new JobType

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_type = Vba::JobType.new({job_type: 'job_type_example'}) # JobType | 

begin
  # Create JobType
  result = api_instance.create_job_type(vbasoftware_database, job_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->create_job_type: #{e}"
end
```

#### Using the create_job_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobTypeVBAResponse>, Integer, Hash)> create_job_type_with_http_info(vbasoftware_database, job_type)

```ruby
begin
  # Create JobType
  data, status_code, headers = api_instance.create_job_type_with_http_info(vbasoftware_database, job_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->create_job_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_type** | [**JobType**](JobType.md) |  |  |

### Return type

[**JobTypeVBAResponse**](JobTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_job_type

> delete_job_type(vbasoftware_database, job_type)

Delete JobType

Deletes an JobType

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_type = 'job_type_example' # String | Job Type

begin
  # Delete JobType
  api_instance.delete_job_type(vbasoftware_database, job_type)
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->delete_job_type: #{e}"
end
```

#### Using the delete_job_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_job_type_with_http_info(vbasoftware_database, job_type)

```ruby
begin
  # Delete JobType
  data, status_code, headers = api_instance.delete_job_type_with_http_info(vbasoftware_database, job_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->delete_job_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_type** | **String** | Job Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_job_type

> <JobTypeVBAResponse> get_job_type(vbasoftware_database, job_type)

Get JobType

Gets JobType

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_type = 'job_type_example' # String | Job Type

begin
  # Get JobType
  result = api_instance.get_job_type(vbasoftware_database, job_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->get_job_type: #{e}"
end
```

#### Using the get_job_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobTypeVBAResponse>, Integer, Hash)> get_job_type_with_http_info(vbasoftware_database, job_type)

```ruby
begin
  # Get JobType
  data, status_code, headers = api_instance.get_job_type_with_http_info(vbasoftware_database, job_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->get_job_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_type** | **String** | Job Type |  |

### Return type

[**JobTypeVBAResponse**](JobTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_job_type

> <JobTypeListVBAResponse> list_job_type(vbasoftware_database, opts)

List JobType

Lists all JobType

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List JobType
  result = api_instance.list_job_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->list_job_type: #{e}"
end
```

#### Using the list_job_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobTypeListVBAResponse>, Integer, Hash)> list_job_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List JobType
  data, status_code, headers = api_instance.list_job_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->list_job_type_with_http_info: #{e}"
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

[**JobTypeListVBAResponse**](JobTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_job_type

> <MultiCodeResponseListVBAResponse> update_batch_job_type(vbasoftware_database, job_type)

Create or Update Batch JobType

Create or Update multiple JobType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_type = [Vba::JobType.new({job_type: 'job_type_example'})] # Array<JobType> | 

begin
  # Create or Update Batch JobType
  result = api_instance.update_batch_job_type(vbasoftware_database, job_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->update_batch_job_type: #{e}"
end
```

#### Using the update_batch_job_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_job_type_with_http_info(vbasoftware_database, job_type)

```ruby
begin
  # Create or Update Batch JobType
  data, status_code, headers = api_instance.update_batch_job_type_with_http_info(vbasoftware_database, job_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->update_batch_job_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_type** | [**Array&lt;JobType&gt;**](JobType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_job_type

> <JobTypeVBAResponse> update_job_type(vbasoftware_database, job_type, job_type2)

Update JobType

Updates a specific JobType.

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

api_instance = Vba::JobTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
job_type = 'job_type_example' # String | Job Type
job_type2 = Vba::JobType.new({job_type: 'job_type_example'}) # JobType | 

begin
  # Update JobType
  result = api_instance.update_job_type(vbasoftware_database, job_type, job_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->update_job_type: #{e}"
end
```

#### Using the update_job_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobTypeVBAResponse>, Integer, Hash)> update_job_type_with_http_info(vbasoftware_database, job_type, job_type2)

```ruby
begin
  # Update JobType
  data, status_code, headers = api_instance.update_job_type_with_http_info(vbasoftware_database, job_type, job_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling JobTypesApi->update_job_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **job_type** | **String** | Job Type |  |
| **job_type2** | [**JobType**](JobType.md) |  |  |

### Return type

[**JobTypeVBAResponse**](JobTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

