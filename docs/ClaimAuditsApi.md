# Vba::ClaimAuditsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit**](ClaimAuditsApi.md#create_claim_audit) | **POST** /claim-audits | Create ClaimAudit |
| [**delete_claim_audit**](ClaimAuditsApi.md#delete_claim_audit) | **DELETE** /claim-audits/{claimAuditKey} | Delete ClaimAudit |
| [**get_claim_audit**](ClaimAuditsApi.md#get_claim_audit) | **GET** /claim-audits/{claimAuditKey} | Get ClaimAudit |
| [**list_claim_audit**](ClaimAuditsApi.md#list_claim_audit) | **GET** /claim-audits | List ClaimAudit |
| [**update_batch_claim_audit**](ClaimAuditsApi.md#update_batch_claim_audit) | **PUT** /claim-audits-batch | Create or Update Batch ClaimAudit |
| [**update_claim_audit**](ClaimAuditsApi.md#update_claim_audit) | **PUT** /claim-audits/{claimAuditKey} | Update ClaimAudit |


## create_claim_audit

> <ClaimAuditVBAResponse> create_claim_audit(vbasoftware_database, claim_audit)

Create ClaimAudit

Creates a new ClaimAudit

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit = Vba::ClaimAudit.new({claim_audit_key: 37, audit_percent: false, suspend_audit: false}) # ClaimAudit | 

begin
  # Create ClaimAudit
  result = api_instance.create_claim_audit(vbasoftware_database, claim_audit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->create_claim_audit: #{e}"
end
```

#### Using the create_claim_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditVBAResponse>, Integer, Hash)> create_claim_audit_with_http_info(vbasoftware_database, claim_audit)

```ruby
begin
  # Create ClaimAudit
  data, status_code, headers = api_instance.create_claim_audit_with_http_info(vbasoftware_database, claim_audit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->create_claim_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit** | [**ClaimAudit**](ClaimAudit.md) |  |  |

### Return type

[**ClaimAuditVBAResponse**](ClaimAuditVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit

> delete_claim_audit(vbasoftware_database, claim_audit_key)

Delete ClaimAudit

Deletes an ClaimAudit

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key

begin
  # Delete ClaimAudit
  api_instance.delete_claim_audit(vbasoftware_database, claim_audit_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->delete_claim_audit: #{e}"
end
```

#### Using the delete_claim_audit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_with_http_info(vbasoftware_database, claim_audit_key)

```ruby
begin
  # Delete ClaimAudit
  data, status_code, headers = api_instance.delete_claim_audit_with_http_info(vbasoftware_database, claim_audit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->delete_claim_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit

> <ClaimAuditVBAResponse> get_claim_audit(vbasoftware_database, claim_audit_key)

Get ClaimAudit

Gets ClaimAudit

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key

begin
  # Get ClaimAudit
  result = api_instance.get_claim_audit(vbasoftware_database, claim_audit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->get_claim_audit: #{e}"
end
```

#### Using the get_claim_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditVBAResponse>, Integer, Hash)> get_claim_audit_with_http_info(vbasoftware_database, claim_audit_key)

```ruby
begin
  # Get ClaimAudit
  data, status_code, headers = api_instance.get_claim_audit_with_http_info(vbasoftware_database, claim_audit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->get_claim_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |

### Return type

[**ClaimAuditVBAResponse**](ClaimAuditVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit

> <ClaimAuditListVBAResponse> list_claim_audit(vbasoftware_database, opts)

List ClaimAudit

Lists all ClaimAudit

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAudit
  result = api_instance.list_claim_audit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->list_claim_audit: #{e}"
end
```

#### Using the list_claim_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditListVBAResponse>, Integer, Hash)> list_claim_audit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAudit
  data, status_code, headers = api_instance.list_claim_audit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->list_claim_audit_with_http_info: #{e}"
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

[**ClaimAuditListVBAResponse**](ClaimAuditListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit(vbasoftware_database, claim_audit)

Create or Update Batch ClaimAudit

Create or Update multiple ClaimAudit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit = [Vba::ClaimAudit.new({claim_audit_key: 37, audit_percent: false, suspend_audit: false})] # Array<ClaimAudit> | 

begin
  # Create or Update Batch ClaimAudit
  result = api_instance.update_batch_claim_audit(vbasoftware_database, claim_audit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->update_batch_claim_audit: #{e}"
end
```

#### Using the update_batch_claim_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_with_http_info(vbasoftware_database, claim_audit)

```ruby
begin
  # Create or Update Batch ClaimAudit
  data, status_code, headers = api_instance.update_batch_claim_audit_with_http_info(vbasoftware_database, claim_audit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->update_batch_claim_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit** | [**Array&lt;ClaimAudit&gt;**](ClaimAudit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit

> <ClaimAuditVBAResponse> update_claim_audit(vbasoftware_database, claim_audit_key, claim_audit)

Update ClaimAudit

Updates a specific ClaimAudit.

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

api_instance = Vba::ClaimAuditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_key = 56 # Integer | ClaimAudit Key
claim_audit = Vba::ClaimAudit.new({claim_audit_key: 37, audit_percent: false, suspend_audit: false}) # ClaimAudit | 

begin
  # Update ClaimAudit
  result = api_instance.update_claim_audit(vbasoftware_database, claim_audit_key, claim_audit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->update_claim_audit: #{e}"
end
```

#### Using the update_claim_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditVBAResponse>, Integer, Hash)> update_claim_audit_with_http_info(vbasoftware_database, claim_audit_key, claim_audit)

```ruby
begin
  # Update ClaimAudit
  data, status_code, headers = api_instance.update_claim_audit_with_http_info(vbasoftware_database, claim_audit_key, claim_audit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditsApi->update_claim_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_key** | **Integer** | ClaimAudit Key |  |
| **claim_audit** | [**ClaimAudit**](ClaimAudit.md) |  |  |

### Return type

[**ClaimAuditVBAResponse**](ClaimAuditVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

