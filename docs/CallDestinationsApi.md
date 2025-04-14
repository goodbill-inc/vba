# Vba::CallDestinationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_call_destination**](CallDestinationsApi.md#create_call_tracking_call_destination) | **POST** /call-destinations | Create CallTrackingCallDestination |
| [**delete_call_tracking_call_destination**](CallDestinationsApi.md#delete_call_tracking_call_destination) | **DELETE** /call-destinations/{callDestination} | Delete CallTrackingCallDestination |
| [**get_call_tracking_call_destination**](CallDestinationsApi.md#get_call_tracking_call_destination) | **GET** /call-destinations/{callDestination} | Get CallTrackingCallDestination |
| [**list_call_tracking_call_destination**](CallDestinationsApi.md#list_call_tracking_call_destination) | **GET** /call-destinations | List CallTrackingCallDestination |
| [**update_batch_call_tracking_call_destination**](CallDestinationsApi.md#update_batch_call_tracking_call_destination) | **PUT** /call-destinations-batch | Create or Update Batch CallTrackingCallDestination |
| [**update_call_tracking_call_destination**](CallDestinationsApi.md#update_call_tracking_call_destination) | **PUT** /call-destinations/{callDestination} | Update CallTrackingCallDestination |


## create_call_tracking_call_destination

> <CallTrackingCallDestinationVBAResponse> create_call_tracking_call_destination(vbasoftware_database, call_tracking_call_destination)

Create CallTrackingCallDestination

Creates a new CallTrackingCallDestination

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_destination = Vba::CallTrackingCallDestination.new({call_destination: 'call_destination_example', default_destination: false}) # CallTrackingCallDestination | 

begin
  # Create CallTrackingCallDestination
  result = api_instance.create_call_tracking_call_destination(vbasoftware_database, call_tracking_call_destination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->create_call_tracking_call_destination: #{e}"
end
```

#### Using the create_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallDestinationVBAResponse>, Integer, Hash)> create_call_tracking_call_destination_with_http_info(vbasoftware_database, call_tracking_call_destination)

```ruby
begin
  # Create CallTrackingCallDestination
  data, status_code, headers = api_instance.create_call_tracking_call_destination_with_http_info(vbasoftware_database, call_tracking_call_destination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallDestinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->create_call_tracking_call_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_destination** | [**CallTrackingCallDestination**](CallTrackingCallDestination.md) |  |  |

### Return type

[**CallTrackingCallDestinationVBAResponse**](CallTrackingCallDestinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_call_destination

> delete_call_tracking_call_destination(vbasoftware_database, call_destination)

Delete CallTrackingCallDestination

Deletes an CallTrackingCallDestination

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_destination = 'call_destination_example' # String | Call Destination

begin
  # Delete CallTrackingCallDestination
  api_instance.delete_call_tracking_call_destination(vbasoftware_database, call_destination)
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->delete_call_tracking_call_destination: #{e}"
end
```

#### Using the delete_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination)

```ruby
begin
  # Delete CallTrackingCallDestination
  data, status_code, headers = api_instance.delete_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->delete_call_tracking_call_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_destination** | **String** | Call Destination |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_call_destination

> <CallTrackingCallDestinationVBAResponse> get_call_tracking_call_destination(vbasoftware_database, call_destination)

Get CallTrackingCallDestination

Gets CallTrackingCallDestination

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_destination = 'call_destination_example' # String | Call Destination

begin
  # Get CallTrackingCallDestination
  result = api_instance.get_call_tracking_call_destination(vbasoftware_database, call_destination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->get_call_tracking_call_destination: #{e}"
end
```

#### Using the get_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallDestinationVBAResponse>, Integer, Hash)> get_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination)

```ruby
begin
  # Get CallTrackingCallDestination
  data, status_code, headers = api_instance.get_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallDestinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->get_call_tracking_call_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_destination** | **String** | Call Destination |  |

### Return type

[**CallTrackingCallDestinationVBAResponse**](CallTrackingCallDestinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_call_destination

> <CallTrackingCallDestinationListVBAResponse> list_call_tracking_call_destination(vbasoftware_database, opts)

List CallTrackingCallDestination

Lists all CallTrackingCallDestination

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingCallDestination
  result = api_instance.list_call_tracking_call_destination(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->list_call_tracking_call_destination: #{e}"
end
```

#### Using the list_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallDestinationListVBAResponse>, Integer, Hash)> list_call_tracking_call_destination_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingCallDestination
  data, status_code, headers = api_instance.list_call_tracking_call_destination_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallDestinationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->list_call_tracking_call_destination_with_http_info: #{e}"
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

[**CallTrackingCallDestinationListVBAResponse**](CallTrackingCallDestinationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_call_destination

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_call_destination(vbasoftware_database, call_tracking_call_destination)

Create or Update Batch CallTrackingCallDestination

Create or Update multiple CallTrackingCallDestination at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_destination = [Vba::CallTrackingCallDestination.new({call_destination: 'call_destination_example', default_destination: false})] # Array<CallTrackingCallDestination> | 

begin
  # Create or Update Batch CallTrackingCallDestination
  result = api_instance.update_batch_call_tracking_call_destination(vbasoftware_database, call_tracking_call_destination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->update_batch_call_tracking_call_destination: #{e}"
end
```

#### Using the update_batch_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_call_destination_with_http_info(vbasoftware_database, call_tracking_call_destination)

```ruby
begin
  # Create or Update Batch CallTrackingCallDestination
  data, status_code, headers = api_instance.update_batch_call_tracking_call_destination_with_http_info(vbasoftware_database, call_tracking_call_destination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->update_batch_call_tracking_call_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_destination** | [**Array&lt;CallTrackingCallDestination&gt;**](CallTrackingCallDestination.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_call_destination

> <CallTrackingCallDestinationVBAResponse> update_call_tracking_call_destination(vbasoftware_database, call_destination, call_tracking_call_destination)

Update CallTrackingCallDestination

Updates a specific CallTrackingCallDestination.

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

api_instance = Vba::CallDestinationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_destination = 'call_destination_example' # String | Call Destination
call_tracking_call_destination = Vba::CallTrackingCallDestination.new({call_destination: 'call_destination_example', default_destination: false}) # CallTrackingCallDestination | 

begin
  # Update CallTrackingCallDestination
  result = api_instance.update_call_tracking_call_destination(vbasoftware_database, call_destination, call_tracking_call_destination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->update_call_tracking_call_destination: #{e}"
end
```

#### Using the update_call_tracking_call_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallDestinationVBAResponse>, Integer, Hash)> update_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination, call_tracking_call_destination)

```ruby
begin
  # Update CallTrackingCallDestination
  data, status_code, headers = api_instance.update_call_tracking_call_destination_with_http_info(vbasoftware_database, call_destination, call_tracking_call_destination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallDestinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallDestinationsApi->update_call_tracking_call_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_destination** | **String** | Call Destination |  |
| **call_tracking_call_destination** | [**CallTrackingCallDestination**](CallTrackingCallDestination.md) |  |  |

### Return type

[**CallTrackingCallDestinationVBAResponse**](CallTrackingCallDestinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

