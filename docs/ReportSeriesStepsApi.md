# Vba::ReportSeriesStepsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series_step**](ReportSeriesStepsApi.md#create_report_series_step) | **POST** /report-series-steps | Create ReportSeriesStep |
| [**delete_report_series_step**](ReportSeriesStepsApi.md#delete_report_series_step) | **DELETE** /report-series-steps/{reportSeriesStepKey} | Delete ReportSeriesStep |
| [**get_report_series_step**](ReportSeriesStepsApi.md#get_report_series_step) | **GET** /report-series-steps/{reportSeriesStepKey} | Get ReportSeriesStep |
| [**list_report_series_step**](ReportSeriesStepsApi.md#list_report_series_step) | **GET** /report-series-steps | List ReportSeriesStep |
| [**update_batch_report_series_step**](ReportSeriesStepsApi.md#update_batch_report_series_step) | **PUT** /report-series-steps-batch | Create or Update Batch ReportSeriesStep |
| [**update_report_series_step**](ReportSeriesStepsApi.md#update_report_series_step) | **PUT** /report-series-steps/{reportSeriesStepKey} | Update ReportSeriesStep |


## create_report_series_step

> <ReportSeriesStepVBAResponse> create_report_series_step(vbasoftware_database, report_series_step)

Create ReportSeriesStep

Creates a new ReportSeriesStep

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step = Vba::ReportSeriesStep.new({report_series_step_key: 37, friday: false, monday: false, report_series_key: 37, saturday: false, step_seq: 37, sunday: false, thursday: false, tuesday: false, wednesday: false}) # ReportSeriesStep | 

begin
  # Create ReportSeriesStep
  result = api_instance.create_report_series_step(vbasoftware_database, report_series_step)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->create_report_series_step: #{e}"
end
```

#### Using the create_report_series_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepVBAResponse>, Integer, Hash)> create_report_series_step_with_http_info(vbasoftware_database, report_series_step)

```ruby
begin
  # Create ReportSeriesStep
  data, status_code, headers = api_instance.create_report_series_step_with_http_info(vbasoftware_database, report_series_step)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->create_report_series_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step** | [**ReportSeriesStep**](ReportSeriesStep.md) |  |  |

### Return type

[**ReportSeriesStepVBAResponse**](ReportSeriesStepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series_step

> delete_report_series_step(vbasoftware_database, report_series_step_key)

Delete ReportSeriesStep

Deletes an ReportSeriesStep

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_key = 56 # Integer | ReportSeriesStep Key

begin
  # Delete ReportSeriesStep
  api_instance.delete_report_series_step(vbasoftware_database, report_series_step_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->delete_report_series_step: #{e}"
end
```

#### Using the delete_report_series_step_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_step_with_http_info(vbasoftware_database, report_series_step_key)

```ruby
begin
  # Delete ReportSeriesStep
  data, status_code, headers = api_instance.delete_report_series_step_with_http_info(vbasoftware_database, report_series_step_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->delete_report_series_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_key** | **Integer** | ReportSeriesStep Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series_step

> <ReportSeriesStepVBAResponse> get_report_series_step(vbasoftware_database, report_series_step_key)

Get ReportSeriesStep

Gets ReportSeriesStep

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_key = 56 # Integer | ReportSeriesStep Key

begin
  # Get ReportSeriesStep
  result = api_instance.get_report_series_step(vbasoftware_database, report_series_step_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->get_report_series_step: #{e}"
end
```

#### Using the get_report_series_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepVBAResponse>, Integer, Hash)> get_report_series_step_with_http_info(vbasoftware_database, report_series_step_key)

```ruby
begin
  # Get ReportSeriesStep
  data, status_code, headers = api_instance.get_report_series_step_with_http_info(vbasoftware_database, report_series_step_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->get_report_series_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_key** | **Integer** | ReportSeriesStep Key |  |

### Return type

[**ReportSeriesStepVBAResponse**](ReportSeriesStepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_step

> <ReportSeriesStepListVBAResponse> list_report_series_step(vbasoftware_database, opts)

List ReportSeriesStep

Lists all ReportSeriesStep

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  report_series_key: 56, # Integer | Filter by ReportSeries_Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeriesStep
  result = api_instance.list_report_series_step(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->list_report_series_step: #{e}"
end
```

#### Using the list_report_series_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepListVBAResponse>, Integer, Hash)> list_report_series_step_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeriesStep
  data, status_code, headers = api_instance.list_report_series_step_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->list_report_series_step_with_http_info: #{e}"
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

[**ReportSeriesStepListVBAResponse**](ReportSeriesStepListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_series_step

> <MultiCodeResponseListVBAResponse> update_batch_report_series_step(vbasoftware_database, report_series_step)

Create or Update Batch ReportSeriesStep

Create or Update multiple ReportSeriesStep at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step = [Vba::ReportSeriesStep.new({report_series_step_key: 37, friday: false, monday: false, report_series_key: 37, saturday: false, step_seq: 37, sunday: false, thursday: false, tuesday: false, wednesday: false})] # Array<ReportSeriesStep> | 

begin
  # Create or Update Batch ReportSeriesStep
  result = api_instance.update_batch_report_series_step(vbasoftware_database, report_series_step)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->update_batch_report_series_step: #{e}"
end
```

#### Using the update_batch_report_series_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_step_with_http_info(vbasoftware_database, report_series_step)

```ruby
begin
  # Create or Update Batch ReportSeriesStep
  data, status_code, headers = api_instance.update_batch_report_series_step_with_http_info(vbasoftware_database, report_series_step)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->update_batch_report_series_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step** | [**Array&lt;ReportSeriesStep&gt;**](ReportSeriesStep.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series_step

> <ReportSeriesStepVBAResponse> update_report_series_step(vbasoftware_database, report_series_step_key, report_series_step)

Update ReportSeriesStep

Updates a specific ReportSeriesStep.

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

api_instance = Vba::ReportSeriesStepsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_step_key = 56 # Integer | ReportSeriesStep Key
report_series_step = Vba::ReportSeriesStep.new({report_series_step_key: 37, friday: false, monday: false, report_series_key: 37, saturday: false, step_seq: 37, sunday: false, thursday: false, tuesday: false, wednesday: false}) # ReportSeriesStep | 

begin
  # Update ReportSeriesStep
  result = api_instance.update_report_series_step(vbasoftware_database, report_series_step_key, report_series_step)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->update_report_series_step: #{e}"
end
```

#### Using the update_report_series_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesStepVBAResponse>, Integer, Hash)> update_report_series_step_with_http_info(vbasoftware_database, report_series_step_key, report_series_step)

```ruby
begin
  # Update ReportSeriesStep
  data, status_code, headers = api_instance.update_report_series_step_with_http_info(vbasoftware_database, report_series_step_key, report_series_step)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesStepVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesStepsApi->update_report_series_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_step_key** | **Integer** | ReportSeriesStep Key |  |
| **report_series_step** | [**ReportSeriesStep**](ReportSeriesStep.md) |  |  |

### Return type

[**ReportSeriesStepVBAResponse**](ReportSeriesStepVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

