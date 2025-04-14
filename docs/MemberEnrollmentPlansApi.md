# Vba::MemberEnrollmentPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#create_mem_enrollment_plan) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments | Create MemEnrollmentPlan |
| [**delete_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#delete_mem_enrollment_plan) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart} | Delete MemEnrollmentPlan |
| [**get_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#get_mem_enrollment_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart} | Get MemEnrollmentPlan |
| [**list_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#list_mem_enrollment_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments | List MemEnrollmentPlan |
| [**update_batch_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#update_batch_mem_enrollment_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments-batch | Create or Update Batch MemEnrollmentPlan |
| [**update_mem_enrollment_plan**](MemberEnrollmentPlansApi.md#update_mem_enrollment_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/groups/{groupID}/divisions/{divisionID}/enrollments/{groupCoverageStart}/{subStartDate}/plans/{planID}/{planStart} | Update MemEnrollmentPlan |


## create_mem_enrollment_plan

> <MemEnrollmentPlanVBAResponse> create_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)

Create MemEnrollmentPlan

Creates a new MemEnrollmentPlan

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
mem_enrollment_plan = Vba::MemEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false}) # MemEnrollmentPlan | 

begin
  # Create MemEnrollmentPlan
  result = api_instance.create_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->create_mem_enrollment_plan: #{e}"
end
```

#### Using the create_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentPlanVBAResponse>, Integer, Hash)> create_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)

```ruby
begin
  # Create MemEnrollmentPlan
  data, status_code, headers = api_instance.create_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->create_mem_enrollment_plan_with_http_info: #{e}"
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
| **mem_enrollment_plan** | [**MemEnrollmentPlan**](MemEnrollmentPlan.md) |  |  |

### Return type

[**MemEnrollmentPlanVBAResponse**](MemEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_mem_enrollment_plan

> delete_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)

Delete MemEnrollmentPlan

Deletes an MemEnrollmentPlan

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start

begin
  # Delete MemEnrollmentPlan
  api_instance.delete_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->delete_mem_enrollment_plan: #{e}"
end
```

#### Using the delete_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)

```ruby
begin
  # Delete MemEnrollmentPlan
  data, status_code, headers = api_instance.delete_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->delete_mem_enrollment_plan_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_mem_enrollment_plan

> <MemEnrollmentPlanVBAResponse> get_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)

Get MemEnrollmentPlan

Gets MemEnrollmentPlan

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start

begin
  # Get MemEnrollmentPlan
  result = api_instance.get_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->get_mem_enrollment_plan: #{e}"
end
```

#### Using the get_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentPlanVBAResponse>, Integer, Hash)> get_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)

```ruby
begin
  # Get MemEnrollmentPlan
  data, status_code, headers = api_instance.get_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->get_mem_enrollment_plan_with_http_info: #{e}"
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

### Return type

[**MemEnrollmentPlanVBAResponse**](MemEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_mem_enrollment_plan

> <MemEnrollmentPlanListVBAResponse> list_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, opts)

List MemEnrollmentPlan

Lists all MemEnrollmentPlan for the given subscriberID and memberSeq and groupID and divisionID

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemEnrollmentPlan
  result = api_instance.list_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->list_mem_enrollment_plan: #{e}"
end
```

#### Using the list_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentPlanListVBAResponse>, Integer, Hash)> list_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, opts)

```ruby
begin
  # List MemEnrollmentPlan
  data, status_code, headers = api_instance.list_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->list_mem_enrollment_plan_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemEnrollmentPlanListVBAResponse**](MemEnrollmentPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_mem_enrollment_plan

> <MultiCodeResponseListVBAResponse> update_batch_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)

Create or Update Batch MemEnrollmentPlan

Create or Update multiple MemEnrollmentPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
mem_enrollment_plan = [Vba::MemEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false})] # Array<MemEnrollmentPlan> | 

begin
  # Create or Update Batch MemEnrollmentPlan
  result = api_instance.update_batch_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->update_batch_mem_enrollment_plan: #{e}"
end
```

#### Using the update_batch_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)

```ruby
begin
  # Create or Update Batch MemEnrollmentPlan
  data, status_code, headers = api_instance.update_batch_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, mem_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->update_batch_mem_enrollment_plan_with_http_info: #{e}"
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
| **mem_enrollment_plan** | [**Array&lt;MemEnrollmentPlan&gt;**](MemEnrollmentPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_mem_enrollment_plan

> <MemEnrollmentPlanVBAResponse> update_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_plan)

Update MemEnrollmentPlan

Updates a specific MemEnrollmentPlan.

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

api_instance = Vba::MemberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
sub_start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Sub Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
mem_enrollment_plan = Vba::MemEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, sub_start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false}) # MemEnrollmentPlan | 

begin
  # Update MemEnrollmentPlan
  result = api_instance.update_mem_enrollment_plan(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->update_mem_enrollment_plan: #{e}"
end
```

#### Using the update_mem_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemEnrollmentPlanVBAResponse>, Integer, Hash)> update_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_plan)

```ruby
begin
  # Update MemEnrollmentPlan
  data, status_code, headers = api_instance.update_mem_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, sub_start_date, plan_id, plan_start, mem_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberEnrollmentPlansApi->update_mem_enrollment_plan_with_http_info: #{e}"
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
| **mem_enrollment_plan** | [**MemEnrollmentPlan**](MemEnrollmentPlan.md) |  |  |

### Return type

[**MemEnrollmentPlanVBAResponse**](MemEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

