# Vba::SecurityAreaReportsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area_report**](SecurityAreaReportsApi.md#create_security_area_report) | **POST** /security-areas/{securityArea}/reports | Create SecurityAreaReport |
| [**delete_security_area_report**](SecurityAreaReportsApi.md#delete_security_area_report) | **DELETE** /security-areas/{securityArea}/reports/{reportDefinitionKey} | Delete SecurityAreaReport |
| [**get_security_area_report**](SecurityAreaReportsApi.md#get_security_area_report) | **GET** /security-areas/{securityArea}/reports/{reportDefinitionKey} | Get SecurityAreaReport |
| [**list_security_area_report**](SecurityAreaReportsApi.md#list_security_area_report) | **GET** /security-areas/{securityArea}/reports | List SecurityAreaReport |
| [**update_batch_security_area_report**](SecurityAreaReportsApi.md#update_batch_security_area_report) | **PUT** /security-areas/{securityArea}/reports | Create or Update Batch SecurityAreaReport |
| [**update_security_area_report**](SecurityAreaReportsApi.md#update_security_area_report) | **PUT** /security-areas/{securityArea}/reports/{reportDefinitionKey} | Update SecurityAreaReport |


## create_security_area_report

> <SecurityAreaReportVBAResponse> create_security_area_report(vbasoftware_database, security_area, security_area_report)

Create SecurityAreaReport

Creates a new SecurityAreaReport

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_report = Vba::SecurityAreaReport.new({security_area: 'security_area_example', report_definition_key: 37}) # SecurityAreaReport | 

begin
  # Create SecurityAreaReport
  result = api_instance.create_security_area_report(vbasoftware_database, security_area, security_area_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->create_security_area_report: #{e}"
end
```

#### Using the create_security_area_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaReportVBAResponse>, Integer, Hash)> create_security_area_report_with_http_info(vbasoftware_database, security_area, security_area_report)

```ruby
begin
  # Create SecurityAreaReport
  data, status_code, headers = api_instance.create_security_area_report_with_http_info(vbasoftware_database, security_area, security_area_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->create_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_report** | [**SecurityAreaReport**](SecurityAreaReport.md) |  |  |

### Return type

[**SecurityAreaReportVBAResponse**](SecurityAreaReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area_report

> delete_security_area_report(vbasoftware_database, security_area, report_definition_key)

Delete SecurityAreaReport

Deletes an SecurityAreaReport

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Delete SecurityAreaReport
  api_instance.delete_security_area_report(vbasoftware_database, security_area, report_definition_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->delete_security_area_report: #{e}"
end
```

#### Using the delete_security_area_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key)

```ruby
begin
  # Delete SecurityAreaReport
  data, status_code, headers = api_instance.delete_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->delete_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area_report

> <SecurityAreaReportVBAResponse> get_security_area_report(vbasoftware_database, security_area, report_definition_key)

Get SecurityAreaReport

Gets SecurityAreaReport

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Get SecurityAreaReport
  result = api_instance.get_security_area_report(vbasoftware_database, security_area, report_definition_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->get_security_area_report: #{e}"
end
```

#### Using the get_security_area_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaReportVBAResponse>, Integer, Hash)> get_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key)

```ruby
begin
  # Get SecurityAreaReport
  data, status_code, headers = api_instance.get_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->get_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

[**SecurityAreaReportVBAResponse**](SecurityAreaReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area_report

> <SecurityAreaReportListVBAResponse> list_security_area_report(vbasoftware_database, security_area)

List SecurityAreaReport

Lists all SecurityAreaReport securityArea

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # List SecurityAreaReport
  result = api_instance.list_security_area_report(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->list_security_area_report: #{e}"
end
```

#### Using the list_security_area_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaReportListVBAResponse>, Integer, Hash)> list_security_area_report_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # List SecurityAreaReport
  data, status_code, headers = api_instance.list_security_area_report_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaReportListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->list_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

[**SecurityAreaReportListVBAResponse**](SecurityAreaReportListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area_report

> <MultiCodeResponseListVBAResponse> update_batch_security_area_report(vbasoftware_database, security_area, security_area_report)

Create or Update Batch SecurityAreaReport

Create or Update multiple SecurityAreaReport at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_report = [Vba::SecurityAreaReport.new({security_area: 'security_area_example', report_definition_key: 37})] # Array<SecurityAreaReport> | 

begin
  # Create or Update Batch SecurityAreaReport
  result = api_instance.update_batch_security_area_report(vbasoftware_database, security_area, security_area_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->update_batch_security_area_report: #{e}"
end
```

#### Using the update_batch_security_area_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_report_with_http_info(vbasoftware_database, security_area, security_area_report)

```ruby
begin
  # Create or Update Batch SecurityAreaReport
  data, status_code, headers = api_instance.update_batch_security_area_report_with_http_info(vbasoftware_database, security_area, security_area_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->update_batch_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_report** | [**Array&lt;SecurityAreaReport&gt;**](SecurityAreaReport.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area_report

> <SecurityAreaReportVBAResponse> update_security_area_report(vbasoftware_database, security_area, report_definition_key, security_area_report)

Update SecurityAreaReport

Updates a specific SecurityAreaReport.

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

api_instance = Vba::SecurityAreaReportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
report_definition_key = 56 # Integer | ReportDefinition Key
security_area_report = Vba::SecurityAreaReport.new({security_area: 'security_area_example', report_definition_key: 37}) # SecurityAreaReport | 

begin
  # Update SecurityAreaReport
  result = api_instance.update_security_area_report(vbasoftware_database, security_area, report_definition_key, security_area_report)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->update_security_area_report: #{e}"
end
```

#### Using the update_security_area_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaReportVBAResponse>, Integer, Hash)> update_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key, security_area_report)

```ruby
begin
  # Update SecurityAreaReport
  data, status_code, headers = api_instance.update_security_area_report_with_http_info(vbasoftware_database, security_area, report_definition_key, security_area_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaReportVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaReportsApi->update_security_area_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **security_area_report** | [**SecurityAreaReport**](SecurityAreaReport.md) |  |  |

### Return type

[**SecurityAreaReportVBAResponse**](SecurityAreaReportVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

