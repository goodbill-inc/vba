# Vba::ReportQueueDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_queue_detail**](ReportQueueDetailsApi.md#create_report_queue_detail) | **POST** /report-queues/{reportQueueKey}/details | Create ReportQueueDetail |
| [**delete_report_queue_detail**](ReportQueueDetailsApi.md#delete_report_queue_detail) | **DELETE** /report-queues/{reportQueueKey}/details/{reportQueueDetailKey} | Delete ReportQueueDetail |
| [**get_report_queue_detail**](ReportQueueDetailsApi.md#get_report_queue_detail) | **GET** /report-queues/{reportQueueKey}/details/{reportQueueDetailKey} | Get ReportQueueDetail |
| [**list_report_queue_detail**](ReportQueueDetailsApi.md#list_report_queue_detail) | **GET** /report-queues/{reportQueueKey}/details | List ReportQueueDetail |
| [**update_batch_report_queue_detail**](ReportQueueDetailsApi.md#update_batch_report_queue_detail) | **PUT** /report-queues/{reportQueueKey}/details-batch | Create or Update Batch ReportQueueDetail |
| [**update_report_queue_detail**](ReportQueueDetailsApi.md#update_report_queue_detail) | **PUT** /report-queues/{reportQueueKey}/details/{reportQueueDetailKey} | Update ReportQueueDetail |


## create_report_queue_detail

> <ReportQueueDetailVBAResponse> create_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail)

Create ReportQueueDetail

Creates a new ReportQueueDetail

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue_detail = Vba::ReportQueueDetail.new({report_queue_detail_key: 37, report_queue_key: 37}) # ReportQueueDetail | 

begin
  # Create ReportQueueDetail
  result = api_instance.create_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->create_report_queue_detail: #{e}"
end
```

#### Using the create_report_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailVBAResponse>, Integer, Hash)> create_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail)

```ruby
begin
  # Create ReportQueueDetail
  data, status_code, headers = api_instance.create_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->create_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue_detail** | [**ReportQueueDetail**](ReportQueueDetail.md) |  |  |

### Return type

[**ReportQueueDetailVBAResponse**](ReportQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_queue_detail

> delete_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key)

Delete ReportQueueDetail

Deletes an ReportQueueDetail

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue_detail_key = 56 # Integer | ReportQueueDetail Key

begin
  # Delete ReportQueueDetail
  api_instance.delete_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->delete_report_queue_detail: #{e}"
end
```

#### Using the delete_report_queue_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key)

```ruby
begin
  # Delete ReportQueueDetail
  data, status_code, headers = api_instance.delete_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->delete_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue_detail_key** | **Integer** | ReportQueueDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_queue_detail

> <ReportQueueDetailVBAResponse> get_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key)

Get ReportQueueDetail

Gets ReportQueueDetail

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue_detail_key = 56 # Integer | ReportQueueDetail Key

begin
  # Get ReportQueueDetail
  result = api_instance.get_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->get_report_queue_detail: #{e}"
end
```

#### Using the get_report_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailVBAResponse>, Integer, Hash)> get_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key)

```ruby
begin
  # Get ReportQueueDetail
  data, status_code, headers = api_instance.get_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->get_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue_detail_key** | **Integer** | ReportQueueDetail Key |  |

### Return type

[**ReportQueueDetailVBAResponse**](ReportQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_queue_detail

> <ReportQueueDetailListVBAResponse> list_report_queue_detail(vbasoftware_database, report_queue_key, opts)

List ReportQueueDetail

Lists all ReportQueueDetail for the given reportQueueKey

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportQueueDetail
  result = api_instance.list_report_queue_detail(vbasoftware_database, report_queue_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->list_report_queue_detail: #{e}"
end
```

#### Using the list_report_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailListVBAResponse>, Integer, Hash)> list_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, opts)

```ruby
begin
  # List ReportQueueDetail
  data, status_code, headers = api_instance.list_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->list_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportQueueDetailListVBAResponse**](ReportQueueDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_queue_detail

> <MultiCodeResponseListVBAResponse> update_batch_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail)

Create or Update Batch ReportQueueDetail

Create or Update multiple ReportQueueDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue_detail = [Vba::ReportQueueDetail.new({report_queue_detail_key: 37, report_queue_key: 37})] # Array<ReportQueueDetail> | 

begin
  # Create or Update Batch ReportQueueDetail
  result = api_instance.update_batch_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->update_batch_report_queue_detail: #{e}"
end
```

#### Using the update_batch_report_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail)

```ruby
begin
  # Create or Update Batch ReportQueueDetail
  data, status_code, headers = api_instance.update_batch_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->update_batch_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue_detail** | [**Array&lt;ReportQueueDetail&gt;**](ReportQueueDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_queue_detail

> <ReportQueueDetailVBAResponse> update_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key, report_queue_detail)

Update ReportQueueDetail

Updates a specific ReportQueueDetail.

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

api_instance = Vba::ReportQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_key = 56 # Integer | ReportQueue Key
report_queue_detail_key = 56 # Integer | ReportQueueDetail Key
report_queue_detail = Vba::ReportQueueDetail.new({report_queue_detail_key: 37, report_queue_key: 37}) # ReportQueueDetail | 

begin
  # Update ReportQueueDetail
  result = api_instance.update_report_queue_detail(vbasoftware_database, report_queue_key, report_queue_detail_key, report_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->update_report_queue_detail: #{e}"
end
```

#### Using the update_report_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailVBAResponse>, Integer, Hash)> update_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key, report_queue_detail)

```ruby
begin
  # Update ReportQueueDetail
  data, status_code, headers = api_instance.update_report_queue_detail_with_http_info(vbasoftware_database, report_queue_key, report_queue_detail_key, report_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailsApi->update_report_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_key** | **Integer** | ReportQueue Key |  |
| **report_queue_detail_key** | **Integer** | ReportQueueDetail Key |  |
| **report_queue_detail** | [**ReportQueueDetail**](ReportQueueDetail.md) |  |  |

### Return type

[**ReportQueueDetailVBAResponse**](ReportQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

