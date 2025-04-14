# Vba::ClaimAuditAppealResultsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#create_claim_audit_appeal_result) | **POST** /claim-audit-appeal-results | Create ClaimAuditAppealResult |
| [**delete_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#delete_claim_audit_appeal_result) | **DELETE** /claim-audit-appeal-results/{appealResult} | Delete ClaimAuditAppealResult |
| [**get_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#get_claim_audit_appeal_result) | **GET** /claim-audit-appeal-results/{appealResult} | Get ClaimAuditAppealResult |
| [**list_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#list_claim_audit_appeal_result) | **GET** /claim-audit-appeal-results | List ClaimAuditAppealResult |
| [**update_batch_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#update_batch_claim_audit_appeal_result) | **PUT** /claim-audit-appeal-results-batch | Create or Update Batch ClaimAuditAppealResult |
| [**update_claim_audit_appeal_result**](ClaimAuditAppealResultsApi.md#update_claim_audit_appeal_result) | **PUT** /claim-audit-appeal-results/{appealResult} | Update ClaimAuditAppealResult |


## create_claim_audit_appeal_result

> <ClaimAuditAppealResultVBAResponse> create_claim_audit_appeal_result(vbasoftware_database, claim_audit_appeal_result)

Create ClaimAuditAppealResult

Creates a new ClaimAuditAppealResult

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_appeal_result = Vba::ClaimAuditAppealResult.new({appeal_result: 'appeal_result_example'}) # ClaimAuditAppealResult | 

begin
  # Create ClaimAuditAppealResult
  result = api_instance.create_claim_audit_appeal_result(vbasoftware_database, claim_audit_appeal_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->create_claim_audit_appeal_result: #{e}"
end
```

#### Using the create_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealResultVBAResponse>, Integer, Hash)> create_claim_audit_appeal_result_with_http_info(vbasoftware_database, claim_audit_appeal_result)

```ruby
begin
  # Create ClaimAuditAppealResult
  data, status_code, headers = api_instance.create_claim_audit_appeal_result_with_http_info(vbasoftware_database, claim_audit_appeal_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->create_claim_audit_appeal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_appeal_result** | [**ClaimAuditAppealResult**](ClaimAuditAppealResult.md) |  |  |

### Return type

[**ClaimAuditAppealResultVBAResponse**](ClaimAuditAppealResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_appeal_result

> delete_claim_audit_appeal_result(vbasoftware_database, appeal_result)

Delete ClaimAuditAppealResult

Deletes an ClaimAuditAppealResult

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_result = 'appeal_result_example' # String | Appeal Result

begin
  # Delete ClaimAuditAppealResult
  api_instance.delete_claim_audit_appeal_result(vbasoftware_database, appeal_result)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->delete_claim_audit_appeal_result: #{e}"
end
```

#### Using the delete_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result)

```ruby
begin
  # Delete ClaimAuditAppealResult
  data, status_code, headers = api_instance.delete_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->delete_claim_audit_appeal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_result** | **String** | Appeal Result |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_appeal_result

> <ClaimAuditAppealResultVBAResponse> get_claim_audit_appeal_result(vbasoftware_database, appeal_result)

Get ClaimAuditAppealResult

Gets ClaimAuditAppealResult

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_result = 'appeal_result_example' # String | Appeal Result

begin
  # Get ClaimAuditAppealResult
  result = api_instance.get_claim_audit_appeal_result(vbasoftware_database, appeal_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->get_claim_audit_appeal_result: #{e}"
end
```

#### Using the get_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealResultVBAResponse>, Integer, Hash)> get_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result)

```ruby
begin
  # Get ClaimAuditAppealResult
  data, status_code, headers = api_instance.get_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->get_claim_audit_appeal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_result** | **String** | Appeal Result |  |

### Return type

[**ClaimAuditAppealResultVBAResponse**](ClaimAuditAppealResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_appeal_result

> <ClaimAuditAppealResultListVBAResponse> list_claim_audit_appeal_result(vbasoftware_database, opts)

List ClaimAuditAppealResult

Lists all ClaimAuditAppealResult

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditAppealResult
  result = api_instance.list_claim_audit_appeal_result(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->list_claim_audit_appeal_result: #{e}"
end
```

#### Using the list_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealResultListVBAResponse>, Integer, Hash)> list_claim_audit_appeal_result_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAuditAppealResult
  data, status_code, headers = api_instance.list_claim_audit_appeal_result_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->list_claim_audit_appeal_result_with_http_info: #{e}"
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

[**ClaimAuditAppealResultListVBAResponse**](ClaimAuditAppealResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_appeal_result

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_appeal_result(vbasoftware_database, claim_audit_appeal_result)

Create or Update Batch ClaimAuditAppealResult

Create or Update multiple ClaimAuditAppealResult at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_appeal_result = [Vba::ClaimAuditAppealResult.new({appeal_result: 'appeal_result_example'})] # Array<ClaimAuditAppealResult> | 

begin
  # Create or Update Batch ClaimAuditAppealResult
  result = api_instance.update_batch_claim_audit_appeal_result(vbasoftware_database, claim_audit_appeal_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->update_batch_claim_audit_appeal_result: #{e}"
end
```

#### Using the update_batch_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_appeal_result_with_http_info(vbasoftware_database, claim_audit_appeal_result)

```ruby
begin
  # Create or Update Batch ClaimAuditAppealResult
  data, status_code, headers = api_instance.update_batch_claim_audit_appeal_result_with_http_info(vbasoftware_database, claim_audit_appeal_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->update_batch_claim_audit_appeal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_appeal_result** | [**Array&lt;ClaimAuditAppealResult&gt;**](ClaimAuditAppealResult.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_appeal_result

> <ClaimAuditAppealResultVBAResponse> update_claim_audit_appeal_result(vbasoftware_database, appeal_result, claim_audit_appeal_result)

Update ClaimAuditAppealResult

Updates a specific ClaimAuditAppealResult.

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

api_instance = Vba::ClaimAuditAppealResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_result = 'appeal_result_example' # String | Appeal Result
claim_audit_appeal_result = Vba::ClaimAuditAppealResult.new({appeal_result: 'appeal_result_example'}) # ClaimAuditAppealResult | 

begin
  # Update ClaimAuditAppealResult
  result = api_instance.update_claim_audit_appeal_result(vbasoftware_database, appeal_result, claim_audit_appeal_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->update_claim_audit_appeal_result: #{e}"
end
```

#### Using the update_claim_audit_appeal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealResultVBAResponse>, Integer, Hash)> update_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result, claim_audit_appeal_result)

```ruby
begin
  # Update ClaimAuditAppealResult
  data, status_code, headers = api_instance.update_claim_audit_appeal_result_with_http_info(vbasoftware_database, appeal_result, claim_audit_appeal_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealResultsApi->update_claim_audit_appeal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_result** | **String** | Appeal Result |  |
| **claim_audit_appeal_result** | [**ClaimAuditAppealResult**](ClaimAuditAppealResult.md) |  |  |

### Return type

[**ClaimAuditAppealResultVBAResponse**](ClaimAuditAppealResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

