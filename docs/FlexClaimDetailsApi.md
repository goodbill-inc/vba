# Vba::FlexClaimDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_flex_detail**](FlexClaimDetailsApi.md#create_claim_flex_detail) | **POST** /flex-claims/{claimFlexKey}/details | Create ClaimFlexDetail |
| [**delete_claim_flex_detail**](FlexClaimDetailsApi.md#delete_claim_flex_detail) | **DELETE** /flex-claims/{claimFlexKey}/details/{batchNumber}/{batchClaim} | Delete ClaimFlexDetail |
| [**get_claim_flex_detail**](FlexClaimDetailsApi.md#get_claim_flex_detail) | **GET** /flex-claims/{claimFlexKey}/details/{batchNumber}/{batchClaim} | Get ClaimFlexDetail |
| [**list_claim_flex_detail**](FlexClaimDetailsApi.md#list_claim_flex_detail) | **GET** /flex-claims/{claimFlexKey}/details | List ClaimFlexDetail |
| [**update_batch_claim_flex_detail**](FlexClaimDetailsApi.md#update_batch_claim_flex_detail) | **PUT** /flex-claims/{claimFlexKey}/details-batch | Create or Update Batch ClaimFlexDetail |
| [**update_claim_flex_detail**](FlexClaimDetailsApi.md#update_claim_flex_detail) | **PUT** /flex-claims/{claimFlexKey}/details/{batchNumber}/{batchClaim} | Update ClaimFlexDetail |


## create_claim_flex_detail

> <ClaimFlexDetailVBAResponse> create_claim_flex_detail(vbasoftware_database, claim_flex_key, claim_flex_detail)

Create ClaimFlexDetail

Creates a new ClaimFlexDetail

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_detail = Vba::ClaimFlexDetail.new({claim_flex_key: 37, batch_number: 37, batch_claim: 37}) # ClaimFlexDetail | 

begin
  # Create ClaimFlexDetail
  result = api_instance.create_claim_flex_detail(vbasoftware_database, claim_flex_key, claim_flex_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->create_claim_flex_detail: #{e}"
end
```

#### Using the create_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexDetailVBAResponse>, Integer, Hash)> create_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_detail)

```ruby
begin
  # Create ClaimFlexDetail
  data, status_code, headers = api_instance.create_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->create_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_detail** | [**ClaimFlexDetail**](ClaimFlexDetail.md) |  |  |

### Return type

[**ClaimFlexDetailVBAResponse**](ClaimFlexDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_flex_detail

> delete_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim)

Delete ClaimFlexDetail

Deletes an ClaimFlexDetail

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete ClaimFlexDetail
  api_instance.delete_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->delete_claim_flex_detail: #{e}"
end
```

#### Using the delete_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim)

```ruby
begin
  # Delete ClaimFlexDetail
  data, status_code, headers = api_instance.delete_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->delete_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_flex_detail

> <ClaimFlexDetailVBAResponse> get_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim)

Get ClaimFlexDetail

Gets ClaimFlexDetail

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get ClaimFlexDetail
  result = api_instance.get_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->get_claim_flex_detail: #{e}"
end
```

#### Using the get_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexDetailVBAResponse>, Integer, Hash)> get_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim)

```ruby
begin
  # Get ClaimFlexDetail
  data, status_code, headers = api_instance.get_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->get_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**ClaimFlexDetailVBAResponse**](ClaimFlexDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_flex_detail

> <ClaimFlexDetailListVBAResponse> list_claim_flex_detail(vbasoftware_database, claim_flex_key, opts)

List ClaimFlexDetail

Lists all ClaimFlexDetail for the given claimFlexKey

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimFlexDetail
  result = api_instance.list_claim_flex_detail(vbasoftware_database, claim_flex_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->list_claim_flex_detail: #{e}"
end
```

#### Using the list_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexDetailListVBAResponse>, Integer, Hash)> list_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, opts)

```ruby
begin
  # List ClaimFlexDetail
  data, status_code, headers = api_instance.list_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->list_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimFlexDetailListVBAResponse**](ClaimFlexDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_flex_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_flex_detail(vbasoftware_database, claim_flex_key, claim_flex_detail)

Create or Update Batch ClaimFlexDetail

Create or Update multiple ClaimFlexDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_detail = [Vba::ClaimFlexDetail.new({claim_flex_key: 37, batch_number: 37, batch_claim: 37})] # Array<ClaimFlexDetail> | 

begin
  # Create or Update Batch ClaimFlexDetail
  result = api_instance.update_batch_claim_flex_detail(vbasoftware_database, claim_flex_key, claim_flex_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->update_batch_claim_flex_detail: #{e}"
end
```

#### Using the update_batch_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_detail)

```ruby
begin
  # Create or Update Batch ClaimFlexDetail
  data, status_code, headers = api_instance.update_batch_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->update_batch_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_detail** | [**Array&lt;ClaimFlexDetail&gt;**](ClaimFlexDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_flex_detail

> <ClaimFlexDetailVBAResponse> update_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim, claim_flex_detail)

Update ClaimFlexDetail

Updates a specific ClaimFlexDetail.

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

api_instance = Vba::FlexClaimDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_flex_detail = Vba::ClaimFlexDetail.new({claim_flex_key: 37, batch_number: 37, batch_claim: 37}) # ClaimFlexDetail | 

begin
  # Update ClaimFlexDetail
  result = api_instance.update_claim_flex_detail(vbasoftware_database, claim_flex_key, batch_number, batch_claim, claim_flex_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->update_claim_flex_detail: #{e}"
end
```

#### Using the update_claim_flex_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexDetailVBAResponse>, Integer, Hash)> update_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim, claim_flex_detail)

```ruby
begin
  # Update ClaimFlexDetail
  data, status_code, headers = api_instance.update_claim_flex_detail_with_http_info(vbasoftware_database, claim_flex_key, batch_number, batch_claim, claim_flex_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimDetailsApi->update_claim_flex_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_flex_detail** | [**ClaimFlexDetail**](ClaimFlexDetail.md) |  |  |

### Return type

[**ClaimFlexDetailVBAResponse**](ClaimFlexDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

