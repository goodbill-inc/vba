# Vba::ReportSeriesTrackingArgsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#create_report_series_tracking_arg) | **POST** /report-series-trackins-args | Create ReportSeriesTrackingArg |
| [**delete_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#delete_report_series_tracking_arg) | **DELETE** /report-series-trackins-args/{reportSeriesTrackingArgKey} | Delete ReportSeriesTrackingArg |
| [**get_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#get_report_series_tracking_arg) | **GET** /report-series-trackins-args/{reportSeriesTrackingArgKey} | Get ReportSeriesTrackingArg |
| [**list_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#list_report_series_tracking_arg) | **GET** /report-series-trackins-args | List ReportSeriesTrackingArg |
| [**update_batch_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#update_batch_report_series_tracking_arg) | **PUT** /report-series-trackins-args-batch | Create or Update Batch ReportSeriesTrackingArg |
| [**update_report_series_tracking_arg**](ReportSeriesTrackingArgsApi.md#update_report_series_tracking_arg) | **PUT** /report-series-trackins-args/{reportSeriesTrackingArgKey} | Update ReportSeriesTrackingArg |


## create_report_series_tracking_arg

> <ReportSeriesTrackingArgVBAResponse> create_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg)

Create ReportSeriesTrackingArg

Creates a new ReportSeriesTrackingArg

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_tracking_arg = Vba::ReportSeriesTrackingArg.new({report_series_tracking_arg_key: 37, report_series_process_key: 37, report_series_key: 37}) # ReportSeriesTrackingArg | 

begin
  # Create ReportSeriesTrackingArg
  result = api_instance.create_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->create_report_series_tracking_arg: #{e}"
end
```

#### Using the create_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesTrackingArgVBAResponse>, Integer, Hash)> create_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg)

```ruby
begin
  # Create ReportSeriesTrackingArg
  data, status_code, headers = api_instance.create_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesTrackingArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->create_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_tracking_arg** | [**ReportSeriesTrackingArg**](ReportSeriesTrackingArg.md) |  |  |

### Return type

[**ReportSeriesTrackingArgVBAResponse**](ReportSeriesTrackingArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series_tracking_arg

> delete_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key)

Delete ReportSeriesTrackingArg

Deletes an ReportSeriesTrackingArg

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_tracking_arg_key = 56 # Integer | ReportSeriesTrackingArg Key

begin
  # Delete ReportSeriesTrackingArg
  api_instance.delete_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->delete_report_series_tracking_arg: #{e}"
end
```

#### Using the delete_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key)

```ruby
begin
  # Delete ReportSeriesTrackingArg
  data, status_code, headers = api_instance.delete_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->delete_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_tracking_arg_key** | **Integer** | ReportSeriesTrackingArg Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series_tracking_arg

> <ReportSeriesTrackingArgVBAResponse> get_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key)

Get ReportSeriesTrackingArg

Gets ReportSeriesTrackingArg

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_tracking_arg_key = 56 # Integer | ReportSeriesTrackingArg Key

begin
  # Get ReportSeriesTrackingArg
  result = api_instance.get_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->get_report_series_tracking_arg: #{e}"
end
```

#### Using the get_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesTrackingArgVBAResponse>, Integer, Hash)> get_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key)

```ruby
begin
  # Get ReportSeriesTrackingArg
  data, status_code, headers = api_instance.get_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesTrackingArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->get_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_tracking_arg_key** | **Integer** | ReportSeriesTrackingArg Key |  |

### Return type

[**ReportSeriesTrackingArgVBAResponse**](ReportSeriesTrackingArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_tracking_arg

> <ReportSeriesTrackingArgListVBAResponse> list_report_series_tracking_arg(vbasoftware_database, opts)

List ReportSeriesTrackingArg

Lists all ReportSeriesTrackingArg

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  report_series_key: 56, # Integer | Filter by ReportSeries_Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeriesTrackingArg
  result = api_instance.list_report_series_tracking_arg(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->list_report_series_tracking_arg: #{e}"
end
```

#### Using the list_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesTrackingArgListVBAResponse>, Integer, Hash)> list_report_series_tracking_arg_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeriesTrackingArg
  data, status_code, headers = api_instance.list_report_series_tracking_arg_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesTrackingArgListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->list_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_key** | **Integer** | Filter by ReportSeries_Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportSeriesTrackingArgListVBAResponse**](ReportSeriesTrackingArgListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_series_tracking_arg

> <MultiCodeResponseListVBAResponse> update_batch_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg)

Create or Update Batch ReportSeriesTrackingArg

Create or Update multiple ReportSeriesTrackingArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_tracking_arg = [Vba::ReportSeriesTrackingArg.new({report_series_tracking_arg_key: 37, report_series_process_key: 37, report_series_key: 37})] # Array<ReportSeriesTrackingArg> | 

begin
  # Create or Update Batch ReportSeriesTrackingArg
  result = api_instance.update_batch_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->update_batch_report_series_tracking_arg: #{e}"
end
```

#### Using the update_batch_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg)

```ruby
begin
  # Create or Update Batch ReportSeriesTrackingArg
  data, status_code, headers = api_instance.update_batch_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->update_batch_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_tracking_arg** | [**Array&lt;ReportSeriesTrackingArg&gt;**](ReportSeriesTrackingArg.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series_tracking_arg

> <ReportSeriesTrackingArgVBAResponse> update_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key, report_series_tracking_arg)

Update ReportSeriesTrackingArg

Updates a specific ReportSeriesTrackingArg.

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

api_instance = Vba::ReportSeriesTrackingArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_tracking_arg_key = 56 # Integer | ReportSeriesTrackingArg Key
report_series_tracking_arg = Vba::ReportSeriesTrackingArg.new({report_series_tracking_arg_key: 37, report_series_process_key: 37, report_series_key: 37}) # ReportSeriesTrackingArg | 

begin
  # Update ReportSeriesTrackingArg
  result = api_instance.update_report_series_tracking_arg(vbasoftware_database, report_series_tracking_arg_key, report_series_tracking_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->update_report_series_tracking_arg: #{e}"
end
```

#### Using the update_report_series_tracking_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesTrackingArgVBAResponse>, Integer, Hash)> update_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key, report_series_tracking_arg)

```ruby
begin
  # Update ReportSeriesTrackingArg
  data, status_code, headers = api_instance.update_report_series_tracking_arg_with_http_info(vbasoftware_database, report_series_tracking_arg_key, report_series_tracking_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesTrackingArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesTrackingArgsApi->update_report_series_tracking_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_tracking_arg_key** | **Integer** | ReportSeriesTrackingArg Key |  |
| **report_series_tracking_arg** | [**ReportSeriesTrackingArg**](ReportSeriesTrackingArg.md) |  |  |

### Return type

[**ReportSeriesTrackingArgVBAResponse**](ReportSeriesTrackingArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

