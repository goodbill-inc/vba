# Vba::ReportSeriesProcessesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series_process**](ReportSeriesProcessesApi.md#create_report_series_process) | **POST** /report-series-processes | Create ReportSeriesProcess |
| [**delete_report_series_process**](ReportSeriesProcessesApi.md#delete_report_series_process) | **DELETE** /report-series-processes/{reportSeriesProcessKey} | Delete ReportSeriesProcess |
| [**get_report_series_process**](ReportSeriesProcessesApi.md#get_report_series_process) | **GET** /report-series-processes/{reportSeriesProcessKey} | Get ReportSeriesProcess |
| [**list_report_series_process**](ReportSeriesProcessesApi.md#list_report_series_process) | **GET** /report-series-processes | List ReportSeriesProcess |
| [**report_series_process_generate_invoice**](ReportSeriesProcessesApi.md#report_series_process_generate_invoice) | **POST** /report-series-process-generate-invoice/{invoiceKey} | Generate Invoice Process Automation |
| [**update_batch_report_series_process**](ReportSeriesProcessesApi.md#update_batch_report_series_process) | **PUT** /report-series-processes-batch | Create or Update Batch ReportSeriesProcess |
| [**update_report_series_process**](ReportSeriesProcessesApi.md#update_report_series_process) | **PUT** /report-series-processes/{reportSeriesProcessKey} | Update ReportSeriesProcess |


## create_report_series_process

> <ReportSeriesProcessVBAResponse> create_report_series_process(vbasoftware_database, report_series_process)

Create ReportSeriesProcess

Creates a new ReportSeriesProcess

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process = Vba::ReportSeriesProcess.new({report_series_process_key: 37}) # ReportSeriesProcess | 

begin
  # Create ReportSeriesProcess
  result = api_instance.create_report_series_process(vbasoftware_database, report_series_process)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->create_report_series_process: #{e}"
end
```

#### Using the create_report_series_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessVBAResponse>, Integer, Hash)> create_report_series_process_with_http_info(vbasoftware_database, report_series_process)

```ruby
begin
  # Create ReportSeriesProcess
  data, status_code, headers = api_instance.create_report_series_process_with_http_info(vbasoftware_database, report_series_process)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->create_report_series_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process** | [**ReportSeriesProcess**](ReportSeriesProcess.md) |  |  |

### Return type

[**ReportSeriesProcessVBAResponse**](ReportSeriesProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series_process

> delete_report_series_process(vbasoftware_database, report_series_process_key)

Delete ReportSeriesProcess

Deletes an ReportSeriesProcess

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key

begin
  # Delete ReportSeriesProcess
  api_instance.delete_report_series_process(vbasoftware_database, report_series_process_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->delete_report_series_process: #{e}"
end
```

#### Using the delete_report_series_process_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_process_with_http_info(vbasoftware_database, report_series_process_key)

```ruby
begin
  # Delete ReportSeriesProcess
  data, status_code, headers = api_instance.delete_report_series_process_with_http_info(vbasoftware_database, report_series_process_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->delete_report_series_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series_process

> <ReportSeriesProcessVBAResponse> get_report_series_process(vbasoftware_database, report_series_process_key)

Get ReportSeriesProcess

Gets ReportSeriesProcess

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key

begin
  # Get ReportSeriesProcess
  result = api_instance.get_report_series_process(vbasoftware_database, report_series_process_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->get_report_series_process: #{e}"
end
```

#### Using the get_report_series_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessVBAResponse>, Integer, Hash)> get_report_series_process_with_http_info(vbasoftware_database, report_series_process_key)

```ruby
begin
  # Get ReportSeriesProcess
  data, status_code, headers = api_instance.get_report_series_process_with_http_info(vbasoftware_database, report_series_process_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->get_report_series_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |

### Return type

[**ReportSeriesProcessVBAResponse**](ReportSeriesProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_process

> <ReportSeriesProcessListVBAResponse> list_report_series_process(vbasoftware_database, opts)

List ReportSeriesProcess

Lists all ReportSeriesProcess

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeriesProcess
  result = api_instance.list_report_series_process(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->list_report_series_process: #{e}"
end
```

#### Using the list_report_series_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessListVBAResponse>, Integer, Hash)> list_report_series_process_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeriesProcess
  data, status_code, headers = api_instance.list_report_series_process_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->list_report_series_process_with_http_info: #{e}"
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

[**ReportSeriesProcessListVBAResponse**](ReportSeriesProcessListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## report_series_process_generate_invoice

> report_series_process_generate_invoice(vbasoftware_database, invoice_key)

Generate Invoice Process Automation

This will trigger Generate Invoice Process Automation.

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # Generate Invoice Process Automation
  api_instance.report_series_process_generate_invoice(vbasoftware_database, invoice_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->report_series_process_generate_invoice: #{e}"
end
```

#### Using the report_series_process_generate_invoice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> report_series_process_generate_invoice_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # Generate Invoice Process Automation
  data, status_code, headers = api_instance.report_series_process_generate_invoice_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->report_series_process_generate_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_report_series_process

> <MultiCodeResponseListVBAResponse> update_batch_report_series_process(vbasoftware_database, report_series_process)

Create or Update Batch ReportSeriesProcess

Create or Update multiple ReportSeriesProcess at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process = [Vba::ReportSeriesProcess.new({report_series_process_key: 37})] # Array<ReportSeriesProcess> | 

begin
  # Create or Update Batch ReportSeriesProcess
  result = api_instance.update_batch_report_series_process(vbasoftware_database, report_series_process)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->update_batch_report_series_process: #{e}"
end
```

#### Using the update_batch_report_series_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_process_with_http_info(vbasoftware_database, report_series_process)

```ruby
begin
  # Create or Update Batch ReportSeriesProcess
  data, status_code, headers = api_instance.update_batch_report_series_process_with_http_info(vbasoftware_database, report_series_process)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->update_batch_report_series_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process** | [**Array&lt;ReportSeriesProcess&gt;**](ReportSeriesProcess.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series_process

> <ReportSeriesProcessVBAResponse> update_report_series_process(vbasoftware_database, report_series_process_key, report_series_process)

Update ReportSeriesProcess

Updates a specific ReportSeriesProcess.

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

api_instance = Vba::ReportSeriesProcessesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_process_key = 56 # Integer | ReportSeriesProcess Key
report_series_process = Vba::ReportSeriesProcess.new({report_series_process_key: 37}) # ReportSeriesProcess | 

begin
  # Update ReportSeriesProcess
  result = api_instance.update_report_series_process(vbasoftware_database, report_series_process_key, report_series_process)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->update_report_series_process: #{e}"
end
```

#### Using the update_report_series_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesProcessVBAResponse>, Integer, Hash)> update_report_series_process_with_http_info(vbasoftware_database, report_series_process_key, report_series_process)

```ruby
begin
  # Update ReportSeriesProcess
  data, status_code, headers = api_instance.update_report_series_process_with_http_info(vbasoftware_database, report_series_process_key, report_series_process)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesProcessesApi->update_report_series_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_process_key** | **Integer** | ReportSeriesProcess Key |  |
| **report_series_process** | [**ReportSeriesProcess**](ReportSeriesProcess.md) |  |  |

### Return type

[**ReportSeriesProcessVBAResponse**](ReportSeriesProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

