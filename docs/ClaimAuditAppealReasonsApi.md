# Vba::ClaimAuditAppealReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#create_claim_audit_appeal_reason) | **POST** /claim-audit-appeal-reasons | Create ClaimAuditAppealReason |
| [**delete_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#delete_claim_audit_appeal_reason) | **DELETE** /claim-audit-appeal-reasons/{appealReason} | Delete ClaimAuditAppealReason |
| [**get_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#get_claim_audit_appeal_reason) | **GET** /claim-audit-appeal-reasons/{appealReason} | Get ClaimAuditAppealReason |
| [**list_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#list_claim_audit_appeal_reason) | **GET** /claim-audit-appeal-reasons | List ClaimAuditAppealReason |
| [**update_batch_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#update_batch_claim_audit_appeal_reason) | **PUT** /claim-audit-appeal-reasons-batch | Create or Update Batch ClaimAuditAppealReason |
| [**update_claim_audit_appeal_reason**](ClaimAuditAppealReasonsApi.md#update_claim_audit_appeal_reason) | **PUT** /claim-audit-appeal-reasons/{appealReason} | Update ClaimAuditAppealReason |


## create_claim_audit_appeal_reason

> <ClaimAuditAppealReasonVBAResponse> create_claim_audit_appeal_reason(vbasoftware_database, claim_audit_appeal_reason)

Create ClaimAuditAppealReason

Creates a new ClaimAuditAppealReason

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_appeal_reason = Vba::ClaimAuditAppealReason.new({appeal_reason: 'appeal_reason_example', overturn_reason: false}) # ClaimAuditAppealReason | 

begin
  # Create ClaimAuditAppealReason
  result = api_instance.create_claim_audit_appeal_reason(vbasoftware_database, claim_audit_appeal_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->create_claim_audit_appeal_reason: #{e}"
end
```

#### Using the create_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealReasonVBAResponse>, Integer, Hash)> create_claim_audit_appeal_reason_with_http_info(vbasoftware_database, claim_audit_appeal_reason)

```ruby
begin
  # Create ClaimAuditAppealReason
  data, status_code, headers = api_instance.create_claim_audit_appeal_reason_with_http_info(vbasoftware_database, claim_audit_appeal_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->create_claim_audit_appeal_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_appeal_reason** | [**ClaimAuditAppealReason**](ClaimAuditAppealReason.md) |  |  |

### Return type

[**ClaimAuditAppealReasonVBAResponse**](ClaimAuditAppealReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_appeal_reason

> delete_claim_audit_appeal_reason(vbasoftware_database, appeal_reason)

Delete ClaimAuditAppealReason

Deletes an ClaimAuditAppealReason

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_reason = 'appeal_reason_example' # String | Appeal Reason

begin
  # Delete ClaimAuditAppealReason
  api_instance.delete_claim_audit_appeal_reason(vbasoftware_database, appeal_reason)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->delete_claim_audit_appeal_reason: #{e}"
end
```

#### Using the delete_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason)

```ruby
begin
  # Delete ClaimAuditAppealReason
  data, status_code, headers = api_instance.delete_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->delete_claim_audit_appeal_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_reason** | **String** | Appeal Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_appeal_reason

> <ClaimAuditAppealReasonVBAResponse> get_claim_audit_appeal_reason(vbasoftware_database, appeal_reason)

Get ClaimAuditAppealReason

Gets ClaimAuditAppealReason

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_reason = 'appeal_reason_example' # String | Appeal Reason

begin
  # Get ClaimAuditAppealReason
  result = api_instance.get_claim_audit_appeal_reason(vbasoftware_database, appeal_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->get_claim_audit_appeal_reason: #{e}"
end
```

#### Using the get_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealReasonVBAResponse>, Integer, Hash)> get_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason)

```ruby
begin
  # Get ClaimAuditAppealReason
  data, status_code, headers = api_instance.get_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->get_claim_audit_appeal_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_reason** | **String** | Appeal Reason |  |

### Return type

[**ClaimAuditAppealReasonVBAResponse**](ClaimAuditAppealReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_appeal_reason

> <ClaimAuditAppealReasonListVBAResponse> list_claim_audit_appeal_reason(vbasoftware_database, opts)

List ClaimAuditAppealReason

Lists all ClaimAuditAppealReason

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditAppealReason
  result = api_instance.list_claim_audit_appeal_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->list_claim_audit_appeal_reason: #{e}"
end
```

#### Using the list_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealReasonListVBAResponse>, Integer, Hash)> list_claim_audit_appeal_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAuditAppealReason
  data, status_code, headers = api_instance.list_claim_audit_appeal_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->list_claim_audit_appeal_reason_with_http_info: #{e}"
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

[**ClaimAuditAppealReasonListVBAResponse**](ClaimAuditAppealReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_appeal_reason

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_appeal_reason(vbasoftware_database, claim_audit_appeal_reason)

Create or Update Batch ClaimAuditAppealReason

Create or Update multiple ClaimAuditAppealReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_appeal_reason = [Vba::ClaimAuditAppealReason.new({appeal_reason: 'appeal_reason_example', overturn_reason: false})] # Array<ClaimAuditAppealReason> | 

begin
  # Create or Update Batch ClaimAuditAppealReason
  result = api_instance.update_batch_claim_audit_appeal_reason(vbasoftware_database, claim_audit_appeal_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->update_batch_claim_audit_appeal_reason: #{e}"
end
```

#### Using the update_batch_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_appeal_reason_with_http_info(vbasoftware_database, claim_audit_appeal_reason)

```ruby
begin
  # Create or Update Batch ClaimAuditAppealReason
  data, status_code, headers = api_instance.update_batch_claim_audit_appeal_reason_with_http_info(vbasoftware_database, claim_audit_appeal_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->update_batch_claim_audit_appeal_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_appeal_reason** | [**Array&lt;ClaimAuditAppealReason&gt;**](ClaimAuditAppealReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_appeal_reason

> <ClaimAuditAppealReasonVBAResponse> update_claim_audit_appeal_reason(vbasoftware_database, appeal_reason, claim_audit_appeal_reason)

Update ClaimAuditAppealReason

Updates a specific ClaimAuditAppealReason.

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

api_instance = Vba::ClaimAuditAppealReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appeal_reason = 'appeal_reason_example' # String | Appeal Reason
claim_audit_appeal_reason = Vba::ClaimAuditAppealReason.new({appeal_reason: 'appeal_reason_example', overturn_reason: false}) # ClaimAuditAppealReason | 

begin
  # Update ClaimAuditAppealReason
  result = api_instance.update_claim_audit_appeal_reason(vbasoftware_database, appeal_reason, claim_audit_appeal_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->update_claim_audit_appeal_reason: #{e}"
end
```

#### Using the update_claim_audit_appeal_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditAppealReasonVBAResponse>, Integer, Hash)> update_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason, claim_audit_appeal_reason)

```ruby
begin
  # Update ClaimAuditAppealReason
  data, status_code, headers = api_instance.update_claim_audit_appeal_reason_with_http_info(vbasoftware_database, appeal_reason, claim_audit_appeal_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditAppealReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditAppealReasonsApi->update_claim_audit_appeal_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appeal_reason** | **String** | Appeal Reason |  |
| **claim_audit_appeal_reason** | [**ClaimAuditAppealReason**](ClaimAuditAppealReason.md) |  |  |

### Return type

[**ClaimAuditAppealReasonVBAResponse**](ClaimAuditAppealReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

