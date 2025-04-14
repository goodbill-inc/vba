# Vba::ClaimQueuesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue**](ClaimQueuesApi.md#create_claim_queue) | **POST** /claim-queues | Create ClaimQueue |
| [**delete_claim_queue**](ClaimQueuesApi.md#delete_claim_queue) | **DELETE** /claim-queues/{claimQueue_Key} | Delete ClaimQueue |
| [**get_claim_queue**](ClaimQueuesApi.md#get_claim_queue) | **GET** /claim-queues/{claimQueue_Key} | Get ClaimQueue |
| [**list_claim_queue**](ClaimQueuesApi.md#list_claim_queue) | **GET** /claim-queues | List ClaimQueue |
| [**update_batch_claim_queue**](ClaimQueuesApi.md#update_batch_claim_queue) | **PUT** /claim-queues-batch | Create or Update Batch ClaimQueue |
| [**update_claim_queue**](ClaimQueuesApi.md#update_claim_queue) | **PUT** /claim-queues/{claimQueue_Key} | Update ClaimQueue |


## create_claim_queue

> <ClaimQueueVBAResponse> create_claim_queue(vbasoftware_database, claim_queue)

Create ClaimQueue

Creates a new ClaimQueue

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue = Vba::ClaimQueue.new({claim_queue_key: 37}) # ClaimQueue | 

begin
  # Create ClaimQueue
  result = api_instance.create_claim_queue(vbasoftware_database, claim_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->create_claim_queue: #{e}"
end
```

#### Using the create_claim_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueVBAResponse>, Integer, Hash)> create_claim_queue_with_http_info(vbasoftware_database, claim_queue)

```ruby
begin
  # Create ClaimQueue
  data, status_code, headers = api_instance.create_claim_queue_with_http_info(vbasoftware_database, claim_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->create_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue** | [**ClaimQueue**](ClaimQueue.md) |  |  |

### Return type

[**ClaimQueueVBAResponse**](ClaimQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue

> delete_claim_queue(vbasoftware_database, claim_queue_key)

Delete ClaimQueue

Deletes an ClaimQueue

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key

begin
  # Delete ClaimQueue
  api_instance.delete_claim_queue(vbasoftware_database, claim_queue_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->delete_claim_queue: #{e}"
end
```

#### Using the delete_claim_queue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)

```ruby
begin
  # Delete ClaimQueue
  data, status_code, headers = api_instance.delete_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->delete_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue

> <ClaimQueueVBAResponse> get_claim_queue(vbasoftware_database, claim_queue_key)

Get ClaimQueue

Gets ClaimQueue

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key

begin
  # Get ClaimQueue
  result = api_instance.get_claim_queue(vbasoftware_database, claim_queue_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->get_claim_queue: #{e}"
end
```

#### Using the get_claim_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueVBAResponse>, Integer, Hash)> get_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)

```ruby
begin
  # Get ClaimQueue
  data, status_code, headers = api_instance.get_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->get_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |

### Return type

[**ClaimQueueVBAResponse**](ClaimQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue

> <ClaimQueueListVBAResponse> list_claim_queue(vbasoftware_database, opts)

List ClaimQueue

Lists all ClaimQueue

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueue
  result = api_instance.list_claim_queue(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->list_claim_queue: #{e}"
end
```

#### Using the list_claim_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueListVBAResponse>, Integer, Hash)> list_claim_queue_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueue
  data, status_code, headers = api_instance.list_claim_queue_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->list_claim_queue_with_http_info: #{e}"
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

[**ClaimQueueListVBAResponse**](ClaimQueueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue(vbasoftware_database, claim_queue)

Create or Update Batch ClaimQueue

Create or Update multiple ClaimQueue at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue = [Vba::ClaimQueue.new({claim_queue_key: 37})] # Array<ClaimQueue> | 

begin
  # Create or Update Batch ClaimQueue
  result = api_instance.update_batch_claim_queue(vbasoftware_database, claim_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->update_batch_claim_queue: #{e}"
end
```

#### Using the update_batch_claim_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_with_http_info(vbasoftware_database, claim_queue)

```ruby
begin
  # Create or Update Batch ClaimQueue
  data, status_code, headers = api_instance.update_batch_claim_queue_with_http_info(vbasoftware_database, claim_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->update_batch_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue** | [**Array&lt;ClaimQueue&gt;**](ClaimQueue.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue

> <ClaimQueueVBAResponse> update_claim_queue(vbasoftware_database, claim_queue_key, claim_queue)

Update ClaimQueue

Updates a specific ClaimQueue.

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

api_instance = Vba::ClaimQueuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue = Vba::ClaimQueue.new({claim_queue_key: 37}) # ClaimQueue | 

begin
  # Update ClaimQueue
  result = api_instance.update_claim_queue(vbasoftware_database, claim_queue_key, claim_queue)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->update_claim_queue: #{e}"
end
```

#### Using the update_claim_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueVBAResponse>, Integer, Hash)> update_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, claim_queue)

```ruby
begin
  # Update ClaimQueue
  data, status_code, headers = api_instance.update_claim_queue_with_http_info(vbasoftware_database, claim_queue_key, claim_queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuesApi->update_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue** | [**ClaimQueue**](ClaimQueue.md) |  |  |

### Return type

[**ClaimQueueVBAResponse**](ClaimQueueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

