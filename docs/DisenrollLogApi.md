# Vba::DisenrollLogApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disenroll_log**](DisenrollLogApi.md#create_disenroll_log) | **POST** /disenroll-logs | Create DisenrollLog |
| [**delete_disenroll_log**](DisenrollLogApi.md#delete_disenroll_log) | **DELETE** /disenroll-logs/{DisenrollLog_Key} | Delete DisenrollLog |
| [**get_disenroll_log**](DisenrollLogApi.md#get_disenroll_log) | **GET** /disenroll-logs/{DisenrollLog_Key} | Get DisenrollLog |
| [**list_disenroll_log**](DisenrollLogApi.md#list_disenroll_log) | **GET** /disenroll-logs | List DisenrollLog |
| [**update_batch_disenroll_log**](DisenrollLogApi.md#update_batch_disenroll_log) | **PUT** /disenroll-logs-batch | Create or Update Batch DisenrollLog |
| [**update_disenroll_log**](DisenrollLogApi.md#update_disenroll_log) | **PUT** /disenroll-logs/{DisenrollLog_Key} | Update DisenrollLog |


## create_disenroll_log

> <DisenrollLogVBAResponse> create_disenroll_log(vbasoftware_database, disenroll_log)

Create DisenrollLog

Creates a new DisenrollLog

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log = Vba::DisenrollLog.new({disenroll_log_key: 37, disenroll_date: Time.now, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # DisenrollLog | 

begin
  # Create DisenrollLog
  result = api_instance.create_disenroll_log(vbasoftware_database, disenroll_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->create_disenroll_log: #{e}"
end
```

#### Using the create_disenroll_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogVBAResponse>, Integer, Hash)> create_disenroll_log_with_http_info(vbasoftware_database, disenroll_log)

```ruby
begin
  # Create DisenrollLog
  data, status_code, headers = api_instance.create_disenroll_log_with_http_info(vbasoftware_database, disenroll_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->create_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log** | [**DisenrollLog**](DisenrollLog.md) |  |  |

### Return type

[**DisenrollLogVBAResponse**](DisenrollLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disenroll_log

> delete_disenroll_log(vbasoftware_database, disenroll_log_key)

Delete DisenrollLog

Deletes an DisenrollLog

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key

begin
  # Delete DisenrollLog
  api_instance.delete_disenroll_log(vbasoftware_database, disenroll_log_key)
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->delete_disenroll_log: #{e}"
end
```

#### Using the delete_disenroll_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key)

```ruby
begin
  # Delete DisenrollLog
  data, status_code, headers = api_instance.delete_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->delete_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disenroll_log

> <DisenrollLogVBAResponse> get_disenroll_log(vbasoftware_database, disenroll_log_key)

Get DisenrollLog

Gets DisenrollLog

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key

begin
  # Get DisenrollLog
  result = api_instance.get_disenroll_log(vbasoftware_database, disenroll_log_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->get_disenroll_log: #{e}"
end
```

#### Using the get_disenroll_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogVBAResponse>, Integer, Hash)> get_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key)

```ruby
begin
  # Get DisenrollLog
  data, status_code, headers = api_instance.get_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->get_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |

### Return type

[**DisenrollLogVBAResponse**](DisenrollLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disenroll_log

> <DisenrollLogListVBAResponse> list_disenroll_log(vbasoftware_database, opts)

List DisenrollLog

Lists all DisenrollLog

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  subscriber_id: 'subscriber_id_example', # String | Optional filter to limit rows containing Subscriber_ID
  member_seq: 'member_seq_example', # String | Optional filter to limit rows containing Member_Seq
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisenrollLog
  result = api_instance.list_disenroll_log(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->list_disenroll_log: #{e}"
end
```

#### Using the list_disenroll_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogListVBAResponse>, Integer, Hash)> list_disenroll_log_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisenrollLog
  data, status_code, headers = api_instance.list_disenroll_log_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->list_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Optional filter to limit rows containing Subscriber_ID | [optional] |
| **member_seq** | **String** | Optional filter to limit rows containing Member_Seq | [optional] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**DisenrollLogListVBAResponse**](DisenrollLogListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disenroll_log

> <MultiCodeResponseListVBAResponse> update_batch_disenroll_log(vbasoftware_database, disenroll_log)

Create or Update Batch DisenrollLog

Create or Update multiple DisenrollLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log = [Vba::DisenrollLog.new({disenroll_log_key: 37, disenroll_date: Time.now, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<DisenrollLog> | 

begin
  # Create or Update Batch DisenrollLog
  result = api_instance.update_batch_disenroll_log(vbasoftware_database, disenroll_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->update_batch_disenroll_log: #{e}"
end
```

#### Using the update_batch_disenroll_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disenroll_log_with_http_info(vbasoftware_database, disenroll_log)

```ruby
begin
  # Create or Update Batch DisenrollLog
  data, status_code, headers = api_instance.update_batch_disenroll_log_with_http_info(vbasoftware_database, disenroll_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->update_batch_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log** | [**Array&lt;DisenrollLog&gt;**](DisenrollLog.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disenroll_log

> <DisenrollLogVBAResponse> update_disenroll_log(vbasoftware_database, disenroll_log_key, disenroll_log)

Update DisenrollLog

Updates a specific DisenrollLog.

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

api_instance = Vba::DisenrollLogApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
disenroll_log = Vba::DisenrollLog.new({disenroll_log_key: 37, disenroll_date: Time.now, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # DisenrollLog | 

begin
  # Update DisenrollLog
  result = api_instance.update_disenroll_log(vbasoftware_database, disenroll_log_key, disenroll_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->update_disenroll_log: #{e}"
end
```

#### Using the update_disenroll_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogVBAResponse>, Integer, Hash)> update_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log)

```ruby
begin
  # Update DisenrollLog
  data, status_code, headers = api_instance.update_disenroll_log_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogApi->update_disenroll_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **disenroll_log** | [**DisenrollLog**](DisenrollLog.md) |  |  |

### Return type

[**DisenrollLogVBAResponse**](DisenrollLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

