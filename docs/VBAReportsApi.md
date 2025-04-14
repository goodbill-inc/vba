# Vba::VBAReportsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vba_report**](VBAReportsApi.md#get_vba_report) | **GET** /reports/{reportDefinition_Key} | Retrieve VBA Report |
| [**list_vba_reports**](VBAReportsApi.md#list_vba_reports) | **GET** /reports | List VBA Reports |


## get_vba_report

> <VBAReportVBAResponse> get_vba_report(vbasoftware_database, report_definition_key)

Retrieve VBA Report

Retrieves a specific VBA Report by its unique definition key.

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

api_instance = Vba::VBAReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | The target database name to query.
report_definition_key = 56 # Integer | Unique key for the VBA Report definition.

begin
  # Retrieve VBA Report
  result = api_instance.get_vba_report(vbasoftware_database, report_definition_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAReportsApi->get_vba_report: #{e}"
end
```

#### Using the get_vba_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReportVBAResponse>, Integer, Hash)> get_vba_report_with_http_info(vbasoftware_database, report_definition_key)

```ruby
begin
  # Retrieve VBA Report
  data, status_code, headers = api_instance.get_vba_report_with_http_info(vbasoftware_database, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAReportsApi->get_vba_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | The target database name to query. |  |
| **report_definition_key** | **Integer** | Unique key for the VBA Report definition. |  |

### Return type

[**VBAReportVBAResponse**](VBAReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_reports

> <VBAReportListVBAResponse> list_vba_reports(vbasoftware_database)

List VBA Reports

Retrieves a list of all available VBA Reports.

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

api_instance = Vba::VBAReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | The target database name to query.

begin
  # List VBA Reports
  result = api_instance.list_vba_reports(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAReportsApi->list_vba_reports: #{e}"
end
```

#### Using the list_vba_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAReportListVBAResponse>, Integer, Hash)> list_vba_reports_with_http_info(vbasoftware_database)

```ruby
begin
  # List VBA Reports
  data, status_code, headers = api_instance.list_vba_reports_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAReportListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAReportsApi->list_vba_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | The target database name to query. |  |

### Return type

[**VBAReportListVBAResponse**](VBAReportListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

