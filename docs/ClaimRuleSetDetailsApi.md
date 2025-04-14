# Vba::ClaimRuleSetDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#create_claim_rule_set_detail) | **POST** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details | Create ClaimRuleSetDetail |
| [**delete_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#delete_claim_rule_set_detail) | **DELETE** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details/{claimRuleKey} | Delete ClaimRuleSetDetail |
| [**get_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#get_claim_rule_set_detail) | **GET** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details/{claimRuleKey} | Get ClaimRuleSetDetail |
| [**list_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#list_claim_rule_set_detail) | **GET** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details | List ClaimRuleSetDetail |
| [**update_batch_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#update_batch_claim_rule_set_detail) | **PUT** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details-batch | Create or Update Batch ClaimRuleSetDetail |
| [**update_claim_rule_set_detail**](ClaimRuleSetDetailsApi.md#update_claim_rule_set_detail) | **PUT** /claim-rule-set-headers/{claimRuleSetHeaderKey}/details/{claimRuleKey} | Update ClaimRuleSetDetail |


## create_claim_rule_set_detail

> <ClaimRuleSetDetailVBAResponse> create_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)

Create ClaimRuleSetDetail

Creates a new ClaimRuleSetDetail

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_set_detail = Vba::ClaimRuleSetDetail.new({claim_rule_set_header_key: 37, claim_rule_key: 37, claim_rule_sequence: 37}) # ClaimRuleSetDetail | 

begin
  # Create ClaimRuleSetDetail
  result = api_instance.create_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->create_claim_rule_set_detail: #{e}"
end
```

#### Using the create_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetDetailVBAResponse>, Integer, Hash)> create_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)

```ruby
begin
  # Create ClaimRuleSetDetail
  data, status_code, headers = api_instance.create_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->create_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_set_detail** | [**ClaimRuleSetDetail**](ClaimRuleSetDetail.md) |  |  |

### Return type

[**ClaimRuleSetDetailVBAResponse**](ClaimRuleSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_set_detail

> delete_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)

Delete ClaimRuleSetDetail

Deletes an ClaimRuleSetDetail

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_key = 56 # Integer | ClaimRule Key

begin
  # Delete ClaimRuleSetDetail
  api_instance.delete_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->delete_claim_rule_set_detail: #{e}"
end
```

#### Using the delete_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)

```ruby
begin
  # Delete ClaimRuleSetDetail
  data, status_code, headers = api_instance.delete_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->delete_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_set_detail

> <ClaimRuleSetDetailVBAResponse> get_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)

Get ClaimRuleSetDetail

Gets ClaimRuleSetDetail

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_key = 56 # Integer | ClaimRule Key

begin
  # Get ClaimRuleSetDetail
  result = api_instance.get_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->get_claim_rule_set_detail: #{e}"
end
```

#### Using the get_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetDetailVBAResponse>, Integer, Hash)> get_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)

```ruby
begin
  # Get ClaimRuleSetDetail
  data, status_code, headers = api_instance.get_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->get_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |

### Return type

[**ClaimRuleSetDetailVBAResponse**](ClaimRuleSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_set_detail

> <ClaimRuleSetDetailListVBAResponse> list_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, opts)

List ClaimRuleSetDetail

Lists all ClaimRuleSetDetail for the given claimRuleSetHeaderKey

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleSetDetail
  result = api_instance.list_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->list_claim_rule_set_detail: #{e}"
end
```

#### Using the list_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetDetailListVBAResponse>, Integer, Hash)> list_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts)

```ruby
begin
  # List ClaimRuleSetDetail
  data, status_code, headers = api_instance.list_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->list_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimRuleSetDetailListVBAResponse**](ClaimRuleSetDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_set_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)

Create or Update Batch ClaimRuleSetDetail

Create or Update multiple ClaimRuleSetDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_set_detail = [Vba::ClaimRuleSetDetail.new({claim_rule_set_header_key: 37, claim_rule_key: 37, claim_rule_sequence: 37})] # Array<ClaimRuleSetDetail> | 

begin
  # Create or Update Batch ClaimRuleSetDetail
  result = api_instance.update_batch_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->update_batch_claim_rule_set_detail: #{e}"
end
```

#### Using the update_batch_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)

```ruby
begin
  # Create or Update Batch ClaimRuleSetDetail
  data, status_code, headers = api_instance.update_batch_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->update_batch_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_set_detail** | [**Array&lt;ClaimRuleSetDetail&gt;**](ClaimRuleSetDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule_set_detail

> <ClaimRuleSetDetailVBAResponse> update_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key, claim_rule_set_detail)

Update ClaimRuleSetDetail

Updates a specific ClaimRuleSetDetail.

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

api_instance = Vba::ClaimRuleSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_set_detail = Vba::ClaimRuleSetDetail.new({claim_rule_set_header_key: 37, claim_rule_key: 37, claim_rule_sequence: 37}) # ClaimRuleSetDetail | 

begin
  # Update ClaimRuleSetDetail
  result = api_instance.update_claim_rule_set_detail(vbasoftware_database, claim_rule_set_header_key, claim_rule_key, claim_rule_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->update_claim_rule_set_detail: #{e}"
end
```

#### Using the update_claim_rule_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetDetailVBAResponse>, Integer, Hash)> update_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key, claim_rule_set_detail)

```ruby
begin
  # Update ClaimRuleSetDetail
  data, status_code, headers = api_instance.update_claim_rule_set_detail_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_key, claim_rule_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetDetailsApi->update_claim_rule_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_set_detail** | [**ClaimRuleSetDetail**](ClaimRuleSetDetail.md) |  |  |

### Return type

[**ClaimRuleSetDetailVBAResponse**](ClaimRuleSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

