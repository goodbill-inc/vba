# Vba::ClaimAuditDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_detail**](ClaimAuditDetailsApi.md#create_claim_audit_detail) | **POST** /claim-audits/{claimAuditKey}/details | Create ClaimAuditDetail |
| [**delete_claim_audit_detail**](ClaimAuditDetailsApi.md#delete_claim_audit_detail) | **DELETE** /claim-audits/{claimAuditKey}/details/{claimAuditDetailKey} | Delete ClaimAuditDetail |
| [**get_claim_audit_detail**](ClaimAuditDetailsApi.md#get_claim_audit_detail) | **GET** /claim-audits/{claimAuditKey}/details/{claimAuditDetailKey} | Get ClaimAuditDetail |
| [**list_claim_audit_detail**](ClaimAuditDetailsApi.md#list_claim_audit_detail) | **GET** /claim-audits/{claimAuditKey}/details | List ClaimAuditDetail |
| [**update_batch_claim_audit_detail**](ClaimAuditDetailsApi.md#update_batch_claim_audit_detail) | **PUT** /claim-audits/{claimAuditKey}/details-batch | Create or Update Batch ClaimAuditDetail |
| [**update_claim_audit_detail**](ClaimAuditDetailsApi.md#update_claim_audit_detail) | **PUT** /claim-audits/{claimAuditKey}/details/{claimAuditDetailKey} | Update ClaimAuditDetail |


## create_claim_audit_detail

> <ClaimAuditDetailVBAResponse> create_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail)

Create ClaimAuditDetail

Creates a new ClaimAuditDetail

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit_detail = Vba::ClaimAuditDetail.new({claim_audit_detail_key: 37, appeal: false, appeal_overturn: false, batch_claim: 37, batch_number: 37, claim_audit_key: 37}) # ClaimAuditDetail | 

begin
  # Create ClaimAuditDetail
  result = api_instance.create_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->create_claim_audit_detail: #{e}"
end
```

#### Using the create_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailVBAResponse>, Integer, Hash)> create_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail)

```ruby
begin
  # Create ClaimAuditDetail
  data, status_code, headers = api_instance.create_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->create_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit_detail** | [**ClaimAuditDetail**](ClaimAuditDetail.md) |  |  |

### Return type

[**ClaimAuditDetailVBAResponse**](ClaimAuditDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_detail

> delete_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key)

Delete ClaimAuditDetail

Deletes an ClaimAuditDetail

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key

begin
  # Delete ClaimAuditDetail
  api_instance.delete_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->delete_claim_audit_detail: #{e}"
end
```

#### Using the delete_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key)

```ruby
begin
  # Delete ClaimAuditDetail
  data, status_code, headers = api_instance.delete_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->delete_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_detail

> <ClaimAuditDetailVBAResponse> get_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key)

Get ClaimAuditDetail

Gets ClaimAuditDetail

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key

begin
  # Get ClaimAuditDetail
  result = api_instance.get_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->get_claim_audit_detail: #{e}"
end
```

#### Using the get_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailVBAResponse>, Integer, Hash)> get_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key)

```ruby
begin
  # Get ClaimAuditDetail
  data, status_code, headers = api_instance.get_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->get_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |

### Return type

[**ClaimAuditDetailVBAResponse**](ClaimAuditDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_detail

> <ClaimAuditDetailListVBAResponse> list_claim_audit_detail(vbasoftware_database, claim_audit_key, opts)

List ClaimAuditDetail

Lists all ClaimAuditDetail for the given claimAuditKey

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditDetail
  result = api_instance.list_claim_audit_detail(vbasoftware_database, claim_audit_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->list_claim_audit_detail: #{e}"
end
```

#### Using the list_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailListVBAResponse>, Integer, Hash)> list_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, opts)

```ruby
begin
  # List ClaimAuditDetail
  data, status_code, headers = api_instance.list_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->list_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimAuditDetailListVBAResponse**](ClaimAuditDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_detail

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail)

Create or Update Batch ClaimAuditDetail

Create or Update multiple ClaimAuditDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit_detail = [Vba::ClaimAuditDetail.new({claim_audit_detail_key: 37, appeal: false, appeal_overturn: false, batch_claim: 37, batch_number: 37, claim_audit_key: 37})] # Array<ClaimAuditDetail> | 

begin
  # Create or Update Batch ClaimAuditDetail
  result = api_instance.update_batch_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->update_batch_claim_audit_detail: #{e}"
end
```

#### Using the update_batch_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail)

```ruby
begin
  # Create or Update Batch ClaimAuditDetail
  data, status_code, headers = api_instance.update_batch_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->update_batch_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit_detail** | [**Array&lt;ClaimAuditDetail&gt;**](ClaimAuditDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_detail

> <ClaimAuditDetailVBAResponse> update_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key, claim_audit_detail)

Update ClaimAuditDetail

Updates a specific ClaimAuditDetail.

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

api_instance = Vba::ClaimAuditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
claim_audit_detail = Vba::ClaimAuditDetail.new({claim_audit_detail_key: 37, appeal: false, appeal_overturn: false, batch_claim: 37, batch_number: 37, claim_audit_key: 37}) # ClaimAuditDetail | 

begin
  # Update ClaimAuditDetail
  result = api_instance.update_claim_audit_detail(vbasoftware_database, claim_audit_key, claim_audit_detail_key, claim_audit_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->update_claim_audit_detail: #{e}"
end
```

#### Using the update_claim_audit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailVBAResponse>, Integer, Hash)> update_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key, claim_audit_detail)

```ruby
begin
  # Update ClaimAuditDetail
  data, status_code, headers = api_instance.update_claim_audit_detail_with_http_info(vbasoftware_database, claim_audit_key, claim_audit_detail_key, claim_audit_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailsApi->update_claim_audit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **claim_audit_detail** | [**ClaimAuditDetail**](ClaimAuditDetail.md) |  |  |

### Return type

[**ClaimAuditDetailVBAResponse**](ClaimAuditDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

