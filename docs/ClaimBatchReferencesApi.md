# Vba::ClaimBatchReferencesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_reference**](ClaimBatchReferencesApi.md#create_claim_batch_reference) | **POST** /claim-batch-references | Create ClaimBatchReference |
| [**delete_claim_batch_reference**](ClaimBatchReferencesApi.md#delete_claim_batch_reference) | **DELETE** /claim-batch-references/{originalBatchNumber}/{originalBatchClaim}/{referencedBatchNumber}/{referencedBatchClaim}/{referenceType} | Delete ClaimBatchReference |
| [**get_claim_batch_reference**](ClaimBatchReferencesApi.md#get_claim_batch_reference) | **GET** /claim-batch-references/{originalBatchNumber}/{originalBatchClaim}/{referencedBatchNumber}/{referencedBatchClaim}/{referenceType} | Get ClaimBatchReference |
| [**list_claim_batch_reference**](ClaimBatchReferencesApi.md#list_claim_batch_reference) | **GET** /claim-batch-references | List ClaimBatchReference |
| [**update_batch_claim_batch_reference**](ClaimBatchReferencesApi.md#update_batch_claim_batch_reference) | **PUT** /claim-batch-references-batch | Create or Update Batch ClaimBatchReference |
| [**update_claim_batch_reference**](ClaimBatchReferencesApi.md#update_claim_batch_reference) | **PUT** /claim-batch-references/{originalBatchNumber}/{originalBatchClaim}/{referencedBatchNumber}/{referencedBatchClaim}/{referenceType} | Update ClaimBatchReference |


## create_claim_batch_reference

> <ClaimBatchReferenceVBAResponse> create_claim_batch_reference(vbasoftware_database, claim_batch_reference)

Create ClaimBatchReference

Creates a new ClaimBatchReference

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_reference = Vba::ClaimBatchReference.new({original_batch_number: 37, original_batch_claim: 37, referenced_batch_number: 37, referenced_batch_claim: 37, reference_type: 'reference_type_example'}) # ClaimBatchReference | 

begin
  # Create ClaimBatchReference
  result = api_instance.create_claim_batch_reference(vbasoftware_database, claim_batch_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->create_claim_batch_reference: #{e}"
end
```

#### Using the create_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchReferenceVBAResponse>, Integer, Hash)> create_claim_batch_reference_with_http_info(vbasoftware_database, claim_batch_reference)

```ruby
begin
  # Create ClaimBatchReference
  data, status_code, headers = api_instance.create_claim_batch_reference_with_http_info(vbasoftware_database, claim_batch_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->create_claim_batch_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_reference** | [**ClaimBatchReference**](ClaimBatchReference.md) |  |  |

### Return type

[**ClaimBatchReferenceVBAResponse**](ClaimBatchReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_reference

> delete_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)

Delete ClaimBatchReference

Deletes an ClaimBatchReference

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_batch_number = 56 # Integer | Original Batch Number
original_batch_claim = 56 # Integer | Original Batch Claim
referenced_batch_number = 56 # Integer | Referenced Batch Number
referenced_batch_claim = 56 # Integer | Referenced Batch Claim
reference_type = 'reference_type_example' # String | Reference Type

begin
  # Delete ClaimBatchReference
  api_instance.delete_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->delete_claim_batch_reference: #{e}"
end
```

#### Using the delete_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)

```ruby
begin
  # Delete ClaimBatchReference
  data, status_code, headers = api_instance.delete_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->delete_claim_batch_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_batch_number** | **Integer** | Original Batch Number |  |
| **original_batch_claim** | **Integer** | Original Batch Claim |  |
| **referenced_batch_number** | **Integer** | Referenced Batch Number |  |
| **referenced_batch_claim** | **Integer** | Referenced Batch Claim |  |
| **reference_type** | **String** | Reference Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_reference

> <ClaimBatchReferenceVBAResponse> get_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)

Get ClaimBatchReference

Gets ClaimBatchReference

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_batch_number = 56 # Integer | Original Batch Number
original_batch_claim = 56 # Integer | Original Batch Claim
referenced_batch_number = 56 # Integer | Referenced Batch Number
referenced_batch_claim = 56 # Integer | Referenced Batch Claim
reference_type = 'reference_type_example' # String | Reference Type

begin
  # Get ClaimBatchReference
  result = api_instance.get_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->get_claim_batch_reference: #{e}"
end
```

#### Using the get_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchReferenceVBAResponse>, Integer, Hash)> get_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)

```ruby
begin
  # Get ClaimBatchReference
  data, status_code, headers = api_instance.get_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->get_claim_batch_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_batch_number** | **Integer** | Original Batch Number |  |
| **original_batch_claim** | **Integer** | Original Batch Claim |  |
| **referenced_batch_number** | **Integer** | Referenced Batch Number |  |
| **referenced_batch_claim** | **Integer** | Referenced Batch Claim |  |
| **reference_type** | **String** | Reference Type |  |

### Return type

[**ClaimBatchReferenceVBAResponse**](ClaimBatchReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_reference

> <ClaimBatchReferenceListVBAResponse> list_claim_batch_reference(vbasoftware_database, opts)

List ClaimBatchReference

Lists all ClaimBatchReference

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchReference
  result = api_instance.list_claim_batch_reference(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->list_claim_batch_reference: #{e}"
end
```

#### Using the list_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchReferenceListVBAResponse>, Integer, Hash)> list_claim_batch_reference_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimBatchReference
  data, status_code, headers = api_instance.list_claim_batch_reference_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchReferenceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->list_claim_batch_reference_with_http_info: #{e}"
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

[**ClaimBatchReferenceListVBAResponse**](ClaimBatchReferenceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_reference

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_reference(vbasoftware_database, claim_batch_reference)

Create or Update Batch ClaimBatchReference

Create or Update multiple ClaimBatchReference at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_batch_reference = [Vba::ClaimBatchReference.new({original_batch_number: 37, original_batch_claim: 37, referenced_batch_number: 37, referenced_batch_claim: 37, reference_type: 'reference_type_example'})] # Array<ClaimBatchReference> | 

begin
  # Create or Update Batch ClaimBatchReference
  result = api_instance.update_batch_claim_batch_reference(vbasoftware_database, claim_batch_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->update_batch_claim_batch_reference: #{e}"
end
```

#### Using the update_batch_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_reference_with_http_info(vbasoftware_database, claim_batch_reference)

```ruby
begin
  # Create or Update Batch ClaimBatchReference
  data, status_code, headers = api_instance.update_batch_claim_batch_reference_with_http_info(vbasoftware_database, claim_batch_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->update_batch_claim_batch_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_batch_reference** | [**Array&lt;ClaimBatchReference&gt;**](ClaimBatchReference.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_reference

> <ClaimBatchReferenceVBAResponse> update_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type, claim_batch_reference)

Update ClaimBatchReference

Updates a specific ClaimBatchReference.

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

api_instance = Vba::ClaimBatchReferencesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_batch_number = 56 # Integer | Original Batch Number
original_batch_claim = 56 # Integer | Original Batch Claim
referenced_batch_number = 56 # Integer | Referenced Batch Number
referenced_batch_claim = 56 # Integer | Referenced Batch Claim
reference_type = 'reference_type_example' # String | Reference Type
claim_batch_reference = Vba::ClaimBatchReference.new({original_batch_number: 37, original_batch_claim: 37, referenced_batch_number: 37, referenced_batch_claim: 37, reference_type: 'reference_type_example'}) # ClaimBatchReference | 

begin
  # Update ClaimBatchReference
  result = api_instance.update_claim_batch_reference(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type, claim_batch_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->update_claim_batch_reference: #{e}"
end
```

#### Using the update_claim_batch_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchReferenceVBAResponse>, Integer, Hash)> update_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type, claim_batch_reference)

```ruby
begin
  # Update ClaimBatchReference
  data, status_code, headers = api_instance.update_claim_batch_reference_with_http_info(vbasoftware_database, original_batch_number, original_batch_claim, referenced_batch_number, referenced_batch_claim, reference_type, claim_batch_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchReferencesApi->update_claim_batch_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_batch_number** | **Integer** | Original Batch Number |  |
| **original_batch_claim** | **Integer** | Original Batch Claim |  |
| **referenced_batch_number** | **Integer** | Referenced Batch Number |  |
| **referenced_batch_claim** | **Integer** | Referenced Batch Claim |  |
| **reference_type** | **String** | Reference Type |  |
| **claim_batch_reference** | [**ClaimBatchReference**](ClaimBatchReference.md) |  |  |

### Return type

[**ClaimBatchReferenceVBAResponse**](ClaimBatchReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

