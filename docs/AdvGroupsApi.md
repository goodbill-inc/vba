# Vba::AdvGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_group_enrollment_summary**](AdvGroupsApi.md#get_group_enrollment_summary) | **GET** /groups/{groupID}/enrollment-summary | Get Group enrollment summary information |
| [**group_disenroll**](AdvGroupsApi.md#group_disenroll) | **POST** /groups/{groupID}/disenroll | Group Disenroll |
| [**group_reenroll**](AdvGroupsApi.md#group_reenroll) | **POST** /groups/{groupID}/reenroll | Group Reenroll |


## get_group_enrollment_summary

> <VBAGroupEnrollmentSummaryVBAResponse> get_group_enrollment_summary(vbasoftware_database, group_id)

Get Group enrollment summary information

Gets Group enrollment summary for the given group id. 

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

api_instance = Vba::AdvGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID

begin
  # Get Group enrollment summary information
  result = api_instance.get_group_enrollment_summary(vbasoftware_database, group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->get_group_enrollment_summary: #{e}"
end
```

#### Using the get_group_enrollment_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupEnrollmentSummaryVBAResponse>, Integer, Hash)> get_group_enrollment_summary_with_http_info(vbasoftware_database, group_id)

```ruby
begin
  # Get Group enrollment summary information
  data, status_code, headers = api_instance.get_group_enrollment_summary_with_http_info(vbasoftware_database, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupEnrollmentSummaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->get_group_enrollment_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |

### Return type

[**VBAGroupEnrollmentSummaryVBAResponse**](VBAGroupEnrollmentSummaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## group_disenroll

> <VBAProcessVBAResponse> group_disenroll(vbasoftware_database, group_id, enrollment_disenroll_group)

Group Disenroll

Disenrolls a Group and/or Division.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::AdvGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
enrollment_disenroll_group = Vba::EnrollmentDisenrollGroup.new({user_id: 'user_id_example', group_id: 'group_id_example', disenroll_date: Time.now, reason_id: 37, disenroll_family: 37, terminate_auth: false, disenroll_future: 37, group_disenroll: false}) # EnrollmentDisenrollGroup | 

begin
  # Group Disenroll
  result = api_instance.group_disenroll(vbasoftware_database, group_id, enrollment_disenroll_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->group_disenroll: #{e}"
end
```

#### Using the group_disenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> group_disenroll_with_http_info(vbasoftware_database, group_id, enrollment_disenroll_group)

```ruby
begin
  # Group Disenroll
  data, status_code, headers = api_instance.group_disenroll_with_http_info(vbasoftware_database, group_id, enrollment_disenroll_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->group_disenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **enrollment_disenroll_group** | [**EnrollmentDisenrollGroup**](EnrollmentDisenrollGroup.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## group_reenroll

> <VBAProcessVBAResponse> group_reenroll(vbasoftware_database, group_id, enrollment_reenroll)

Group Reenroll

Re-enrolls a Group and/or Division.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::AdvGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
enrollment_reenroll = Vba::EnrollmentReenroll.new({user_id: 'user_id_example'}) # EnrollmentReenroll | 

begin
  # Group Reenroll
  result = api_instance.group_reenroll(vbasoftware_database, group_id, enrollment_reenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->group_reenroll: #{e}"
end
```

#### Using the group_reenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> group_reenroll_with_http_info(vbasoftware_database, group_id, enrollment_reenroll)

```ruby
begin
  # Group Reenroll
  data, status_code, headers = api_instance.group_reenroll_with_http_info(vbasoftware_database, group_id, enrollment_reenroll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupsApi->group_reenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **enrollment_reenroll** | [**EnrollmentReenroll**](EnrollmentReenroll.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

