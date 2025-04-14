# Vba::ClaimQueueStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_status**](ClaimQueueStatusesApi.md#create_claim_queue_status) | **POST** /claim-queue-statuses | Create ClaimQueueStatus |
| [**delete_claim_queue_status**](ClaimQueueStatusesApi.md#delete_claim_queue_status) | **DELETE** /claim-queue-statuses/{queueStatus} | Delete ClaimQueueStatus |
| [**get_claim_queue_status**](ClaimQueueStatusesApi.md#get_claim_queue_status) | **GET** /claim-queue-statuses/{queueStatus} | Get ClaimQueueStatus |
| [**list_claim_queue_status**](ClaimQueueStatusesApi.md#list_claim_queue_status) | **GET** /claim-queue-statuses | List ClaimQueueStatus |
| [**update_batch_claim_queue_status**](ClaimQueueStatusesApi.md#update_batch_claim_queue_status) | **PUT** /claim-queue-statuses-batch | Create or Update Batch ClaimQueueStatus |
| [**update_claim_queue_status**](ClaimQueueStatusesApi.md#update_claim_queue_status) | **PUT** /claim-queue-statuses/{queueStatus} | Update ClaimQueueStatus |


## create_claim_queue_status

> <ClaimQueueStatusVBAResponse> create_claim_queue_status(vbasoftware_database, claim_queue_status)

Create ClaimQueueStatus

Creates a new ClaimQueueStatus

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_status = Vba::ClaimQueueStatus.new({queue_status: 'queue_status_example'}) # ClaimQueueStatus | 

begin
  # Create ClaimQueueStatus
  result = api_instance.create_claim_queue_status(vbasoftware_database, claim_queue_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->create_claim_queue_status: #{e}"
end
```

#### Using the create_claim_queue_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueStatusVBAResponse>, Integer, Hash)> create_claim_queue_status_with_http_info(vbasoftware_database, claim_queue_status)

```ruby
begin
  # Create ClaimQueueStatus
  data, status_code, headers = api_instance.create_claim_queue_status_with_http_info(vbasoftware_database, claim_queue_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->create_claim_queue_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_status** | [**ClaimQueueStatus**](ClaimQueueStatus.md) |  |  |

### Return type

[**ClaimQueueStatusVBAResponse**](ClaimQueueStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_status

> delete_claim_queue_status(vbasoftware_database, queue_status)

Delete ClaimQueueStatus

Deletes an ClaimQueueStatus

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_status = 'queue_status_example' # String | Queue Status

begin
  # Delete ClaimQueueStatus
  api_instance.delete_claim_queue_status(vbasoftware_database, queue_status)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->delete_claim_queue_status: #{e}"
end
```

#### Using the delete_claim_queue_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_status_with_http_info(vbasoftware_database, queue_status)

```ruby
begin
  # Delete ClaimQueueStatus
  data, status_code, headers = api_instance.delete_claim_queue_status_with_http_info(vbasoftware_database, queue_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->delete_claim_queue_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_status** | **String** | Queue Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_status

> <ClaimQueueStatusVBAResponse> get_claim_queue_status(vbasoftware_database, queue_status)

Get ClaimQueueStatus

Gets ClaimQueueStatus

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_status = 'queue_status_example' # String | Queue Status

begin
  # Get ClaimQueueStatus
  result = api_instance.get_claim_queue_status(vbasoftware_database, queue_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->get_claim_queue_status: #{e}"
end
```

#### Using the get_claim_queue_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueStatusVBAResponse>, Integer, Hash)> get_claim_queue_status_with_http_info(vbasoftware_database, queue_status)

```ruby
begin
  # Get ClaimQueueStatus
  data, status_code, headers = api_instance.get_claim_queue_status_with_http_info(vbasoftware_database, queue_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->get_claim_queue_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_status** | **String** | Queue Status |  |

### Return type

[**ClaimQueueStatusVBAResponse**](ClaimQueueStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_status

> <ClaimQueueStatusListVBAResponse> list_claim_queue_status(vbasoftware_database, opts)

List ClaimQueueStatus

Lists all ClaimQueueStatus

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueStatus
  result = api_instance.list_claim_queue_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->list_claim_queue_status: #{e}"
end
```

#### Using the list_claim_queue_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueStatusListVBAResponse>, Integer, Hash)> list_claim_queue_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueStatus
  data, status_code, headers = api_instance.list_claim_queue_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->list_claim_queue_status_with_http_info: #{e}"
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

[**ClaimQueueStatusListVBAResponse**](ClaimQueueStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_status

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_status(vbasoftware_database, claim_queue_status)

Create or Update Batch ClaimQueueStatus

Create or Update multiple ClaimQueueStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_status = [Vba::ClaimQueueStatus.new({queue_status: 'queue_status_example'})] # Array<ClaimQueueStatus> | 

begin
  # Create or Update Batch ClaimQueueStatus
  result = api_instance.update_batch_claim_queue_status(vbasoftware_database, claim_queue_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->update_batch_claim_queue_status: #{e}"
end
```

#### Using the update_batch_claim_queue_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_status_with_http_info(vbasoftware_database, claim_queue_status)

```ruby
begin
  # Create or Update Batch ClaimQueueStatus
  data, status_code, headers = api_instance.update_batch_claim_queue_status_with_http_info(vbasoftware_database, claim_queue_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->update_batch_claim_queue_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_status** | [**Array&lt;ClaimQueueStatus&gt;**](ClaimQueueStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_status

> <ClaimQueueStatusVBAResponse> update_claim_queue_status(vbasoftware_database, queue_status, claim_queue_status)

Update ClaimQueueStatus

Updates a specific ClaimQueueStatus.

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

api_instance = Vba::ClaimQueueStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
queue_status = 'queue_status_example' # String | Queue Status
claim_queue_status = Vba::ClaimQueueStatus.new({queue_status: 'queue_status_example'}) # ClaimQueueStatus | 

begin
  # Update ClaimQueueStatus
  result = api_instance.update_claim_queue_status(vbasoftware_database, queue_status, claim_queue_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->update_claim_queue_status: #{e}"
end
```

#### Using the update_claim_queue_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueStatusVBAResponse>, Integer, Hash)> update_claim_queue_status_with_http_info(vbasoftware_database, queue_status, claim_queue_status)

```ruby
begin
  # Update ClaimQueueStatus
  data, status_code, headers = api_instance.update_claim_queue_status_with_http_info(vbasoftware_database, queue_status, claim_queue_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueStatusesApi->update_claim_queue_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **queue_status** | **String** | Queue Status |  |
| **claim_queue_status** | [**ClaimQueueStatus**](ClaimQueueStatus.md) |  |  |

### Return type

[**ClaimQueueStatusVBAResponse**](ClaimQueueStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

