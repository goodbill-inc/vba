# Vba::ClaimAuditDetailResultsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_detail_result**](ClaimAuditDetailResultsApi.md#create_claim_audit_detail_result) | **POST** /claim-audit-details/{claimAuditDetailKey}/results | Create ClaimAuditDetailResult |
| [**delete_claim_audit_detail_result**](ClaimAuditDetailResultsApi.md#delete_claim_audit_detail_result) | **DELETE** /claim-audit-details/{claimAuditDetailKey}/results/{claimAuditDetailResultKey} | Delete ClaimAuditDetailResult |
| [**get_claim_audit_detail_result**](ClaimAuditDetailResultsApi.md#get_claim_audit_detail_result) | **GET** /claim-audit-details/{claimAuditDetailKey}/results/{claimAuditDetailResultKey} | Get ClaimAuditDetailResult |
| [**list_claim_audit_detail_result**](ClaimAuditDetailResultsApi.md#list_claim_audit_detail_result) | **GET** /claim-audit-details/{claimAuditDetailKey}/results | List ClaimAuditDetailResult |
| [**update_batch_claim_audit_detail_result**](ClaimAuditDetailResultsApi.md#update_batch_claim_audit_detail_result) | **PUT** /claim-audit-details/{claimAuditDetailKey}/results-batch | Create or Update Batch ClaimAuditDetailResult |


## create_claim_audit_detail_result

> <ClaimAuditDetailResultVBAResponse> create_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)

Create ClaimAuditDetailResult

Creates a new ClaimAuditDetailResult

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

api_instance = Vba::ClaimAuditDetailResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
claim_audit_detail_result = Vba::ClaimAuditDetailResult.new({claim_audit_detail_result_key: 37, audit_result: 'audit_result_example', claim_audit_detail_key: 37}) # ClaimAuditDetailResult | 

begin
  # Create ClaimAuditDetailResult
  result = api_instance.create_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->create_claim_audit_detail_result: #{e}"
end
```

#### Using the create_claim_audit_detail_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailResultVBAResponse>, Integer, Hash)> create_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)

```ruby
begin
  # Create ClaimAuditDetailResult
  data, status_code, headers = api_instance.create_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->create_claim_audit_detail_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **claim_audit_detail_result** | [**ClaimAuditDetailResult**](ClaimAuditDetailResult.md) |  |  |

### Return type

[**ClaimAuditDetailResultVBAResponse**](ClaimAuditDetailResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_detail_result

> delete_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)

Delete ClaimAuditDetailResult

Deletes an ClaimAuditDetailResult

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

api_instance = Vba::ClaimAuditDetailResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
claim_audit_detail_result_key = 56 # Integer | ClaimAuditDetailResult Key

begin
  # Delete ClaimAuditDetailResult
  api_instance.delete_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->delete_claim_audit_detail_result: #{e}"
end
```

#### Using the delete_claim_audit_detail_result_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)

```ruby
begin
  # Delete ClaimAuditDetailResult
  data, status_code, headers = api_instance.delete_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->delete_claim_audit_detail_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **claim_audit_detail_result_key** | **Integer** | ClaimAuditDetailResult Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_detail_result

> <ClaimAuditDetailResultVBAResponse> get_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)

Get ClaimAuditDetailResult

Gets ClaimAuditDetailResult

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

api_instance = Vba::ClaimAuditDetailResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
claim_audit_detail_result_key = 56 # Integer | ClaimAuditDetailResult Key

begin
  # Get ClaimAuditDetailResult
  result = api_instance.get_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->get_claim_audit_detail_result: #{e}"
end
```

#### Using the get_claim_audit_detail_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailResultVBAResponse>, Integer, Hash)> get_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)

```ruby
begin
  # Get ClaimAuditDetailResult
  data, status_code, headers = api_instance.get_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->get_claim_audit_detail_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **claim_audit_detail_result_key** | **Integer** | ClaimAuditDetailResult Key |  |

### Return type

[**ClaimAuditDetailResultVBAResponse**](ClaimAuditDetailResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_detail_result

> <ClaimAuditDetailResultListVBAResponse> list_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, opts)

List ClaimAuditDetailResult

Lists all ClaimAuditDetailResult for the given claimAuditDetailKey

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

api_instance = Vba::ClaimAuditDetailResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditDetailResult
  result = api_instance.list_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->list_claim_audit_detail_result: #{e}"
end
```

#### Using the list_claim_audit_detail_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditDetailResultListVBAResponse>, Integer, Hash)> list_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, opts)

```ruby
begin
  # List ClaimAuditDetailResult
  data, status_code, headers = api_instance.list_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->list_claim_audit_detail_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimAuditDetailResultListVBAResponse**](ClaimAuditDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_detail_result

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)

Create or Update Batch ClaimAuditDetailResult

Create multiple ClaimAuditDetailResult at once.  If the entity exists, it will be updated. 

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

api_instance = Vba::ClaimAuditDetailResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_detail_key = 56 # Integer | ClaimAuditDetail Key
claim_audit_detail_result = [Vba::ClaimAuditDetailResult.new({claim_audit_detail_result_key: 37, audit_result: 'audit_result_example', claim_audit_detail_key: 37})] # Array<ClaimAuditDetailResult> | 

begin
  # Create or Update Batch ClaimAuditDetailResult
  result = api_instance.update_batch_claim_audit_detail_result(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->update_batch_claim_audit_detail_result: #{e}"
end
```

#### Using the update_batch_claim_audit_detail_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)

```ruby
begin
  # Create or Update Batch ClaimAuditDetailResult
  data, status_code, headers = api_instance.update_batch_claim_audit_detail_result_with_http_info(vbasoftware_database, claim_audit_detail_key, claim_audit_detail_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditDetailResultsApi->update_batch_claim_audit_detail_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_detail_key** | **Integer** | ClaimAuditDetail Key |  |
| **claim_audit_detail_result** | [**Array&lt;ClaimAuditDetailResult&gt;**](ClaimAuditDetailResult.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

