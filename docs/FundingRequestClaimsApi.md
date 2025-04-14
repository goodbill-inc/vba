# Vba::FundingRequestClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_request_claim**](FundingRequestClaimsApi.md#create_funding_request_claim) | **POST** /funding-requests/{requestKey}/claims | Create FundingRequestClaim |
| [**delete_funding_request_claim**](FundingRequestClaimsApi.md#delete_funding_request_claim) | **DELETE** /funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim} | Delete FundingRequestClaim |
| [**get_funding_request_claim**](FundingRequestClaimsApi.md#get_funding_request_claim) | **GET** /funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim} | Get FundingRequestClaim |
| [**list_funding_request_claim**](FundingRequestClaimsApi.md#list_funding_request_claim) | **GET** /funding-requests/{requestKey}/claims | List FundingRequestClaim |
| [**list_funding_request_claim_summary**](FundingRequestClaimsApi.md#list_funding_request_claim_summary) | **GET** /funding-requests/{requestKey}/claims-summary | List FundingRequestClaim Summary |
| [**update_batch_funding_request_claim**](FundingRequestClaimsApi.md#update_batch_funding_request_claim) | **PUT** /funding-requests/{requestKey}/claims-batch | Create or Update Batch FundingRequestClaim |
| [**update_funding_request_claim**](FundingRequestClaimsApi.md#update_funding_request_claim) | **PUT** /funding-requests/{requestKey}/claims/{batchNumber}/{batchClaim} | Update FundingRequestClaim |


## create_funding_request_claim

> <FundingRequestClaimVBAResponse> create_funding_request_claim(vbasoftware_database, request_key, funding_request_claim)

Create FundingRequestClaim

Creates a new FundingRequestClaim

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_request_claim = Vba::FundingRequestClaim.new({batch_number: 37, batch_claim: 37, request_key: 37, funded: false}) # FundingRequestClaim | 

begin
  # Create FundingRequestClaim
  result = api_instance.create_funding_request_claim(vbasoftware_database, request_key, funding_request_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->create_funding_request_claim: #{e}"
end
```

#### Using the create_funding_request_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestClaimVBAResponse>, Integer, Hash)> create_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim)

```ruby
begin
  # Create FundingRequestClaim
  data, status_code, headers = api_instance.create_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->create_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_request_claim** | [**FundingRequestClaim**](FundingRequestClaim.md) |  |  |

### Return type

[**FundingRequestClaimVBAResponse**](FundingRequestClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_request_claim

> delete_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim)

Delete FundingRequestClaim

Deletes an FundingRequestClaim

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete FundingRequestClaim
  api_instance.delete_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->delete_funding_request_claim: #{e}"
end
```

#### Using the delete_funding_request_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim)

```ruby
begin
  # Delete FundingRequestClaim
  data, status_code, headers = api_instance.delete_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->delete_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_request_claim

> <FundingRequestClaimVBAResponse> get_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim)

Get FundingRequestClaim

Gets FundingRequestClaim

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get FundingRequestClaim
  result = api_instance.get_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->get_funding_request_claim: #{e}"
end
```

#### Using the get_funding_request_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestClaimVBAResponse>, Integer, Hash)> get_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim)

```ruby
begin
  # Get FundingRequestClaim
  data, status_code, headers = api_instance.get_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->get_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**FundingRequestClaimVBAResponse**](FundingRequestClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_request_claim

> <FundingRequestClaimListVBAResponse> list_funding_request_claim(vbasoftware_database, request_key, opts)

List FundingRequestClaim

Lists all FundingRequestClaim for the given requestKey

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingRequestClaim
  result = api_instance.list_funding_request_claim(vbasoftware_database, request_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->list_funding_request_claim: #{e}"
end
```

#### Using the list_funding_request_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestClaimListVBAResponse>, Integer, Hash)> list_funding_request_claim_with_http_info(vbasoftware_database, request_key, opts)

```ruby
begin
  # List FundingRequestClaim
  data, status_code, headers = api_instance.list_funding_request_claim_with_http_info(vbasoftware_database, request_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestClaimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->list_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FundingRequestClaimListVBAResponse**](FundingRequestClaimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_request_claim_summary

> <VBAFundingRequestClaimSummaryListVBAResponse> list_funding_request_claim_summary(vbasoftware_database, request_key)

List FundingRequestClaim Summary

Lists all FundingRequestClaim Summary for the given requestKey.  The Summary view has additional computed fields that are ot present on the FundingRequestClaim object.

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key

begin
  # List FundingRequestClaim Summary
  result = api_instance.list_funding_request_claim_summary(vbasoftware_database, request_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->list_funding_request_claim_summary: #{e}"
end
```

#### Using the list_funding_request_claim_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAFundingRequestClaimSummaryListVBAResponse>, Integer, Hash)> list_funding_request_claim_summary_with_http_info(vbasoftware_database, request_key)

```ruby
begin
  # List FundingRequestClaim Summary
  data, status_code, headers = api_instance.list_funding_request_claim_summary_with_http_info(vbasoftware_database, request_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAFundingRequestClaimSummaryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->list_funding_request_claim_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |

### Return type

[**VBAFundingRequestClaimSummaryListVBAResponse**](VBAFundingRequestClaimSummaryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_request_claim

> <MultiCodeResponseListVBAResponse> update_batch_funding_request_claim(vbasoftware_database, request_key, funding_request_claim)

Create or Update Batch FundingRequestClaim

Create or Update multiple FundingRequestClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
funding_request_claim = [Vba::FundingRequestClaim.new({batch_number: 37, batch_claim: 37, request_key: 37, funded: false})] # Array<FundingRequestClaim> | 

begin
  # Create or Update Batch FundingRequestClaim
  result = api_instance.update_batch_funding_request_claim(vbasoftware_database, request_key, funding_request_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->update_batch_funding_request_claim: #{e}"
end
```

#### Using the update_batch_funding_request_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim)

```ruby
begin
  # Create or Update Batch FundingRequestClaim
  data, status_code, headers = api_instance.update_batch_funding_request_claim_with_http_info(vbasoftware_database, request_key, funding_request_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->update_batch_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **funding_request_claim** | [**Array&lt;FundingRequestClaim&gt;**](FundingRequestClaim.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_request_claim

> <FundingRequestClaimVBAResponse> update_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim)

Update FundingRequestClaim

Updates a specific FundingRequestClaim.

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

api_instance = Vba::FundingRequestClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_key = 56 # Integer | Request Key
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
funding_request_claim = Vba::FundingRequestClaim.new({batch_number: 37, batch_claim: 37, request_key: 37, funded: false}) # FundingRequestClaim | 

begin
  # Update FundingRequestClaim
  result = api_instance.update_funding_request_claim(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->update_funding_request_claim: #{e}"
end
```

#### Using the update_funding_request_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestClaimVBAResponse>, Integer, Hash)> update_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim)

```ruby
begin
  # Update FundingRequestClaim
  data, status_code, headers = api_instance.update_funding_request_claim_with_http_info(vbasoftware_database, request_key, batch_number, batch_claim, funding_request_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestClaimsApi->update_funding_request_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_key** | **Integer** | Request Key |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **funding_request_claim** | [**FundingRequestClaim**](FundingRequestClaim.md) |  |  |

### Return type

[**FundingRequestClaimVBAResponse**](FundingRequestClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

