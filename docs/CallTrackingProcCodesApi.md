# Vba::CallTrackingProcCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#create_call_tracking_proc_codes) | **POST** /call-tracking-proc-codes | Create CallTrackingProcCodes |
| [**delete_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#delete_call_tracking_proc_codes) | **DELETE** /call-tracking-proc-codes/{CallTrackingProcCodes_Key} | Delete CallTrackingProcCodes |
| [**get_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#get_call_tracking_proc_codes) | **GET** /call-tracking-proc-codes/{CallTrackingProcCodes_Key} | Get CallTrackingProcCodes |
| [**list_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#list_call_tracking_proc_codes) | **GET** /call-tracking-proc-codes | List CallTrackingProcCodes |
| [**update_batch_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#update_batch_call_tracking_proc_codes) | **PUT** /call-tracking-proc-codes-batch | Create or Update Batch CallTrackingProcCodes |
| [**update_call_tracking_proc_codes**](CallTrackingProcCodesApi.md#update_call_tracking_proc_codes) | **PUT** /call-tracking-proc-codes/{CallTrackingProcCodes_Key} | Update CallTrackingProcCodes |


## create_call_tracking_proc_codes

> <CallTrackingProcCodesVBAResponse> create_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes)

Create CallTrackingProcCodes

Creates a new CallTrackingProcCodes

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_proc_codes = Vba::CallTrackingProcCodes.new({call_tracking_proc_codes_key: 37, call_key: 37}) # CallTrackingProcCodes | 

begin
  # Create CallTrackingProcCodes
  result = api_instance.create_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->create_call_tracking_proc_codes: #{e}"
end
```

#### Using the create_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingProcCodesVBAResponse>, Integer, Hash)> create_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes)

```ruby
begin
  # Create CallTrackingProcCodes
  data, status_code, headers = api_instance.create_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->create_call_tracking_proc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_proc_codes** | [**CallTrackingProcCodes**](CallTrackingProcCodes.md) |  |  |

### Return type

[**CallTrackingProcCodesVBAResponse**](CallTrackingProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_proc_codes

> delete_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key)

Delete CallTrackingProcCodes

Deletes an CallTrackingProcCodes

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_proc_codes_key = 56 # Integer | CallTrackingProcCodes Key

begin
  # Delete CallTrackingProcCodes
  api_instance.delete_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key)
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->delete_call_tracking_proc_codes: #{e}"
end
```

#### Using the delete_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key)

```ruby
begin
  # Delete CallTrackingProcCodes
  data, status_code, headers = api_instance.delete_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->delete_call_tracking_proc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_proc_codes_key** | **Integer** | CallTrackingProcCodes Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_proc_codes

> <CallTrackingProcCodesVBAResponse> get_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key)

Get CallTrackingProcCodes

Gets CallTrackingProcCodes

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_proc_codes_key = 56 # Integer | CallTrackingProcCodes Key

begin
  # Get CallTrackingProcCodes
  result = api_instance.get_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->get_call_tracking_proc_codes: #{e}"
end
```

#### Using the get_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingProcCodesVBAResponse>, Integer, Hash)> get_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key)

```ruby
begin
  # Get CallTrackingProcCodes
  data, status_code, headers = api_instance.get_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->get_call_tracking_proc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_proc_codes_key** | **Integer** | CallTrackingProcCodes Key |  |

### Return type

[**CallTrackingProcCodesVBAResponse**](CallTrackingProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_proc_codes

> <CallTrackingProcCodesListVBAResponse> list_call_tracking_proc_codes(vbasoftware_database, opts)

List CallTrackingProcCodes

Lists all CallTrackingProcCodes

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingProcCodes
  result = api_instance.list_call_tracking_proc_codes(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->list_call_tracking_proc_codes: #{e}"
end
```

#### Using the list_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingProcCodesListVBAResponse>, Integer, Hash)> list_call_tracking_proc_codes_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingProcCodes
  data, status_code, headers = api_instance.list_call_tracking_proc_codes_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingProcCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->list_call_tracking_proc_codes_with_http_info: #{e}"
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

[**CallTrackingProcCodesListVBAResponse**](CallTrackingProcCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_proc_codes

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes)

Create or Update Batch CallTrackingProcCodes

Create or Update multiple CallTrackingProcCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_proc_codes = [Vba::CallTrackingProcCodes.new({call_tracking_proc_codes_key: 37, call_key: 37})] # Array<CallTrackingProcCodes> | 

begin
  # Create or Update Batch CallTrackingProcCodes
  result = api_instance.update_batch_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->update_batch_call_tracking_proc_codes: #{e}"
end
```

#### Using the update_batch_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes)

```ruby
begin
  # Create or Update Batch CallTrackingProcCodes
  data, status_code, headers = api_instance.update_batch_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->update_batch_call_tracking_proc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_proc_codes** | [**Array&lt;CallTrackingProcCodes&gt;**](CallTrackingProcCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_proc_codes

> <CallTrackingProcCodesVBAResponse> update_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key, call_tracking_proc_codes)

Update CallTrackingProcCodes

Updates a specific CallTrackingProcCodes.

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

api_instance = Vba::CallTrackingProcCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_proc_codes_key = 56 # Integer | CallTrackingProcCodes Key
call_tracking_proc_codes = Vba::CallTrackingProcCodes.new({call_tracking_proc_codes_key: 37, call_key: 37}) # CallTrackingProcCodes | 

begin
  # Update CallTrackingProcCodes
  result = api_instance.update_call_tracking_proc_codes(vbasoftware_database, call_tracking_proc_codes_key, call_tracking_proc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->update_call_tracking_proc_codes: #{e}"
end
```

#### Using the update_call_tracking_proc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingProcCodesVBAResponse>, Integer, Hash)> update_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key, call_tracking_proc_codes)

```ruby
begin
  # Update CallTrackingProcCodes
  data, status_code, headers = api_instance.update_call_tracking_proc_codes_with_http_info(vbasoftware_database, call_tracking_proc_codes_key, call_tracking_proc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingProcCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingProcCodesApi->update_call_tracking_proc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_proc_codes_key** | **Integer** | CallTrackingProcCodes Key |  |
| **call_tracking_proc_codes** | [**CallTrackingProcCodes**](CallTrackingProcCodes.md) |  |  |

### Return type

[**CallTrackingProcCodesVBAResponse**](CallTrackingProcCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

