# Vba::AdvGrievanceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**file_grievance**](AdvGrievanceApi.md#file_grievance) | **POST** /grievances-file | File Grievance |


## file_grievance

> <GrievanceVBAResponse> file_grievance(vbasoftware_database, grievance_filing)

File Grievance

Files a Grievance for a Member or Subscriber and gives back the created grievance for further processing.

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

api_instance = Vba::AdvGrievanceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_filing = Vba::GrievanceFiling.new # GrievanceFiling | 

begin
  # File Grievance
  result = api_instance.file_grievance(vbasoftware_database, grievance_filing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGrievanceApi->file_grievance: #{e}"
end
```

#### Using the file_grievance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceVBAResponse>, Integer, Hash)> file_grievance_with_http_info(vbasoftware_database, grievance_filing)

```ruby
begin
  # File Grievance
  data, status_code, headers = api_instance.file_grievance_with_http_info(vbasoftware_database, grievance_filing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGrievanceApi->file_grievance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_filing** | [**GrievanceFiling**](GrievanceFiling.md) |  |  |

### Return type

[**GrievanceVBAResponse**](GrievanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

