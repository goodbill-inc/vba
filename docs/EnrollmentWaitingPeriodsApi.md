# Vba::EnrollmentWaitingPeriodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#create_enrollment_waiting_period) | **POST** /enrollment-waiting-periods | Create EnrollmentWaitingPeriod |
| [**delete_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#delete_enrollment_waiting_period) | **DELETE** /enrollment-waiting-periods/{enrollmentWaitingPeriodKey} | Delete EnrollmentWaitingPeriod |
| [**get_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#get_enrollment_waiting_period) | **GET** /enrollment-waiting-periods/{enrollmentWaitingPeriodKey} | Get EnrollmentWaitingPeriod |
| [**list_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#list_enrollment_waiting_period) | **GET** /enrollment-waiting-periods | List EnrollmentWaitingPeriod |
| [**update_batch_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#update_batch_enrollment_waiting_period) | **PUT** /enrollment-waiting-periods-batch | Create or Update Batch EnrollmentWaitingPeriod |
| [**update_enrollment_waiting_period**](EnrollmentWaitingPeriodsApi.md#update_enrollment_waiting_period) | **PUT** /enrollment-waiting-periods/{enrollmentWaitingPeriodKey} | Update EnrollmentWaitingPeriod |


## create_enrollment_waiting_period

> <EnrollmentWaitingPeriodVBAResponse> create_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period)

Create EnrollmentWaitingPeriod

Creates a new EnrollmentWaitingPeriod

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period = Vba::EnrollmentWaitingPeriod.new({enrollment_waiting_period_key: 37, include_hire_date: false}) # EnrollmentWaitingPeriod | 

begin
  # Create EnrollmentWaitingPeriod
  result = api_instance.create_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->create_enrollment_waiting_period: #{e}"
end
```

#### Using the create_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodVBAResponse>, Integer, Hash)> create_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period)

```ruby
begin
  # Create EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.create_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->create_enrollment_waiting_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period** | [**EnrollmentWaitingPeriod**](EnrollmentWaitingPeriod.md) |  |  |

### Return type

[**EnrollmentWaitingPeriodVBAResponse**](EnrollmentWaitingPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_enrollment_waiting_period

> delete_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key)

Delete EnrollmentWaitingPeriod

Deletes an EnrollmentWaitingPeriod

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_key = 56 # Integer | EnrollmentWaitingPeriod Key

begin
  # Delete EnrollmentWaitingPeriod
  api_instance.delete_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key)
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->delete_enrollment_waiting_period: #{e}"
end
```

#### Using the delete_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key)

```ruby
begin
  # Delete EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.delete_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->delete_enrollment_waiting_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_key** | **Integer** | EnrollmentWaitingPeriod Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_enrollment_waiting_period

> <EnrollmentWaitingPeriodVBAResponse> get_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key)

Get EnrollmentWaitingPeriod

Gets EnrollmentWaitingPeriod

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_key = 56 # Integer | EnrollmentWaitingPeriod Key

begin
  # Get EnrollmentWaitingPeriod
  result = api_instance.get_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->get_enrollment_waiting_period: #{e}"
end
```

#### Using the get_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodVBAResponse>, Integer, Hash)> get_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key)

```ruby
begin
  # Get EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.get_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->get_enrollment_waiting_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_key** | **Integer** | EnrollmentWaitingPeriod Key |  |

### Return type

[**EnrollmentWaitingPeriodVBAResponse**](EnrollmentWaitingPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_enrollment_waiting_period

> <EnrollmentWaitingPeriodListVBAResponse> list_enrollment_waiting_period(vbasoftware_database, opts)

List EnrollmentWaitingPeriod

Lists all EnrollmentWaitingPeriod

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EnrollmentWaitingPeriod
  result = api_instance.list_enrollment_waiting_period(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->list_enrollment_waiting_period: #{e}"
end
```

#### Using the list_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodListVBAResponse>, Integer, Hash)> list_enrollment_waiting_period_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.list_enrollment_waiting_period_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->list_enrollment_waiting_period_with_http_info: #{e}"
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

[**EnrollmentWaitingPeriodListVBAResponse**](EnrollmentWaitingPeriodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_enrollment_waiting_period

> <MultiCodeResponseListVBAResponse> update_batch_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period)

Create or Update Batch EnrollmentWaitingPeriod

Create or Update multiple EnrollmentWaitingPeriod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period = [Vba::EnrollmentWaitingPeriod.new({enrollment_waiting_period_key: 37, include_hire_date: false})] # Array<EnrollmentWaitingPeriod> | 

begin
  # Create or Update Batch EnrollmentWaitingPeriod
  result = api_instance.update_batch_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->update_batch_enrollment_waiting_period: #{e}"
end
```

#### Using the update_batch_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period)

```ruby
begin
  # Create or Update Batch EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.update_batch_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->update_batch_enrollment_waiting_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period** | [**Array&lt;EnrollmentWaitingPeriod&gt;**](EnrollmentWaitingPeriod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_enrollment_waiting_period

> <EnrollmentWaitingPeriodVBAResponse> update_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key, enrollment_waiting_period)

Update EnrollmentWaitingPeriod

Updates a specific EnrollmentWaitingPeriod.

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

api_instance = Vba::EnrollmentWaitingPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_waiting_period_key = 56 # Integer | EnrollmentWaitingPeriod Key
enrollment_waiting_period = Vba::EnrollmentWaitingPeriod.new({enrollment_waiting_period_key: 37, include_hire_date: false}) # EnrollmentWaitingPeriod | 

begin
  # Update EnrollmentWaitingPeriod
  result = api_instance.update_enrollment_waiting_period(vbasoftware_database, enrollment_waiting_period_key, enrollment_waiting_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->update_enrollment_waiting_period: #{e}"
end
```

#### Using the update_enrollment_waiting_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentWaitingPeriodVBAResponse>, Integer, Hash)> update_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key, enrollment_waiting_period)

```ruby
begin
  # Update EnrollmentWaitingPeriod
  data, status_code, headers = api_instance.update_enrollment_waiting_period_with_http_info(vbasoftware_database, enrollment_waiting_period_key, enrollment_waiting_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentWaitingPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentWaitingPeriodsApi->update_enrollment_waiting_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_waiting_period_key** | **Integer** | EnrollmentWaitingPeriod Key |  |
| **enrollment_waiting_period** | [**EnrollmentWaitingPeriod**](EnrollmentWaitingPeriod.md) |  |  |

### Return type

[**EnrollmentWaitingPeriodVBAResponse**](EnrollmentWaitingPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

