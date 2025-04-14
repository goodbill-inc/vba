# Vba::CareCaseWorkLogsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_work_log**](CareCaseWorkLogsApi.md#create_care_case_work_log) | **POST** /cases/{caseKey}/work-logs | Create CareCaseWorkLog |
| [**delete_care_case_work_log**](CareCaseWorkLogsApi.md#delete_care_case_work_log) | **DELETE** /cases/{caseKey}/work-logs/{careCaseWorkLogKey} | Delete CareCaseWorkLog |
| [**get_care_case_work_log**](CareCaseWorkLogsApi.md#get_care_case_work_log) | **GET** /cases/{caseKey}/work-logs/{careCaseWorkLogKey} | Get CareCaseWorkLog |
| [**list_care_case_work_log**](CareCaseWorkLogsApi.md#list_care_case_work_log) | **GET** /cases/{caseKey}/work-logs | List CareCaseWorkLog |
| [**update_batch_care_case_work_log**](CareCaseWorkLogsApi.md#update_batch_care_case_work_log) | **PUT** /cases/{caseKey}/work-logs-batch | Create or Update Batch CareCaseWorkLog |
| [**update_care_case_work_log**](CareCaseWorkLogsApi.md#update_care_case_work_log) | **PUT** /cases/{caseKey}/work-logs/{careCaseWorkLogKey} | Update CareCaseWorkLog |


## create_care_case_work_log

> <CareCaseWorkLogVBAResponse> create_care_case_work_log(vbasoftware_database, case_key, care_case_work_log)

Create CareCaseWorkLog

Creates a new CareCaseWorkLog

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_work_log = Vba::CareCaseWorkLog.new({care_case_work_log_key: 37, case_key: 37, work_log_billable: false}) # CareCaseWorkLog | 

begin
  # Create CareCaseWorkLog
  result = api_instance.create_care_case_work_log(vbasoftware_database, case_key, care_case_work_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->create_care_case_work_log: #{e}"
end
```

#### Using the create_care_case_work_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogVBAResponse>, Integer, Hash)> create_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log)

```ruby
begin
  # Create CareCaseWorkLog
  data, status_code, headers = api_instance.create_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->create_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_work_log** | [**CareCaseWorkLog**](CareCaseWorkLog.md) |  |  |

### Return type

[**CareCaseWorkLogVBAResponse**](CareCaseWorkLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_work_log

> delete_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key)

Delete CareCaseWorkLog

Deletes an CareCaseWorkLog

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_work_log_key = 56 # Integer | CareCaseWorkLog Key

begin
  # Delete CareCaseWorkLog
  api_instance.delete_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->delete_care_case_work_log: #{e}"
end
```

#### Using the delete_care_case_work_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key)

```ruby
begin
  # Delete CareCaseWorkLog
  data, status_code, headers = api_instance.delete_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->delete_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_work_log_key** | **Integer** | CareCaseWorkLog Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_work_log

> <CareCaseWorkLogVBAResponse> get_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key)

Get CareCaseWorkLog

Gets CareCaseWorkLog

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_work_log_key = 56 # Integer | CareCaseWorkLog Key

begin
  # Get CareCaseWorkLog
  result = api_instance.get_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->get_care_case_work_log: #{e}"
end
```

#### Using the get_care_case_work_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogVBAResponse>, Integer, Hash)> get_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key)

```ruby
begin
  # Get CareCaseWorkLog
  data, status_code, headers = api_instance.get_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->get_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_work_log_key** | **Integer** | CareCaseWorkLog Key |  |

### Return type

[**CareCaseWorkLogVBAResponse**](CareCaseWorkLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_work_log

> <CareCaseWorkLogListVBAResponse> list_care_case_work_log(vbasoftware_database, case_key, opts)

List CareCaseWorkLog

Lists all CareCaseWorkLog for the given caseKey

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseWorkLog
  result = api_instance.list_care_case_work_log(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->list_care_case_work_log: #{e}"
end
```

#### Using the list_care_case_work_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogListVBAResponse>, Integer, Hash)> list_care_case_work_log_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseWorkLog
  data, status_code, headers = api_instance.list_care_case_work_log_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->list_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseWorkLogListVBAResponse**](CareCaseWorkLogListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_work_log

> <MultiCodeResponseListVBAResponse> update_batch_care_case_work_log(vbasoftware_database, case_key, care_case_work_log)

Create or Update Batch CareCaseWorkLog

Create or Update multiple CareCaseWorkLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_work_log = [Vba::CareCaseWorkLog.new({care_case_work_log_key: 37, case_key: 37, work_log_billable: false})] # Array<CareCaseWorkLog> | 

begin
  # Create or Update Batch CareCaseWorkLog
  result = api_instance.update_batch_care_case_work_log(vbasoftware_database, case_key, care_case_work_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->update_batch_care_case_work_log: #{e}"
end
```

#### Using the update_batch_care_case_work_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log)

```ruby
begin
  # Create or Update Batch CareCaseWorkLog
  data, status_code, headers = api_instance.update_batch_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->update_batch_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_work_log** | [**Array&lt;CareCaseWorkLog&gt;**](CareCaseWorkLog.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_work_log

> <CareCaseWorkLogVBAResponse> update_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key, care_case_work_log)

Update CareCaseWorkLog

Updates a specific CareCaseWorkLog.

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

api_instance = Vba::CareCaseWorkLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_work_log_key = 56 # Integer | CareCaseWorkLog Key
care_case_work_log = Vba::CareCaseWorkLog.new({care_case_work_log_key: 37, case_key: 37, work_log_billable: false}) # CareCaseWorkLog | 

begin
  # Update CareCaseWorkLog
  result = api_instance.update_care_case_work_log(vbasoftware_database, case_key, care_case_work_log_key, care_case_work_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->update_care_case_work_log: #{e}"
end
```

#### Using the update_care_case_work_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogVBAResponse>, Integer, Hash)> update_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key, care_case_work_log)

```ruby
begin
  # Update CareCaseWorkLog
  data, status_code, headers = api_instance.update_care_case_work_log_with_http_info(vbasoftware_database, case_key, care_case_work_log_key, care_case_work_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogsApi->update_care_case_work_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_work_log_key** | **Integer** | CareCaseWorkLog Key |  |
| **care_case_work_log** | [**CareCaseWorkLog**](CareCaseWorkLog.md) |  |  |

### Return type

[**CareCaseWorkLogVBAResponse**](CareCaseWorkLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

