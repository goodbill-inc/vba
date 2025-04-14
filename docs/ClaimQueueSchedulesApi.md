# Vba::ClaimQueueSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_schedule**](ClaimQueueSchedulesApi.md#create_claim_queue_schedule) | **POST** /claim-queue-schedules | Create ClaimQueueSchedule |
| [**delete_claim_queue_schedule**](ClaimQueueSchedulesApi.md#delete_claim_queue_schedule) | **DELETE** /claim-queue-schedules/{claimQueueScheduleKey} | Delete ClaimQueueSchedule |
| [**get_claim_queue_schedule**](ClaimQueueSchedulesApi.md#get_claim_queue_schedule) | **GET** /claim-queue-schedules/{claimQueueScheduleKey} | Get ClaimQueueSchedule |
| [**list_claim_queue_schedule**](ClaimQueueSchedulesApi.md#list_claim_queue_schedule) | **GET** /claim-queue-schedules | List ClaimQueueSchedule |
| [**update_batch_claim_queue_schedule**](ClaimQueueSchedulesApi.md#update_batch_claim_queue_schedule) | **PUT** /claim-queue-schedules-batch | Create or Update Batch ClaimQueueSchedule |
| [**update_claim_queue_schedule**](ClaimQueueSchedulesApi.md#update_claim_queue_schedule) | **PUT** /claim-queue-schedules/{claimQueueScheduleKey} | Update ClaimQueueSchedule |


## create_claim_queue_schedule

> <ClaimQueueScheduleVBAResponse> create_claim_queue_schedule(vbasoftware_database, claim_queue_schedule)

Create ClaimQueueSchedule

Creates a new ClaimQueueSchedule

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule = Vba::ClaimQueueSchedule.new({claim_queue_schedule_key: 37}) # ClaimQueueSchedule | 

begin
  # Create ClaimQueueSchedule
  result = api_instance.create_claim_queue_schedule(vbasoftware_database, claim_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->create_claim_queue_schedule: #{e}"
end
```

#### Using the create_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleVBAResponse>, Integer, Hash)> create_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule)

```ruby
begin
  # Create ClaimQueueSchedule
  data, status_code, headers = api_instance.create_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->create_claim_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule** | [**ClaimQueueSchedule**](ClaimQueueSchedule.md) |  |  |

### Return type

[**ClaimQueueScheduleVBAResponse**](ClaimQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_schedule

> delete_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key)

Delete ClaimQueueSchedule

Deletes an ClaimQueueSchedule

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key

begin
  # Delete ClaimQueueSchedule
  api_instance.delete_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->delete_claim_queue_schedule: #{e}"
end
```

#### Using the delete_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key)

```ruby
begin
  # Delete ClaimQueueSchedule
  data, status_code, headers = api_instance.delete_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->delete_claim_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_schedule

> <ClaimQueueScheduleVBAResponse> get_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key)

Get ClaimQueueSchedule

Gets ClaimQueueSchedule

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key

begin
  # Get ClaimQueueSchedule
  result = api_instance.get_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->get_claim_queue_schedule: #{e}"
end
```

#### Using the get_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleVBAResponse>, Integer, Hash)> get_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key)

```ruby
begin
  # Get ClaimQueueSchedule
  data, status_code, headers = api_instance.get_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->get_claim_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |

### Return type

[**ClaimQueueScheduleVBAResponse**](ClaimQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_schedule

> <ClaimQueueScheduleListVBAResponse> list_claim_queue_schedule(vbasoftware_database, opts)

List ClaimQueueSchedule

Lists all ClaimQueueSchedule

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueSchedule
  result = api_instance.list_claim_queue_schedule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->list_claim_queue_schedule: #{e}"
end
```

#### Using the list_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleListVBAResponse>, Integer, Hash)> list_claim_queue_schedule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueSchedule
  data, status_code, headers = api_instance.list_claim_queue_schedule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->list_claim_queue_schedule_with_http_info: #{e}"
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

[**ClaimQueueScheduleListVBAResponse**](ClaimQueueScheduleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_schedule

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_schedule(vbasoftware_database, claim_queue_schedule)

Create or Update Batch ClaimQueueSchedule

Create or Update multiple ClaimQueueSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule = [Vba::ClaimQueueSchedule.new({claim_queue_schedule_key: 37})] # Array<ClaimQueueSchedule> | 

begin
  # Create or Update Batch ClaimQueueSchedule
  result = api_instance.update_batch_claim_queue_schedule(vbasoftware_database, claim_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->update_batch_claim_queue_schedule: #{e}"
end
```

#### Using the update_batch_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule)

```ruby
begin
  # Create or Update Batch ClaimQueueSchedule
  data, status_code, headers = api_instance.update_batch_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->update_batch_claim_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule** | [**Array&lt;ClaimQueueSchedule&gt;**](ClaimQueueSchedule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_schedule

> <ClaimQueueScheduleVBAResponse> update_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule)

Update ClaimQueueSchedule

Updates a specific ClaimQueueSchedule.

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

api_instance = Vba::ClaimQueueSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
claim_queue_schedule = Vba::ClaimQueueSchedule.new({claim_queue_schedule_key: 37}) # ClaimQueueSchedule | 

begin
  # Update ClaimQueueSchedule
  result = api_instance.update_claim_queue_schedule(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->update_claim_queue_schedule: #{e}"
end
```

#### Using the update_claim_queue_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleVBAResponse>, Integer, Hash)> update_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule)

```ruby
begin
  # Update ClaimQueueSchedule
  data, status_code, headers = api_instance.update_claim_queue_schedule_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueSchedulesApi->update_claim_queue_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **claim_queue_schedule** | [**ClaimQueueSchedule**](ClaimQueueSchedule.md) |  |  |

### Return type

[**ClaimQueueScheduleVBAResponse**](ClaimQueueScheduleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

