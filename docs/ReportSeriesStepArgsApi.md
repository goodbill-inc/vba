# Vba::ReportSeriesStepArgsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series_step_arg**](ReportSeriesStepArgsApi.md#create_report_series_step_arg) | **POST** /report-series-step-args | Create ReportSeriesStepArg |
| [**delete_report_series_step_arg**](ReportSeriesStepArgsApi.md#delete_report_series_step_arg) | **DELETE** /report-series-step-args/{reportSeriesStepArgKey} | Delete ReportSeriesStepArg |
| [**get_report_series_step_arg**](ReportSeriesStepArgsApi.md#get_report_series_step_arg) | **GET** /report-series-step-args/{reportSeriesStepArgKey} | Get ReportSeriesStepArg |
| [**list_report_series_step_arg**](ReportSeriesStepArgsApi.md#list_report_series_step_arg) | **GET** /report-series-step-args | List ReportSeriesStepArg |
| [**update_batch_report_series_step_arg**](ReportSeriesStepArgsApi.md#update_batch_report_series_step_arg) | **PUT** /report-series-step-args-batch | Create or Update Batch ReportSeriesStepArg |
| [**update_report_series_step_arg**](ReportSeriesStepArgsApi.md#update_report_series_step_arg) | **PUT** /report-series-step-args/{reportSeriesStepArgKey} | Update ReportSeriesStepArg |


## create_report_series_step_arg

> <ReportSeriesStepArgVBAResponse> create_report_series_step_arg(vbasoftware_database, report_series_step_arg)

Create ReportSeriesStepArg

Creates a new ReportSeriesStepArg

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_arg = Vba::ReportSeriesStepArg.new({report_series_step_arg_key: 37, report_series_step_key: 37}) # ReportSeriesStepArg | 

begin
  # Create ReportSeriesStepArg
  result = api_instance.create_report_series_step_arg(vbasoftware_database, report_series_step_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->create_report_series_step_arg: #{e}"
end
```

#### Using the create_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepArgVBAResponse>, Integer, Hash)> create_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg)

```ruby
begin
  # Create ReportSeriesStepArg
  data, status_code, headers = api_instance.create_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->create_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_arg** | [**ReportSeriesStepArg**](ReportSeriesStepArg.md) |  |  |

### Return type

[**ReportSeriesStepArgVBAResponse**](ReportSeriesStepArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series_step_arg

> delete_report_series_step_arg(vbasoftware_database, report_series_step_arg_key)

Delete ReportSeriesStepArg

Deletes an ReportSeriesStepArg

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_arg_key = 56 # Integer | ReportSeriesStepArg Key

begin
  # Delete ReportSeriesStepArg
  api_instance.delete_report_series_step_arg(vbasoftware_database, report_series_step_arg_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->delete_report_series_step_arg: #{e}"
end
```

#### Using the delete_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key)

```ruby
begin
  # Delete ReportSeriesStepArg
  data, status_code, headers = api_instance.delete_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->delete_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_arg_key** | **Integer** | ReportSeriesStepArg Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series_step_arg

> <ReportSeriesStepArgVBAResponse> get_report_series_step_arg(vbasoftware_database, report_series_step_arg_key)

Get ReportSeriesStepArg

Gets ReportSeriesStepArg

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_arg_key = 56 # Integer | ReportSeriesStepArg Key

begin
  # Get ReportSeriesStepArg
  result = api_instance.get_report_series_step_arg(vbasoftware_database, report_series_step_arg_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->get_report_series_step_arg: #{e}"
end
```

#### Using the get_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepArgVBAResponse>, Integer, Hash)> get_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key)

```ruby
begin
  # Get ReportSeriesStepArg
  data, status_code, headers = api_instance.get_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->get_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_arg_key** | **Integer** | ReportSeriesStepArg Key |  |

### Return type

[**ReportSeriesStepArgVBAResponse**](ReportSeriesStepArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_step_arg

> <ReportSeriesStepArgListVBAResponse> list_report_series_step_arg(vbasoftware_database, opts)

List ReportSeriesStepArg

Lists all ReportSeriesStepArg

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  report_series_step_key: 56, # Integer | Filter by ReportSeriesStep_Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeriesStepArg
  result = api_instance.list_report_series_step_arg(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->list_report_series_step_arg: #{e}"
end
```

#### Using the list_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepArgListVBAResponse>, Integer, Hash)> list_report_series_step_arg_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeriesStepArg
  data, status_code, headers = api_instance.list_report_series_step_arg_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepArgListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->list_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_key** | **Integer** | Filter by ReportSeriesStep_Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportSeriesStepArgListVBAResponse**](ReportSeriesStepArgListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_series_step_arg

> <MultiCodeResponseListVBAResponse> update_batch_report_series_step_arg(vbasoftware_database, report_series_step_arg)

Create or Update Batch ReportSeriesStepArg

Create or Update multiple ReportSeriesStepArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_arg = [Vba::ReportSeriesStepArg.new({report_series_step_arg_key: 37, report_series_step_key: 37})] # Array<ReportSeriesStepArg> | 

begin
  # Create or Update Batch ReportSeriesStepArg
  result = api_instance.update_batch_report_series_step_arg(vbasoftware_database, report_series_step_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->update_batch_report_series_step_arg: #{e}"
end
```

#### Using the update_batch_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg)

```ruby
begin
  # Create or Update Batch ReportSeriesStepArg
  data, status_code, headers = api_instance.update_batch_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->update_batch_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_arg** | [**Array&lt;ReportSeriesStepArg&gt;**](ReportSeriesStepArg.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series_step_arg

> <ReportSeriesStepArgVBAResponse> update_report_series_step_arg(vbasoftware_database, report_series_step_arg_key, report_series_step_arg)

Update ReportSeriesStepArg

Updates a specific ReportSeriesStepArg.

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

api_instance = Vba::ReportSeriesStepArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_arg_key = 56 # Integer | ReportSeriesStepArg Key
report_series_step_arg = Vba::ReportSeriesStepArg.new({report_series_step_arg_key: 37, report_series_step_key: 37}) # ReportSeriesStepArg | 

begin
  # Update ReportSeriesStepArg
  result = api_instance.update_report_series_step_arg(vbasoftware_database, report_series_step_arg_key, report_series_step_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->update_report_series_step_arg: #{e}"
end
```

#### Using the update_report_series_step_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepArgVBAResponse>, Integer, Hash)> update_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, report_series_step_arg)

```ruby
begin
  # Update ReportSeriesStepArg
  data, status_code, headers = api_instance.update_report_series_step_arg_with_http_info(vbasoftware_database, report_series_step_arg_key, report_series_step_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepArgsApi->update_report_series_step_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_arg_key** | **Integer** | ReportSeriesStepArg Key |  |
| **report_series_step_arg** | [**ReportSeriesStepArg**](ReportSeriesStepArg.md) |  |  |

### Return type

[**ReportSeriesStepArgVBAResponse**](ReportSeriesStepArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

