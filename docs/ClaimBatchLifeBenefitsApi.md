# Vba::ClaimBatchLifeBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#create_claim_batch_life_benefit) | **POST** /claim-batches/{batchNumber}/life-benefits | Create ClaimBatchLifeBenefit |
| [**delete_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#delete_claim_batch_life_benefit) | **DELETE** /claim-batches/{batchNumber}/life-benefits/{benefitCode} | Delete ClaimBatchLifeBenefit |
| [**get_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#get_claim_batch_life_benefit) | **GET** /claim-batches/{batchNumber}/life-benefits/{benefitCode} | Get ClaimBatchLifeBenefit |
| [**list_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#list_claim_batch_life_benefit) | **GET** /claim-batches/{batchNumber}/life-benefits | List ClaimBatchLifeBenefit |
| [**update_batch_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#update_batch_claim_batch_life_benefit) | **PUT** /claim-batches/{batchNumber}/life-benefits-batch | Create or Update Batch ClaimBatchLifeBenefit |
| [**update_claim_batch_life_benefit**](ClaimBatchLifeBenefitsApi.md#update_claim_batch_life_benefit) | **PUT** /claim-batches/{batchNumber}/life-benefits/{benefitCode} | Update ClaimBatchLifeBenefit |


## create_claim_batch_life_benefit

> <ClaimBatchLifeBenefitVBAResponse> create_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit)

Create ClaimBatchLifeBenefit

Creates a new ClaimBatchLifeBenefit

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batch_life_benefit = Vba::ClaimBatchLifeBenefit.new({batch_number: 37, benefit_code: 'benefit_code_example'}) # ClaimBatchLifeBenefit | 

begin
  # Create ClaimBatchLifeBenefit
  result = api_instance.create_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->create_claim_batch_life_benefit: #{e}"
end
```

#### Using the create_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeBenefitVBAResponse>, Integer, Hash)> create_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit)

```ruby
begin
  # Create ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.create_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->create_claim_batch_life_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batch_life_benefit** | [**ClaimBatchLifeBenefit**](ClaimBatchLifeBenefit.md) |  |  |

### Return type

[**ClaimBatchLifeBenefitVBAResponse**](ClaimBatchLifeBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_life_benefit

> delete_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code)

Delete ClaimBatchLifeBenefit

Deletes an ClaimBatchLifeBenefit

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete ClaimBatchLifeBenefit
  api_instance.delete_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->delete_claim_batch_life_benefit: #{e}"
end
```

#### Using the delete_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code)

```ruby
begin
  # Delete ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.delete_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->delete_claim_batch_life_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_life_benefit

> <ClaimBatchLifeBenefitVBAResponse> get_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code)

Get ClaimBatchLifeBenefit

Gets ClaimBatchLifeBenefit

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get ClaimBatchLifeBenefit
  result = api_instance.get_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->get_claim_batch_life_benefit: #{e}"
end
```

#### Using the get_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeBenefitVBAResponse>, Integer, Hash)> get_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code)

```ruby
begin
  # Get ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.get_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->get_claim_batch_life_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**ClaimBatchLifeBenefitVBAResponse**](ClaimBatchLifeBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_life_benefit

> <ClaimBatchLifeBenefitListVBAResponse> list_claim_batch_life_benefit(vbasoftware_database, batch_number, opts)

List ClaimBatchLifeBenefit

Lists all ClaimBatchLifeBenefit for the given batchNumber

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchLifeBenefit
  result = api_instance.list_claim_batch_life_benefit(vbasoftware_database, batch_number, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->list_claim_batch_life_benefit: #{e}"
end
```

#### Using the list_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeBenefitListVBAResponse>, Integer, Hash)> list_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, opts)

```ruby
begin
  # List ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.list_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeBenefitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->list_claim_batch_life_benefit_with_http_info: #{e}"
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

[**ClaimBatchLifeBenefitListVBAResponse**](ClaimBatchLifeBenefitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_life_benefit

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit)

Create or Update Batch ClaimBatchLifeBenefit

Create or Update multiple ClaimBatchLifeBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_batch_life_benefit = [Vba::ClaimBatchLifeBenefit.new({batch_number: 37, benefit_code: 'benefit_code_example'})] # Array<ClaimBatchLifeBenefit> | 

begin
  # Create or Update Batch ClaimBatchLifeBenefit
  result = api_instance.update_batch_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->update_batch_claim_batch_life_benefit: #{e}"
end
```

#### Using the update_batch_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit)

```ruby
begin
  # Create or Update Batch ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.update_batch_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->update_batch_claim_batch_life_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_batch_life_benefit** | [**Array&lt;ClaimBatchLifeBenefit&gt;**](ClaimBatchLifeBenefit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_life_benefit

> <ClaimBatchLifeBenefitVBAResponse> update_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit)

Update ClaimBatchLifeBenefit

Updates a specific ClaimBatchLifeBenefit.

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

api_instance = Vba::ClaimBatchLifeBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
benefit_code = 'benefit_code_example' # String | Benefit Code
claim_batch_life_benefit = Vba::ClaimBatchLifeBenefit.new({batch_number: 37, benefit_code: 'benefit_code_example'}) # ClaimBatchLifeBenefit | 

begin
  # Update ClaimBatchLifeBenefit
  result = api_instance.update_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->update_claim_batch_life_benefit: #{e}"
end
```

#### Using the update_claim_batch_life_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchLifeBenefitVBAResponse>, Integer, Hash)> update_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit)

```ruby
begin
  # Update ClaimBatchLifeBenefit
  data, status_code, headers = api_instance.update_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchLifeBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchLifeBenefitsApi->update_claim_batch_life_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **benefit_code** | **String** | Benefit Code |  |
| **claim_batch_life_benefit** | [**ClaimBatchLifeBenefit**](ClaimBatchLifeBenefit.md) |  |  |

### Return type

[**ClaimBatchLifeBenefitVBAResponse**](ClaimBatchLifeBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

