# Vba::ClaimExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_ex_code**](ClaimExCodesApi.md#create_claim_ex_code) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes | Create ClaimExCode |
| [**delete_claim_ex_code**](ClaimExCodesApi.md#delete_claim_ex_code) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode} | Delete ClaimExCode |
| [**get_claim_ex_code**](ClaimExCodesApi.md#get_claim_ex_code) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode} | Get ClaimExCode |
| [**list_claim_ex_code**](ClaimExCodesApi.md#list_claim_ex_code) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes | List ClaimExCode |
| [**update_batch_claim_ex_code**](ClaimExCodesApi.md#update_batch_claim_ex_code) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes-batch | Create or Update Batch ClaimExCode |
| [**update_claim_ex_code**](ClaimExCodesApi.md#update_claim_ex_code) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/ex-codes/{exCode} | Update ClaimExCode |


## create_claim_ex_code

> <ClaimExCodeVBAResponse> create_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code)

Create ClaimExCode

Creates a new ClaimExCode

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_ex_code = Vba::ClaimExCode.new({batch_number: 37, batch_claim: 37, ex_code: 'ex_code_example', cleared: false}) # ClaimExCode | 

begin
  # Create ClaimExCode
  result = api_instance.create_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->create_claim_ex_code: #{e}"
end
```

#### Using the create_claim_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimExCodeVBAResponse>, Integer, Hash)> create_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code)

```ruby
begin
  # Create ClaimExCode
  data, status_code, headers = api_instance.create_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->create_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_ex_code** | [**ClaimExCode**](ClaimExCode.md) |  |  |

### Return type

[**ClaimExCodeVBAResponse**](ClaimExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_ex_code

> delete_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code)

Delete ClaimExCode

Deletes an ClaimExCode

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Delete ClaimExCode
  api_instance.delete_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->delete_claim_ex_code: #{e}"
end
```

#### Using the delete_claim_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code)

```ruby
begin
  # Delete ClaimExCode
  data, status_code, headers = api_instance.delete_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->delete_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_ex_code

> <ClaimExCodeVBAResponse> get_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code)

Get ClaimExCode

Gets ClaimExCode

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Get ClaimExCode
  result = api_instance.get_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->get_claim_ex_code: #{e}"
end
```

#### Using the get_claim_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimExCodeVBAResponse>, Integer, Hash)> get_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code)

```ruby
begin
  # Get ClaimExCode
  data, status_code, headers = api_instance.get_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->get_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

[**ClaimExCodeVBAResponse**](ClaimExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_ex_code

> <ClaimExCodeListVBAResponse> list_claim_ex_code(vbasoftware_database, batch_number, batch_claim, opts)

List ClaimExCode

Lists all ClaimExCode for the given batchNumber and batchClaim

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimExCode
  result = api_instance.list_claim_ex_code(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->list_claim_ex_code: #{e}"
end
```

#### Using the list_claim_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimExCodeListVBAResponse>, Integer, Hash)> list_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # List ClaimExCode
  data, status_code, headers = api_instance.list_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->list_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimExCodeListVBAResponse**](ClaimExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code)

Create or Update Batch ClaimExCode

Create or Update multiple ClaimExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_ex_code = [Vba::ClaimExCode.new({batch_number: 37, batch_claim: 37, ex_code: 'ex_code_example', cleared: false})] # Array<ClaimExCode> | 

begin
  # Create or Update Batch ClaimExCode
  result = api_instance.update_batch_claim_ex_code(vbasoftware_database, batch_number, batch_claim, claim_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->update_batch_claim_ex_code: #{e}"
end
```

#### Using the update_batch_claim_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code)

```ruby
begin
  # Create or Update Batch ClaimExCode
  data, status_code, headers = api_instance.update_batch_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->update_batch_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_ex_code** | [**Array&lt;ClaimExCode&gt;**](ClaimExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_ex_code

> <ClaimExCodeVBAResponse> update_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code)

Update ClaimExCode

Updates a specific ClaimExCode.

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

api_instance = Vba::ClaimExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
ex_code = 'ex_code_example' # String | Ex Code
claim_ex_code = Vba::ClaimExCode.new({batch_number: 37, batch_claim: 37, ex_code: 'ex_code_example', cleared: false}) # ClaimExCode | 

begin
  # Update ClaimExCode
  result = api_instance.update_claim_ex_code(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->update_claim_ex_code: #{e}"
end
```

#### Using the update_claim_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimExCodeVBAResponse>, Integer, Hash)> update_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code)

```ruby
begin
  # Update ClaimExCode
  data, status_code, headers = api_instance.update_claim_ex_code_with_http_info(vbasoftware_database, batch_number, batch_claim, ex_code, claim_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimExCodesApi->update_claim_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **ex_code** | **String** | Ex Code |  |
| **claim_ex_code** | [**ClaimExCode**](ClaimExCode.md) |  |  |

### Return type

[**ClaimExCodeVBAResponse**](ClaimExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

