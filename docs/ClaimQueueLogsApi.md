# Vba::ClaimQueueLogsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_log**](ClaimQueueLogsApi.md#create_claim_queue_log) | **POST** /claim-queue-logs | Create ClaimQueueLog |
| [**delete_claim_queue_log**](ClaimQueueLogsApi.md#delete_claim_queue_log) | **DELETE** /claim-queue-logs/{claimQueueLogKey} | Delete ClaimQueueLog |
| [**get_claim_queue_log**](ClaimQueueLogsApi.md#get_claim_queue_log) | **GET** /claim-queue-logs/{claimQueueLogKey} | Get ClaimQueueLog |
| [**list_claim_queue_log**](ClaimQueueLogsApi.md#list_claim_queue_log) | **GET** /claim-queue-logs | List ClaimQueueLog |
| [**update_batch_claim_queue_log**](ClaimQueueLogsApi.md#update_batch_claim_queue_log) | **PUT** /claim-queue-logs-batch | Create or Update Batch ClaimQueueLog |
| [**update_claim_queue_log**](ClaimQueueLogsApi.md#update_claim_queue_log) | **PUT** /claim-queue-logs/{claimQueueLogKey} | Update ClaimQueueLog |


## create_claim_queue_log

> <ClaimQueueLogVBAResponse> create_claim_queue_log(vbasoftware_database, claim_queue_log)

Create ClaimQueueLog

Creates a new ClaimQueueLog

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_log = Vba::ClaimQueueLog.new({claim_queue_log_key: 37, batch_claim: 37, batch_number: 37, claim_queue_processor_key: 37, shared_object_id: 37}) # ClaimQueueLog | 

begin
  # Create ClaimQueueLog
  result = api_instance.create_claim_queue_log(vbasoftware_database, claim_queue_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->create_claim_queue_log: #{e}"
end
```

#### Using the create_claim_queue_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueLogVBAResponse>, Integer, Hash)> create_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log)

```ruby
begin
  # Create ClaimQueueLog
  data, status_code, headers = api_instance.create_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->create_claim_queue_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_log** | [**ClaimQueueLog**](ClaimQueueLog.md) |  |  |

### Return type

[**ClaimQueueLogVBAResponse**](ClaimQueueLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_log

> delete_claim_queue_log(vbasoftware_database, claim_queue_log_key)

Delete ClaimQueueLog

Deletes an ClaimQueueLog

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_log_key = 56 # Integer | ClaimQueueLog Key

begin
  # Delete ClaimQueueLog
  api_instance.delete_claim_queue_log(vbasoftware_database, claim_queue_log_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->delete_claim_queue_log: #{e}"
end
```

#### Using the delete_claim_queue_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key)

```ruby
begin
  # Delete ClaimQueueLog
  data, status_code, headers = api_instance.delete_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->delete_claim_queue_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_log_key** | **Integer** | ClaimQueueLog Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_log

> <ClaimQueueLogVBAResponse> get_claim_queue_log(vbasoftware_database, claim_queue_log_key)

Get ClaimQueueLog

Gets ClaimQueueLog

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_log_key = 56 # Integer | ClaimQueueLog Key

begin
  # Get ClaimQueueLog
  result = api_instance.get_claim_queue_log(vbasoftware_database, claim_queue_log_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->get_claim_queue_log: #{e}"
end
```

#### Using the get_claim_queue_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueLogVBAResponse>, Integer, Hash)> get_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key)

```ruby
begin
  # Get ClaimQueueLog
  data, status_code, headers = api_instance.get_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->get_claim_queue_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_log_key** | **Integer** | ClaimQueueLog Key |  |

### Return type

[**ClaimQueueLogVBAResponse**](ClaimQueueLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_log

> <ClaimQueueLogListVBAResponse> list_claim_queue_log(vbasoftware_database, opts)

List ClaimQueueLog

Lists all ClaimQueueLog

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueLog
  result = api_instance.list_claim_queue_log(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->list_claim_queue_log: #{e}"
end
```

#### Using the list_claim_queue_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueLogListVBAResponse>, Integer, Hash)> list_claim_queue_log_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueLog
  data, status_code, headers = api_instance.list_claim_queue_log_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueLogListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->list_claim_queue_log_with_http_info: #{e}"
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

[**ClaimQueueLogListVBAResponse**](ClaimQueueLogListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_log

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_log(vbasoftware_database, claim_queue_log)

Create or Update Batch ClaimQueueLog

Create or Update multiple ClaimQueueLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_log = [Vba::ClaimQueueLog.new({claim_queue_log_key: 37, batch_claim: 37, batch_number: 37, claim_queue_processor_key: 37, shared_object_id: 37})] # Array<ClaimQueueLog> | 

begin
  # Create or Update Batch ClaimQueueLog
  result = api_instance.update_batch_claim_queue_log(vbasoftware_database, claim_queue_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->update_batch_claim_queue_log: #{e}"
end
```

#### Using the update_batch_claim_queue_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log)

```ruby
begin
  # Create or Update Batch ClaimQueueLog
  data, status_code, headers = api_instance.update_batch_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->update_batch_claim_queue_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_log** | [**Array&lt;ClaimQueueLog&gt;**](ClaimQueueLog.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_log

> <ClaimQueueLogVBAResponse> update_claim_queue_log(vbasoftware_database, claim_queue_log_key, claim_queue_log)

Update ClaimQueueLog

Updates a specific ClaimQueueLog.

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

api_instance = Vba::ClaimQueueLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_log_key = 56 # Integer | ClaimQueueLog Key
claim_queue_log = Vba::ClaimQueueLog.new({claim_queue_log_key: 37, batch_claim: 37, batch_number: 37, claim_queue_processor_key: 37, shared_object_id: 37}) # ClaimQueueLog | 

begin
  # Update ClaimQueueLog
  result = api_instance.update_claim_queue_log(vbasoftware_database, claim_queue_log_key, claim_queue_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->update_claim_queue_log: #{e}"
end
```

#### Using the update_claim_queue_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueLogVBAResponse>, Integer, Hash)> update_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key, claim_queue_log)

```ruby
begin
  # Update ClaimQueueLog
  data, status_code, headers = api_instance.update_claim_queue_log_with_http_info(vbasoftware_database, claim_queue_log_key, claim_queue_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueLogsApi->update_claim_queue_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_log_key** | **Integer** | ClaimQueueLog Key |  |
| **claim_queue_log** | [**ClaimQueueLog**](ClaimQueueLog.md) |  |  |

### Return type

[**ClaimQueueLogVBAResponse**](ClaimQueueLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

