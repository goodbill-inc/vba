# Vba::ReportSeriesProcessArgumentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#create_report_series_process_arg) | **POST** /report-series-processes/{reportSeriesProcessKey}/arguments | Create ReportSeriesProcessArg |
| [**delete_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#delete_report_series_process_arg) | **DELETE** /report-series-processes/{reportSeriesProcessKey}/arguments/{argumentName} | Delete ReportSeriesProcessArg |
| [**get_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#get_report_series_process_arg) | **GET** /report-series-processes/{reportSeriesProcessKey}/arguments/{argumentName} | Get ReportSeriesProcessArg |
| [**list_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#list_report_series_process_arg) | **GET** /report-series-processes/{reportSeriesProcessKey}/arguments | List ReportSeriesProcessArg |
| [**update_batch_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#update_batch_report_series_process_arg) | **PUT** /report-series-processes/{reportSeriesProcessKey}/arguments-batch | Create or Update Batch ReportSeriesProcessArg |
| [**update_report_series_process_arg**](ReportSeriesProcessArgumentsApi.md#update_report_series_process_arg) | **PUT** /report-series-processes/{reportSeriesProcessKey}/arguments/{argumentName} | Update ReportSeriesProcessArg |


## create_report_series_process_arg

> <ReportSeriesProcessArgVBAResponse> create_report_series_process_arg(vbasoftware_database, report_series_process_key, report_series_process_arg)

Create ReportSeriesProcessArg

Creates a new ReportSeriesProcessArg

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
report_series_process_arg = Vba::ReportSeriesProcessArg.new({report_series_process_key: 37, argument_name: 'argument_name_example'}) # ReportSeriesProcessArg | 

begin
  # Create ReportSeriesProcessArg
  result = api_instance.create_report_series_process_arg(vbasoftware_database, report_series_process_key, report_series_process_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->create_report_series_process_arg: #{e}"
end
```

#### Using the create_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessArgVBAResponse>, Integer, Hash)> create_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, report_series_process_arg)

```ruby
begin
  # Create ReportSeriesProcessArg
  data, status_code, headers = api_instance.create_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, report_series_process_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->create_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **report_series_process_arg** | [**ReportSeriesProcessArg**](ReportSeriesProcessArg.md) |  |  |

### Return type

[**ReportSeriesProcessArgVBAResponse**](ReportSeriesProcessArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series_process_arg

> delete_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name)

Delete ReportSeriesProcessArg

Deletes an ReportSeriesProcessArg

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
argument_name = 'argument_name_example' # String | Argument Name

begin
  # Delete ReportSeriesProcessArg
  api_instance.delete_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->delete_report_series_process_arg: #{e}"
end
```

#### Using the delete_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name)

```ruby
begin
  # Delete ReportSeriesProcessArg
  data, status_code, headers = api_instance.delete_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->delete_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **argument_name** | **String** | Argument Name |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series_process_arg

> <ReportSeriesProcessArgVBAResponse> get_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name)

Get ReportSeriesProcessArg

Gets ReportSeriesProcessArg

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
argument_name = 'argument_name_example' # String | Argument Name

begin
  # Get ReportSeriesProcessArg
  result = api_instance.get_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->get_report_series_process_arg: #{e}"
end
```

#### Using the get_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessArgVBAResponse>, Integer, Hash)> get_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name)

```ruby
begin
  # Get ReportSeriesProcessArg
  data, status_code, headers = api_instance.get_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->get_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **argument_name** | **String** | Argument Name |  |

### Return type

[**ReportSeriesProcessArgVBAResponse**](ReportSeriesProcessArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_process_arg

> <ReportSeriesProcessArgListVBAResponse> list_report_series_process_arg(vbasoftware_database, report_series_process_key, opts)

List ReportSeriesProcessArg

Lists all ReportSeriesProcessArg for the given reportSeriesProcessKey

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeriesProcessArg
  result = api_instance.list_report_series_process_arg(vbasoftware_database, report_series_process_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->list_report_series_process_arg: #{e}"
end
```

#### Using the list_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessArgListVBAResponse>, Integer, Hash)> list_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, opts)

```ruby
begin
  # List ReportSeriesProcessArg
  data, status_code, headers = api_instance.list_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessArgListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->list_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportSeriesProcessArgListVBAResponse**](ReportSeriesProcessArgListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_series_process_arg

> <MultiCodeResponseListVBAResponse> update_batch_report_series_process_arg(vbasoftware_database, report_series_process_key, report_series_process_arg)

Create or Update Batch ReportSeriesProcessArg

Create or Update multiple ReportSeriesProcessArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
report_series_process_arg = [Vba::ReportSeriesProcessArg.new({report_series_process_key: 37, argument_name: 'argument_name_example'})] # Array<ReportSeriesProcessArg> | 

begin
  # Create or Update Batch ReportSeriesProcessArg
  result = api_instance.update_batch_report_series_process_arg(vbasoftware_database, report_series_process_key, report_series_process_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->update_batch_report_series_process_arg: #{e}"
end
```

#### Using the update_batch_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, report_series_process_arg)

```ruby
begin
  # Create or Update Batch ReportSeriesProcessArg
  data, status_code, headers = api_instance.update_batch_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, report_series_process_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->update_batch_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **report_series_process_arg** | [**Array&lt;ReportSeriesProcessArg&gt;**](ReportSeriesProcessArg.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series_process_arg

> <ReportSeriesProcessArgVBAResponse> update_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name, report_series_process_arg)

Update ReportSeriesProcessArg

Updates a specific ReportSeriesProcessArg.

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

api_instance = Vba::ReportSeriesProcessArgumentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
argument_name = 'argument_name_example' # String | Argument Name
report_series_process_arg = Vba::ReportSeriesProcessArg.new({report_series_process_key: 37, argument_name: 'argument_name_example'}) # ReportSeriesProcessArg | 

begin
  # Update ReportSeriesProcessArg
  result = api_instance.update_report_series_process_arg(vbasoftware_database, report_series_process_key, argument_name, report_series_process_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->update_report_series_process_arg: #{e}"
end
```

#### Using the update_report_series_process_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessArgVBAResponse>, Integer, Hash)> update_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name, report_series_process_arg)

```ruby
begin
  # Update ReportSeriesProcessArg
  data, status_code, headers = api_instance.update_report_series_process_arg_with_http_info(vbasoftware_database, report_series_process_key, argument_name, report_series_process_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessArgumentsApi->update_report_series_process_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **argument_name** | **String** | Argument Name |  |
| **report_series_process_arg** | [**ReportSeriesProcessArg**](ReportSeriesProcessArg.md) |  |  |

### Return type

[**ReportSeriesProcessArgVBAResponse**](ReportSeriesProcessArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

