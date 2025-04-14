# Vba::ClaimBatchesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batches**](ClaimBatchesApi.md#create_claim_batches) | **POST** /claim-batches | Create ClaimBatches |
| [**delete_claim_batches**](ClaimBatchesApi.md#delete_claim_batches) | **DELETE** /claim-batches/{batchNumber} | Delete ClaimBatches |
| [**get_claim_batches**](ClaimBatchesApi.md#get_claim_batches) | **GET** /claim-batches/{batchNumber} | Get ClaimBatches |
| [**list_claim_batches**](ClaimBatchesApi.md#list_claim_batches) | **GET** /claim-batches | List ClaimBatches |
| [**update_batch_claim_batches**](ClaimBatchesApi.md#update_batch_claim_batches) | **PUT** /claim-batches-batch | Create or Update Batch ClaimBatches |
| [**update_claim_batches**](ClaimBatchesApi.md#update_claim_batches) | **PUT** /claim-batches/{batchNumber} | Update ClaimBatches |


## create_claim_batches

> <ClaimBatchesVBAResponse> create_claim_batches(vbasoftware_database, claim_batches)

Create ClaimBatches

Creates a new ClaimBatches

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batches = Vba::ClaimBatches.new({batch_number: 37, process_by_disability_date: false, use_default_date: false}) # ClaimBatches | 

begin
  # Create ClaimBatches
  result = api_instance.create_claim_batches(vbasoftware_database, claim_batches)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->create_claim_batches: #{e}"
end
```

#### Using the create_claim_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesVBAResponse>, Integer, Hash)> create_claim_batches_with_http_info(vbasoftware_database, claim_batches)

```ruby
begin
  # Create ClaimBatches
  data, status_code, headers = api_instance.create_claim_batches_with_http_info(vbasoftware_database, claim_batches)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->create_claim_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batches** | [**ClaimBatches**](ClaimBatches.md) |  |  |

### Return type

[**ClaimBatchesVBAResponse**](ClaimBatchesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batches

> delete_claim_batches(vbasoftware_database, batch_number)

Delete ClaimBatches

Deletes an ClaimBatches

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Delete ClaimBatches
  api_instance.delete_claim_batches(vbasoftware_database, batch_number)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->delete_claim_batches: #{e}"
end
```

#### Using the delete_claim_batches_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batches_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Delete ClaimBatches
  data, status_code, headers = api_instance.delete_claim_batches_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->delete_claim_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batches

> <ClaimBatchesVBAResponse> get_claim_batches(vbasoftware_database, batch_number)

Get ClaimBatches

Gets ClaimBatches

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Get ClaimBatches
  result = api_instance.get_claim_batches(vbasoftware_database, batch_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->get_claim_batches: #{e}"
end
```

#### Using the get_claim_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesVBAResponse>, Integer, Hash)> get_claim_batches_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Get ClaimBatches
  data, status_code, headers = api_instance.get_claim_batches_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->get_claim_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

[**ClaimBatchesVBAResponse**](ClaimBatchesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batches

> <ClaimBatchesListVBAResponse> list_claim_batches(vbasoftware_database, opts)

List ClaimBatches

Lists all ClaimBatches

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatches
  result = api_instance.list_claim_batches(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->list_claim_batches: #{e}"
end
```

#### Using the list_claim_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesListVBAResponse>, Integer, Hash)> list_claim_batches_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatches
  data, status_code, headers = api_instance.list_claim_batches_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->list_claim_batches_with_http_info: #{e}"
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

[**ClaimBatchesListVBAResponse**](ClaimBatchesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batches

> <MultiCodeResponseListVBAResponse> update_batch_claim_batches(vbasoftware_database, claim_batches)

Create or Update Batch ClaimBatches

Create or Update multiple ClaimBatches at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batches = [Vba::ClaimBatches.new({batch_number: 37, process_by_disability_date: false, use_default_date: false})] # Array<ClaimBatches> | 

begin
  # Create or Update Batch ClaimBatches
  result = api_instance.update_batch_claim_batches(vbasoftware_database, claim_batches)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->update_batch_claim_batches: #{e}"
end
```

#### Using the update_batch_claim_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batches_with_http_info(vbasoftware_database, claim_batches)

```ruby
begin
  # Create or Update Batch ClaimBatches
  data, status_code, headers = api_instance.update_batch_claim_batches_with_http_info(vbasoftware_database, claim_batches)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->update_batch_claim_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batches** | [**Array&lt;ClaimBatches&gt;**](ClaimBatches.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batches

> <ClaimBatchesVBAResponse> update_claim_batches(vbasoftware_database, batch_number, claim_batches)

Update ClaimBatches

Updates a specific ClaimBatches.

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

api_instance = Vba::ClaimBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batches = Vba::ClaimBatches.new({batch_number: 37, process_by_disability_date: false, use_default_date: false}) # ClaimBatches | 

begin
  # Update ClaimBatches
  result = api_instance.update_claim_batches(vbasoftware_database, batch_number, claim_batches)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->update_claim_batches: #{e}"
end
```

#### Using the update_claim_batches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesVBAResponse>, Integer, Hash)> update_claim_batches_with_http_info(vbasoftware_database, batch_number, claim_batches)

```ruby
begin
  # Update ClaimBatches
  data, status_code, headers = api_instance.update_claim_batches_with_http_info(vbasoftware_database, batch_number, claim_batches)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesApi->update_claim_batches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batches** | [**ClaimBatches**](ClaimBatches.md) |  |  |

### Return type

[**ClaimBatchesVBAResponse**](ClaimBatchesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

