# Vba::AdvGroupDivisionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_group_division**](AdvGroupDivisionsApi.md#copy_group_division) | **POST** /groups/{groupID}/divisions/{divisionID}/copy | Copy a GroupDivision |
| [**get_group_division_enrollment_summary**](AdvGroupDivisionsApi.md#get_group_division_enrollment_summary) | **GET** /groups/{groupID}/divisions/{divisionID}/enrollment-summary | Get Group enrollment summary information |


## copy_group_division

> <GroupDivisionVBAResponse> copy_group_division(vbasoftware_database, group_id, division_id, copy_group_division)

Copy a GroupDivision

Copy a specific GroupDivision to a new GroupDivision

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

api_instance = Vba::AdvGroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
copy_group_division = Vba::CopyGroupDivision.new({group_id: 'group_id_example', source_division_id: 'source_division_id_example', destination_group_id: 'destination_group_id_example', destination_division_id: 'destination_division_id_example'}) # CopyGroupDivision | 

begin
  # Copy a GroupDivision
  result = api_instance.copy_group_division(vbasoftware_database, group_id, division_id, copy_group_division)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupDivisionsApi->copy_group_division: #{e}"
end
```

#### Using the copy_group_division_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionVBAResponse>, Integer, Hash)> copy_group_division_with_http_info(vbasoftware_database, group_id, division_id, copy_group_division)

```ruby
begin
  # Copy a GroupDivision
  data, status_code, headers = api_instance.copy_group_division_with_http_info(vbasoftware_database, group_id, division_id, copy_group_division)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupDivisionsApi->copy_group_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **copy_group_division** | [**CopyGroupDivision**](CopyGroupDivision.md) |  |  |

### Return type

[**GroupDivisionVBAResponse**](GroupDivisionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_group_division_enrollment_summary

> <VBAGroupContractEnrollmentSummaryListVBAResponse> get_group_division_enrollment_summary(vbasoftware_database, group_id, division_id)

Get Group enrollment summary information

Gets enrollment summary for the given group id and division id. 

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

api_instance = Vba::AdvGroupDivisionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # Get Group enrollment summary information
  result = api_instance.get_group_division_enrollment_summary(vbasoftware_database, group_id, division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupDivisionsApi->get_group_division_enrollment_summary: #{e}"
end
```

#### Using the get_group_division_enrollment_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupContractEnrollmentSummaryListVBAResponse>, Integer, Hash)> get_group_division_enrollment_summary_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # Get Group enrollment summary information
  data, status_code, headers = api_instance.get_group_division_enrollment_summary_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupContractEnrollmentSummaryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupDivisionsApi->get_group_division_enrollment_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

[**VBAGroupContractEnrollmentSummaryListVBAResponse**](VBAGroupContractEnrollmentSummaryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

