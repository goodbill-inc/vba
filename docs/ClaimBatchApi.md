# Vba::ClaimBatchApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch**](ClaimBatchApi.md#create_claim_batch) | **POST** /claim-batches/{batchNumber}/claims | Create ClaimBatch |
| [**delete_claim_batch**](ClaimBatchApi.md#delete_claim_batch) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim} | Delete ClaimBatch |
| [**full_delete_claim_batch**](ClaimBatchApi.md#full_delete_claim_batch) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/full-delete | Full Delete ClaimBatch |
| [**get_claim_batch**](ClaimBatchApi.md#get_claim_batch) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim} | Get ClaimBatch |
| [**list_claim_batch**](ClaimBatchApi.md#list_claim_batch) | **GET** /claim-batches/{batchNumber}/claims | List ClaimBatch |
| [**update_batch_claim_batch**](ClaimBatchApi.md#update_batch_claim_batch) | **PUT** /claim-batches/{batchNumber}/claims-batch | Create or Update Batch ClaimBatch |
| [**update_claim_batch**](ClaimBatchApi.md#update_claim_batch) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim} | Update ClaimBatch |


## create_claim_batch

> <ClaimBatchVBAResponse> create_claim_batch(vbasoftware_database, batch_number, claim_batch)

Create ClaimBatch

Creates a new ClaimBatch

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batch = Vba::ClaimBatch.new({batch_number: 37, batch_claim: 37, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, baseload_lookup: false, calculate_interest: false, capitation_claim: false, context4_override: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false}) # ClaimBatch | 

begin
  # Create ClaimBatch
  result = api_instance.create_claim_batch(vbasoftware_database, batch_number, claim_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->create_claim_batch: #{e}"
end
```

#### Using the create_claim_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchVBAResponse>, Integer, Hash)> create_claim_batch_with_http_info(vbasoftware_database, batch_number, claim_batch)

```ruby
begin
  # Create ClaimBatch
  data, status_code, headers = api_instance.create_claim_batch_with_http_info(vbasoftware_database, batch_number, claim_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->create_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batch** | [**ClaimBatch**](ClaimBatch.md) |  |  |

### Return type

[**ClaimBatchVBAResponse**](ClaimBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch

> delete_claim_batch(vbasoftware_database, batch_number, batch_claim)

Delete ClaimBatch

Deletes an ClaimBatch

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete ClaimBatch
  api_instance.delete_claim_batch(vbasoftware_database, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->delete_claim_batch: #{e}"
end
```

#### Using the delete_claim_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Delete ClaimBatch
  data, status_code, headers = api_instance.delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->delete_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## full_delete_claim_batch

> full_delete_claim_batch(vbasoftware_database, batch_number, batch_claim, opts)

Full Delete ClaimBatch

Deletes an ClaimBatch record along with all associated processing needed as a result of that delete.

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  claim_status_category_code: 'claim_status_category_code_example', # String | Claim Status Category Code
  claim_status_code: 'claim_status_code_example' # String | Claim Status Code
}

begin
  # Full Delete ClaimBatch
  api_instance.full_delete_claim_batch(vbasoftware_database, batch_number, batch_claim, opts)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->full_delete_claim_batch: #{e}"
end
```

#### Using the full_delete_claim_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> full_delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # Full Delete ClaimBatch
  data, status_code, headers = api_instance.full_delete_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->full_delete_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_status_category_code** | **String** | Claim Status Category Code | [optional] |
| **claim_status_code** | **String** | Claim Status Code | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch

> <ClaimBatchVBAResponse> get_claim_batch(vbasoftware_database, batch_number, batch_claim)

Get ClaimBatch

Gets ClaimBatch

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get ClaimBatch
  result = api_instance.get_claim_batch(vbasoftware_database, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->get_claim_batch: #{e}"
end
```

#### Using the get_claim_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchVBAResponse>, Integer, Hash)> get_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Get ClaimBatch
  data, status_code, headers = api_instance.get_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->get_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**ClaimBatchVBAResponse**](ClaimBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch

> <ClaimBatchListVBAResponse> list_claim_batch(vbasoftware_database, batch_number, opts)

List ClaimBatch

Lists all ClaimBatch for the given batchNumber

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatch
  result = api_instance.list_claim_batch(vbasoftware_database, batch_number, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->list_claim_batch: #{e}"
end
```

#### Using the list_claim_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchListVBAResponse>, Integer, Hash)> list_claim_batch_with_http_info(vbasoftware_database, batch_number, opts)

```ruby
begin
  # List ClaimBatch
  data, status_code, headers = api_instance.list_claim_batch_with_http_info(vbasoftware_database, batch_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->list_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimBatchListVBAResponse**](ClaimBatchListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch(vbasoftware_database, batch_number, claim_batch)

Create or Update Batch ClaimBatch

Create or Update multiple ClaimBatch at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batch = [Vba::ClaimBatch.new({batch_number: 37, batch_claim: 37, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, baseload_lookup: false, calculate_interest: false, capitation_claim: false, context4_override: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false})] # Array<ClaimBatch> | 

begin
  # Create or Update Batch ClaimBatch
  result = api_instance.update_batch_claim_batch(vbasoftware_database, batch_number, claim_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->update_batch_claim_batch: #{e}"
end
```

#### Using the update_batch_claim_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_with_http_info(vbasoftware_database, batch_number, claim_batch)

```ruby
begin
  # Create or Update Batch ClaimBatch
  data, status_code, headers = api_instance.update_batch_claim_batch_with_http_info(vbasoftware_database, batch_number, claim_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->update_batch_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batch** | [**Array&lt;ClaimBatch&gt;**](ClaimBatch.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch

> <ClaimBatchVBAResponse> update_claim_batch(vbasoftware_database, batch_number, batch_claim, claim_batch)

Update ClaimBatch

Updates a specific ClaimBatch.

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

api_instance = Vba::ClaimBatchApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_batch = Vba::ClaimBatch.new({batch_number: 37, batch_claim: 37, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, baseload_lookup: false, calculate_interest: false, capitation_claim: false, context4_override: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, volume_override: false, waiting_period_claim: false}) # ClaimBatch | 

begin
  # Update ClaimBatch
  result = api_instance.update_claim_batch(vbasoftware_database, batch_number, batch_claim, claim_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->update_claim_batch: #{e}"
end
```

#### Using the update_claim_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchVBAResponse>, Integer, Hash)> update_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch)

```ruby
begin
  # Update ClaimBatch
  data, status_code, headers = api_instance.update_claim_batch_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchApi->update_claim_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_batch** | [**ClaimBatch**](ClaimBatch.md) |  |  |

### Return type

[**ClaimBatchVBAResponse**](ClaimBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

