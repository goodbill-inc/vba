# Vba::ReportQueuesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_queue**](ReportQueuesApi.md#create_report_queue) | **POST** /report-queues | Create ReportQueue |
| [**delete_report_queue**](ReportQueuesApi.md#delete_report_queue) | **DELETE** /report-queues/{reportQueueKey} | Delete ReportQueue |
| [**get_report_queue**](ReportQueuesApi.md#get_report_queue) | **GET** /report-queues/{reportQueueKey} | Get ReportQueue |
| [**list_report_queue**](ReportQueuesApi.md#list_report_queue) | **GET** /report-queues | List ReportQueue |
| [**update_batch_report_queue**](ReportQueuesApi.md#update_batch_report_queue) | **PUT** /report-queues-batch | Create or Update Batch ReportQueue |
| [**update_report_queue**](ReportQueuesApi.md#update_report_queue) | **PUT** /report-queues/{reportQueueKey} | Update ReportQueue |


## create_report_queue

> <ReportQueueVBAResponse> create_report_queue(vbasoftware_database, report_queue)

Create ReportQueue

Creates a new ReportQueue

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue = Vba::ReportQueue.new({report_queue_key: 37}) # ReportQueue | 

begin
  # Create ReportQueue
  result = api_instance.create_report_queue(vbasoftware_database, report_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->create_report_queue: #{e}"
end
```

#### Using the create_report_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueVBAResponse>, Integer, Hash)> create_report_queue_with_http_info(vbasoftware_database, report_queue)

```ruby
begin
  # Create ReportQueue
  data, status_code, headers = api_instance.create_report_queue_with_http_info(vbasoftware_database, report_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->create_report_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue** | [**ReportQueue**](ReportQueue.md) |  |  |

### Return type

[**ReportQueueVBAResponse**](ReportQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_queue

> delete_report_queue(vbasoftware_database, report_queue_key)

Delete ReportQueue

Deletes an ReportQueue

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key

begin
  # Delete ReportQueue
  api_instance.delete_report_queue(vbasoftware_database, report_queue_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->delete_report_queue: #{e}"
end
```

#### Using the delete_report_queue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_queue_with_http_info(vbasoftware_database, report_queue_key)

```ruby
begin
  # Delete ReportQueue
  data, status_code, headers = api_instance.delete_report_queue_with_http_info(vbasoftware_database, report_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->delete_report_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_queue

> <ReportQueueVBAResponse> get_report_queue(vbasoftware_database, report_queue_key)

Get ReportQueue

Gets ReportQueue

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key

begin
  # Get ReportQueue
  result = api_instance.get_report_queue(vbasoftware_database, report_queue_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->get_report_queue: #{e}"
end
```

#### Using the get_report_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueVBAResponse>, Integer, Hash)> get_report_queue_with_http_info(vbasoftware_database, report_queue_key)

```ruby
begin
  # Get ReportQueue
  data, status_code, headers = api_instance.get_report_queue_with_http_info(vbasoftware_database, report_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->get_report_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |

### Return type

[**ReportQueueVBAResponse**](ReportQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_queue

> <ReportQueueListVBAResponse> list_report_queue(vbasoftware_database, opts)

List ReportQueue

Lists all ReportQueue

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportQueue
  result = api_instance.list_report_queue(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->list_report_queue: #{e}"
end
```

#### Using the list_report_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueListVBAResponse>, Integer, Hash)> list_report_queue_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportQueue
  data, status_code, headers = api_instance.list_report_queue_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->list_report_queue_with_http_info: #{e}"
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

[**ReportQueueListVBAResponse**](ReportQueueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_queue

> <MultiCodeResponseListVBAResponse> update_batch_report_queue(vbasoftware_database, report_queue)

Create or Update Batch ReportQueue

Create or Update multiple ReportQueue at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue = [Vba::ReportQueue.new({report_queue_key: 37})] # Array<ReportQueue> | 

begin
  # Create or Update Batch ReportQueue
  result = api_instance.update_batch_report_queue(vbasoftware_database, report_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->update_batch_report_queue: #{e}"
end
```

#### Using the update_batch_report_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_queue_with_http_info(vbasoftware_database, report_queue)

```ruby
begin
  # Create or Update Batch ReportQueue
  data, status_code, headers = api_instance.update_batch_report_queue_with_http_info(vbasoftware_database, report_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->update_batch_report_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue** | [**Array&lt;ReportQueue&gt;**](ReportQueue.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_queue

> <ReportQueueVBAResponse> update_report_queue(vbasoftware_database, report_queue_key, report_queue)

Update ReportQueue

Updates a specific ReportQueue.

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

api_instance = Vba::ReportQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue = Vba::ReportQueue.new({report_queue_key: 37}) # ReportQueue | 

begin
  # Update ReportQueue
  result = api_instance.update_report_queue(vbasoftware_database, report_queue_key, report_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->update_report_queue: #{e}"
end
```

#### Using the update_report_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueVBAResponse>, Integer, Hash)> update_report_queue_with_http_info(vbasoftware_database, report_queue_key, report_queue)

```ruby
begin
  # Update ReportQueue
  data, status_code, headers = api_instance.update_report_queue_with_http_info(vbasoftware_database, report_queue_key, report_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueuesApi->update_report_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue** | [**ReportQueue**](ReportQueue.md) |  |  |

### Return type

[**ReportQueueVBAResponse**](ReportQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

