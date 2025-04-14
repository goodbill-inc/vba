# Vba::MemberEnrollmentPlanRiderApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#create_mem_enrollment_rider) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders | Create MemEnrollmentRider |
| [**delete_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#delete_mem_enrollment_rider) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Delete MemEnrollmentRider |
| [**get_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#get_mem_enrollment_rider) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Get MemEnrollmentRider |
| [**list_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#list_mem_enrollment_rider) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders | List MemEnrollmentRider |
| [**update_batch_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#update_batch_mem_enrollment_rider) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders-batch | Create or Update Batch MemEnrollmentRider |
| [**update_mem_enrollment_rider**](MemberEnrollmentPlanRiderApi.md#update_mem_enrollment_rider) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart}/riders/{benefitCode}/{fromDate} | Update MemEnrollmentRider |


## create_mem_enrollment_rider

> <MemEnrollmentRiderVBAResponse> create_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)

Create MemEnrollmentRider

Creates a new MemEnrollmentRider

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
mem_enrollment_rider = Vba::MemEnrollmentRider.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false}) # MemEnrollmentRider | 

begin
  # Create MemEnrollmentRider
  result = api_instance.create_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->create_mem_enrollment_rider: #{e}"
end
```

#### Using the create_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentRiderVBAResponse>, Integer, Hash)> create_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)

```ruby
begin
  # Create MemEnrollmentRider
  data, status_code, headers = api_instance.create_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->create_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **mem_enrollment_rider** | [**MemEnrollmentRider**](MemEnrollmentRider.md) |  |  |

### Return type

[**MemEnrollmentRiderVBAResponse**](MemEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_mem_enrollment_rider

> delete_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)

Delete MemEnrollmentRider

Deletes an MemEnrollmentRider

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date

begin
  # Delete MemEnrollmentRider
  api_instance.delete_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->delete_mem_enrollment_rider: #{e}"
end
```

#### Using the delete_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)

```ruby
begin
  # Delete MemEnrollmentRider
  data, status_code, headers = api_instance.delete_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->delete_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
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


## get_mem_enrollment_rider

> <MemEnrollmentRiderVBAResponse> get_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)

Get MemEnrollmentRider

Gets MemEnrollmentRider

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date

begin
  # Get MemEnrollmentRider
  result = api_instance.get_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->get_mem_enrollment_rider: #{e}"
end
```

#### Using the get_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentRiderVBAResponse>, Integer, Hash)> get_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)

```ruby
begin
  # Get MemEnrollmentRider
  data, status_code, headers = api_instance.get_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->get_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_date** | **Time** | From Date |  |

### Return type

[**MemEnrollmentRiderVBAResponse**](MemEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_mem_enrollment_rider

> <MemEnrollmentRiderListVBAResponse> list_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, opts)

List MemEnrollmentRider

Lists all MemEnrollmentRider for the given subscriberID and memberSeq and groupID and divisionID and groupCoverageStart and subStartDate and planID and planStart

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemEnrollmentRider
  result = api_instance.list_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->list_mem_enrollment_rider: #{e}"
end
```

#### Using the list_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentRiderListVBAResponse>, Integer, Hash)> list_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, opts)

```ruby
begin
  # List MemEnrollmentRider
  data, status_code, headers = api_instance.list_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentRiderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->list_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemEnrollmentRiderListVBAResponse**](MemEnrollmentRiderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_mem_enrollment_rider

> <MultiCodeResponseListVBAResponse> update_batch_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)

Create or Update Batch MemEnrollmentRider

Create or Update multiple MemEnrollmentRider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
mem_enrollment_rider = [Vba::MemEnrollmentRider.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false})] # Array<MemEnrollmentRider> | 

begin
  # Create or Update Batch MemEnrollmentRider
  result = api_instance.update_batch_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->update_batch_mem_enrollment_rider: #{e}"
end
```

#### Using the update_batch_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)

```ruby
begin
  # Create or Update Batch MemEnrollmentRider
  data, status_code, headers = api_instance.update_batch_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->update_batch_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **mem_enrollment_rider** | [**Array&lt;MemEnrollmentRider&gt;**](MemEnrollmentRider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_mem_enrollment_rider

> <MemEnrollmentRiderVBAResponse> update_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date, mem_enrollment_rider)

Update MemEnrollmentRider

Updates a specific MemEnrollmentRider.

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

api_instance = Vba::MemberEnrollmentPlanRiderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
benefit_code = 'benefit_code_example' # String | Benefit Code
from_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | From Date
mem_enrollment_rider = Vba::MemEnrollmentRider.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, benefit_code: 'benefit_code_example', from_date: Time.now, employee_contribution_pct: false}) # MemEnrollmentRider | 

begin
  # Update MemEnrollmentRider
  result = api_instance.update_mem_enrollment_rider(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date, mem_enrollment_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->update_mem_enrollment_rider: #{e}"
end
```

#### Using the update_mem_enrollment_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentRiderVBAResponse>, Integer, Hash)> update_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date, mem_enrollment_rider)

```ruby
begin
  # Update MemEnrollmentRider
  data, status_code, headers = api_instance.update_mem_enrollment_rider_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, benefit_code, from_date, mem_enrollment_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlanRiderApi->update_mem_enrollment_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **sub_start_date** | **Time** | Sub Start Date |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_start** | **Time** | Plan Start |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_date** | **Time** | From Date |  |
| **mem_enrollment_rider** | [**MemEnrollmentRider**](MemEnrollmentRider.md) |  |  |

### Return type

[**MemEnrollmentRiderVBAResponse**](MemEnrollmentRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

