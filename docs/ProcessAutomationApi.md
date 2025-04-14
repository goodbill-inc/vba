# Vba::ProcessAutomationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_report_email**](ProcessAutomationApi.md#send_report_email) | **POST** /process-automation/report/email | Send Report Email |
| [**send_report_fax**](ProcessAutomationApi.md#send_report_fax) | **POST** /process-automation/report/fax | Send Report Fax |
| [**send_sms**](ProcessAutomationApi.md#send_sms) | **POST** /process-automation/sms | Send or schedule SMS |


## send_report_email

> <StringVBAResponse> send_report_email(vbasoftware_database, email_report_dto)

Send Report Email

Sends an email with attached report

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

api_instance = Vba::ProcessAutomationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
email_report_dto = Vba::EmailReportDTO.new # EmailReportDTO | 

begin
  # Send Report Email
  result = api_instance.send_report_email(vbasoftware_database, email_report_dto)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_report_email: #{e}"
end
```

#### Using the send_report_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> send_report_email_with_http_info(vbasoftware_database, email_report_dto)

```ruby
begin
  # Send Report Email
  data, status_code, headers = api_instance.send_report_email_with_http_info(vbasoftware_database, email_report_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_report_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **email_report_dto** | [**EmailReportDTO**](EmailReportDTO.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## send_report_fax

> <StringVBAResponse> send_report_fax(vbasoftware_database, fax_report_dto)

Send Report Fax

Sends a report via fax

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

api_instance = Vba::ProcessAutomationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fax_report_dto = Vba::FaxReportDTO.new # FaxReportDTO | 

begin
  # Send Report Fax
  result = api_instance.send_report_fax(vbasoftware_database, fax_report_dto)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_report_fax: #{e}"
end
```

#### Using the send_report_fax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> send_report_fax_with_http_info(vbasoftware_database, fax_report_dto)

```ruby
begin
  # Send Report Fax
  data, status_code, headers = api_instance.send_report_fax_with_http_info(vbasoftware_database, fax_report_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_report_fax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fax_report_dto** | [**FaxReportDTO**](FaxReportDTO.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## send_sms

> <StringVBAResponse> send_sms(vbasoftware_database, smsdto)

Send or schedule SMS

Sends or schedules an SMS

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

api_instance = Vba::ProcessAutomationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
smsdto = Vba::SMSDTO.new # SMSDTO | 

begin
  # Send or schedule SMS
  result = api_instance.send_sms(vbasoftware_database, smsdto)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_sms: #{e}"
end
```

#### Using the send_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> send_sms_with_http_info(vbasoftware_database, smsdto)

```ruby
begin
  # Send or schedule SMS
  data, status_code, headers = api_instance.send_sms_with_http_info(vbasoftware_database, smsdto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcessAutomationApi->send_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **smsdto** | [**SMSDTO**](SMSDTO.md) |  |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

