# Vba::ClaimBatchesStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batches_status**](ClaimBatchesStatusesApi.md#create_claim_batches_status) | **POST** /claim-batches-statuses | Create ClaimBatchesStatus |
| [**delete_claim_batches_status**](ClaimBatchesStatusesApi.md#delete_claim_batches_status) | **DELETE** /claim-batches-statuses/{status} | Delete ClaimBatchesStatus |
| [**get_claim_batches_status**](ClaimBatchesStatusesApi.md#get_claim_batches_status) | **GET** /claim-batches-statuses/{status} | Get ClaimBatchesStatus |
| [**list_claim_batches_status**](ClaimBatchesStatusesApi.md#list_claim_batches_status) | **GET** /claim-batches-statuses | List ClaimBatchesStatus |
| [**update_batch_claim_batches_status**](ClaimBatchesStatusesApi.md#update_batch_claim_batches_status) | **PUT** /claim-batches-statuses-batch | Create or Update Batch ClaimBatchesStatus |
| [**update_claim_batches_status**](ClaimBatchesStatusesApi.md#update_claim_batches_status) | **PUT** /claim-batches-statuses/{status} | Update ClaimBatchesStatus |


## create_claim_batches_status

> <ClaimBatchesStatusVBAResponse> create_claim_batches_status(vbasoftware_database, claim_batches_status)

Create ClaimBatchesStatus

Creates a new ClaimBatchesStatus

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batches_status = Vba::ClaimBatchesStatus.new({status: 'status_example'}) # ClaimBatchesStatus | 

begin
  # Create ClaimBatchesStatus
  result = api_instance.create_claim_batches_status(vbasoftware_database, claim_batches_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->create_claim_batches_status: #{e}"
end
```

#### Using the create_claim_batches_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesStatusVBAResponse>, Integer, Hash)> create_claim_batches_status_with_http_info(vbasoftware_database, claim_batches_status)

```ruby
begin
  # Create ClaimBatchesStatus
  data, status_code, headers = api_instance.create_claim_batches_status_with_http_info(vbasoftware_database, claim_batches_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->create_claim_batches_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batches_status** | [**ClaimBatchesStatus**](ClaimBatchesStatus.md) |  |  |

### Return type

[**ClaimBatchesStatusVBAResponse**](ClaimBatchesStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batches_status

> delete_claim_batches_status(vbasoftware_database, status)

Delete ClaimBatchesStatus

Deletes an ClaimBatchesStatus

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
status = 'status_example' # String | Status

begin
  # Delete ClaimBatchesStatus
  api_instance.delete_claim_batches_status(vbasoftware_database, status)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->delete_claim_batches_status: #{e}"
end
```

#### Using the delete_claim_batches_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batches_status_with_http_info(vbasoftware_database, status)

```ruby
begin
  # Delete ClaimBatchesStatus
  data, status_code, headers = api_instance.delete_claim_batches_status_with_http_info(vbasoftware_database, status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->delete_claim_batches_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **status** | **String** | Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batches_status

> <ClaimBatchesStatusVBAResponse> get_claim_batches_status(vbasoftware_database, status)

Get ClaimBatchesStatus

Gets ClaimBatchesStatus

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
status = 'status_example' # String | Status

begin
  # Get ClaimBatchesStatus
  result = api_instance.get_claim_batches_status(vbasoftware_database, status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->get_claim_batches_status: #{e}"
end
```

#### Using the get_claim_batches_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesStatusVBAResponse>, Integer, Hash)> get_claim_batches_status_with_http_info(vbasoftware_database, status)

```ruby
begin
  # Get ClaimBatchesStatus
  data, status_code, headers = api_instance.get_claim_batches_status_with_http_info(vbasoftware_database, status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->get_claim_batches_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **status** | **String** | Status |  |

### Return type

[**ClaimBatchesStatusVBAResponse**](ClaimBatchesStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batches_status

> <ClaimBatchesStatusListVBAResponse> list_claim_batches_status(vbasoftware_database, opts)

List ClaimBatchesStatus

Lists all ClaimBatchesStatus

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchesStatus
  result = api_instance.list_claim_batches_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->list_claim_batches_status: #{e}"
end
```

#### Using the list_claim_batches_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesStatusListVBAResponse>, Integer, Hash)> list_claim_batches_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatchesStatus
  data, status_code, headers = api_instance.list_claim_batches_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->list_claim_batches_status_with_http_info: #{e}"
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

[**ClaimBatchesStatusListVBAResponse**](ClaimBatchesStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batches_status

> <MultiCodeResponseListVBAResponse> update_batch_claim_batches_status(vbasoftware_database, claim_batches_status)

Create or Update Batch ClaimBatchesStatus

Create or Update multiple ClaimBatchesStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batches_status = [Vba::ClaimBatchesStatus.new({status: 'status_example'})] # Array<ClaimBatchesStatus> | 

begin
  # Create or Update Batch ClaimBatchesStatus
  result = api_instance.update_batch_claim_batches_status(vbasoftware_database, claim_batches_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->update_batch_claim_batches_status: #{e}"
end
```

#### Using the update_batch_claim_batches_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batches_status_with_http_info(vbasoftware_database, claim_batches_status)

```ruby
begin
  # Create or Update Batch ClaimBatchesStatus
  data, status_code, headers = api_instance.update_batch_claim_batches_status_with_http_info(vbasoftware_database, claim_batches_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->update_batch_claim_batches_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batches_status** | [**Array&lt;ClaimBatchesStatus&gt;**](ClaimBatchesStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batches_status

> <ClaimBatchesStatusVBAResponse> update_claim_batches_status(vbasoftware_database, status, claim_batches_status)

Update ClaimBatchesStatus

Updates a specific ClaimBatchesStatus.

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

api_instance = Vba::ClaimBatchesStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
status = 'status_example' # String | Status
claim_batches_status = Vba::ClaimBatchesStatus.new({status: 'status_example'}) # ClaimBatchesStatus | 

begin
  # Update ClaimBatchesStatus
  result = api_instance.update_claim_batches_status(vbasoftware_database, status, claim_batches_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->update_claim_batches_status: #{e}"
end
```

#### Using the update_claim_batches_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchesStatusVBAResponse>, Integer, Hash)> update_claim_batches_status_with_http_info(vbasoftware_database, status, claim_batches_status)

```ruby
begin
  # Update ClaimBatchesStatus
  data, status_code, headers = api_instance.update_claim_batches_status_with_http_info(vbasoftware_database, status, claim_batches_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchesStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchesStatusesApi->update_claim_batches_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **status** | **String** | Status |  |
| **claim_batches_status** | [**ClaimBatchesStatus**](ClaimBatchesStatus.md) |  |  |

### Return type

[**ClaimBatchesStatusVBAResponse**](ClaimBatchesStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

