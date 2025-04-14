# Vba::ClaimDisabilityDeductionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#create_claim_disability_deduction) | **POST** /claim-disability-deductions | Create ClaimDisabilityDeduction |
| [**delete_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#delete_claim_disability_deduction) | **DELETE** /claim-disability-deductions/{batchNumber} | Delete ClaimDisabilityDeduction |
| [**get_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#get_claim_disability_deduction) | **GET** /claim-disability-deductions/{batchNumber} | Get ClaimDisabilityDeduction |
| [**list_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#list_claim_disability_deduction) | **GET** /claim-disability-deductions | List ClaimDisabilityDeduction |
| [**update_batch_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#update_batch_claim_disability_deduction) | **PUT** /claim-disability-deductions-batch | Create or Update Batch ClaimDisabilityDeduction |
| [**update_claim_disability_deduction**](ClaimDisabilityDeductionsApi.md#update_claim_disability_deduction) | **PUT** /claim-disability-deductions/{batchNumber} | Update ClaimDisabilityDeduction |


## create_claim_disability_deduction

> <ClaimDisabilityDeductionVBAResponse> create_claim_disability_deduction(vbasoftware_database, claim_disability_deduction)

Create ClaimDisabilityDeduction

Creates a new ClaimDisabilityDeduction

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_disability_deduction = Vba::ClaimDisabilityDeduction.new({batch_number: 37, deduction_pct: false, pre_gross: false, pre_tax: false, third_party_payment: false}) # ClaimDisabilityDeduction | 

begin
  # Create ClaimDisabilityDeduction
  result = api_instance.create_claim_disability_deduction(vbasoftware_database, claim_disability_deduction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->create_claim_disability_deduction: #{e}"
end
```

#### Using the create_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityDeductionVBAResponse>, Integer, Hash)> create_claim_disability_deduction_with_http_info(vbasoftware_database, claim_disability_deduction)

```ruby
begin
  # Create ClaimDisabilityDeduction
  data, status_code, headers = api_instance.create_claim_disability_deduction_with_http_info(vbasoftware_database, claim_disability_deduction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityDeductionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->create_claim_disability_deduction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_disability_deduction** | [**ClaimDisabilityDeduction**](ClaimDisabilityDeduction.md) |  |  |

### Return type

[**ClaimDisabilityDeductionVBAResponse**](ClaimDisabilityDeductionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_disability_deduction

> delete_claim_disability_deduction(vbasoftware_database, batch_number)

Delete ClaimDisabilityDeduction

Deletes an ClaimDisabilityDeduction

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Delete ClaimDisabilityDeduction
  api_instance.delete_claim_disability_deduction(vbasoftware_database, batch_number)
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->delete_claim_disability_deduction: #{e}"
end
```

#### Using the delete_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Delete ClaimDisabilityDeduction
  data, status_code, headers = api_instance.delete_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->delete_claim_disability_deduction_with_http_info: #{e}"
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


## get_claim_disability_deduction

> <ClaimDisabilityDeductionVBAResponse> get_claim_disability_deduction(vbasoftware_database, batch_number)

Get ClaimDisabilityDeduction

Gets ClaimDisabilityDeduction

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Get ClaimDisabilityDeduction
  result = api_instance.get_claim_disability_deduction(vbasoftware_database, batch_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->get_claim_disability_deduction: #{e}"
end
```

#### Using the get_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityDeductionVBAResponse>, Integer, Hash)> get_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Get ClaimDisabilityDeduction
  data, status_code, headers = api_instance.get_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityDeductionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->get_claim_disability_deduction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

[**ClaimDisabilityDeductionVBAResponse**](ClaimDisabilityDeductionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_disability_deduction

> <ClaimDisabilityDeductionListVBAResponse> list_claim_disability_deduction(vbasoftware_database, opts)

List ClaimDisabilityDeduction

Lists all ClaimDisabilityDeduction

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimDisabilityDeduction
  result = api_instance.list_claim_disability_deduction(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->list_claim_disability_deduction: #{e}"
end
```

#### Using the list_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityDeductionListVBAResponse>, Integer, Hash)> list_claim_disability_deduction_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimDisabilityDeduction
  data, status_code, headers = api_instance.list_claim_disability_deduction_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityDeductionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->list_claim_disability_deduction_with_http_info: #{e}"
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

[**ClaimDisabilityDeductionListVBAResponse**](ClaimDisabilityDeductionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_disability_deduction

> <MultiCodeResponseListVBAResponse> update_batch_claim_disability_deduction(vbasoftware_database, claim_disability_deduction)

Create or Update Batch ClaimDisabilityDeduction

Create or Update multiple ClaimDisabilityDeduction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_disability_deduction = [Vba::ClaimDisabilityDeduction.new({batch_number: 37, deduction_pct: false, pre_gross: false, pre_tax: false, third_party_payment: false})] # Array<ClaimDisabilityDeduction> | 

begin
  # Create or Update Batch ClaimDisabilityDeduction
  result = api_instance.update_batch_claim_disability_deduction(vbasoftware_database, claim_disability_deduction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->update_batch_claim_disability_deduction: #{e}"
end
```

#### Using the update_batch_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_disability_deduction_with_http_info(vbasoftware_database, claim_disability_deduction)

```ruby
begin
  # Create or Update Batch ClaimDisabilityDeduction
  data, status_code, headers = api_instance.update_batch_claim_disability_deduction_with_http_info(vbasoftware_database, claim_disability_deduction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->update_batch_claim_disability_deduction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_disability_deduction** | [**Array&lt;ClaimDisabilityDeduction&gt;**](ClaimDisabilityDeduction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_disability_deduction

> <ClaimDisabilityDeductionVBAResponse> update_claim_disability_deduction(vbasoftware_database, batch_number, claim_disability_deduction)

Update ClaimDisabilityDeduction

Updates a specific ClaimDisabilityDeduction.

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

api_instance = Vba::ClaimDisabilityDeductionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_disability_deduction = Vba::ClaimDisabilityDeduction.new({batch_number: 37, deduction_pct: false, pre_gross: false, pre_tax: false, third_party_payment: false}) # ClaimDisabilityDeduction | 

begin
  # Update ClaimDisabilityDeduction
  result = api_instance.update_claim_disability_deduction(vbasoftware_database, batch_number, claim_disability_deduction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->update_claim_disability_deduction: #{e}"
end
```

#### Using the update_claim_disability_deduction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityDeductionVBAResponse>, Integer, Hash)> update_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number, claim_disability_deduction)

```ruby
begin
  # Update ClaimDisabilityDeduction
  data, status_code, headers = api_instance.update_claim_disability_deduction_with_http_info(vbasoftware_database, batch_number, claim_disability_deduction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityDeductionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilityDeductionsApi->update_claim_disability_deduction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_disability_deduction** | [**ClaimDisabilityDeduction**](ClaimDisabilityDeduction.md) |  |  |

### Return type

[**ClaimDisabilityDeductionVBAResponse**](ClaimDisabilityDeductionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

