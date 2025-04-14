# Vba::PaymentSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_schedule**](PaymentSchedulesApi.md#create_payment_schedule) | **POST** /payment-schedules | Create PaymentSchedule |
| [**delete_payment_schedule**](PaymentSchedulesApi.md#delete_payment_schedule) | **DELETE** /payment-schedules/{paymentSchedule} | Delete PaymentSchedule |
| [**get_payment_schedule**](PaymentSchedulesApi.md#get_payment_schedule) | **GET** /payment-schedules/{paymentSchedule} | Get PaymentSchedule |
| [**list_payment_schedule**](PaymentSchedulesApi.md#list_payment_schedule) | **GET** /payment-schedules | List PaymentSchedule |
| [**update_batch_payment_schedule**](PaymentSchedulesApi.md#update_batch_payment_schedule) | **PUT** /payment-schedules-batch | Create or Update Batch PaymentSchedule |
| [**update_payment_schedule**](PaymentSchedulesApi.md#update_payment_schedule) | **PUT** /payment-schedules/{paymentSchedule} | Update PaymentSchedule |


## create_payment_schedule

> <PaymentScheduleVBAResponse> create_payment_schedule(vbasoftware_database, payment_schedule)

Create PaymentSchedule

Creates a new PaymentSchedule

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_schedule = Vba::PaymentSchedule.new({payment_schedule: 'payment_schedule_example'}) # PaymentSchedule | 

begin
  # Create PaymentSchedule
  result = api_instance.create_payment_schedule(vbasoftware_database, payment_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->create_payment_schedule: #{e}"
end
```

#### Using the create_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentScheduleVBAResponse>, Integer, Hash)> create_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)

```ruby
begin
  # Create PaymentSchedule
  data, status_code, headers = api_instance.create_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->create_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_schedule** | [**PaymentSchedule**](PaymentSchedule.md) |  |  |

### Return type

[**PaymentScheduleVBAResponse**](PaymentScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payment_schedule

> delete_payment_schedule(vbasoftware_database, payment_schedule)

Delete PaymentSchedule

Deletes an PaymentSchedule

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_schedule = 'payment_schedule_example' # String | Payment Schedule

begin
  # Delete PaymentSchedule
  api_instance.delete_payment_schedule(vbasoftware_database, payment_schedule)
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->delete_payment_schedule: #{e}"
end
```

#### Using the delete_payment_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)

```ruby
begin
  # Delete PaymentSchedule
  data, status_code, headers = api_instance.delete_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->delete_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_schedule** | **String** | Payment Schedule |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payment_schedule

> <PaymentScheduleVBAResponse> get_payment_schedule(vbasoftware_database, payment_schedule)

Get PaymentSchedule

Gets PaymentSchedule

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_schedule = 'payment_schedule_example' # String | Payment Schedule

begin
  # Get PaymentSchedule
  result = api_instance.get_payment_schedule(vbasoftware_database, payment_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->get_payment_schedule: #{e}"
end
```

#### Using the get_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentScheduleVBAResponse>, Integer, Hash)> get_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)

```ruby
begin
  # Get PaymentSchedule
  data, status_code, headers = api_instance.get_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->get_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_schedule** | **String** | Payment Schedule |  |

### Return type

[**PaymentScheduleVBAResponse**](PaymentScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payment_schedule

> <PaymentScheduleListVBAResponse> list_payment_schedule(vbasoftware_database, opts)

List PaymentSchedule

Lists all PaymentSchedule

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PaymentSchedule
  result = api_instance.list_payment_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payment_schedule: #{e}"
end
```

#### Using the list_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentScheduleListVBAResponse>, Integer, Hash)> list_payment_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PaymentSchedule
  data, status_code, headers = api_instance.list_payment_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payment_schedule_with_http_info: #{e}"
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

[**PaymentScheduleListVBAResponse**](PaymentScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payment_schedule

> <MultiCodeResponseListVBAResponse> update_batch_payment_schedule(vbasoftware_database, payment_schedule)

Create or Update Batch PaymentSchedule

Create or Update multiple PaymentSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_schedule = [Vba::PaymentSchedule.new({payment_schedule: 'payment_schedule_example'})] # Array<PaymentSchedule> | 

begin
  # Create or Update Batch PaymentSchedule
  result = api_instance.update_batch_payment_schedule(vbasoftware_database, payment_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->update_batch_payment_schedule: #{e}"
end
```

#### Using the update_batch_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)

```ruby
begin
  # Create or Update Batch PaymentSchedule
  data, status_code, headers = api_instance.update_batch_payment_schedule_with_http_info(vbasoftware_database, payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->update_batch_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_schedule** | [**Array&lt;PaymentSchedule&gt;**](PaymentSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payment_schedule

> <PaymentScheduleVBAResponse> update_payment_schedule(vbasoftware_database, payment_schedule, payment_schedule2)

Update PaymentSchedule

Updates a specific PaymentSchedule.

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

api_instance = Vba::PaymentSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_schedule = 'payment_schedule_example' # String | Payment Schedule
payment_schedule2 = Vba::PaymentSchedule.new({payment_schedule: 'payment_schedule_example'}) # PaymentSchedule | 

begin
  # Update PaymentSchedule
  result = api_instance.update_payment_schedule(vbasoftware_database, payment_schedule, payment_schedule2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->update_payment_schedule: #{e}"
end
```

#### Using the update_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentScheduleVBAResponse>, Integer, Hash)> update_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, payment_schedule2)

```ruby
begin
  # Update PaymentSchedule
  data, status_code, headers = api_instance.update_payment_schedule_with_http_info(vbasoftware_database, payment_schedule, payment_schedule2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentSchedulesApi->update_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_schedule** | **String** | Payment Schedule |  |
| **payment_schedule2** | [**PaymentSchedule**](PaymentSchedule.md) |  |  |

### Return type

[**PaymentScheduleVBAResponse**](PaymentScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

