# Vba::ReportQueueDetailArgumentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#create_report_queue_detail_arg) | **POST** /report-queue-detail-args | Create ReportQueueDetailArg |
| [**delete_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#delete_report_queue_detail_arg) | **DELETE** /report-queue-detail-args/{reportQueueDetailArgKey} | Delete ReportQueueDetailArg |
| [**get_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#get_report_queue_detail_arg) | **GET** /report-queue-detail-args/{reportQueueDetailArgKey} | Get ReportQueueDetailArg |
| [**list_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#list_report_queue_detail_arg) | **GET** /report-queue-detail-args | List ReportQueueDetailArg |
| [**update_batch_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#update_batch_report_queue_detail_arg) | **PUT** /report-queue-detail-args-batch | Create or Update Batch ReportQueueDetailArg |
| [**update_report_queue_detail_arg**](ReportQueueDetailArgumentsApi.md#update_report_queue_detail_arg) | **PUT** /report-queue-detail-args/{reportQueueDetailArgKey} | Update ReportQueueDetailArg |


## create_report_queue_detail_arg

> <ReportQueueDetailArgVBAResponse> create_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg)

Create ReportQueueDetailArg

Creates a new ReportQueueDetailArg

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_detail_arg = Vba::ReportQueueDetailArg.new({report_queue_detail_arg_key: 37, report_queue_detail_key: 37}) # ReportQueueDetailArg | 

begin
  # Create ReportQueueDetailArg
  result = api_instance.create_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->create_report_queue_detail_arg: #{e}"
end
```

#### Using the create_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailArgVBAResponse>, Integer, Hash)> create_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg)

```ruby
begin
  # Create ReportQueueDetailArg
  data, status_code, headers = api_instance.create_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->create_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_arg** | [**ReportQueueDetailArg**](ReportQueueDetailArg.md) |  |  |

### Return type

[**ReportQueueDetailArgVBAResponse**](ReportQueueDetailArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_queue_detail_arg

> delete_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key)

Delete ReportQueueDetailArg

Deletes an ReportQueueDetailArg

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_detail_arg_key = 56 # Integer | ReportQueueDetailArg Key

begin
  # Delete ReportQueueDetailArg
  api_instance.delete_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->delete_report_queue_detail_arg: #{e}"
end
```

#### Using the delete_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key)

```ruby
begin
  # Delete ReportQueueDetailArg
  data, status_code, headers = api_instance.delete_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->delete_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_arg_key** | **Integer** | ReportQueueDetailArg Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_queue_detail_arg

> <ReportQueueDetailArgVBAResponse> get_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key)

Get ReportQueueDetailArg

Gets ReportQueueDetailArg

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_detail_arg_key = 56 # Integer | ReportQueueDetailArg Key

begin
  # Get ReportQueueDetailArg
  result = api_instance.get_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->get_report_queue_detail_arg: #{e}"
end
```

#### Using the get_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailArgVBAResponse>, Integer, Hash)> get_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key)

```ruby
begin
  # Get ReportQueueDetailArg
  data, status_code, headers = api_instance.get_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->get_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_arg_key** | **Integer** | ReportQueueDetailArg Key |  |

### Return type

[**ReportQueueDetailArgVBAResponse**](ReportQueueDetailArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_queue_detail_arg

> <ReportQueueDetailArgListVBAResponse> list_report_queue_detail_arg(vbasoftware_database, opts)

List ReportQueueDetailArg

Lists all ReportQueueDetailArg

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  report_queue_detail_key: 56, # Integer | Filter by ReportQueueDetailKey
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportQueueDetailArg
  result = api_instance.list_report_queue_detail_arg(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->list_report_queue_detail_arg: #{e}"
end
```

#### Using the list_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailArgListVBAResponse>, Integer, Hash)> list_report_queue_detail_arg_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportQueueDetailArg
  data, status_code, headers = api_instance.list_report_queue_detail_arg_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailArgListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->list_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_key** | **Integer** | Filter by ReportQueueDetailKey | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportQueueDetailArgListVBAResponse**](ReportQueueDetailArgListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_queue_detail_arg

> <MultiCodeResponseListVBAResponse> update_batch_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg)

Create or Update Batch ReportQueueDetailArg

Create or Update multiple ReportQueueDetailArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_detail_arg = [Vba::ReportQueueDetailArg.new({report_queue_detail_arg_key: 37, report_queue_detail_key: 37})] # Array<ReportQueueDetailArg> | 

begin
  # Create or Update Batch ReportQueueDetailArg
  result = api_instance.update_batch_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->update_batch_report_queue_detail_arg: #{e}"
end
```

#### Using the update_batch_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg)

```ruby
begin
  # Create or Update Batch ReportQueueDetailArg
  data, status_code, headers = api_instance.update_batch_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->update_batch_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_arg** | [**Array&lt;ReportQueueDetailArg&gt;**](ReportQueueDetailArg.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_queue_detail_arg

> <ReportQueueDetailArgVBAResponse> update_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg)

Update ReportQueueDetailArg

Updates a specific ReportQueueDetailArg.

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

api_instance = Vba::ReportQueueDetailArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_queue_detail_arg_key = 56 # Integer | ReportQueueDetailArg Key
report_queue_detail_arg = Vba::ReportQueueDetailArg.new({report_queue_detail_arg_key: 37, report_queue_detail_key: 37}) # ReportQueueDetailArg | 

begin
  # Update ReportQueueDetailArg
  result = api_instance.update_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->update_report_queue_detail_arg: #{e}"
end
```

#### Using the update_report_queue_detail_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportQueueDetailArgVBAResponse>, Integer, Hash)> update_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg)

```ruby
begin
  # Update ReportQueueDetailArg
  data, status_code, headers = api_instance.update_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportQueueDetailArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportQueueDetailArgumentsApi->update_report_queue_detail_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_queue_detail_arg_key** | **Integer** | ReportQueueDetailArg Key |  |
| **report_queue_detail_arg** | [**ReportQueueDetailArg**](ReportQueueDetailArg.md) |  |  |

### Return type

[**ReportQueueDetailArgVBAResponse**](ReportQueueDetailArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

