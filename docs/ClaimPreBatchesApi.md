# Vba::ClaimPreBatchesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_pre_batch**](ClaimPreBatchesApi.md#create_claim_pre_batch) | **POST** /claim-prebatches | Create ClaimPreBatch |
| [**delete_claim_pre_batch**](ClaimPreBatchesApi.md#delete_claim_pre_batch) | **DELETE** /claim-prebatches/{ClaimPreBatch_Key} | Delete ClaimPreBatch |
| [**get_claim_pre_batch**](ClaimPreBatchesApi.md#get_claim_pre_batch) | **GET** /claim-prebatches/{ClaimPreBatch_Key} | Get ClaimPreBatch |
| [**list_claim_pre_batch**](ClaimPreBatchesApi.md#list_claim_pre_batch) | **GET** /claim-prebatches | List ClaimPreBatch |
| [**update_batch_claim_pre_batch**](ClaimPreBatchesApi.md#update_batch_claim_pre_batch) | **PUT** /claim-prebatches-batch | Create or Update Batch ClaimPreBatch |
| [**update_claim_pre_batch**](ClaimPreBatchesApi.md#update_claim_pre_batch) | **PUT** /claim-prebatches/{ClaimPreBatch_Key} | Update ClaimPreBatch |


## create_claim_pre_batch

> <ClaimPreBatchVBAResponse> create_claim_pre_batch(vbasoftware_database, claim_pre_batch)

Create ClaimPreBatch

Creates a new ClaimPreBatch

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch = Vba::ClaimPreBatch.new({claim_pre_batch_key: 37, aeo_b_claim: false, advance_pay: false, advice_to_pay: false, batch_claim: 37, batch_number: 37, calculate_interest: false, capitation_claim: false, liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false}) # ClaimPreBatch | 

begin
  # Create ClaimPreBatch
  result = api_instance.create_claim_pre_batch(vbasoftware_database, claim_pre_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->create_claim_pre_batch: #{e}"
end
```

#### Using the create_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchVBAResponse>, Integer, Hash)> create_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch)

```ruby
begin
  # Create ClaimPreBatch
  data, status_code, headers = api_instance.create_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->create_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch** | [**ClaimPreBatch**](ClaimPreBatch.md) |  |  |

### Return type

[**ClaimPreBatchVBAResponse**](ClaimPreBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_pre_batch

> delete_claim_pre_batch(vbasoftware_database, claim_pre_batch_key)

Delete ClaimPreBatch

Deletes an ClaimPreBatch

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_key = 56 # Integer | ClaimPreBatch Key

begin
  # Delete ClaimPreBatch
  api_instance.delete_claim_pre_batch(vbasoftware_database, claim_pre_batch_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->delete_claim_pre_batch: #{e}"
end
```

#### Using the delete_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key)

```ruby
begin
  # Delete ClaimPreBatch
  data, status_code, headers = api_instance.delete_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->delete_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_key** | **Integer** | ClaimPreBatch Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_pre_batch

> <ClaimPreBatchVBAResponse> get_claim_pre_batch(vbasoftware_database, claim_pre_batch_key)

Get ClaimPreBatch

Gets ClaimPreBatch

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_key = 56 # Integer | ClaimPreBatch Key

begin
  # Get ClaimPreBatch
  result = api_instance.get_claim_pre_batch(vbasoftware_database, claim_pre_batch_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->get_claim_pre_batch: #{e}"
end
```

#### Using the get_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchVBAResponse>, Integer, Hash)> get_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key)

```ruby
begin
  # Get ClaimPreBatch
  data, status_code, headers = api_instance.get_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->get_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_key** | **Integer** | ClaimPreBatch Key |  |

### Return type

[**ClaimPreBatchVBAResponse**](ClaimPreBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_pre_batch

> <ClaimPreBatchListVBAResponse> list_claim_pre_batch(vbasoftware_database, opts)

List ClaimPreBatch

Lists all ClaimPreBatch

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  batch_number: 56, # Integer | Batch Number
  batch_claim: 56 # Integer | Batch Claim
}

begin
  # List ClaimPreBatch
  result = api_instance.list_claim_pre_batch(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->list_claim_pre_batch: #{e}"
end
```

#### Using the list_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchListVBAResponse>, Integer, Hash)> list_claim_pre_batch_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimPreBatch
  data, status_code, headers = api_instance.list_claim_pre_batch_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->list_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **batch_number** | **Integer** | Batch Number | [optional] |
| **batch_claim** | **Integer** | Batch Claim | [optional] |

### Return type

[**ClaimPreBatchListVBAResponse**](ClaimPreBatchListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_pre_batch

> <MultiCodeResponseListVBAResponse> update_batch_claim_pre_batch(vbasoftware_database, claim_pre_batch)

Create or Update Batch ClaimPreBatch

Create or Update multiple ClaimPreBatch at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch = [Vba::ClaimPreBatch.new({claim_pre_batch_key: 37, aeo_b_claim: false, advance_pay: false, advice_to_pay: false, batch_claim: 37, batch_number: 37, calculate_interest: false, capitation_claim: false, liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false})] # Array<ClaimPreBatch> | 

begin
  # Create or Update Batch ClaimPreBatch
  result = api_instance.update_batch_claim_pre_batch(vbasoftware_database, claim_pre_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->update_batch_claim_pre_batch: #{e}"
end
```

#### Using the update_batch_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch)

```ruby
begin
  # Create or Update Batch ClaimPreBatch
  data, status_code, headers = api_instance.update_batch_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->update_batch_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch** | [**Array&lt;ClaimPreBatch&gt;**](ClaimPreBatch.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_pre_batch

> <ClaimPreBatchVBAResponse> update_claim_pre_batch(vbasoftware_database, claim_pre_batch_key, claim_pre_batch)

Update ClaimPreBatch

Updates a specific ClaimPreBatch.

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

api_instance = Vba::ClaimPreBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_pre_batch_key = 56 # Integer | ClaimPreBatch Key
claim_pre_batch = Vba::ClaimPreBatch.new({claim_pre_batch_key: 37, aeo_b_claim: false, advance_pay: false, advice_to_pay: false, batch_claim: 37, batch_number: 37, calculate_interest: false, capitation_claim: false, liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false}) # ClaimPreBatch | 

begin
  # Update ClaimPreBatch
  result = api_instance.update_claim_pre_batch(vbasoftware_database, claim_pre_batch_key, claim_pre_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->update_claim_pre_batch: #{e}"
end
```

#### Using the update_claim_pre_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPreBatchVBAResponse>, Integer, Hash)> update_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key, claim_pre_batch)

```ruby
begin
  # Update ClaimPreBatch
  data, status_code, headers = api_instance.update_claim_pre_batch_with_http_info(vbasoftware_database, claim_pre_batch_key, claim_pre_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPreBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPreBatchesApi->update_claim_pre_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_pre_batch_key** | **Integer** | ClaimPreBatch Key |  |
| **claim_pre_batch** | [**ClaimPreBatch**](ClaimPreBatch.md) |  |  |

### Return type

[**ClaimPreBatchVBAResponse**](ClaimPreBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

