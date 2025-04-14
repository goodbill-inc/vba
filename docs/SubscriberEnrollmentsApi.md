# Vba::SubscriberEnrollmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sub_enrollment**](SubscriberEnrollmentsApi.md#create_sub_enrollment) | **POST** /subscribers/{subscriberID}/enrollments | Create SubEnrollment |
| [**delete_sub_enrollment**](SubscriberEnrollmentsApi.md#delete_sub_enrollment) | **DELETE** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate} | Delete SubEnrollment |
| [**get_sub_enrollment**](SubscriberEnrollmentsApi.md#get_sub_enrollment) | **GET** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate} | Get SubEnrollment |
| [**list_sub_enrollment**](SubscriberEnrollmentsApi.md#list_sub_enrollment) | **GET** /subscribers/{subscriberID}/enrollments | List SubEnrollment |
| [**sub_enrollment_set_paid_through**](SubscriberEnrollmentsApi.md#sub_enrollment_set_paid_through) | **POST** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/set-paid-through | Set SubEnrollment Paid Through |
| [**update_batch_sub_enrollment**](SubscriberEnrollmentsApi.md#update_batch_sub_enrollment) | **PUT** /subscribers/{subscriberID}/enrollments-batch | Create or Update Batch SubEnrollment |
| [**update_sub_enrollment**](SubscriberEnrollmentsApi.md#update_sub_enrollment) | **PUT** /subscribers/{subscriberID}/enrollments/{groupID}/{divisionID}/{groupCoverageStart}/{startDate} | Update SubEnrollment |


## create_sub_enrollment

> <SubEnrollmentVBAResponse> create_sub_enrollment(vbasoftware_database, subscriber_id, sub_enrollment)

Create SubEnrollment

Creates a new SubEnrollment

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_enrollment = Vba::SubEnrollment.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now}) # SubEnrollment | 

begin
  # Create SubEnrollment
  result = api_instance.create_sub_enrollment(vbasoftware_database, subscriber_id, sub_enrollment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->create_sub_enrollment: #{e}"
end
```

#### Using the create_sub_enrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentVBAResponse>, Integer, Hash)> create_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, sub_enrollment)

```ruby
begin
  # Create SubEnrollment
  data, status_code, headers = api_instance.create_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, sub_enrollment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->create_sub_enrollment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_enrollment** | [**SubEnrollment**](SubEnrollment.md) |  |  |

### Return type

[**SubEnrollmentVBAResponse**](SubEnrollmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_sub_enrollment

> delete_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)

Delete SubEnrollment

Deletes a SubEnrollment with the given subscriberID, groupID, divisionID, groupCoverageStart, and startDate

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date

begin
  # Delete SubEnrollment
  api_instance.delete_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->delete_sub_enrollment: #{e}"
end
```

#### Using the delete_sub_enrollment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)

```ruby
begin
  # Delete SubEnrollment
  data, status_code, headers = api_instance.delete_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->delete_sub_enrollment_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_sub_enrollment

> <SubEnrollmentVBAResponse> get_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)

Get SubEnrollment

Gets a SubEnrollment for the given subscriberID, groupID, divisionID, groupCoverageStart, and startDate

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date

begin
  # Get SubEnrollment
  result = api_instance.get_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->get_sub_enrollment: #{e}"
end
```

#### Using the get_sub_enrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentVBAResponse>, Integer, Hash)> get_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)

```ruby
begin
  # Get SubEnrollment
  data, status_code, headers = api_instance.get_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->get_sub_enrollment_with_http_info: #{e}"
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

### Return type

[**SubEnrollmentVBAResponse**](SubEnrollmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sub_enrollment

> <SubEnrollmentListVBAResponse> list_sub_enrollment(vbasoftware_database, subscriber_id, opts)

List SubEnrollment

Lists all SubEnrollment for the given subscriberID

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubEnrollment
  result = api_instance.list_sub_enrollment(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->list_sub_enrollment: #{e}"
end
```

#### Using the list_sub_enrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentListVBAResponse>, Integer, Hash)> list_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List SubEnrollment
  data, status_code, headers = api_instance.list_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->list_sub_enrollment_with_http_info: #{e}"
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

[**SubEnrollmentListVBAResponse**](SubEnrollmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sub_enrollment_set_paid_through

> sub_enrollment_set_paid_through(vbasoftware_database, subscriber_id, group_id, division_id)

Set SubEnrollment Paid Through

Sets the Paid Through value on the Subenrollment based on existing Premium Billing paid invoices.

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # Set SubEnrollment Paid Through
  api_instance.sub_enrollment_set_paid_through(vbasoftware_database, subscriber_id, group_id, division_id)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->sub_enrollment_set_paid_through: #{e}"
end
```

#### Using the sub_enrollment_set_paid_through_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> sub_enrollment_set_paid_through_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id)

```ruby
begin
  # Set SubEnrollment Paid Through
  data, status_code, headers = api_instance.sub_enrollment_set_paid_through_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->sub_enrollment_set_paid_through_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_sub_enrollment

> <MultiCodeResponseListVBAResponse> update_batch_sub_enrollment(vbasoftware_database, subscriber_id, sub_enrollment)

Create or Update Batch SubEnrollment

Create or Update multiple SubEnrollment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_enrollment = [Vba::SubEnrollment.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now})] # Array<SubEnrollment> | 

begin
  # Create or Update Batch SubEnrollment
  result = api_instance.update_batch_sub_enrollment(vbasoftware_database, subscriber_id, sub_enrollment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->update_batch_sub_enrollment: #{e}"
end
```

#### Using the update_batch_sub_enrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, sub_enrollment)

```ruby
begin
  # Create or Update Batch SubEnrollment
  data, status_code, headers = api_instance.update_batch_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, sub_enrollment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->update_batch_sub_enrollment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_enrollment** | [**Array&lt;SubEnrollment&gt;**](SubEnrollment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_sub_enrollment

> <SubEnrollmentVBAResponse> update_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment)

Update SubEnrollment

Updates a SubEnrollment with the given subscriberID, groupID, divisionID, groupCoverageStart, and startDate

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

api_instance = Vba::SubscriberEnrollmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
sub_enrollment = Vba::SubEnrollment.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now}) # SubEnrollment | 

begin
  # Update SubEnrollment
  result = api_instance.update_sub_enrollment(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->update_sub_enrollment: #{e}"
end
```

#### Using the update_sub_enrollment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubEnrollmentVBAResponse>, Integer, Hash)> update_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment)

```ruby
begin
  # Update SubEnrollment
  data, status_code, headers = api_instance.update_sub_enrollment_with_http_info(vbasoftware_database, subscriber_id, group_id, division_id, group_coverage_start, start_date, sub_enrollment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubEnrollmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberEnrollmentsApi->update_sub_enrollment_with_http_info: #{e}"
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
| **sub_enrollment** | [**SubEnrollment**](SubEnrollment.md) |  |  |

### Return type

[**SubEnrollmentVBAResponse**](SubEnrollmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

