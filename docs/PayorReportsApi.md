# Vba::PayorReportsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor_report**](PayorReportsApi.md#create_payor_report) | **POST** /payors/{payorID}/reports | Create PayorReport |
| [**delete_payor_report**](PayorReportsApi.md#delete_payor_report) | **DELETE** /payors/{payorID}/reports/{reportDefinitionKey} | Delete PayorReport |
| [**get_payor_report**](PayorReportsApi.md#get_payor_report) | **GET** /payors/{payorID}/reports/{reportDefinitionKey} | Get PayorReport |
| [**list_payor_report**](PayorReportsApi.md#list_payor_report) | **GET** /payors/{payorID}/reports | List PayorReport |
| [**update_batch_payor_report**](PayorReportsApi.md#update_batch_payor_report) | **PUT** /payors/{payorID}/reports-batch | Create or Update Batch PayorReport |


## create_payor_report

> <PayorReportVBAResponse> create_payor_report(vbasoftware_database, payor_id, payor_report)

Create PayorReport

Creates a new PayorReport

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

api_instance = Vba::PayorReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_report = Vba::PayorReport.new({payor_id: 'payor_id_example', report_definition_key: 37, report_type: 'report_type_example'}) # PayorReport | 

begin
  # Create PayorReport
  result = api_instance.create_payor_report(vbasoftware_database, payor_id, payor_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->create_payor_report: #{e}"
end
```

#### Using the create_payor_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorReportVBAResponse>, Integer, Hash)> create_payor_report_with_http_info(vbasoftware_database, payor_id, payor_report)

```ruby
begin
  # Create PayorReport
  data, status_code, headers = api_instance.create_payor_report_with_http_info(vbasoftware_database, payor_id, payor_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->create_payor_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_report** | [**PayorReport**](PayorReport.md) |  |  |

### Return type

[**PayorReportVBAResponse**](PayorReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor_report

> delete_payor_report(vbasoftware_database, payor_id, report_definition_key)

Delete PayorReport

Deletes an PayorReport

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

api_instance = Vba::PayorReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Delete PayorReport
  api_instance.delete_payor_report(vbasoftware_database, payor_id, report_definition_key)
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->delete_payor_report: #{e}"
end
```

#### Using the delete_payor_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_report_with_http_info(vbasoftware_database, payor_id, report_definition_key)

```ruby
begin
  # Delete PayorReport
  data, status_code, headers = api_instance.delete_payor_report_with_http_info(vbasoftware_database, payor_id, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->delete_payor_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor_report

> <PayorReportVBAResponse> get_payor_report(vbasoftware_database, payor_id, report_definition_key)

Get PayorReport

Gets PayorReport

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

api_instance = Vba::PayorReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Get PayorReport
  result = api_instance.get_payor_report(vbasoftware_database, payor_id, report_definition_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->get_payor_report: #{e}"
end
```

#### Using the get_payor_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorReportVBAResponse>, Integer, Hash)> get_payor_report_with_http_info(vbasoftware_database, payor_id, report_definition_key)

```ruby
begin
  # Get PayorReport
  data, status_code, headers = api_instance.get_payor_report_with_http_info(vbasoftware_database, payor_id, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->get_payor_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

[**PayorReportVBAResponse**](PayorReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_report

> <PayorReportListVBAResponse> list_payor_report(vbasoftware_database, payor_id, opts)

List PayorReport

Lists all PayorReport for the given payorID

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

api_instance = Vba::PayorReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayorReport
  result = api_instance.list_payor_report(vbasoftware_database, payor_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->list_payor_report: #{e}"
end
```

#### Using the list_payor_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorReportListVBAResponse>, Integer, Hash)> list_payor_report_with_http_info(vbasoftware_database, payor_id, opts)

```ruby
begin
  # List PayorReport
  data, status_code, headers = api_instance.list_payor_report_with_http_info(vbasoftware_database, payor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorReportListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->list_payor_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PayorReportListVBAResponse**](PayorReportListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor_report

> <MultiCodeResponseListVBAResponse> update_batch_payor_report(vbasoftware_database, payor_id, payor_report)

Create or Update Batch PayorReport

Create or Update multiple PayorReport at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayorReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_id = 'payor_id_example' # String | Payor ID
payor_report = [Vba::PayorReport.new({payor_id: 'payor_id_example', report_definition_key: 37, report_type: 'report_type_example'})] # Array<PayorReport> | 

begin
  # Create or Update Batch PayorReport
  result = api_instance.update_batch_payor_report(vbasoftware_database, payor_id, payor_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->update_batch_payor_report: #{e}"
end
```

#### Using the update_batch_payor_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_report_with_http_info(vbasoftware_database, payor_id, payor_report)

```ruby
begin
  # Create or Update Batch PayorReport
  data, status_code, headers = api_instance.update_batch_payor_report_with_http_info(vbasoftware_database, payor_id, payor_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorReportsApi->update_batch_payor_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_id** | **String** | Payor ID |  |
| **payor_report** | [**Array&lt;PayorReport&gt;**](PayorReport.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

