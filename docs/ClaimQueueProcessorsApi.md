# Vba::ClaimQueueProcessorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_processor**](ClaimQueueProcessorsApi.md#create_claim_queue_processor) | **POST** /claim-queue-processors | Create ClaimQueueProcessor |
| [**delete_claim_queue_processor**](ClaimQueueProcessorsApi.md#delete_claim_queue_processor) | **DELETE** /claim-queue-processors/{claimQueueProcessorKey} | Delete ClaimQueueProcessor |
| [**get_claim_queue_processor**](ClaimQueueProcessorsApi.md#get_claim_queue_processor) | **GET** /claim-queue-processors/{claimQueueProcessorKey} | Get ClaimQueueProcessor |
| [**list_claim_queue_processor**](ClaimQueueProcessorsApi.md#list_claim_queue_processor) | **GET** /claim-queue-processors | List ClaimQueueProcessor |
| [**update_batch_claim_queue_processor**](ClaimQueueProcessorsApi.md#update_batch_claim_queue_processor) | **PUT** /claim-queue-processors-batch | Create or Update Batch ClaimQueueProcessor |
| [**update_claim_queue_processor**](ClaimQueueProcessorsApi.md#update_claim_queue_processor) | **PUT** /claim-queue-processors/{claimQueueProcessorKey} | Update ClaimQueueProcessor |


## create_claim_queue_processor

> <ClaimQueueProcessorVBAResponse> create_claim_queue_processor(vbasoftware_database, claim_queue_processor)

Create ClaimQueueProcessor

Creates a new ClaimQueueProcessor

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_processor = Vba::ClaimQueueProcessor.new({claim_queue_processor_key: 37}) # ClaimQueueProcessor | 

begin
  # Create ClaimQueueProcessor
  result = api_instance.create_claim_queue_processor(vbasoftware_database, claim_queue_processor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->create_claim_queue_processor: #{e}"
end
```

#### Using the create_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessorVBAResponse>, Integer, Hash)> create_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor)

```ruby
begin
  # Create ClaimQueueProcessor
  data, status_code, headers = api_instance.create_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->create_claim_queue_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_processor** | [**ClaimQueueProcessor**](ClaimQueueProcessor.md) |  |  |

### Return type

[**ClaimQueueProcessorVBAResponse**](ClaimQueueProcessorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_processor

> delete_claim_queue_processor(vbasoftware_database, claim_queue_processor_key)

Delete ClaimQueueProcessor

Deletes an ClaimQueueProcessor

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_processor_key = 56 # Integer | ClaimQueueProcessor Key

begin
  # Delete ClaimQueueProcessor
  api_instance.delete_claim_queue_processor(vbasoftware_database, claim_queue_processor_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->delete_claim_queue_processor: #{e}"
end
```

#### Using the delete_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key)

```ruby
begin
  # Delete ClaimQueueProcessor
  data, status_code, headers = api_instance.delete_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->delete_claim_queue_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_processor_key** | **Integer** | ClaimQueueProcessor Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_processor

> <ClaimQueueProcessorVBAResponse> get_claim_queue_processor(vbasoftware_database, claim_queue_processor_key)

Get ClaimQueueProcessor

Gets ClaimQueueProcessor

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_processor_key = 56 # Integer | ClaimQueueProcessor Key

begin
  # Get ClaimQueueProcessor
  result = api_instance.get_claim_queue_processor(vbasoftware_database, claim_queue_processor_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->get_claim_queue_processor: #{e}"
end
```

#### Using the get_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessorVBAResponse>, Integer, Hash)> get_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key)

```ruby
begin
  # Get ClaimQueueProcessor
  data, status_code, headers = api_instance.get_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->get_claim_queue_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_processor_key** | **Integer** | ClaimQueueProcessor Key |  |

### Return type

[**ClaimQueueProcessorVBAResponse**](ClaimQueueProcessorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_processor

> <ClaimQueueProcessorListVBAResponse> list_claim_queue_processor(vbasoftware_database, opts)

List ClaimQueueProcessor

Lists all ClaimQueueProcessor

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueProcessor
  result = api_instance.list_claim_queue_processor(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->list_claim_queue_processor: #{e}"
end
```

#### Using the list_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessorListVBAResponse>, Integer, Hash)> list_claim_queue_processor_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueProcessor
  data, status_code, headers = api_instance.list_claim_queue_processor_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->list_claim_queue_processor_with_http_info: #{e}"
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

[**ClaimQueueProcessorListVBAResponse**](ClaimQueueProcessorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_processor

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_processor(vbasoftware_database, claim_queue_processor)

Create or Update Batch ClaimQueueProcessor

Create or Update multiple ClaimQueueProcessor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_processor = [Vba::ClaimQueueProcessor.new({claim_queue_processor_key: 37})] # Array<ClaimQueueProcessor> | 

begin
  # Create or Update Batch ClaimQueueProcessor
  result = api_instance.update_batch_claim_queue_processor(vbasoftware_database, claim_queue_processor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->update_batch_claim_queue_processor: #{e}"
end
```

#### Using the update_batch_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor)

```ruby
begin
  # Create or Update Batch ClaimQueueProcessor
  data, status_code, headers = api_instance.update_batch_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->update_batch_claim_queue_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_processor** | [**Array&lt;ClaimQueueProcessor&gt;**](ClaimQueueProcessor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_processor

> <ClaimQueueProcessorVBAResponse> update_claim_queue_processor(vbasoftware_database, claim_queue_processor_key, claim_queue_processor)

Update ClaimQueueProcessor

Updates a specific ClaimQueueProcessor.

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

api_instance = Vba::ClaimQueueProcessorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_processor_key = 56 # Integer | ClaimQueueProcessor Key
claim_queue_processor = Vba::ClaimQueueProcessor.new({claim_queue_processor_key: 37}) # ClaimQueueProcessor | 

begin
  # Update ClaimQueueProcessor
  result = api_instance.update_claim_queue_processor(vbasoftware_database, claim_queue_processor_key, claim_queue_processor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->update_claim_queue_processor: #{e}"
end
```

#### Using the update_claim_queue_processor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessorVBAResponse>, Integer, Hash)> update_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key, claim_queue_processor)

```ruby
begin
  # Update ClaimQueueProcessor
  data, status_code, headers = api_instance.update_claim_queue_processor_with_http_info(vbasoftware_database, claim_queue_processor_key, claim_queue_processor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessorsApi->update_claim_queue_processor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_processor_key** | **Integer** | ClaimQueueProcessor Key |  |
| **claim_queue_processor** | [**ClaimQueueProcessor**](ClaimQueueProcessor.md) |  |  |

### Return type

[**ClaimQueueProcessorVBAResponse**](ClaimQueueProcessorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

