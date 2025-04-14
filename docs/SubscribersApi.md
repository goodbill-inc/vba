# Vba::SubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**changesubscriber_id**](SubscribersApi.md#changesubscriber_id) | **POST** /subscribers/{subscriberID}/change-id | Change Subscriber ID |
| [**create_subscribers**](SubscribersApi.md#create_subscribers) | **POST** /subscribers | Create Subscribers |
| [**delete_subscribers**](SubscribersApi.md#delete_subscribers) | **DELETE** /subscribers/{subscriberID} | Delete Subscribers |
| [**generate_subscriber_id**](SubscribersApi.md#generate_subscriber_id) | **GET** /subscribers-generate-id | Get Unique Subscriber ID |
| [**get_subscribers**](SubscribersApi.md#get_subscribers) | **GET** /subscribers/{subscriberID} | Get Subscribers |
| [**list_active_subscribers**](SubscribersApi.md#list_active_subscribers) | **GET** /active-subscribers | List Active Subscribers for a Groupd &amp; Division |
| [**list_cobra_disenroll_reason_types**](SubscribersApi.md#list_cobra_disenroll_reason_types) | **GET** /cobra-disenroll-reason-types | List Cobra Disenroll Reason Types |
| [**list_cobra_duration_types**](SubscribersApi.md#list_cobra_duration_types) | **GET** /cobra-duration-types | List Cobra Duration Types |
| [**list_disenroll_adjustment**](SubscribersApi.md#list_disenroll_adjustment) | **GET** /subscribers/{subscriberID}/as-of-date/{asOfDate}/disenroll-adjustments | List Billing Adjustments for Disenroll |
| [**list_disenrollment_family_options**](SubscribersApi.md#list_disenrollment_family_options) | **GET** /disenroll-family-options | List Disenrollment Family Options |
| [**list_enrollment_waiting_period_by_hire_date**](SubscribersApi.md#list_enrollment_waiting_period_by_hire_date) | **GET** /enrollment-waiting-period-by-hire-date | List Waiting Period Details |
| [**list_reenrollment_family_options**](SubscribersApi.md#list_reenrollment_family_options) | **GET** /reenroll-family-options | List Reenrollment Family Options |
| [**list_subscriber_benefits**](SubscribersApi.md#list_subscriber_benefits) | **GET** /subscribers/{subscriberID}/benefits | List Subscriber Benefits |
| [**list_subscribers**](SubscribersApi.md#list_subscribers) | **GET** /subscribers | List Subscribers |
| [**member_disenroll**](SubscribersApi.md#member_disenroll) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/disenroll | Member Disenroll |
| [**member_reenroll**](SubscribersApi.md#member_reenroll) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/reenroll | Member Re-enroll |
| [**subscriber_add_enrollment**](SubscribersApi.md#subscriber_add_enrollment) | **POST** /subscribers/{subscriberID}/add-enrollment | Subscriber Add Enrollment |
| [**update_batch_subscribers**](SubscribersApi.md#update_batch_subscribers) | **PUT** /subscribers-batch | Create or Update Batch Subscribers |
| [**update_subscribers**](SubscribersApi.md#update_subscribers) | **PUT** /subscribers/{subscriberID} | Update Subscribers |


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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
change_subscriber_id_request = Vba::ChangeSubscriberIDRequest.new({user_id: 'user_id_example', current_subscriber_id: 'current_subscriber_id_example', new_subscriber_id: 'new_subscriber_id_example'}) # ChangeSubscriberIDRequest | 

begin
  # Change Subscriber ID
  api_instance.changesubscriber_id(vbasoftware_database, subscriber_id, change_subscriber_id_request)
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->changesubscriber_id: #{e}"
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
  puts "Error when calling SubscribersApi->changesubscriber_id_with_http_info: #{e}"
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


## create_subscribers

> <SubscribersVBAResponse> create_subscribers(vbasoftware_database, subscribers)

Create Subscribers

Creates a new Subscribers

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscribers = Vba::Subscribers.new # Subscribers | 

begin
  # Create Subscribers
  result = api_instance.create_subscribers(vbasoftware_database, subscribers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->create_subscribers: #{e}"
end
```

#### Using the create_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscribersVBAResponse>, Integer, Hash)> create_subscribers_with_http_info(vbasoftware_database, subscribers)

```ruby
begin
  # Create Subscribers
  data, status_code, headers = api_instance.create_subscribers_with_http_info(vbasoftware_database, subscribers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscribersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->create_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscribers** | [**Subscribers**](Subscribers.md) |  |  |

### Return type

[**SubscribersVBAResponse**](SubscribersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscribers

> delete_subscribers(vbasoftware_database, subscriber_id)

Delete Subscribers

Deletes an Subscribers

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Delete Subscribers
  api_instance.delete_subscribers(vbasoftware_database, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->delete_subscribers: #{e}"
end
```

#### Using the delete_subscribers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscribers_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Delete Subscribers
  data, status_code, headers = api_instance.delete_subscribers_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->delete_subscribers_with_http_info: #{e}"
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


## generate_subscriber_id

> <StringVBAResponse> generate_subscriber_id(vbasoftware_database)

Get Unique Subscriber ID

Get a unique Subscriber ID you can use for creating a new Subscriber or changing an existing Subscirbers ID

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Get Unique Subscriber ID
  result = api_instance.generate_subscriber_id(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->generate_subscriber_id: #{e}"
end
```

#### Using the generate_subscriber_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> generate_subscriber_id_with_http_info(vbasoftware_database)

```ruby
begin
  # Get Unique Subscriber ID
  data, status_code, headers = api_instance.generate_subscriber_id_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->generate_subscriber_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_subscribers

> <SubscribersVBAResponse> get_subscribers(vbasoftware_database, subscriber_id)

Get Subscribers

Gets Subscribers

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Get Subscribers
  result = api_instance.get_subscribers(vbasoftware_database, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->get_subscribers: #{e}"
end
```

#### Using the get_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscribersVBAResponse>, Integer, Hash)> get_subscribers_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Get Subscribers
  data, status_code, headers = api_instance.get_subscribers_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscribersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->get_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**SubscribersVBAResponse**](SubscribersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_active_subscribers

> <ActiveSubscriberListVBAResponse> list_active_subscribers(vbasoftware_database, group_id, opts)

List Active Subscribers for a Groupd & Division

Lists all Subscribers for the given Group & Division. If division is omitted, all divisions will be included.  Active is defined by a plan start date <= today and plan end date >= today.

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  division_id: 'division_id_example', # String | Division ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Active Subscribers for a Groupd & Division
  result = api_instance.list_active_subscribers(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_active_subscribers: #{e}"
end
```

#### Using the list_active_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActiveSubscriberListVBAResponse>, Integer, Hash)> list_active_subscribers_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List Active Subscribers for a Groupd & Division
  data, status_code, headers = api_instance.list_active_subscribers_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActiveSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_active_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ActiveSubscriberListVBAResponse**](ActiveSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cobra_disenroll_reason_types

> <StringStaticOptionListVBAResponse> list_cobra_disenroll_reason_types(vbasoftware_database)

List Cobra Disenroll Reason Types

List of all Cobra Disenroll Reason Types

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Cobra Disenroll Reason Types
  result = api_instance.list_cobra_disenroll_reason_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_cobra_disenroll_reason_types: #{e}"
end
```

#### Using the list_cobra_disenroll_reason_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_cobra_disenroll_reason_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Cobra Disenroll Reason Types
  data, status_code, headers = api_instance.list_cobra_disenroll_reason_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_cobra_disenroll_reason_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cobra_duration_types

> <StringStaticOptionListVBAResponse> list_cobra_duration_types(vbasoftware_database)

List Cobra Duration Types

List of all Cobra Duration Types

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Cobra Duration Types
  result = api_instance.list_cobra_duration_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_cobra_duration_types: #{e}"
end
```

#### Using the list_cobra_duration_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_cobra_duration_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Cobra Duration Types
  data, status_code, headers = api_instance.list_cobra_duration_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_cobra_duration_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List Billing Adjustments for Disenroll
  result = api_instance.list_disenroll_adjustment(vbasoftware_database, subscriber_id, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_disenroll_adjustment: #{e}"
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
  puts "Error when calling SubscribersApi->list_disenroll_adjustment_with_http_info: #{e}"
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


## list_disenrollment_family_options

> <Int32StaticOptionListVBAResponse> list_disenrollment_family_options(vbasoftware_database)

List Disenrollment Family Options

List of all Disenrollment Family Options

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Disenrollment Family Options
  result = api_instance.list_disenrollment_family_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_disenrollment_family_options: #{e}"
end
```

#### Using the list_disenrollment_family_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_disenrollment_family_options_with_http_info(vbasoftware_database)

```ruby
begin
  # List Disenrollment Family Options
  data, status_code, headers = api_instance.list_disenrollment_family_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_disenrollment_family_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

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

api_instance = Vba::SubscribersApi.new
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
  puts "Error when calling SubscribersApi->list_enrollment_waiting_period_by_hire_date: #{e}"
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
  puts "Error when calling SubscribersApi->list_enrollment_waiting_period_by_hire_date_with_http_info: #{e}"
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


## list_reenrollment_family_options

> <Int32StaticOptionListVBAResponse> list_reenrollment_family_options(vbasoftware_database)

List Reenrollment Family Options

List of all Reenrollment Family Options

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Reenrollment Family Options
  result = api_instance.list_reenrollment_family_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_reenrollment_family_options: #{e}"
end
```

#### Using the list_reenrollment_family_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_reenrollment_family_options_with_http_info(vbasoftware_database)

```ruby
begin
  # List Reenrollment Family Options
  data, status_code, headers = api_instance.list_reenrollment_family_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_reenrollment_family_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_benefits

> <StringStaticOptionListVBAResponse> list_subscriber_benefits(vbasoftware_database, subscriber_id)

List Subscriber Benefits

List of all Benefits for the given Subscriber ID

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # List Subscriber Benefits
  result = api_instance.list_subscriber_benefits(vbasoftware_database, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_subscriber_benefits: #{e}"
end
```

#### Using the list_subscriber_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_subscriber_benefits_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # List Subscriber Benefits
  data, status_code, headers = api_instance.list_subscriber_benefits_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_subscriber_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscribers

> <SubscribersListVBAResponse> list_subscribers(vbasoftware_database, opts)

List Subscribers

Lists all Subscribers

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Subscribers
  result = api_instance.list_subscribers(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_subscribers: #{e}"
end
```

#### Using the list_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscribersListVBAResponse>, Integer, Hash)> list_subscribers_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Subscribers
  data, status_code, headers = api_instance.list_subscribers_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscribersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->list_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscribersListVBAResponse**](SubscribersListVBAResponse.md)

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
enrollment_disenroll = Vba::EnrollmentDisenroll.new({user_id: 'user_id_example', subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', group_coverage_start: Time.now, start_date: Time.now, disenroll_date: Time.now, subscriber: false, reason_id: 37, disenroll_family: 37, terminate_auth: false, disenroll_future: 37}) # EnrollmentDisenroll | 

begin
  # Member Disenroll
  result = api_instance.member_disenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_disenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->member_disenroll: #{e}"
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
  puts "Error when calling SubscribersApi->member_disenroll_with_http_info: #{e}"
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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
enrollment_reenroll = Vba::EnrollmentReenroll.new({user_id: 'user_id_example'}) # EnrollmentReenroll | 

begin
  # Member Re-enroll
  result = api_instance.member_reenroll(vbasoftware_database, subscriber_id, member_seq, enrollment_reenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->member_reenroll: #{e}"
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
  puts "Error when calling SubscribersApi->member_reenroll_with_http_info: #{e}"
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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
add_enrollment_request = Vba::AddEnrollmentRequest.new({requesting_user_id: 'requesting_user_id_example'}) # AddEnrollmentRequest | 

begin
  # Subscriber Add Enrollment
  api_instance.subscriber_add_enrollment(vbasoftware_database, subscriber_id, add_enrollment_request)
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->subscriber_add_enrollment: #{e}"
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
  puts "Error when calling SubscribersApi->subscriber_add_enrollment_with_http_info: #{e}"
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


## update_batch_subscribers

> <MultiCodeResponseListVBAResponse> update_batch_subscribers(vbasoftware_database, subscribers)

Create or Update Batch Subscribers

Create or Update multiple Subscribers at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscribers = [Vba::Subscribers.new] # Array<Subscribers> | 

begin
  # Create or Update Batch Subscribers
  result = api_instance.update_batch_subscribers(vbasoftware_database, subscribers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->update_batch_subscribers: #{e}"
end
```

#### Using the update_batch_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscribers_with_http_info(vbasoftware_database, subscribers)

```ruby
begin
  # Create or Update Batch Subscribers
  data, status_code, headers = api_instance.update_batch_subscribers_with_http_info(vbasoftware_database, subscribers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->update_batch_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscribers** | [**Array&lt;Subscribers&gt;**](Subscribers.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscribers

> <SubscribersVBAResponse> update_subscribers(vbasoftware_database, subscriber_id, subscribers)

Update Subscribers

Updates a specific Subscribers.

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

api_instance = Vba::SubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscribers = Vba::Subscribers.new # Subscribers | 

begin
  # Update Subscribers
  result = api_instance.update_subscribers(vbasoftware_database, subscriber_id, subscribers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->update_subscribers: #{e}"
end
```

#### Using the update_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscribersVBAResponse>, Integer, Hash)> update_subscribers_with_http_info(vbasoftware_database, subscriber_id, subscribers)

```ruby
begin
  # Update Subscribers
  data, status_code, headers = api_instance.update_subscribers_with_http_info(vbasoftware_database, subscriber_id, subscribers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscribersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscribersApi->update_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscribers** | [**Subscribers**](Subscribers.md) |  |  |

### Return type

[**SubscribersVBAResponse**](SubscribersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

