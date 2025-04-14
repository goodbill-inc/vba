# Vba::SubscriberPlanPolicyForfeituresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_forfeiture_status**](SubscriberPlanPolicyForfeituresApi.md#create_subscriber_forfeiture_status) | **POST** /subscriber-forfeiture-status | Create SubscriberForfeitureStatus |
| [**delete_subscriber_forfeiture_status**](SubscriberPlanPolicyForfeituresApi.md#delete_subscriber_forfeiture_status) | **DELETE** /subscriber-forfeiture-status/{subscriberID}/{planID}/{benefitCode}/{policyNumber}/{forfeitureStatus}/{effectiveDate} | Delete SubscriberForfeitureStatus |
| [**get_subscriber_forfeiture_status**](SubscriberPlanPolicyForfeituresApi.md#get_subscriber_forfeiture_status) | **GET** /subscriber-forfeiture-status/{subscriberID}/{planID}/{benefitCode}/{policyNumber}/{forfeitureStatus}/{effectiveDate} | Get SubscriberForfeitureStatus |
| [**list_subscriber_forfeiture_status**](SubscriberPlanPolicyForfeituresApi.md#list_subscriber_forfeiture_status) | **GET** /subscriber-forfeiture-status | List SubscriberForfeitureStatus |
| [**subscriber_policy_forfeiture**](SubscriberPlanPolicyForfeituresApi.md#subscriber_policy_forfeiture) | **POST** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/forfeiture | Subscriber Policy Forfeiture |
| [**update_subscriber_forfeiture_status**](SubscriberPlanPolicyForfeituresApi.md#update_subscriber_forfeiture_status) | **PUT** /subscriber-forfeiture-status/{subscriberID}/{planID}/{benefitCode}/{policyNumber}/{forfeitureStatus}/{effectiveDate} | Update SubscriberForfeitureStatus |


## create_subscriber_forfeiture_status

> <SubscriberForfeitureStatusVBAResponse> create_subscriber_forfeiture_status(vbasoftware_database, subscriber_forfeiture_status)

Create SubscriberForfeitureStatus

Creates a new SubscriberForfeitureStatus

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_forfeiture_status = Vba::SubscriberForfeitureStatus.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example', forfeiture_status: 'forfeiture_status_example', effective_date: Time.now}) # SubscriberForfeitureStatus | 

begin
  # Create SubscriberForfeitureStatus
  result = api_instance.create_subscriber_forfeiture_status(vbasoftware_database, subscriber_forfeiture_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->create_subscriber_forfeiture_status: #{e}"
end
```

#### Using the create_subscriber_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberForfeitureStatusVBAResponse>, Integer, Hash)> create_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_forfeiture_status)

```ruby
begin
  # Create SubscriberForfeitureStatus
  data, status_code, headers = api_instance.create_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->create_subscriber_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_forfeiture_status** | [**SubscriberForfeitureStatus**](SubscriberForfeitureStatus.md) |  |  |

### Return type

[**SubscriberForfeitureStatusVBAResponse**](SubscriberForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_forfeiture_status

> delete_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)

Delete SubscriberForfeitureStatus

Deletes an SubscriberForfeitureStatus

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete SubscriberForfeitureStatus
  api_instance.delete_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->delete_subscriber_forfeiture_status: #{e}"
end
```

#### Using the delete_subscriber_forfeiture_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)

```ruby
begin
  # Delete SubscriberForfeitureStatus
  data, status_code, headers = api_instance.delete_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->delete_subscriber_forfeiture_status_with_http_info: #{e}"
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
| **forfeiture_status** | **String** | Forfeiture Status |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_forfeiture_status

> <SubscriberForfeitureStatusVBAResponse> get_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)

Get SubscriberForfeitureStatus

Gets SubscriberForfeitureStatus

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get SubscriberForfeitureStatus
  result = api_instance.get_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->get_subscriber_forfeiture_status: #{e}"
end
```

#### Using the get_subscriber_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberForfeitureStatusVBAResponse>, Integer, Hash)> get_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)

```ruby
begin
  # Get SubscriberForfeitureStatus
  data, status_code, headers = api_instance.get_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->get_subscriber_forfeiture_status_with_http_info: #{e}"
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
| **forfeiture_status** | **String** | Forfeiture Status |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**SubscriberForfeitureStatusVBAResponse**](SubscriberForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_forfeiture_status

> <SubscriberForfeitureStatusListVBAResponse> list_subscriber_forfeiture_status(vbasoftware_database, opts)

List SubscriberForfeitureStatus

Lists all SubscriberForfeitureStatus for the given filters: subscriberID and planID and benefitCode and policyNumber and forfeitureStatus and effectiveDate

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example', # String | Subscriber ID
  plan_id: 'plan_id_example', # String | Plan ID
  benefit_code: 'benefit_code_example', # String | Benefit Code
  policy_number: 'policy_number_example', # String | Policy Number
  forfeiture_status: 'forfeiture_status_example', # String | Forfeiture Status
  effective_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Effective Date
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberForfeitureStatus
  result = api_instance.list_subscriber_forfeiture_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->list_subscriber_forfeiture_status: #{e}"
end
```

#### Using the list_subscriber_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberForfeitureStatusListVBAResponse>, Integer, Hash)> list_subscriber_forfeiture_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SubscriberForfeitureStatus
  data, status_code, headers = api_instance.list_subscriber_forfeiture_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberForfeitureStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->list_subscriber_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID | [optional] |
| **plan_id** | **String** | Plan ID | [optional] |
| **benefit_code** | **String** | Benefit Code | [optional] |
| **policy_number** | **String** | Policy Number | [optional] |
| **forfeiture_status** | **String** | Forfeiture Status | [optional] |
| **effective_date** | **Time** | Effective Date | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberForfeitureStatusListVBAResponse**](SubscriberForfeitureStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## subscriber_policy_forfeiture

> subscriber_policy_forfeiture(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, enrollment_policy_forfeiture)

Subscriber Policy Forfeiture

Forfeits a Policy for a given Subscriber ID

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
enrollment_policy_forfeiture = Vba::EnrollmentPolicyForfeiture.new # EnrollmentPolicyForfeiture | 

begin
  # Subscriber Policy Forfeiture
  api_instance.subscriber_policy_forfeiture(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, enrollment_policy_forfeiture)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->subscriber_policy_forfeiture: #{e}"
end
```

#### Using the subscriber_policy_forfeiture_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_policy_forfeiture_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, enrollment_policy_forfeiture)

```ruby
begin
  # Subscriber Policy Forfeiture
  data, status_code, headers = api_instance.subscriber_policy_forfeiture_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, enrollment_policy_forfeiture)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->subscriber_policy_forfeiture_with_http_info: #{e}"
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
| **enrollment_policy_forfeiture** | [**EnrollmentPolicyForfeiture**](EnrollmentPolicyForfeiture.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## update_subscriber_forfeiture_status

> <SubscriberForfeitureStatusVBAResponse> update_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date, subscriber_forfeiture_status)

Update SubscriberForfeitureStatus

Updates a specific SubscriberForfeitureStatus.

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

api_instance = Vba::SubscriberPlanPolicyForfeituresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_forfeiture_status = Vba::SubscriberForfeitureStatus.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example', forfeiture_status: 'forfeiture_status_example', effective_date: Time.now}) # SubscriberForfeitureStatus | 

begin
  # Update SubscriberForfeitureStatus
  result = api_instance.update_subscriber_forfeiture_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date, subscriber_forfeiture_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->update_subscriber_forfeiture_status: #{e}"
end
```

#### Using the update_subscriber_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberForfeitureStatusVBAResponse>, Integer, Hash)> update_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date, subscriber_forfeiture_status)

```ruby
begin
  # Update SubscriberForfeitureStatus
  data, status_code, headers = api_instance.update_subscriber_forfeiture_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, forfeiture_status, effective_date, subscriber_forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyForfeituresApi->update_subscriber_forfeiture_status_with_http_info: #{e}"
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
| **forfeiture_status** | **String** | Forfeiture Status |  |
| **effective_date** | **Time** | Effective Date |  |
| **subscriber_forfeiture_status** | [**SubscriberForfeitureStatus**](SubscriberForfeitureStatus.md) |  |  |

### Return type

[**SubscriberForfeitureStatusVBAResponse**](SubscriberForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

