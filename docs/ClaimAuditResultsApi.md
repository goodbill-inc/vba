# Vba::ClaimAuditResultsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_result**](ClaimAuditResultsApi.md#create_claim_audit_result) | **POST** /claim-audit-results | Create ClaimAuditResult |
| [**delete_claim_audit_result**](ClaimAuditResultsApi.md#delete_claim_audit_result) | **DELETE** /claim-audit-results/{auditResult} | Delete ClaimAuditResult |
| [**get_claim_audit_result**](ClaimAuditResultsApi.md#get_claim_audit_result) | **GET** /claim-audit-results/{auditResult} | Get ClaimAuditResult |
| [**list_claim_audit_result**](ClaimAuditResultsApi.md#list_claim_audit_result) | **GET** /claim-audit-results | List ClaimAuditResult |
| [**update_batch_claim_audit_result**](ClaimAuditResultsApi.md#update_batch_claim_audit_result) | **PUT** /claim-audit-results-batch | Create or Update Batch ClaimAuditResult |
| [**update_claim_audit_result**](ClaimAuditResultsApi.md#update_claim_audit_result) | **PUT** /claim-audit-results/{auditResult} | Update ClaimAuditResult |


## create_claim_audit_result

> <ClaimAuditResultVBAResponse> create_claim_audit_result(vbasoftware_database, claim_audit_result)

Create ClaimAuditResult

Creates a new ClaimAuditResult

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_result = Vba::ClaimAuditResult.new({audit_result: 'audit_result_example', fail_result: false, pass_result: false}) # ClaimAuditResult | 

begin
  # Create ClaimAuditResult
  result = api_instance.create_claim_audit_result(vbasoftware_database, claim_audit_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->create_claim_audit_result: #{e}"
end
```

#### Using the create_claim_audit_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditResultVBAResponse>, Integer, Hash)> create_claim_audit_result_with_http_info(vbasoftware_database, claim_audit_result)

```ruby
begin
  # Create ClaimAuditResult
  data, status_code, headers = api_instance.create_claim_audit_result_with_http_info(vbasoftware_database, claim_audit_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->create_claim_audit_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_result** | [**ClaimAuditResult**](ClaimAuditResult.md) |  |  |

### Return type

[**ClaimAuditResultVBAResponse**](ClaimAuditResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_result

> delete_claim_audit_result(vbasoftware_database, audit_result)

Delete ClaimAuditResult

Deletes an ClaimAuditResult

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_result = 'audit_result_example' # String | Audit Result

begin
  # Delete ClaimAuditResult
  api_instance.delete_claim_audit_result(vbasoftware_database, audit_result)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->delete_claim_audit_result: #{e}"
end
```

#### Using the delete_claim_audit_result_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_result_with_http_info(vbasoftware_database, audit_result)

```ruby
begin
  # Delete ClaimAuditResult
  data, status_code, headers = api_instance.delete_claim_audit_result_with_http_info(vbasoftware_database, audit_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->delete_claim_audit_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_result** | **String** | Audit Result |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_result

> <ClaimAuditResultVBAResponse> get_claim_audit_result(vbasoftware_database, audit_result)

Get ClaimAuditResult

Gets ClaimAuditResult

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_result = 'audit_result_example' # String | Audit Result

begin
  # Get ClaimAuditResult
  result = api_instance.get_claim_audit_result(vbasoftware_database, audit_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->get_claim_audit_result: #{e}"
end
```

#### Using the get_claim_audit_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditResultVBAResponse>, Integer, Hash)> get_claim_audit_result_with_http_info(vbasoftware_database, audit_result)

```ruby
begin
  # Get ClaimAuditResult
  data, status_code, headers = api_instance.get_claim_audit_result_with_http_info(vbasoftware_database, audit_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->get_claim_audit_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_result** | **String** | Audit Result |  |

### Return type

[**ClaimAuditResultVBAResponse**](ClaimAuditResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_result

> <ClaimAuditResultListVBAResponse> list_claim_audit_result(vbasoftware_database, opts)

List ClaimAuditResult

Lists all ClaimAuditResult

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditResult
  result = api_instance.list_claim_audit_result(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->list_claim_audit_result: #{e}"
end
```

#### Using the list_claim_audit_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditResultListVBAResponse>, Integer, Hash)> list_claim_audit_result_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAuditResult
  data, status_code, headers = api_instance.list_claim_audit_result_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->list_claim_audit_result_with_http_info: #{e}"
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

[**ClaimAuditResultListVBAResponse**](ClaimAuditResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_result

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_result(vbasoftware_database, claim_audit_result)

Create or Update Batch ClaimAuditResult

Create or Update multiple ClaimAuditResult at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_result = [Vba::ClaimAuditResult.new({audit_result: 'audit_result_example', fail_result: false, pass_result: false})] # Array<ClaimAuditResult> | 

begin
  # Create or Update Batch ClaimAuditResult
  result = api_instance.update_batch_claim_audit_result(vbasoftware_database, claim_audit_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->update_batch_claim_audit_result: #{e}"
end
```

#### Using the update_batch_claim_audit_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_result_with_http_info(vbasoftware_database, claim_audit_result)

```ruby
begin
  # Create or Update Batch ClaimAuditResult
  data, status_code, headers = api_instance.update_batch_claim_audit_result_with_http_info(vbasoftware_database, claim_audit_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->update_batch_claim_audit_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_result** | [**Array&lt;ClaimAuditResult&gt;**](ClaimAuditResult.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_result

> <ClaimAuditResultVBAResponse> update_claim_audit_result(vbasoftware_database, audit_result, claim_audit_result)

Update ClaimAuditResult

Updates a specific ClaimAuditResult.

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

api_instance = Vba::ClaimAuditResultsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_result = 'audit_result_example' # String | Audit Result
claim_audit_result = Vba::ClaimAuditResult.new({audit_result: 'audit_result_example', fail_result: false, pass_result: false}) # ClaimAuditResult | 

begin
  # Update ClaimAuditResult
  result = api_instance.update_claim_audit_result(vbasoftware_database, audit_result, claim_audit_result)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->update_claim_audit_result: #{e}"
end
```

#### Using the update_claim_audit_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditResultVBAResponse>, Integer, Hash)> update_claim_audit_result_with_http_info(vbasoftware_database, audit_result, claim_audit_result)

```ruby
begin
  # Update ClaimAuditResult
  data, status_code, headers = api_instance.update_claim_audit_result_with_http_info(vbasoftware_database, audit_result, claim_audit_result)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditResultVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditResultsApi->update_claim_audit_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_result** | **String** | Audit Result |  |
| **claim_audit_result** | [**ClaimAuditResult**](ClaimAuditResult.md) |  |  |

### Return type

[**ClaimAuditResultVBAResponse**](ClaimAuditResultVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

