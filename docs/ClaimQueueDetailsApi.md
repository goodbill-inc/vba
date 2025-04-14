# Vba::ClaimQueueDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_detail**](ClaimQueueDetailsApi.md#create_claim_queue_detail) | **POST** /claim-queues/{claimQueueKey}/details | Create ClaimQueueDetail |
| [**delete_claim_queue_detail**](ClaimQueueDetailsApi.md#delete_claim_queue_detail) | **DELETE** /claim-queues/{claimQueueKey}/details/{batchNumber}/{batchClaim} | Delete ClaimQueueDetail |
| [**get_claim_queue_detail**](ClaimQueueDetailsApi.md#get_claim_queue_detail) | **GET** /claim-queues/{claimQueueKey}/details/{batchNumber}/{batchClaim} | Get ClaimQueueDetail |
| [**list_claim_queue_detail**](ClaimQueueDetailsApi.md#list_claim_queue_detail) | **GET** /claim-queues/{claimQueueKey}/details | List ClaimQueueDetail |
| [**update_batch_claim_queue_detail**](ClaimQueueDetailsApi.md#update_batch_claim_queue_detail) | **PUT** /claim-queues/{claimQueueKey}/details-batch | Create or Update Batch ClaimQueueDetail |
| [**update_claim_queue_detail**](ClaimQueueDetailsApi.md#update_claim_queue_detail) | **PUT** /claim-queues/{claimQueueKey}/details/{batchNumber}/{batchClaim} | Update ClaimQueueDetail |


## create_claim_queue_detail

> <ClaimQueueDetailVBAResponse> create_claim_queue_detail(vbasoftware_database, claim_queue_key, claim_queue_detail)

Create ClaimQueueDetail

Creates a new ClaimQueueDetail

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_detail = Vba::ClaimQueueDetail.new({claim_queue_key: 37, batch_number: 37, batch_claim: 37, claim_queue_processor_key: 37}) # ClaimQueueDetail | 

begin
  # Create ClaimQueueDetail
  result = api_instance.create_claim_queue_detail(vbasoftware_database, claim_queue_key, claim_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->create_claim_queue_detail: #{e}"
end
```

#### Using the create_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueDetailVBAResponse>, Integer, Hash)> create_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_detail)

```ruby
begin
  # Create ClaimQueueDetail
  data, status_code, headers = api_instance.create_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->create_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_detail** | [**ClaimQueueDetail**](ClaimQueueDetail.md) |  |  |

### Return type

[**ClaimQueueDetailVBAResponse**](ClaimQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_detail

> delete_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim)

Delete ClaimQueueDetail

Deletes an ClaimQueueDetail

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete ClaimQueueDetail
  api_instance.delete_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->delete_claim_queue_detail: #{e}"
end
```

#### Using the delete_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim)

```ruby
begin
  # Delete ClaimQueueDetail
  data, status_code, headers = api_instance.delete_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->delete_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_detail

> <ClaimQueueDetailVBAResponse> get_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim)

Get ClaimQueueDetail

Gets ClaimQueueDetail

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get ClaimQueueDetail
  result = api_instance.get_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->get_claim_queue_detail: #{e}"
end
```

#### Using the get_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueDetailVBAResponse>, Integer, Hash)> get_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim)

```ruby
begin
  # Get ClaimQueueDetail
  data, status_code, headers = api_instance.get_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->get_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**ClaimQueueDetailVBAResponse**](ClaimQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_detail

> <ClaimQueueDetailListVBAResponse> list_claim_queue_detail(vbasoftware_database, claim_queue_key, opts)

List ClaimQueueDetail

Lists all ClaimQueueDetail for the given claimQueueKey

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueDetail
  result = api_instance.list_claim_queue_detail(vbasoftware_database, claim_queue_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->list_claim_queue_detail: #{e}"
end
```

#### Using the list_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueDetailListVBAResponse>, Integer, Hash)> list_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, opts)

```ruby
begin
  # List ClaimQueueDetail
  data, status_code, headers = api_instance.list_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->list_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimQueueDetailListVBAResponse**](ClaimQueueDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_detail(vbasoftware_database, claim_queue_key, claim_queue_detail)

Create or Update Batch ClaimQueueDetail

Create or Update multiple ClaimQueueDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_detail = [Vba::ClaimQueueDetail.new({claim_queue_key: 37, batch_number: 37, batch_claim: 37, claim_queue_processor_key: 37})] # Array<ClaimQueueDetail> | 

begin
  # Create or Update Batch ClaimQueueDetail
  result = api_instance.update_batch_claim_queue_detail(vbasoftware_database, claim_queue_key, claim_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->update_batch_claim_queue_detail: #{e}"
end
```

#### Using the update_batch_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_detail)

```ruby
begin
  # Create or Update Batch ClaimQueueDetail
  data, status_code, headers = api_instance.update_batch_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->update_batch_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_detail** | [**Array&lt;ClaimQueueDetail&gt;**](ClaimQueueDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_detail

> <ClaimQueueDetailVBAResponse> update_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim, claim_queue_detail)

Update ClaimQueueDetail

Updates a specific ClaimQueueDetail.

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

api_instance = Vba::ClaimQueueDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_queue_detail = Vba::ClaimQueueDetail.new({claim_queue_key: 37, batch_number: 37, batch_claim: 37, claim_queue_processor_key: 37}) # ClaimQueueDetail | 

begin
  # Update ClaimQueueDetail
  result = api_instance.update_claim_queue_detail(vbasoftware_database, claim_queue_key, batch_number, batch_claim, claim_queue_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->update_claim_queue_detail: #{e}"
end
```

#### Using the update_claim_queue_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueDetailVBAResponse>, Integer, Hash)> update_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim, claim_queue_detail)

```ruby
begin
  # Update ClaimQueueDetail
  data, status_code, headers = api_instance.update_claim_queue_detail_with_http_info(vbasoftware_database, claim_queue_key, batch_number, batch_claim, claim_queue_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueDetailsApi->update_claim_queue_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_queue_detail** | [**ClaimQueueDetail**](ClaimQueueDetail.md) |  |  |

### Return type

[**ClaimQueueDetailVBAResponse**](ClaimQueueDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

