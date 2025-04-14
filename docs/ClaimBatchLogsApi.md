# Vba::ClaimBatchLogsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_log**](ClaimBatchLogsApi.md#create_claim_batch_log) | **POST** /claim-batch-logs | Create ClaimBatchLog |
| [**delete_claim_batch_log**](ClaimBatchLogsApi.md#delete_claim_batch_log) | **DELETE** /claim-batch-logs/{claimBatchLogKey} | Delete ClaimBatchLog |
| [**get_claim_batch_log**](ClaimBatchLogsApi.md#get_claim_batch_log) | **GET** /claim-batch-logs/{claimBatchLogKey} | Get ClaimBatchLog |
| [**list_claim_batch_log**](ClaimBatchLogsApi.md#list_claim_batch_log) | **GET** /claim-batch-logs | List ClaimBatchLog |
| [**update_batch_claim_batch_log**](ClaimBatchLogsApi.md#update_batch_claim_batch_log) | **PUT** /claim-batch-logs-batch | Create or Update Batch ClaimBatchLog |
| [**update_claim_batch_log**](ClaimBatchLogsApi.md#update_claim_batch_log) | **PUT** /claim-batch-logs/{claimBatchLogKey} | Update ClaimBatchLog |


## create_claim_batch_log

> <ClaimBatchLogVBAResponse> create_claim_batch_log(vbasoftware_database, claim_batch_log)

Create ClaimBatchLog

Creates a new ClaimBatchLog

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_log = Vba::ClaimBatchLog.new({claim_batch_log_key: 37, batch_claim: 37, batch_number: 37, job_key: 37}) # ClaimBatchLog | 

begin
  # Create ClaimBatchLog
  result = api_instance.create_claim_batch_log(vbasoftware_database, claim_batch_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->create_claim_batch_log: #{e}"
end
```

#### Using the create_claim_batch_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLogVBAResponse>, Integer, Hash)> create_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log)

```ruby
begin
  # Create ClaimBatchLog
  data, status_code, headers = api_instance.create_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->create_claim_batch_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_log** | [**ClaimBatchLog**](ClaimBatchLog.md) |  |  |

### Return type

[**ClaimBatchLogVBAResponse**](ClaimBatchLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_log

> delete_claim_batch_log(vbasoftware_database, claim_batch_log_key)

Delete ClaimBatchLog

Deletes an ClaimBatchLog

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_log_key = 56 # Integer | ClaimBatchLog Key

begin
  # Delete ClaimBatchLog
  api_instance.delete_claim_batch_log(vbasoftware_database, claim_batch_log_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->delete_claim_batch_log: #{e}"
end
```

#### Using the delete_claim_batch_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key)

```ruby
begin
  # Delete ClaimBatchLog
  data, status_code, headers = api_instance.delete_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->delete_claim_batch_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_log_key** | **Integer** | ClaimBatchLog Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_log

> <ClaimBatchLogVBAResponse> get_claim_batch_log(vbasoftware_database, claim_batch_log_key)

Get ClaimBatchLog

Gets ClaimBatchLog

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_log_key = 56 # Integer | ClaimBatchLog Key

begin
  # Get ClaimBatchLog
  result = api_instance.get_claim_batch_log(vbasoftware_database, claim_batch_log_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->get_claim_batch_log: #{e}"
end
```

#### Using the get_claim_batch_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLogVBAResponse>, Integer, Hash)> get_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key)

```ruby
begin
  # Get ClaimBatchLog
  data, status_code, headers = api_instance.get_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->get_claim_batch_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_log_key** | **Integer** | ClaimBatchLog Key |  |

### Return type

[**ClaimBatchLogVBAResponse**](ClaimBatchLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_log

> <ClaimBatchLogListVBAResponse> list_claim_batch_log(vbasoftware_database, opts)

List ClaimBatchLog

Lists all ClaimBatchLog

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchLog
  result = api_instance.list_claim_batch_log(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->list_claim_batch_log: #{e}"
end
```

#### Using the list_claim_batch_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLogListVBAResponse>, Integer, Hash)> list_claim_batch_log_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatchLog
  data, status_code, headers = api_instance.list_claim_batch_log_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLogListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->list_claim_batch_log_with_http_info: #{e}"
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

[**ClaimBatchLogListVBAResponse**](ClaimBatchLogListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_log

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_log(vbasoftware_database, claim_batch_log)

Create or Update Batch ClaimBatchLog

Create or Update multiple ClaimBatchLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_log = [Vba::ClaimBatchLog.new({claim_batch_log_key: 37, batch_claim: 37, batch_number: 37, job_key: 37})] # Array<ClaimBatchLog> | 

begin
  # Create or Update Batch ClaimBatchLog
  result = api_instance.update_batch_claim_batch_log(vbasoftware_database, claim_batch_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->update_batch_claim_batch_log: #{e}"
end
```

#### Using the update_batch_claim_batch_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log)

```ruby
begin
  # Create or Update Batch ClaimBatchLog
  data, status_code, headers = api_instance.update_batch_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->update_batch_claim_batch_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_log** | [**Array&lt;ClaimBatchLog&gt;**](ClaimBatchLog.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_log

> <ClaimBatchLogVBAResponse> update_claim_batch_log(vbasoftware_database, claim_batch_log_key, claim_batch_log)

Update ClaimBatchLog

Updates a specific ClaimBatchLog.

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

api_instance = Vba::ClaimBatchLogsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_log_key = 56 # Integer | ClaimBatchLog Key
claim_batch_log = Vba::ClaimBatchLog.new({claim_batch_log_key: 37, batch_claim: 37, batch_number: 37, job_key: 37}) # ClaimBatchLog | 

begin
  # Update ClaimBatchLog
  result = api_instance.update_claim_batch_log(vbasoftware_database, claim_batch_log_key, claim_batch_log)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->update_claim_batch_log: #{e}"
end
```

#### Using the update_claim_batch_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLogVBAResponse>, Integer, Hash)> update_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, claim_batch_log)

```ruby
begin
  # Update ClaimBatchLog
  data, status_code, headers = api_instance.update_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, claim_batch_log)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLogVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLogsApi->update_claim_batch_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_log_key** | **Integer** | ClaimBatchLog Key |  |
| **claim_batch_log** | [**ClaimBatchLog**](ClaimBatchLog.md) |  |  |

### Return type

[**ClaimBatchLogVBAResponse**](ClaimBatchLogVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

