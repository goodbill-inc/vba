# Vba::CallStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_call_status**](CallStatusesApi.md#create_call_tracking_call_status) | **POST** /call-statuses | Create CallTrackingCallStatus |
| [**delete_call_tracking_call_status**](CallStatusesApi.md#delete_call_tracking_call_status) | **DELETE** /call-statuses/{callStatus} | Delete CallTrackingCallStatus |
| [**get_call_tracking_call_status**](CallStatusesApi.md#get_call_tracking_call_status) | **GET** /call-statuses/{callStatus} | Get CallTrackingCallStatus |
| [**list_call_tracking_call_status**](CallStatusesApi.md#list_call_tracking_call_status) | **GET** /call-statuses | List CallTrackingCallStatus |
| [**update_batch_call_tracking_call_status**](CallStatusesApi.md#update_batch_call_tracking_call_status) | **PUT** /call-statuses-batch | Create or Update Batch CallTrackingCallStatus |
| [**update_call_tracking_call_status**](CallStatusesApi.md#update_call_tracking_call_status) | **PUT** /call-statuses/{callStatus} | Update CallTrackingCallStatus |


## create_call_tracking_call_status

> <CallTrackingCallStatusVBAResponse> create_call_tracking_call_status(vbasoftware_database, call_tracking_call_status)

Create CallTrackingCallStatus

Creates a new CallTrackingCallStatus

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_status = Vba::CallTrackingCallStatus.new({call_status: 'call_status_example', default_status: false}) # CallTrackingCallStatus | 

begin
  # Create CallTrackingCallStatus
  result = api_instance.create_call_tracking_call_status(vbasoftware_database, call_tracking_call_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->create_call_tracking_call_status: #{e}"
end
```

#### Using the create_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallStatusVBAResponse>, Integer, Hash)> create_call_tracking_call_status_with_http_info(vbasoftware_database, call_tracking_call_status)

```ruby
begin
  # Create CallTrackingCallStatus
  data, status_code, headers = api_instance.create_call_tracking_call_status_with_http_info(vbasoftware_database, call_tracking_call_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->create_call_tracking_call_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_status** | [**CallTrackingCallStatus**](CallTrackingCallStatus.md) |  |  |

### Return type

[**CallTrackingCallStatusVBAResponse**](CallTrackingCallStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_call_status

> delete_call_tracking_call_status(vbasoftware_database, call_status)

Delete CallTrackingCallStatus

Deletes an CallTrackingCallStatus

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_status = 'call_status_example' # String | Call Status

begin
  # Delete CallTrackingCallStatus
  api_instance.delete_call_tracking_call_status(vbasoftware_database, call_status)
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->delete_call_tracking_call_status: #{e}"
end
```

#### Using the delete_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_call_status_with_http_info(vbasoftware_database, call_status)

```ruby
begin
  # Delete CallTrackingCallStatus
  data, status_code, headers = api_instance.delete_call_tracking_call_status_with_http_info(vbasoftware_database, call_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->delete_call_tracking_call_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_status** | **String** | Call Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_call_status

> <CallTrackingCallStatusVBAResponse> get_call_tracking_call_status(vbasoftware_database, call_status)

Get CallTrackingCallStatus

Gets CallTrackingCallStatus

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_status = 'call_status_example' # String | Call Status

begin
  # Get CallTrackingCallStatus
  result = api_instance.get_call_tracking_call_status(vbasoftware_database, call_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->get_call_tracking_call_status: #{e}"
end
```

#### Using the get_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallStatusVBAResponse>, Integer, Hash)> get_call_tracking_call_status_with_http_info(vbasoftware_database, call_status)

```ruby
begin
  # Get CallTrackingCallStatus
  data, status_code, headers = api_instance.get_call_tracking_call_status_with_http_info(vbasoftware_database, call_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->get_call_tracking_call_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_status** | **String** | Call Status |  |

### Return type

[**CallTrackingCallStatusVBAResponse**](CallTrackingCallStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_call_status

> <CallTrackingCallStatusListVBAResponse> list_call_tracking_call_status(vbasoftware_database, opts)

List CallTrackingCallStatus

Lists all CallTrackingCallStatus

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingCallStatus
  result = api_instance.list_call_tracking_call_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->list_call_tracking_call_status: #{e}"
end
```

#### Using the list_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallStatusListVBAResponse>, Integer, Hash)> list_call_tracking_call_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingCallStatus
  data, status_code, headers = api_instance.list_call_tracking_call_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->list_call_tracking_call_status_with_http_info: #{e}"
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

[**CallTrackingCallStatusListVBAResponse**](CallTrackingCallStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_call_status

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_call_status(vbasoftware_database, call_tracking_call_status)

Create or Update Batch CallTrackingCallStatus

Create or Update multiple CallTrackingCallStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_status = [Vba::CallTrackingCallStatus.new({call_status: 'call_status_example', default_status: false})] # Array<CallTrackingCallStatus> | 

begin
  # Create or Update Batch CallTrackingCallStatus
  result = api_instance.update_batch_call_tracking_call_status(vbasoftware_database, call_tracking_call_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->update_batch_call_tracking_call_status: #{e}"
end
```

#### Using the update_batch_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_call_status_with_http_info(vbasoftware_database, call_tracking_call_status)

```ruby
begin
  # Create or Update Batch CallTrackingCallStatus
  data, status_code, headers = api_instance.update_batch_call_tracking_call_status_with_http_info(vbasoftware_database, call_tracking_call_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->update_batch_call_tracking_call_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_status** | [**Array&lt;CallTrackingCallStatus&gt;**](CallTrackingCallStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_call_status

> <CallTrackingCallStatusVBAResponse> update_call_tracking_call_status(vbasoftware_database, call_status, call_tracking_call_status)

Update CallTrackingCallStatus

Updates a specific CallTrackingCallStatus.

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

api_instance = Vba::CallStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_status = 'call_status_example' # String | Call Status
call_tracking_call_status = Vba::CallTrackingCallStatus.new({call_status: 'call_status_example', default_status: false}) # CallTrackingCallStatus | 

begin
  # Update CallTrackingCallStatus
  result = api_instance.update_call_tracking_call_status(vbasoftware_database, call_status, call_tracking_call_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->update_call_tracking_call_status: #{e}"
end
```

#### Using the update_call_tracking_call_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallStatusVBAResponse>, Integer, Hash)> update_call_tracking_call_status_with_http_info(vbasoftware_database, call_status, call_tracking_call_status)

```ruby
begin
  # Update CallTrackingCallStatus
  data, status_code, headers = api_instance.update_call_tracking_call_status_with_http_info(vbasoftware_database, call_status, call_tracking_call_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallStatusesApi->update_call_tracking_call_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_status** | **String** | Call Status |  |
| **call_tracking_call_status** | [**CallTrackingCallStatus**](CallTrackingCallStatus.md) |  |  |

### Return type

[**CallTrackingCallStatusVBAResponse**](CallTrackingCallStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

