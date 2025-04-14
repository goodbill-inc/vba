# Vba::AdvEnrollmentApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**changesubscriber_id**](AdvEnrollmentApi.md#changesubscriber_id) | **POST** /subscribers/{subscriberID}/change-id | Change Subscriber ID |
| [**enrollment_benefit_inquiry**](AdvEnrollmentApi.md#enrollment_benefit_inquiry) | **POST** /enrollment-benefit-inquiry | Benefit Inquiry |
| [**i_d_card_request_report_series**](AdvEnrollmentApi.md#i_d_card_request_report_series) | **POST** /idcardrequest-process-automation | Set Process Automation for ID Card Requests |
| [**list_disenroll_adjustment**](AdvEnrollmentApi.md#list_disenroll_adjustment) | **GET** /subscribers/{subscriberID}/as-of-date/{asOfDate}/disenroll-adjustments | List Billing Adjustments for Disenroll |
| [**list_enrollment_waiting_period_by_hire_date**](AdvEnrollmentApi.md#list_enrollment_waiting_period_by_hire_date) | **GET** /enrollment-waiting-period-by-hire-date | List Waiting Period Details |
| [**member_disenroll**](AdvEnrollmentApi.md#member_disenroll) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/disenroll | Member Disenroll |
| [**member_reenroll**](AdvEnrollmentApi.md#member_reenroll) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/reenroll | Member Re-enroll |
| [**recalculate_member_teeth**](AdvEnrollmentApi.md#recalculate_member_teeth) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/recalculate-teeth | Recalculate Member Teeth |
| [**subscriber_add_enrollment**](AdvEnrollmentApi.md#subscriber_add_enrollment) | **POST** /subscribers/{subscriberID}/add-enrollment | Subscriber Add Enrollment |
| [**subscriber_division_transfer**](AdvEnrollmentApi.md#subscriber_division_transfer) | **POST** /subscribers/{subscriberID}/division-transfer/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/{currentEnrollEndDate}/{newEnrollStartDate}/{newEnrollDivisionID} | Subscriber Division Transfer |
| [**subscriber_recalc_accum**](AdvEnrollmentApi.md#subscriber_recalc_accum) | **POST** /subscribers/{subscriberID}/recalculate-accumulators | Recalculate Subscriber Accumulators |
| [**subscriber_surrender_policy**](AdvEnrollmentApi.md#subscriber_surrender_policy) | **POST** /subscribers/{subscriberID}/surrender-policy/{planID}/{benefitCode}/{policyNumber}/{cashValue} | Subscriber Policy Surrender |


## changesubscriber_id

> changesubscriber_id(vbasoftware_database, subscriber_id, change_subscriber_id_request)

Change Subscriber ID

Changes a Subscriber ID globally

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
change_subscriber_id_request = Vba::ChangeSubscriberIDRequest.new({user_id: 'user_id_example', current_subscriber_id: 'current_subscriber_id_example', new_subscriber_id: 'new_subscriber_id_example'}) # ChangeSubscriberIDRequest | 

begin
  # Change Subscriber ID
  api_instance.changesubscriber_id(vbasoftware_database, subscriber_id, change_subscriber_id_request)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->changesubscriber_id: #{e}"
end
```

#### Using the changesubscriber_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> changesubscriber_id_with_http_info(vbasoftware_database, subscriber_id, change_subscriber_id_request)

```ruby
begin
  # Change Subscriber ID
  data, status_code, headers = api_instance.changesubscriber_id_with_http_info(vbasoftware_database, subscriber_id, change_subscriber_id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->changesubscriber_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **change_subscriber_id_request** | [**ChangeSubscriberIDRequest**](ChangeSubscriberIDRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## enrollment_benefit_inquiry

> <VBABenefitInquiryVBAResponse> enrollment_benefit_inquiry(vbasoftware_database, vba_benefit_inquiry_request)

Benefit Inquiry

Get a consolidated payload of benefit information, accumulator information, and eligility.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_benefit_inquiry_request = Vba::VBABenefitInquiryRequest.new # VBABenefitInquiryRequest | 

begin
  # Benefit Inquiry
  result = api_instance.enrollment_benefit_inquiry(vbasoftware_database, vba_benefit_inquiry_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->enrollment_benefit_inquiry: #{e}"
end
```

#### Using the enrollment_benefit_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBABenefitInquiryVBAResponse>, Integer, Hash)> enrollment_benefit_inquiry_with_http_info(vbasoftware_database, vba_benefit_inquiry_request)

```ruby
begin
  # Benefit Inquiry
  data, status_code, headers = api_instance.enrollment_benefit_inquiry_with_http_info(vbasoftware_database, vba_benefit_inquiry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBABenefitInquiryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->enrollment_benefit_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_benefit_inquiry_request** | [**VBABenefitInquiryRequest**](VBABenefitInquiryRequest.md) |  |  |

### Return type

[**VBABenefitInquiryVBAResponse**](VBABenefitInquiryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## i_d_card_request_report_series

> <VBAProcessVBAResponse> i_d_card_request_report_series(vbasoftware_database, id_card_request_report_series_config)

Set Process Automation for ID Card Requests

Takes a list of IDCardRequest_Key values and verifies those against configured process automation settings.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id_card_request_report_series_config = Vba::IDCardRequestReportSeriesConfig.new # IDCardRequestReportSeriesConfig | 

begin
  # Set Process Automation for ID Card Requests
  result = api_instance.i_d_card_request_report_series(vbasoftware_database, id_card_request_report_series_config)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->i_d_card_request_report_series: #{e}"
end
```

#### Using the i_d_card_request_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> i_d_card_request_report_series_with_http_info(vbasoftware_database, id_card_request_report_series_config)

```ruby
begin
  # Set Process Automation for ID Card Requests
  data, status_code, headers = api_instance.i_d_card_request_report_series_with_http_info(vbasoftware_database, id_card_request_report_series_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->i_d_card_request_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id_card_request_report_series_config** | [**IDCardRequestReportSeriesConfig**](IDCardRequestReportSeriesConfig.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## list_disenroll_adjustment

> <EnrollmentDisenrollAdjustmentListVBAResponse> list_disenroll_adjustment(vbasoftware_database, subscriber_id, as_of_date)

List Billing Adjustments for Disenroll

List of Billing Adjustments that would be created based on a Subscriber being disenrolled on the As of Date.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List Billing Adjustments for Disenroll
  result = api_instance.list_disenroll_adjustment(vbasoftware_database, subscriber_id, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->list_disenroll_adjustment: #{e}"
end
```

#### Using the list_disenroll_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentDisenrollAdjustmentListVBAResponse>, Integer, Hash)> list_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, as_of_date)

```ruby
begin
  # List Billing Adjustments for Disenroll
  data, status_code, headers = api_instance.list_disenroll_adjustment_with_http_info(vbasoftware_database, subscriber_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentDisenrollAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->list_disenroll_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

[**EnrollmentDisenrollAdjustmentListVBAResponse**](EnrollmentDisenrollAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_enrollment_waiting_period_by_hire_date

> <EnrollmentWaitingPeriodByHireDateListVBAResponse> list_enrollment_waiting_period_by_hire_date(vbasoftware_database, opts)

List Waiting Period Details

List of Waiting Period configuration based on the passed in settings (group, division, plan, and/or hire date).

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example', # String | Group ID
  division_id: 'division_id_example', # String | Division ID
  plan_id: 'plan_id_example', # String | Plan ID
  hire_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Hire Date
}

begin
  # List Waiting Period Details
  result = api_instance.list_enrollment_waiting_period_by_hire_date(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->list_enrollment_waiting_period_by_hire_date: #{e}"
end
```

#### Using the list_enrollment_waiting_period_by_hire_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodByHireDateListVBAResponse>, Integer, Hash)> list_enrollment_waiting_period_by_hire_date_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Waiting Period Details
  data, status_code, headers = api_instance.list_enrollment_waiting_period_by_hire_date_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodByHireDateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->list_enrollment_waiting_period_by_hire_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |
| **division_id** | **String** | Division ID | [optional] |
| **plan_id** | **String** | Plan ID | [optional] |
| **hire_date** | **Time** | Hire Date | [optional] |

### Return type

[**EnrollmentWaitingPeriodByHireDateListVBAResponse**](EnrollmentWaitingPeriodByHireDateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## member_disenroll

> <VBAProcessVBAResponse> member_disenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_disenroll)

Member Disenroll

Disenrolls a Member from an Enrollment.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
enrollment_disenroll = Vba::EnrollmentDisenroll.new({user_id: 'user_id_example', subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, disenroll_date: Time.now, subscriber: false, reason_id: 37, disenroll_family: 37, terminate_auth: false, disenroll_future: 37}) # EnrollmentDisenroll | 

begin
  # Member Disenroll
  result = api_instance.member_disenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_disenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->member_disenroll: #{e}"
end
```

#### Using the member_disenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> member_disenroll_with_http_info(vbasoftware_database, subscriber_id, member_seq, enrollment_disenroll)

```ruby
begin
  # Member Disenroll
  data, status_code, headers = api_instance.member_disenroll_with_http_info(vbasoftware_database, subscriber_id, member_seq, enrollment_disenroll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->member_disenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **enrollment_disenroll** | [**EnrollmentDisenroll**](EnrollmentDisenroll.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## member_reenroll

> <VBAProcessVBAResponse> member_reenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_reenroll)

Member Re-enroll

Re-enrolls a Member to an Enrollment.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
enrollment_reenroll = Vba::EnrollmentReenroll.new({user_id: 'user_id_example'}) # EnrollmentReenroll | 

begin
  # Member Re-enroll
  result = api_instance.member_reenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_reenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->member_reenroll: #{e}"
end
```

#### Using the member_reenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> member_reenroll_with_http_info(vbasoftware_database, subscriber_id, member_seq, enrollment_reenroll)

```ruby
begin
  # Member Re-enroll
  data, status_code, headers = api_instance.member_reenroll_with_http_info(vbasoftware_database, subscriber_id, member_seq, enrollment_reenroll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->member_reenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **enrollment_reenroll** | [**EnrollmentReenroll**](EnrollmentReenroll.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## recalculate_member_teeth

> recalculate_member_teeth(vbasoftware_database, subscriber_id, member_seq, opts)

Recalculate Member Teeth

Recalculate All Teeth for a given Subscriber and Member.  Pass the requestingUserId if this request is being made on behalf of another User.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  requesting_user_id: 'requesting_user_id_example' # String | Requesting User
}

begin
  # Recalculate Member Teeth
  api_instance.recalculate_member_teeth(vbasoftware_database, subscriber_id, member_seq, opts)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->recalculate_member_teeth: #{e}"
end
```

#### Using the recalculate_member_teeth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> recalculate_member_teeth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # Recalculate Member Teeth
  data, status_code, headers = api_instance.recalculate_member_teeth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->recalculate_member_teeth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **requesting_user_id** | **String** | Requesting User | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## subscriber_add_enrollment

> subscriber_add_enrollment(vbasoftware_database, subscriber_id, add_enrollment_request)

Subscriber Add Enrollment

Adds enrollments to an existing subscriber. Can add enrollment for the subscriber or subscriber + all members.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
add_enrollment_request = Vba::AddEnrollmentRequest.new({requesting_user_id: 'requesting_user_id_example'}) # AddEnrollmentRequest | 

begin
  # Subscriber Add Enrollment
  api_instance.subscriber_add_enrollment(vbasoftware_database, subscriber_id, add_enrollment_request)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_add_enrollment: #{e}"
end
```

#### Using the subscriber_add_enrollment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_add_enrollment_with_http_info(vbasoftware_database, subscriber_id, add_enrollment_request)

```ruby
begin
  # Subscriber Add Enrollment
  data, status_code, headers = api_instance.subscriber_add_enrollment_with_http_info(vbasoftware_database, subscriber_id, add_enrollment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_add_enrollment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **add_enrollment_request** | [**AddEnrollmentRequest**](AddEnrollmentRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## subscriber_division_transfer

> subscriber_division_transfer(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, current_enroll_end_date, new_enroll_start_date, new_enroll_division_id)

Subscriber Division Transfer

Transfer a Subscriber Enrollment from one Division to another.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
current_enroll_end_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Current Enrollment End Date
new_enroll_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | New Enrollment Start Date
new_enroll_division_id = 'new_enroll_division_id_example' # String | New Enrollment DivisionID

begin
  # Subscriber Division Transfer
  api_instance.subscriber_division_transfer(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, current_enroll_end_date, new_enroll_start_date, new_enroll_division_id)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_division_transfer: #{e}"
end
```

#### Using the subscriber_division_transfer_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_division_transfer_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, current_enroll_end_date, new_enroll_start_date, new_enroll_division_id)

```ruby
begin
  # Subscriber Division Transfer
  data, status_code, headers = api_instance.subscriber_division_transfer_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, current_enroll_end_date, new_enroll_start_date, new_enroll_division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_division_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **start_date** | **Time** | Start Date |  |
| **current_enroll_end_date** | **Time** | Current Enrollment End Date |  |
| **new_enroll_start_date** | **Time** | New Enrollment Start Date |  |
| **new_enroll_division_id** | **String** | New Enrollment DivisionID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## subscriber_recalc_accum

> subscriber_recalc_accum(vbasoftware_database, subscriber_id)

Recalculate Subscriber Accumulators

Recalculate Accumulators for a given Subscriber ID

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Recalculate Subscriber Accumulators
  api_instance.subscriber_recalc_accum(vbasoftware_database, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_recalc_accum: #{e}"
end
```

#### Using the subscriber_recalc_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_recalc_accum_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Recalculate Subscriber Accumulators
  data, status_code, headers = api_instance.subscriber_recalc_accum_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_recalc_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## subscriber_surrender_policy

> subscriber_surrender_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)

Subscriber Policy Surrender

Surrender an existing Policy under the Policy & Forfeiture area.

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

api_instance = Vba::AdvEnrollmentApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
cash_value = 1.2 # Float | Cash Value

begin
  # Subscriber Policy Surrender
  api_instance.subscriber_surrender_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_surrender_policy: #{e}"
end
```

#### Using the subscriber_surrender_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_surrender_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)

```ruby
begin
  # Subscriber Policy Surrender
  data, status_code, headers = api_instance.subscriber_surrender_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvEnrollmentApi->subscriber_surrender_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **policy_number** | **String** | Policy Number |  |
| **cash_value** | **Float** | Cash Value |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

