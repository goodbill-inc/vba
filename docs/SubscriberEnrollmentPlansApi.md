# Vba::SubscriberEnrollmentPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#create_sub_enrollment_plan) | **POST** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans | Create SubEnrollmentPlan |
| [**delete_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#delete_sub_enrollment_plan) | **DELETE** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart} | Delete SubEnrollmentPlan |
| [**get_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#get_sub_enrollment_plan) | **GET** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart} | Get SubEnrollmentPlan |
| [**list_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#list_sub_enrollment_plan) | **GET** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans | List SubEnrollmentPlan |
| [**list_subscriber_sub_enrollment_plans**](SubscriberEnrollmentPlansApi.md#list_subscriber_sub_enrollment_plans) | **GET** /subscribers/{subscriberID}/plans | List Subscriber SubEnrollmentPlans |
| [**update_batch_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#update_batch_sub_enrollment_plan) | **PUT** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans-batch | Create or Update Batch SubEnrollmentPlan |
| [**update_sub_enrollment_plan**](SubscriberEnrollmentPlansApi.md#update_sub_enrollment_plan) | **PUT** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate}/plans/{planID}/{planStart} | Update SubEnrollmentPlan |


## create_sub_enrollment_plan

> <SubEnrollmentPlanVBAResponse> create_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)

Create SubEnrollmentPlan

Creates a new SubEnrollmentPlan

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
sub_enrollment_plan = Vba::SubEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false}) # SubEnrollmentPlan | 

begin
  # Create SubEnrollmentPlan
  result = api_instance.create_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->create_sub_enrollment_plan: #{e}"
end
```

#### Using the create_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentPlanVBAResponse>, Integer, Hash)> create_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)

```ruby
begin
  # Create SubEnrollmentPlan
  data, status_code, headers = api_instance.create_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->create_sub_enrollment_plan_with_http_info: #{e}"
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
| **sub_enrollment_plan** | [**SubEnrollmentPlan**](SubEnrollmentPlan.md) |  |  |

### Return type

[**SubEnrollmentPlanVBAResponse**](SubEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_sub_enrollment_plan

> delete_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)

Delete SubEnrollmentPlan

Deletes an SubEnrollmentPlan

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start

begin
  # Delete SubEnrollmentPlan
  api_instance.delete_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->delete_sub_enrollment_plan: #{e}"
end
```

#### Using the delete_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)

```ruby
begin
  # Delete SubEnrollmentPlan
  data, status_code, headers = api_instance.delete_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->delete_sub_enrollment_plan_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_sub_enrollment_plan

> <SubEnrollmentPlanVBAResponse> get_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)

Get SubEnrollmentPlan

Gets SubEnrollmentPlan

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start

begin
  # Get SubEnrollmentPlan
  result = api_instance.get_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->get_sub_enrollment_plan: #{e}"
end
```

#### Using the get_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentPlanVBAResponse>, Integer, Hash)> get_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)

```ruby
begin
  # Get SubEnrollmentPlan
  data, status_code, headers = api_instance.get_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->get_sub_enrollment_plan_with_http_info: #{e}"
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

### Return type

[**SubEnrollmentPlanVBAResponse**](SubEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sub_enrollment_plan

> <SubEnrollmentPlanListVBAResponse> list_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, opts)

List SubEnrollmentPlan

Lists all SubEnrollmentPlan for the given Subscriber, Group, Division and Enrollment

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubEnrollmentPlan
  result = api_instance.list_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->list_sub_enrollment_plan: #{e}"
end
```

#### Using the list_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentPlanListVBAResponse>, Integer, Hash)> list_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, opts)

```ruby
begin
  # List SubEnrollmentPlan
  data, status_code, headers = api_instance.list_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->list_sub_enrollment_plan_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubEnrollmentPlanListVBAResponse**](SubEnrollmentPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_sub_enrollment_plans

> <StringStaticOptionListVBAResponse> list_subscriber_sub_enrollment_plans(vbasoftware_database, subscriber_id, opts)

List Subscriber SubEnrollmentPlans

Lists all SubEnrollmentPlans for the given Subscriber

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Subscriber SubEnrollmentPlans
  result = api_instance.list_subscriber_sub_enrollment_plans(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->list_subscriber_sub_enrollment_plans: #{e}"
end
```

#### Using the list_subscriber_sub_enrollment_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_subscriber_sub_enrollment_plans_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List Subscriber SubEnrollmentPlans
  data, status_code, headers = api_instance.list_subscriber_sub_enrollment_plans_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->list_subscriber_sub_enrollment_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_sub_enrollment_plan

> <MultiCodeResponseListVBAResponse> update_batch_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)

Create or Update Batch SubEnrollmentPlan

Create or Update multiple SubEnrollmentPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
sub_enrollment_plan = [Vba::SubEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false})] # Array<SubEnrollmentPlan> | 

begin
  # Create or Update Batch SubEnrollmentPlan
  result = api_instance.update_batch_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->update_batch_sub_enrollment_plan: #{e}"
end
```

#### Using the update_batch_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)

```ruby
begin
  # Create or Update Batch SubEnrollmentPlan
  data, status_code, headers = api_instance.update_batch_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->update_batch_sub_enrollment_plan_with_http_info: #{e}"
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
| **sub_enrollment_plan** | [**Array&lt;SubEnrollmentPlan&gt;**](SubEnrollmentPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_sub_enrollment_plan

> <SubEnrollmentPlanVBAResponse> update_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_plan)

Update SubEnrollmentPlan

Updates a specific SubEnrollmentPlan.

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

api_instance = Vba::SubscriberEnrollmentPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
plan_id = 'plan_id_example' # String | Plan ID
plan_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Plan Start
sub_enrollment_plan = Vba::SubEnrollmentPlan.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, plan_id: 'plan_id_example', plan_start: Time.now, use_volume_scale: false}) # SubEnrollmentPlan | 

begin
  # Update SubEnrollmentPlan
  result = api_instance.update_sub_enrollment_plan(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->update_sub_enrollment_plan: #{e}"
end
```

#### Using the update_sub_enrollment_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentPlanVBAResponse>, Integer, Hash)> update_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_plan)

```ruby
begin
  # Update SubEnrollmentPlan
  data, status_code, headers = api_instance.update_sub_enrollment_plan_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, plan_id, plan_start, sub_enrollment_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentPlansApi->update_sub_enrollment_plan_with_http_info: #{e}"
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
| **sub_enrollment_plan** | [**SubEnrollmentPlan**](SubEnrollmentPlan.md) |  |  |

### Return type

[**SubEnrollmentPlanVBAResponse**](SubEnrollmentPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

