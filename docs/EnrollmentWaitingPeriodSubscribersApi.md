# Vba::EnrollmentWaitingPeriodSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#create_enrollment_waiting_period_subscriber) | **POST** /enrollment-waiting-period-subscribers | Create EnrollmentWaitingPeriodSubscriber |
| [**delete_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#delete_enrollment_waiting_period_subscriber) | **DELETE** /enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey} | Delete EnrollmentWaitingPeriodSubscriber |
| [**get_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#get_enrollment_waiting_period_subscriber) | **GET** /enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey} | Get EnrollmentWaitingPeriodSubscriber |
| [**list_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#list_enrollment_waiting_period_subscriber) | **GET** /enrollment-waiting-period-subscribers | List EnrollmentWaitingPeriodSubscriber |
| [**update_batch_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#update_batch_enrollment_waiting_period_subscriber) | **PUT** /enrollment-waiting-period-subscribers-batch | Create or Update Batch EnrollmentWaitingPeriodSubscriber |
| [**update_enrollment_waiting_period_subscriber**](EnrollmentWaitingPeriodSubscribersApi.md#update_enrollment_waiting_period_subscriber) | **PUT** /enrollment-waiting-period-subscribers/{enrollmentWaitingPeriodSubscriberKey} | Update EnrollmentWaitingPeriodSubscriber |


## create_enrollment_waiting_period_subscriber

> <EnrollmentWaitingPeriodSubscriberVBAResponse> create_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber)

Create EnrollmentWaitingPeriodSubscriber

Creates a new EnrollmentWaitingPeriodSubscriber

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_subscriber = Vba::EnrollmentWaitingPeriodSubscriber.new({enrollment_waiting_period_subscriber_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', subscriber_id: 'subscriber_id_example'}) # EnrollmentWaitingPeriodSubscriber | 

begin
  # Create EnrollmentWaitingPeriodSubscriber
  result = api_instance.create_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->create_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the create_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodSubscriberVBAResponse>, Integer, Hash)> create_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber)

```ruby
begin
  # Create EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.create_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->create_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_subscriber** | [**EnrollmentWaitingPeriodSubscriber**](EnrollmentWaitingPeriodSubscriber.md) |  |  |

### Return type

[**EnrollmentWaitingPeriodSubscriberVBAResponse**](EnrollmentWaitingPeriodSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_enrollment_waiting_period_subscriber

> delete_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key)

Delete EnrollmentWaitingPeriodSubscriber

Deletes an EnrollmentWaitingPeriodSubscriber

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_subscriber_key = 56 # Integer | EnrollmentWaitingPeriodSubscriber Key

begin
  # Delete EnrollmentWaitingPeriodSubscriber
  api_instance.delete_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key)
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->delete_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the delete_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key)

```ruby
begin
  # Delete EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.delete_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->delete_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_subscriber_key** | **Integer** | EnrollmentWaitingPeriodSubscriber Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_enrollment_waiting_period_subscriber

> <EnrollmentWaitingPeriodSubscriberVBAResponse> get_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key)

Get EnrollmentWaitingPeriodSubscriber

Gets EnrollmentWaitingPeriodSubscriber

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_subscriber_key = 56 # Integer | EnrollmentWaitingPeriodSubscriber Key

begin
  # Get EnrollmentWaitingPeriodSubscriber
  result = api_instance.get_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->get_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the get_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodSubscriberVBAResponse>, Integer, Hash)> get_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key)

```ruby
begin
  # Get EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.get_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->get_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_subscriber_key** | **Integer** | EnrollmentWaitingPeriodSubscriber Key |  |

### Return type

[**EnrollmentWaitingPeriodSubscriberVBAResponse**](EnrollmentWaitingPeriodSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_enrollment_waiting_period_subscriber

> <EnrollmentWaitingPeriodSubscriberListVBAResponse> list_enrollment_waiting_period_subscriber(vbasoftware_database, opts)

List EnrollmentWaitingPeriodSubscriber

Lists all EnrollmentWaitingPeriodSubscriber

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example', # String | Subscriber_ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EnrollmentWaitingPeriodSubscriber
  result = api_instance.list_enrollment_waiting_period_subscriber(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->list_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the list_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodSubscriberListVBAResponse>, Integer, Hash)> list_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.list_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->list_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber_ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**EnrollmentWaitingPeriodSubscriberListVBAResponse**](EnrollmentWaitingPeriodSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_enrollment_waiting_period_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber)

Create or Update Batch EnrollmentWaitingPeriodSubscriber

Create or Update multiple EnrollmentWaitingPeriodSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_subscriber = [Vba::EnrollmentWaitingPeriodSubscriber.new({enrollment_waiting_period_subscriber_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', subscriber_id: 'subscriber_id_example'})] # Array<EnrollmentWaitingPeriodSubscriber> | 

begin
  # Create or Update Batch EnrollmentWaitingPeriodSubscriber
  result = api_instance.update_batch_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->update_batch_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the update_batch_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber)

```ruby
begin
  # Create or Update Batch EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.update_batch_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->update_batch_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_subscriber** | [**Array&lt;EnrollmentWaitingPeriodSubscriber&gt;**](EnrollmentWaitingPeriodSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_enrollment_waiting_period_subscriber

> <EnrollmentWaitingPeriodSubscriberVBAResponse> update_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber)

Update EnrollmentWaitingPeriodSubscriber

Updates a specific EnrollmentWaitingPeriodSubscriber.

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

api_instance = Vba::EnrollmentWaitingPeriodSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_subscriber_key = 56 # Integer | EnrollmentWaitingPeriodSubscriber Key
enrollment_waiting_period_subscriber = Vba::EnrollmentWaitingPeriodSubscriber.new({enrollment_waiting_period_subscriber_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', subscriber_id: 'subscriber_id_example'}) # EnrollmentWaitingPeriodSubscriber | 

begin
  # Update EnrollmentWaitingPeriodSubscriber
  result = api_instance.update_enrollment_waiting_period_subscriber(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->update_enrollment_waiting_period_subscriber: #{e}"
end
```

#### Using the update_enrollment_waiting_period_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodSubscriberVBAResponse>, Integer, Hash)> update_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber)

```ruby
begin
  # Update EnrollmentWaitingPeriodSubscriber
  data, status_code, headers = api_instance.update_enrollment_waiting_period_subscriber_with_http_info(vbasoftware_database, enrollment_waiting_period_subscriber_key, enrollment_waiting_period_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodSubscribersApi->update_enrollment_waiting_period_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_subscriber_key** | **Integer** | EnrollmentWaitingPeriodSubscriber Key |  |
| **enrollment_waiting_period_subscriber** | [**EnrollmentWaitingPeriodSubscriber**](EnrollmentWaitingPeriodSubscriber.md) |  |  |

### Return type

[**EnrollmentWaitingPeriodSubscriberVBAResponse**](EnrollmentWaitingPeriodSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

