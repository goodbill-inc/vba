# Vba::ClaimQueueResultsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_result**](ClaimQueueResultsApi.md#create_claim_queue_result) | **POST** /claim-queue-results | Create ClaimQueueResult |
| [**delete_claim_queue_result**](ClaimQueueResultsApi.md#delete_claim_queue_result) | **DELETE** /claim-queue-results/{queueResult} | Delete ClaimQueueResult |
| [**get_claim_queue_result**](ClaimQueueResultsApi.md#get_claim_queue_result) | **GET** /claim-queue-results/{queueResult} | Get ClaimQueueResult |
| [**list_claim_queue_result**](ClaimQueueResultsApi.md#list_claim_queue_result) | **GET** /claim-queue-results | List ClaimQueueResult |
| [**update_batch_claim_queue_result**](ClaimQueueResultsApi.md#update_batch_claim_queue_result) | **PUT** /claim-queue-results-batch | Create or Update Batch ClaimQueueResult |
| [**update_claim_queue_result**](ClaimQueueResultsApi.md#update_claim_queue_result) | **PUT** /claim-queue-results/{queueResult} | Update ClaimQueueResult |


## create_claim_queue_result

> <ClaimQueueResultVBAResponse> create_claim_queue_result(vbasoftware_database, claim_queue_result)

Create ClaimQueueResult

Creates a new ClaimQueueResult

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_result = Vba::ClaimQueueResult.new({queue_result: 'queue_result_example'}) # ClaimQueueResult | 

begin
  # Create ClaimQueueResult
  result = api_instance.create_claim_queue_result(vbasoftware_database, claim_queue_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->create_claim_queue_result: #{e}"
end
```

#### Using the create_claim_queue_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueResultVBAResponse>, Integer, Hash)> create_claim_queue_result_with_http_info(vbasoftware_database, claim_queue_result)

```ruby
begin
  # Create ClaimQueueResult
  data, status_code, headers = api_instance.create_claim_queue_result_with_http_info(vbasoftware_database, claim_queue_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->create_claim_queue_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_result** | [**ClaimQueueResult**](ClaimQueueResult.md) |  |  |

### Return type

[**ClaimQueueResultVBAResponse**](ClaimQueueResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_result

> delete_claim_queue_result(vbasoftware_database, queue_result)

Delete ClaimQueueResult

Deletes an ClaimQueueResult

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_result = 'queue_result_example' # String | Queue Result

begin
  # Delete ClaimQueueResult
  api_instance.delete_claim_queue_result(vbasoftware_database, queue_result)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->delete_claim_queue_result: #{e}"
end
```

#### Using the delete_claim_queue_result_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_result_with_http_info(vbasoftware_database, queue_result)

```ruby
begin
  # Delete ClaimQueueResult
  data, status_code, headers = api_instance.delete_claim_queue_result_with_http_info(vbasoftware_database, queue_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->delete_claim_queue_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_result** | **String** | Queue Result |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_result

> <ClaimQueueResultVBAResponse> get_claim_queue_result(vbasoftware_database, queue_result)

Get ClaimQueueResult

Gets ClaimQueueResult

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_result = 'queue_result_example' # String | Queue Result

begin
  # Get ClaimQueueResult
  result = api_instance.get_claim_queue_result(vbasoftware_database, queue_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->get_claim_queue_result: #{e}"
end
```

#### Using the get_claim_queue_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueResultVBAResponse>, Integer, Hash)> get_claim_queue_result_with_http_info(vbasoftware_database, queue_result)

```ruby
begin
  # Get ClaimQueueResult
  data, status_code, headers = api_instance.get_claim_queue_result_with_http_info(vbasoftware_database, queue_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->get_claim_queue_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_result** | **String** | Queue Result |  |

### Return type

[**ClaimQueueResultVBAResponse**](ClaimQueueResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_result

> <ClaimQueueResultListVBAResponse> list_claim_queue_result(vbasoftware_database, opts)

List ClaimQueueResult

Lists all ClaimQueueResult

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueResult
  result = api_instance.list_claim_queue_result(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->list_claim_queue_result: #{e}"
end
```

#### Using the list_claim_queue_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueResultListVBAResponse>, Integer, Hash)> list_claim_queue_result_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueResult
  data, status_code, headers = api_instance.list_claim_queue_result_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->list_claim_queue_result_with_http_info: #{e}"
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

[**ClaimQueueResultListVBAResponse**](ClaimQueueResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_result

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_result(vbasoftware_database, claim_queue_result)

Create or Update Batch ClaimQueueResult

Create or Update multiple ClaimQueueResult at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_result = [Vba::ClaimQueueResult.new({queue_result: 'queue_result_example'})] # Array<ClaimQueueResult> | 

begin
  # Create or Update Batch ClaimQueueResult
  result = api_instance.update_batch_claim_queue_result(vbasoftware_database, claim_queue_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->update_batch_claim_queue_result: #{e}"
end
```

#### Using the update_batch_claim_queue_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_result_with_http_info(vbasoftware_database, claim_queue_result)

```ruby
begin
  # Create or Update Batch ClaimQueueResult
  data, status_code, headers = api_instance.update_batch_claim_queue_result_with_http_info(vbasoftware_database, claim_queue_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->update_batch_claim_queue_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_result** | [**Array&lt;ClaimQueueResult&gt;**](ClaimQueueResult.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_result

> <ClaimQueueResultVBAResponse> update_claim_queue_result(vbasoftware_database, queue_result, claim_queue_result)

Update ClaimQueueResult

Updates a specific ClaimQueueResult.

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

api_instance = Vba::ClaimQueueResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_result = 'queue_result_example' # String | Queue Result
claim_queue_result = Vba::ClaimQueueResult.new({queue_result: 'queue_result_example'}) # ClaimQueueResult | 

begin
  # Update ClaimQueueResult
  result = api_instance.update_claim_queue_result(vbasoftware_database, queue_result, claim_queue_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->update_claim_queue_result: #{e}"
end
```

#### Using the update_claim_queue_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueResultVBAResponse>, Integer, Hash)> update_claim_queue_result_with_http_info(vbasoftware_database, queue_result, claim_queue_result)

```ruby
begin
  # Update ClaimQueueResult
  data, status_code, headers = api_instance.update_claim_queue_result_with_http_info(vbasoftware_database, queue_result, claim_queue_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueResultsApi->update_claim_queue_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_result** | **String** | Queue Result |  |
| **claim_queue_result** | [**ClaimQueueResult**](ClaimQueueResult.md) |  |  |

### Return type

[**ClaimQueueResultVBAResponse**](ClaimQueueResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

