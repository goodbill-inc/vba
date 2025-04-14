# Vba::CallTrackingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking**](CallTrackingsApi.md#create_call_tracking) | **POST** /call-trackings | Create CallTracking |
| [**delete_call_tracking**](CallTrackingsApi.md#delete_call_tracking) | **DELETE** /call-trackings/{callKey} | Delete CallTracking |
| [**get_call_tracking**](CallTrackingsApi.md#get_call_tracking) | **GET** /call-trackings/{callKey} | Get CallTracking |
| [**list_call_tracking**](CallTrackingsApi.md#list_call_tracking) | **GET** /call-trackings | List CallTracking |
| [**update_batch_call_tracking**](CallTrackingsApi.md#update_batch_call_tracking) | **PUT** /call-trackings-batch | Create or Update Batch CallTracking |
| [**update_call_tracking**](CallTrackingsApi.md#update_call_tracking) | **PUT** /call-trackings/{callKey} | Update CallTracking |


## create_call_tracking

> <CallTrackingVBAResponse> create_call_tracking(vbasoftware_database, call_tracking)

Create CallTracking

Creates a new CallTracking

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking = Vba::CallTracking.new({call_key: 37}) # CallTracking | 

begin
  # Create CallTracking
  result = api_instance.create_call_tracking(vbasoftware_database, call_tracking)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->create_call_tracking: #{e}"
end
```

#### Using the create_call_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingVBAResponse>, Integer, Hash)> create_call_tracking_with_http_info(vbasoftware_database, call_tracking)

```ruby
begin
  # Create CallTracking
  data, status_code, headers = api_instance.create_call_tracking_with_http_info(vbasoftware_database, call_tracking)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->create_call_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking** | [**CallTracking**](CallTracking.md) |  |  |

### Return type

[**CallTrackingVBAResponse**](CallTrackingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking

> delete_call_tracking(vbasoftware_database, call_key)

Delete CallTracking

Deletes an CallTracking

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key

begin
  # Delete CallTracking
  api_instance.delete_call_tracking(vbasoftware_database, call_key)
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->delete_call_tracking: #{e}"
end
```

#### Using the delete_call_tracking_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_with_http_info(vbasoftware_database, call_key)

```ruby
begin
  # Delete CallTracking
  data, status_code, headers = api_instance.delete_call_tracking_with_http_info(vbasoftware_database, call_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->delete_call_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking

> <CallTrackingVBAResponse> get_call_tracking(vbasoftware_database, call_key)

Get CallTracking

Gets CallTracking

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key

begin
  # Get CallTracking
  result = api_instance.get_call_tracking(vbasoftware_database, call_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->get_call_tracking: #{e}"
end
```

#### Using the get_call_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingVBAResponse>, Integer, Hash)> get_call_tracking_with_http_info(vbasoftware_database, call_key)

```ruby
begin
  # Get CallTracking
  data, status_code, headers = api_instance.get_call_tracking_with_http_info(vbasoftware_database, call_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->get_call_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |

### Return type

[**CallTrackingVBAResponse**](CallTrackingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking

> <CallTrackingListVBAResponse> list_call_tracking(vbasoftware_database, opts)

List CallTracking

Lists all CallTracking

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTracking
  result = api_instance.list_call_tracking(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->list_call_tracking: #{e}"
end
```

#### Using the list_call_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingListVBAResponse>, Integer, Hash)> list_call_tracking_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTracking
  data, status_code, headers = api_instance.list_call_tracking_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->list_call_tracking_with_http_info: #{e}"
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

[**CallTrackingListVBAResponse**](CallTrackingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking(vbasoftware_database, call_tracking)

Create or Update Batch CallTracking

Create or Update multiple CallTracking at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking = [Vba::CallTracking.new({call_key: 37})] # Array<CallTracking> | 

begin
  # Create or Update Batch CallTracking
  result = api_instance.update_batch_call_tracking(vbasoftware_database, call_tracking)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->update_batch_call_tracking: #{e}"
end
```

#### Using the update_batch_call_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_with_http_info(vbasoftware_database, call_tracking)

```ruby
begin
  # Create or Update Batch CallTracking
  data, status_code, headers = api_instance.update_batch_call_tracking_with_http_info(vbasoftware_database, call_tracking)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->update_batch_call_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking** | [**Array&lt;CallTracking&gt;**](CallTracking.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking

> <CallTrackingVBAResponse> update_call_tracking(vbasoftware_database, call_key, call_tracking)

Update CallTracking

Updates a specific CallTracking.

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

api_instance = Vba::CallTrackingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_key = 56 # Integer | Call Key
call_tracking = Vba::CallTracking.new({call_key: 37}) # CallTracking | 

begin
  # Update CallTracking
  result = api_instance.update_call_tracking(vbasoftware_database, call_key, call_tracking)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->update_call_tracking: #{e}"
end
```

#### Using the update_call_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingVBAResponse>, Integer, Hash)> update_call_tracking_with_http_info(vbasoftware_database, call_key, call_tracking)

```ruby
begin
  # Update CallTracking
  data, status_code, headers = api_instance.update_call_tracking_with_http_info(vbasoftware_database, call_key, call_tracking)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingsApi->update_call_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_key** | **Integer** | Call Key |  |
| **call_tracking** | [**CallTracking**](CallTracking.md) |  |  |

### Return type

[**CallTrackingVBAResponse**](CallTrackingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

