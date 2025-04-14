# Vba::ChangeDataCaptureApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_cdc_members**](ChangeDataCaptureApi.md#list_cdc_members) | **GET** /cdc-members | List Members CDC |
| [**list_cdc_subenrollment**](ChangeDataCaptureApi.md#list_cdc_subenrollment) | **GET** /cdc-subenrollment | List Subenrollment CDC |
| [**list_cdc_subenrollment_plan**](ChangeDataCaptureApi.md#list_cdc_subenrollment_plan) | **GET** /cdc-subenrollmentplan | List SubenrollmentPlan CDC |
| [**list_cdc_subenrollment_rider**](ChangeDataCaptureApi.md#list_cdc_subenrollment_rider) | **GET** /cdc-subenrollmentrider | List SubenrollmentRider CDC |
| [**list_cdc_subscribers**](ChangeDataCaptureApi.md#list_cdc_subscribers) | **GET** /cdc-subscribers | List Subscribers CDC |


## list_cdc_members

> <VBACDCMembersListVBAResponse> list_cdc_members(vbasoftware_database, opts)

List Members CDC

Lists all Change Data Capture information for the Members table.

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

api_instance = Vba::ChangeDataCaptureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example', # String | Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
  member_seq: 'member_seq_example' # String | Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
}

begin
  # List Members CDC
  result = api_instance.list_cdc_members(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_members: #{e}"
end
```

#### Using the list_cdc_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACDCMembersListVBAResponse>, Integer, Hash)> list_cdc_members_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Members CDC
  data, status_code, headers = api_instance.list_cdc_members_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACDCMembersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes. | [optional] |
| **member_seq** | **String** | Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes. | [optional] |

### Return type

[**VBACDCMembersListVBAResponse**](VBACDCMembersListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cdc_subenrollment

> <VBACDCSubenrollmentListVBAResponse> list_cdc_subenrollment(vbasoftware_database, opts)

List Subenrollment CDC

Lists all Change Data Capture information for the Subenrollment table.

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

api_instance = Vba::ChangeDataCaptureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example' # String | Send a specific Subscriber ID to look up changes or pass no value and get all changes.
}

begin
  # List Subenrollment CDC
  result = api_instance.list_cdc_subenrollment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment: #{e}"
end
```

#### Using the list_cdc_subenrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACDCSubenrollmentListVBAResponse>, Integer, Hash)> list_cdc_subenrollment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Subenrollment CDC
  data, status_code, headers = api_instance.list_cdc_subenrollment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACDCSubenrollmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Send a specific Subscriber ID to look up changes or pass no value and get all changes. | [optional] |

### Return type

[**VBACDCSubenrollmentListVBAResponse**](VBACDCSubenrollmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cdc_subenrollment_plan

> <VBACDCSubenrollmentPlanListVBAResponse> list_cdc_subenrollment_plan(vbasoftware_database, opts)

List SubenrollmentPlan CDC

Lists all Change Data Capture information for the SubenrollmentPlan table.

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

api_instance = Vba::ChangeDataCaptureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example' # String | Send a specific Subscriber ID to look up changes or pass no value and get all changes.
}

begin
  # List SubenrollmentPlan CDC
  result = api_instance.list_cdc_subenrollment_plan(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment_plan: #{e}"
end
```

#### Using the list_cdc_subenrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACDCSubenrollmentPlanListVBAResponse>, Integer, Hash)> list_cdc_subenrollment_plan_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SubenrollmentPlan CDC
  data, status_code, headers = api_instance.list_cdc_subenrollment_plan_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACDCSubenrollmentPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Send a specific Subscriber ID to look up changes or pass no value and get all changes. | [optional] |

### Return type

[**VBACDCSubenrollmentPlanListVBAResponse**](VBACDCSubenrollmentPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cdc_subenrollment_rider

> <VBACDCSubenrollmentRiderListVBAResponse> list_cdc_subenrollment_rider(vbasoftware_database, opts)

List SubenrollmentRider CDC

Lists all Change Data Capture information for the SubenrollmentRider table.

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

api_instance = Vba::ChangeDataCaptureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example' # String | Send a specific Subscriber ID to look up changes or pass no value and get all changes.
}

begin
  # List SubenrollmentRider CDC
  result = api_instance.list_cdc_subenrollment_rider(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment_rider: #{e}"
end
```

#### Using the list_cdc_subenrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACDCSubenrollmentRiderListVBAResponse>, Integer, Hash)> list_cdc_subenrollment_rider_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SubenrollmentRider CDC
  data, status_code, headers = api_instance.list_cdc_subenrollment_rider_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACDCSubenrollmentRiderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subenrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Send a specific Subscriber ID to look up changes or pass no value and get all changes. | [optional] |

### Return type

[**VBACDCSubenrollmentRiderListVBAResponse**](VBACDCSubenrollmentRiderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cdc_subscribers

> <VBACDCSubscribersListVBAResponse> list_cdc_subscribers(vbasoftware_database, opts)

List Subscribers CDC

Lists all Change Data Capture information for the Subscribers table.

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

api_instance = Vba::ChangeDataCaptureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example' # String | Send a specific Subscriber ID to look up changes or pass no value and get all changes.
}

begin
  # List Subscribers CDC
  result = api_instance.list_cdc_subscribers(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subscribers: #{e}"
end
```

#### Using the list_cdc_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBACDCSubscribersListVBAResponse>, Integer, Hash)> list_cdc_subscribers_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Subscribers CDC
  data, status_code, headers = api_instance.list_cdc_subscribers_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBACDCSubscribersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ChangeDataCaptureApi->list_cdc_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Send a specific Subscriber ID to look up changes or pass no value and get all changes. | [optional] |

### Return type

[**VBACDCSubscribersListVBAResponse**](VBACDCSubscribersListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

