# Vba::SubscriberEnrollmentPlanRidersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#create_sub_enrollment_rider) | **POST** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders | Create SubEnrollmentRider |
| [**delete_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#delete_sub_enrollment_rider) | **DELETE** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Delete SubEnrollmentRider |
| [**get_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#get_sub_enrollment_rider) | **GET** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Get SubEnrollmentRider |
| [**list_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#list_sub_enrollment_rider) | **GET** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders | List SubEnrollmentRider |
| [**update_batch_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#update_batch_sub_enrollment_rider) | **PUT** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders-batch | Create or Update Batch SubEnrollmentRider |
| [**update_sub_enrollment_rider**](SubscriberEnrollmentPlanRidersApi.md#update_sub_enrollment_rider) | **PUT** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Update SubEnrollmentRider |


## create_sub_enrollment_rider

> <SubEnrollmentRiderVBAResponse> create_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)

Create SubEnrollmentRider

Creates a new SubEnrollmentRider

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
sub_enrollment_rider = Vba::SubEnrollmentRider.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false, initial_volume_salary_pct: false, use_employee_age: false, use_gi_volume_min_max: false, use_volume_scale: false}) # SubEnrollmentRider | 

begin
  # Create SubEnrollmentRider
  result = api_instance.create_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->create_sub_enrollment_rider: #{e}"
end
```

#### Using the create_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentRiderVBAResponse>, Integer, Hash)> create_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)

```ruby
begin
  # Create SubEnrollmentRider
  data, status_code, headers = api_instance.create_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->create_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **sub_enrollment_rider** | [**SubEnrollmentRider**](SubEnrollmentRider.md) |  |  |

### Return type

[**SubEnrollmentRiderVBAResponse**](SubEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_sub_enrollment_rider

> delete_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)

Delete SubEnrollmentRider

Deletes an SubEnrollmentRider

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date

begin
  # Delete SubEnrollmentRider
  api_instance.delete_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->delete_sub_enrollment_rider: #{e}"
end
```

#### Using the delete_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)

```ruby
begin
  # Delete SubEnrollmentRider
  data, status_code, headers = api_instance.delete_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->delete_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_date** | **Time** | From Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_sub_enrollment_rider

> <SubEnrollmentRiderVBAResponse> get_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)

Get SubEnrollmentRider

Gets SubEnrollmentRider

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date

begin
  # Get SubEnrollmentRider
  result = api_instance.get_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->get_sub_enrollment_rider: #{e}"
end
```

#### Using the get_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentRiderVBAResponse>, Integer, Hash)> get_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)

```ruby
begin
  # Get SubEnrollmentRider
  data, status_code, headers = api_instance.get_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->get_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_date** | **Time** | From Date |  |

### Return type

[**SubEnrollmentRiderVBAResponse**](SubEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sub_enrollment_rider

> <SubEnrollmentRiderListVBAResponse> list_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, opts)

List SubEnrollmentRider

Lists all SubEnrollmentRider for the given subscriberID and groupID and divisionID and groupCoverageStart and startDate and planID and planStart

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubEnrollmentRider
  result = api_instance.list_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->list_sub_enrollment_rider: #{e}"
end
```

#### Using the list_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentRiderListVBAResponse>, Integer, Hash)> list_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, opts)

```ruby
begin
  # List SubEnrollmentRider
  data, status_code, headers = api_instance.list_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentRiderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->list_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubEnrollmentRiderListVBAResponse**](SubEnrollmentRiderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_sub_enrollment_rider

> <MultiCodeResponseListVBAResponse> update_batch_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)

Create or Update Batch SubEnrollmentRider

Create or Update multiple SubEnrollmentRider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
sub_enrollment_rider = [Vba::SubEnrollmentRider.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false, initial_volume_salary_pct: false, use_employee_age: false, use_gi_volume_min_max: false, use_volume_scale: false})] # Array<SubEnrollmentRider> | 

begin
  # Create or Update Batch SubEnrollmentRider
  result = api_instance.update_batch_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->update_batch_sub_enrollment_rider: #{e}"
end
```

#### Using the update_batch_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)

```ruby
begin
  # Create or Update Batch SubEnrollmentRider
  data, status_code, headers = api_instance.update_batch_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->update_batch_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **sub_enrollment_rider** | [**Array&lt;SubEnrollmentRider&gt;**](SubEnrollmentRider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_sub_enrollment_rider

> <SubEnrollmentRiderVBAResponse> update_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date, sub_enrollment_rider)

Update SubEnrollmentRider

Updates a specific SubEnrollmentRider.

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

api_instance = Vba::SubscriberEnrollmentPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date
sub_enrollment_rider = Vba::SubEnrollmentRider.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false, initial_volume_salary_pct: false, use_employee_age: false, use_gi_volume_min_max: false, use_volume_scale: false}) # SubEnrollmentRider | 

begin
  # Update SubEnrollmentRider
  result = api_instance.update_sub_enrollment_rider(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date, sub_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->update_sub_enrollment_rider: #{e}"
end
```

#### Using the update_sub_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentRiderVBAResponse>, Integer, Hash)> update_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date, sub_enrollment_rider)

```ruby
begin
  # Update SubEnrollmentRider
  data, status_code, headers = api_instance.update_sub_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, benefit_code, from_date, sub_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlanRidersApi->update_sub_enrollment_rider_with_http_info: #{e}"
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
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_date** | **Time** | From Date |  |
| **sub_enrollment_rider** | [**SubEnrollmentRider**](SubEnrollmentRider.md) |  |  |

### Return type

[**SubEnrollmentRiderVBAResponse**](SubEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

