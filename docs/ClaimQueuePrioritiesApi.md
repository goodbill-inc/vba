# Vba::ClaimQueuePrioritiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_priority**](ClaimQueuePrioritiesApi.md#create_claim_queue_priority) | **POST** /claim-queue-priorities | Create ClaimQueuePriority |
| [**delete_claim_queue_priority**](ClaimQueuePrioritiesApi.md#delete_claim_queue_priority) | **DELETE** /claim-queue-priorities/{queuePriority} | Delete ClaimQueuePriority |
| [**get_claim_queue_priority**](ClaimQueuePrioritiesApi.md#get_claim_queue_priority) | **GET** /claim-queue-priorities/{queuePriority} | Get ClaimQueuePriority |
| [**list_claim_queue_priority**](ClaimQueuePrioritiesApi.md#list_claim_queue_priority) | **GET** /claim-queue-priorities | List ClaimQueuePriority |
| [**update_batch_claim_queue_priority**](ClaimQueuePrioritiesApi.md#update_batch_claim_queue_priority) | **PUT** /claim-queue-priorities-batch | Create or Update Batch ClaimQueuePriority |
| [**update_claim_queue_priority**](ClaimQueuePrioritiesApi.md#update_claim_queue_priority) | **PUT** /claim-queue-priorities/{queuePriority} | Update ClaimQueuePriority |


## create_claim_queue_priority

> <ClaimQueuePriorityVBAResponse> create_claim_queue_priority(vbasoftware_database, claim_queue_priority)

Create ClaimQueuePriority

Creates a new ClaimQueuePriority

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_priority = Vba::ClaimQueuePriority.new({queue_priority: 37}) # ClaimQueuePriority | 

begin
  # Create ClaimQueuePriority
  result = api_instance.create_claim_queue_priority(vbasoftware_database, claim_queue_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->create_claim_queue_priority: #{e}"
end
```

#### Using the create_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueuePriorityVBAResponse>, Integer, Hash)> create_claim_queue_priority_with_http_info(vbasoftware_database, claim_queue_priority)

```ruby
begin
  # Create ClaimQueuePriority
  data, status_code, headers = api_instance.create_claim_queue_priority_with_http_info(vbasoftware_database, claim_queue_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueuePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->create_claim_queue_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_priority** | [**ClaimQueuePriority**](ClaimQueuePriority.md) |  |  |

### Return type

[**ClaimQueuePriorityVBAResponse**](ClaimQueuePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_priority

> delete_claim_queue_priority(vbasoftware_database, queue_priority)

Delete ClaimQueuePriority

Deletes an ClaimQueuePriority

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_priority = 56 # Integer | Queue Priority

begin
  # Delete ClaimQueuePriority
  api_instance.delete_claim_queue_priority(vbasoftware_database, queue_priority)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->delete_claim_queue_priority: #{e}"
end
```

#### Using the delete_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority)

```ruby
begin
  # Delete ClaimQueuePriority
  data, status_code, headers = api_instance.delete_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->delete_claim_queue_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_priority** | **Integer** | Queue Priority |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_priority

> <ClaimQueuePriorityVBAResponse> get_claim_queue_priority(vbasoftware_database, queue_priority)

Get ClaimQueuePriority

Gets ClaimQueuePriority

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_priority = 56 # Integer | Queue Priority

begin
  # Get ClaimQueuePriority
  result = api_instance.get_claim_queue_priority(vbasoftware_database, queue_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->get_claim_queue_priority: #{e}"
end
```

#### Using the get_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueuePriorityVBAResponse>, Integer, Hash)> get_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority)

```ruby
begin
  # Get ClaimQueuePriority
  data, status_code, headers = api_instance.get_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueuePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->get_claim_queue_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_priority** | **Integer** | Queue Priority |  |

### Return type

[**ClaimQueuePriorityVBAResponse**](ClaimQueuePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_priority

> <ClaimQueuePriorityListVBAResponse> list_claim_queue_priority(vbasoftware_database, opts)

List ClaimQueuePriority

Lists all ClaimQueuePriority

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueuePriority
  result = api_instance.list_claim_queue_priority(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->list_claim_queue_priority: #{e}"
end
```

#### Using the list_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueuePriorityListVBAResponse>, Integer, Hash)> list_claim_queue_priority_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueuePriority
  data, status_code, headers = api_instance.list_claim_queue_priority_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueuePriorityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->list_claim_queue_priority_with_http_info: #{e}"
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

[**ClaimQueuePriorityListVBAResponse**](ClaimQueuePriorityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_priority

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_priority(vbasoftware_database, claim_queue_priority)

Create or Update Batch ClaimQueuePriority

Create or Update multiple ClaimQueuePriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_priority = [Vba::ClaimQueuePriority.new({queue_priority: 37})] # Array<ClaimQueuePriority> | 

begin
  # Create or Update Batch ClaimQueuePriority
  result = api_instance.update_batch_claim_queue_priority(vbasoftware_database, claim_queue_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->update_batch_claim_queue_priority: #{e}"
end
```

#### Using the update_batch_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_priority_with_http_info(vbasoftware_database, claim_queue_priority)

```ruby
begin
  # Create or Update Batch ClaimQueuePriority
  data, status_code, headers = api_instance.update_batch_claim_queue_priority_with_http_info(vbasoftware_database, claim_queue_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->update_batch_claim_queue_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_priority** | [**Array&lt;ClaimQueuePriority&gt;**](ClaimQueuePriority.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_priority

> <ClaimQueuePriorityVBAResponse> update_claim_queue_priority(vbasoftware_database, queue_priority, claim_queue_priority)

Update ClaimQueuePriority

Updates a specific ClaimQueuePriority.

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

api_instance = Vba::ClaimQueuePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_priority = 56 # Integer | Queue Priority
claim_queue_priority = Vba::ClaimQueuePriority.new({queue_priority: 37}) # ClaimQueuePriority | 

begin
  # Update ClaimQueuePriority
  result = api_instance.update_claim_queue_priority(vbasoftware_database, queue_priority, claim_queue_priority)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->update_claim_queue_priority: #{e}"
end
```

#### Using the update_claim_queue_priority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueuePriorityVBAResponse>, Integer, Hash)> update_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority, claim_queue_priority)

```ruby
begin
  # Update ClaimQueuePriority
  data, status_code, headers = api_instance.update_claim_queue_priority_with_http_info(vbasoftware_database, queue_priority, claim_queue_priority)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueuePriorityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueuePrioritiesApi->update_claim_queue_priority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_priority** | **Integer** | Queue Priority |  |
| **claim_queue_priority** | [**ClaimQueuePriority**](ClaimQueuePriority.md) |  |  |

### Return type

[**ClaimQueuePriorityVBAResponse**](ClaimQueuePriorityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

