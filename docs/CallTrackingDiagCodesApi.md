# Vba::CallTrackingDiagCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#create_call_tracking_diag_codes) | **POST** /call-tracking-diag-codes | Create CallTrackingDiagCodes |
| [**delete_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#delete_call_tracking_diag_codes) | **DELETE** /call-tracking-diag-codes/{CallTrackingDiagCodes_Key} | Delete CallTrackingDiagCodes |
| [**get_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#get_call_tracking_diag_codes) | **GET** /call-tracking-diag-codes/{CallTrackingDiagCodes_Key} | Get CallTrackingDiagCodes |
| [**list_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#list_call_tracking_diag_codes) | **GET** /call-tracking-diag-codes | List CallTrackingDiagCodes |
| [**update_batch_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#update_batch_call_tracking_diag_codes) | **PUT** /call-tracking-diag-codes-batch | Create or Update Batch CallTrackingDiagCodes |
| [**update_call_tracking_diag_codes**](CallTrackingDiagCodesApi.md#update_call_tracking_diag_codes) | **PUT** /call-tracking-diag-codes/{CallTrackingDiagCodes_Key} | Update CallTrackingDiagCodes |


## create_call_tracking_diag_codes

> <CallTrackingDiagCodesVBAResponse> create_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes)

Create CallTrackingDiagCodes

Creates a new CallTrackingDiagCodes

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_diag_codes = Vba::CallTrackingDiagCodes.new({call_tracking_diag_codes_key: 37, call_key: 37, diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now}) # CallTrackingDiagCodes | 

begin
  # Create CallTrackingDiagCodes
  result = api_instance.create_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->create_call_tracking_diag_codes: #{e}"
end
```

#### Using the create_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingDiagCodesVBAResponse>, Integer, Hash)> create_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes)

```ruby
begin
  # Create CallTrackingDiagCodes
  data, status_code, headers = api_instance.create_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->create_call_tracking_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_diag_codes** | [**CallTrackingDiagCodes**](CallTrackingDiagCodes.md) |  |  |

### Return type

[**CallTrackingDiagCodesVBAResponse**](CallTrackingDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_diag_codes

> delete_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key)

Delete CallTrackingDiagCodes

Deletes an CallTrackingDiagCodes

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_diag_codes_key = 56 # Integer | CallTrackingDiagCodes Key

begin
  # Delete CallTrackingDiagCodes
  api_instance.delete_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key)
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->delete_call_tracking_diag_codes: #{e}"
end
```

#### Using the delete_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key)

```ruby
begin
  # Delete CallTrackingDiagCodes
  data, status_code, headers = api_instance.delete_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->delete_call_tracking_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_diag_codes_key** | **Integer** | CallTrackingDiagCodes Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_diag_codes

> <CallTrackingDiagCodesVBAResponse> get_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key)

Get CallTrackingDiagCodes

Gets CallTrackingDiagCodes

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_diag_codes_key = 56 # Integer | CallTrackingDiagCodes Key

begin
  # Get CallTrackingDiagCodes
  result = api_instance.get_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->get_call_tracking_diag_codes: #{e}"
end
```

#### Using the get_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingDiagCodesVBAResponse>, Integer, Hash)> get_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key)

```ruby
begin
  # Get CallTrackingDiagCodes
  data, status_code, headers = api_instance.get_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->get_call_tracking_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_diag_codes_key** | **Integer** | CallTrackingDiagCodes Key |  |

### Return type

[**CallTrackingDiagCodesVBAResponse**](CallTrackingDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_diag_codes

> <CallTrackingDiagCodesListVBAResponse> list_call_tracking_diag_codes(vbasoftware_database, opts)

List CallTrackingDiagCodes

Lists all CallTrackingDiagCodes

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingDiagCodes
  result = api_instance.list_call_tracking_diag_codes(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->list_call_tracking_diag_codes: #{e}"
end
```

#### Using the list_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingDiagCodesListVBAResponse>, Integer, Hash)> list_call_tracking_diag_codes_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingDiagCodes
  data, status_code, headers = api_instance.list_call_tracking_diag_codes_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingDiagCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->list_call_tracking_diag_codes_with_http_info: #{e}"
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

[**CallTrackingDiagCodesListVBAResponse**](CallTrackingDiagCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_diag_codes

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes)

Create or Update Batch CallTrackingDiagCodes

Create or Update multiple CallTrackingDiagCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_diag_codes = [Vba::CallTrackingDiagCodes.new({call_tracking_diag_codes_key: 37, call_key: 37, diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now})] # Array<CallTrackingDiagCodes> | 

begin
  # Create or Update Batch CallTrackingDiagCodes
  result = api_instance.update_batch_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->update_batch_call_tracking_diag_codes: #{e}"
end
```

#### Using the update_batch_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes)

```ruby
begin
  # Create or Update Batch CallTrackingDiagCodes
  data, status_code, headers = api_instance.update_batch_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->update_batch_call_tracking_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_diag_codes** | [**Array&lt;CallTrackingDiagCodes&gt;**](CallTrackingDiagCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_diag_codes

> <CallTrackingDiagCodesVBAResponse> update_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key, call_tracking_diag_codes)

Update CallTrackingDiagCodes

Updates a specific CallTrackingDiagCodes.

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

api_instance = Vba::CallTrackingDiagCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_diag_codes_key = 56 # Integer | CallTrackingDiagCodes Key
call_tracking_diag_codes = Vba::CallTrackingDiagCodes.new({call_tracking_diag_codes_key: 37, call_key: 37, diagnostic_code: 'diagnostic_code_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now}) # CallTrackingDiagCodes | 

begin
  # Update CallTrackingDiagCodes
  result = api_instance.update_call_tracking_diag_codes(vbasoftware_database, call_tracking_diag_codes_key, call_tracking_diag_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->update_call_tracking_diag_codes: #{e}"
end
```

#### Using the update_call_tracking_diag_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingDiagCodesVBAResponse>, Integer, Hash)> update_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key, call_tracking_diag_codes)

```ruby
begin
  # Update CallTrackingDiagCodes
  data, status_code, headers = api_instance.update_call_tracking_diag_codes_with_http_info(vbasoftware_database, call_tracking_diag_codes_key, call_tracking_diag_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingDiagCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTrackingDiagCodesApi->update_call_tracking_diag_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_diag_codes_key** | **Integer** | CallTrackingDiagCodes Key |  |
| **call_tracking_diag_codes** | [**CallTrackingDiagCodes**](CallTrackingDiagCodes.md) |  |  |

### Return type

[**CallTrackingDiagCodesVBAResponse**](CallTrackingDiagCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

