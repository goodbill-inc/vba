# Vba::ClaimAuditClausesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_clause**](ClaimAuditClausesApi.md#create_claim_audit_clause) | **POST** /claim-audit-clauses | Create ClaimAuditClause |
| [**delete_claim_audit_clause**](ClaimAuditClausesApi.md#delete_claim_audit_clause) | **DELETE** /claim-audit-clauses/{claimAuditClauseKey} | Delete ClaimAuditClause |
| [**get_claim_audit_clause**](ClaimAuditClausesApi.md#get_claim_audit_clause) | **GET** /claim-audit-clauses/{claimAuditClauseKey} | Get ClaimAuditClause |
| [**list_claim_audit_clause**](ClaimAuditClausesApi.md#list_claim_audit_clause) | **GET** /claim-audit-clauses | List ClaimAuditClause |
| [**update_batch_claim_audit_clause**](ClaimAuditClausesApi.md#update_batch_claim_audit_clause) | **PUT** /claim-audit-clauses-batch | Create or Update Batch ClaimAuditClause |
| [**update_claim_audit_clause**](ClaimAuditClausesApi.md#update_claim_audit_clause) | **PUT** /claim-audit-clauses/{claimAuditClauseKey} | Update ClaimAuditClause |


## create_claim_audit_clause

> <ClaimAuditClauseVBAResponse> create_claim_audit_clause(vbasoftware_database, claim_audit_clause)

Create ClaimAuditClause

Creates a new ClaimAuditClause

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_clause = Vba::ClaimAuditClause.new({claim_audit_clause_key: 37, audit_percent: false}) # ClaimAuditClause | 

begin
  # Create ClaimAuditClause
  result = api_instance.create_claim_audit_clause(vbasoftware_database, claim_audit_clause)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->create_claim_audit_clause: #{e}"
end
```

#### Using the create_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditClauseVBAResponse>, Integer, Hash)> create_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause)

```ruby
begin
  # Create ClaimAuditClause
  data, status_code, headers = api_instance.create_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditClauseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->create_claim_audit_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_clause** | [**ClaimAuditClause**](ClaimAuditClause.md) |  |  |

### Return type

[**ClaimAuditClauseVBAResponse**](ClaimAuditClauseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_clause

> delete_claim_audit_clause(vbasoftware_database, claim_audit_clause_key)

Delete ClaimAuditClause

Deletes an ClaimAuditClause

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_clause_key = 56 # Integer | ClaimAuditClause Key

begin
  # Delete ClaimAuditClause
  api_instance.delete_claim_audit_clause(vbasoftware_database, claim_audit_clause_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->delete_claim_audit_clause: #{e}"
end
```

#### Using the delete_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key)

```ruby
begin
  # Delete ClaimAuditClause
  data, status_code, headers = api_instance.delete_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->delete_claim_audit_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_clause_key** | **Integer** | ClaimAuditClause Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_clause

> <ClaimAuditClauseVBAResponse> get_claim_audit_clause(vbasoftware_database, claim_audit_clause_key)

Get ClaimAuditClause

Gets ClaimAuditClause

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_clause_key = 56 # Integer | ClaimAuditClause Key

begin
  # Get ClaimAuditClause
  result = api_instance.get_claim_audit_clause(vbasoftware_database, claim_audit_clause_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->get_claim_audit_clause: #{e}"
end
```

#### Using the get_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditClauseVBAResponse>, Integer, Hash)> get_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key)

```ruby
begin
  # Get ClaimAuditClause
  data, status_code, headers = api_instance.get_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditClauseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->get_claim_audit_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_clause_key** | **Integer** | ClaimAuditClause Key |  |

### Return type

[**ClaimAuditClauseVBAResponse**](ClaimAuditClauseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_clause

> <ClaimAuditClauseListVBAResponse> list_claim_audit_clause(vbasoftware_database, opts)

List ClaimAuditClause

Lists all ClaimAuditClause

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditClause
  result = api_instance.list_claim_audit_clause(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->list_claim_audit_clause: #{e}"
end
```

#### Using the list_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditClauseListVBAResponse>, Integer, Hash)> list_claim_audit_clause_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAuditClause
  data, status_code, headers = api_instance.list_claim_audit_clause_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditClauseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->list_claim_audit_clause_with_http_info: #{e}"
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

[**ClaimAuditClauseListVBAResponse**](ClaimAuditClauseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_clause

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_clause(vbasoftware_database, claim_audit_clause)

Create or Update Batch ClaimAuditClause

Create or Update multiple ClaimAuditClause at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_clause = [Vba::ClaimAuditClause.new({claim_audit_clause_key: 37, audit_percent: false})] # Array<ClaimAuditClause> | 

begin
  # Create or Update Batch ClaimAuditClause
  result = api_instance.update_batch_claim_audit_clause(vbasoftware_database, claim_audit_clause)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->update_batch_claim_audit_clause: #{e}"
end
```

#### Using the update_batch_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause)

```ruby
begin
  # Create or Update Batch ClaimAuditClause
  data, status_code, headers = api_instance.update_batch_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->update_batch_claim_audit_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_clause** | [**Array&lt;ClaimAuditClause&gt;**](ClaimAuditClause.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_clause

> <ClaimAuditClauseVBAResponse> update_claim_audit_clause(vbasoftware_database, claim_audit_clause_key, claim_audit_clause)

Update ClaimAuditClause

Updates a specific ClaimAuditClause.

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

api_instance = Vba::ClaimAuditClausesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_clause_key = 56 # Integer | ClaimAuditClause Key
claim_audit_clause = Vba::ClaimAuditClause.new({claim_audit_clause_key: 37, audit_percent: false}) # ClaimAuditClause | 

begin
  # Update ClaimAuditClause
  result = api_instance.update_claim_audit_clause(vbasoftware_database, claim_audit_clause_key, claim_audit_clause)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->update_claim_audit_clause: #{e}"
end
```

#### Using the update_claim_audit_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditClauseVBAResponse>, Integer, Hash)> update_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key, claim_audit_clause)

```ruby
begin
  # Update ClaimAuditClause
  data, status_code, headers = api_instance.update_claim_audit_clause_with_http_info(vbasoftware_database, claim_audit_clause_key, claim_audit_clause)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditClauseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditClausesApi->update_claim_audit_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_clause_key** | **Integer** | ClaimAuditClause Key |  |
| **claim_audit_clause** | [**ClaimAuditClause**](ClaimAuditClause.md) |  |  |

### Return type

[**ClaimAuditClauseVBAResponse**](ClaimAuditClauseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

