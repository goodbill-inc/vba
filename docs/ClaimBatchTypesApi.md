# Vba::ClaimBatchTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_type**](ClaimBatchTypesApi.md#create_claim_batch_type) | **POST** /claim-batch-types | Create ClaimBatchType |
| [**delete_claim_batch_type**](ClaimBatchTypesApi.md#delete_claim_batch_type) | **DELETE** /claim-batch-types/{batchType} | Delete ClaimBatchType |
| [**get_claim_batch_type**](ClaimBatchTypesApi.md#get_claim_batch_type) | **GET** /claim-batch-types/{batchType} | Get ClaimBatchType |
| [**list_claim_batch_type**](ClaimBatchTypesApi.md#list_claim_batch_type) | **GET** /claim-batch-types | List ClaimBatchType |
| [**update_batch_claim_batch_type**](ClaimBatchTypesApi.md#update_batch_claim_batch_type) | **PUT** /claim-batch-types-batch | Create or Update Batch ClaimBatchType |
| [**update_claim_batch_type**](ClaimBatchTypesApi.md#update_claim_batch_type) | **PUT** /claim-batch-types/{batchType} | Update ClaimBatchType |


## create_claim_batch_type

> <ClaimBatchTypeVBAResponse> create_claim_batch_type(vbasoftware_database, claim_batch_type)

Create ClaimBatchType

Creates a new ClaimBatchType

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_type = Vba::ClaimBatchType.new({batch_type: 'batch_type_example'}) # ClaimBatchType | 

begin
  # Create ClaimBatchType
  result = api_instance.create_claim_batch_type(vbasoftware_database, claim_batch_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->create_claim_batch_type: #{e}"
end
```

#### Using the create_claim_batch_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchTypeVBAResponse>, Integer, Hash)> create_claim_batch_type_with_http_info(vbasoftware_database, claim_batch_type)

```ruby
begin
  # Create ClaimBatchType
  data, status_code, headers = api_instance.create_claim_batch_type_with_http_info(vbasoftware_database, claim_batch_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->create_claim_batch_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_type** | [**ClaimBatchType**](ClaimBatchType.md) |  |  |

### Return type

[**ClaimBatchTypeVBAResponse**](ClaimBatchTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_type

> delete_claim_batch_type(vbasoftware_database, batch_type)

Delete ClaimBatchType

Deletes an ClaimBatchType

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_type = 'batch_type_example' # String | Batch Type

begin
  # Delete ClaimBatchType
  api_instance.delete_claim_batch_type(vbasoftware_database, batch_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->delete_claim_batch_type: #{e}"
end
```

#### Using the delete_claim_batch_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_type_with_http_info(vbasoftware_database, batch_type)

```ruby
begin
  # Delete ClaimBatchType
  data, status_code, headers = api_instance.delete_claim_batch_type_with_http_info(vbasoftware_database, batch_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->delete_claim_batch_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_type** | **String** | Batch Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_type

> <ClaimBatchTypeVBAResponse> get_claim_batch_type(vbasoftware_database, batch_type)

Get ClaimBatchType

Gets ClaimBatchType

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_type = 'batch_type_example' # String | Batch Type

begin
  # Get ClaimBatchType
  result = api_instance.get_claim_batch_type(vbasoftware_database, batch_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->get_claim_batch_type: #{e}"
end
```

#### Using the get_claim_batch_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchTypeVBAResponse>, Integer, Hash)> get_claim_batch_type_with_http_info(vbasoftware_database, batch_type)

```ruby
begin
  # Get ClaimBatchType
  data, status_code, headers = api_instance.get_claim_batch_type_with_http_info(vbasoftware_database, batch_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->get_claim_batch_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_type** | **String** | Batch Type |  |

### Return type

[**ClaimBatchTypeVBAResponse**](ClaimBatchTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_type

> <ClaimBatchTypeListVBAResponse> list_claim_batch_type(vbasoftware_database, opts)

List ClaimBatchType

Lists all ClaimBatchType

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchType
  result = api_instance.list_claim_batch_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->list_claim_batch_type: #{e}"
end
```

#### Using the list_claim_batch_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchTypeListVBAResponse>, Integer, Hash)> list_claim_batch_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatchType
  data, status_code, headers = api_instance.list_claim_batch_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->list_claim_batch_type_with_http_info: #{e}"
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

[**ClaimBatchTypeListVBAResponse**](ClaimBatchTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_type

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_type(vbasoftware_database, claim_batch_type)

Create or Update Batch ClaimBatchType

Create or Update multiple ClaimBatchType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_type = [Vba::ClaimBatchType.new({batch_type: 'batch_type_example'})] # Array<ClaimBatchType> | 

begin
  # Create or Update Batch ClaimBatchType
  result = api_instance.update_batch_claim_batch_type(vbasoftware_database, claim_batch_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->update_batch_claim_batch_type: #{e}"
end
```

#### Using the update_batch_claim_batch_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_type_with_http_info(vbasoftware_database, claim_batch_type)

```ruby
begin
  # Create or Update Batch ClaimBatchType
  data, status_code, headers = api_instance.update_batch_claim_batch_type_with_http_info(vbasoftware_database, claim_batch_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->update_batch_claim_batch_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_type** | [**Array&lt;ClaimBatchType&gt;**](ClaimBatchType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_type

> <ClaimBatchTypeVBAResponse> update_claim_batch_type(vbasoftware_database, batch_type, claim_batch_type)

Update ClaimBatchType

Updates a specific ClaimBatchType.

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

api_instance = Vba::ClaimBatchTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_type = 'batch_type_example' # String | Batch Type
claim_batch_type = Vba::ClaimBatchType.new({batch_type: 'batch_type_example'}) # ClaimBatchType | 

begin
  # Update ClaimBatchType
  result = api_instance.update_claim_batch_type(vbasoftware_database, batch_type, claim_batch_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->update_claim_batch_type: #{e}"
end
```

#### Using the update_claim_batch_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchTypeVBAResponse>, Integer, Hash)> update_claim_batch_type_with_http_info(vbasoftware_database, batch_type, claim_batch_type)

```ruby
begin
  # Update ClaimBatchType
  data, status_code, headers = api_instance.update_claim_batch_type_with_http_info(vbasoftware_database, batch_type, claim_batch_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchTypesApi->update_claim_batch_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_type** | **String** | Batch Type |  |
| **claim_batch_type** | [**ClaimBatchType**](ClaimBatchType.md) |  |  |

### Return type

[**ClaimBatchTypeVBAResponse**](ClaimBatchTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

