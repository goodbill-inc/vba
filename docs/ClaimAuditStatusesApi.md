# Vba::ClaimAuditStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_audit_status**](ClaimAuditStatusesApi.md#create_claim_audit_status) | **POST** /claim-audit-statuses | Create ClaimAuditStatus |
| [**delete_claim_audit_status**](ClaimAuditStatusesApi.md#delete_claim_audit_status) | **DELETE** /claim-audit-statuses/{auditStatus} | Delete ClaimAuditStatus |
| [**get_claim_audit_status**](ClaimAuditStatusesApi.md#get_claim_audit_status) | **GET** /claim-audit-statuses/{auditStatus} | Get ClaimAuditStatus |
| [**list_claim_audit_status**](ClaimAuditStatusesApi.md#list_claim_audit_status) | **GET** /claim-audit-statuses | List ClaimAuditStatus |
| [**update_batch_claim_audit_status**](ClaimAuditStatusesApi.md#update_batch_claim_audit_status) | **PUT** /claim-audit-statuses-batch | Create or Update Batch ClaimAuditStatus |
| [**update_claim_audit_status**](ClaimAuditStatusesApi.md#update_claim_audit_status) | **PUT** /claim-audit-statuses/{auditStatus} | Update ClaimAuditStatus |


## create_claim_audit_status

> <ClaimAuditStatusVBAResponse> create_claim_audit_status(vbasoftware_database, claim_audit_status)

Create ClaimAuditStatus

Creates a new ClaimAuditStatus

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_status = Vba::ClaimAuditStatus.new({audit_status: 'audit_status_example', complete_status: false}) # ClaimAuditStatus | 

begin
  # Create ClaimAuditStatus
  result = api_instance.create_claim_audit_status(vbasoftware_database, claim_audit_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->create_claim_audit_status: #{e}"
end
```

#### Using the create_claim_audit_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditStatusVBAResponse>, Integer, Hash)> create_claim_audit_status_with_http_info(vbasoftware_database, claim_audit_status)

```ruby
begin
  # Create ClaimAuditStatus
  data, status_code, headers = api_instance.create_claim_audit_status_with_http_info(vbasoftware_database, claim_audit_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->create_claim_audit_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_status** | [**ClaimAuditStatus**](ClaimAuditStatus.md) |  |  |

### Return type

[**ClaimAuditStatusVBAResponse**](ClaimAuditStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_audit_status

> delete_claim_audit_status(vbasoftware_database, audit_status)

Delete ClaimAuditStatus

Deletes an ClaimAuditStatus

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_status = 'audit_status_example' # String | Audit Status

begin
  # Delete ClaimAuditStatus
  api_instance.delete_claim_audit_status(vbasoftware_database, audit_status)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->delete_claim_audit_status: #{e}"
end
```

#### Using the delete_claim_audit_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_audit_status_with_http_info(vbasoftware_database, audit_status)

```ruby
begin
  # Delete ClaimAuditStatus
  data, status_code, headers = api_instance.delete_claim_audit_status_with_http_info(vbasoftware_database, audit_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->delete_claim_audit_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_status** | **String** | Audit Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_audit_status

> <ClaimAuditStatusVBAResponse> get_claim_audit_status(vbasoftware_database, audit_status)

Get ClaimAuditStatus

Gets ClaimAuditStatus

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_status = 'audit_status_example' # String | Audit Status

begin
  # Get ClaimAuditStatus
  result = api_instance.get_claim_audit_status(vbasoftware_database, audit_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->get_claim_audit_status: #{e}"
end
```

#### Using the get_claim_audit_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditStatusVBAResponse>, Integer, Hash)> get_claim_audit_status_with_http_info(vbasoftware_database, audit_status)

```ruby
begin
  # Get ClaimAuditStatus
  data, status_code, headers = api_instance.get_claim_audit_status_with_http_info(vbasoftware_database, audit_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->get_claim_audit_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_status** | **String** | Audit Status |  |

### Return type

[**ClaimAuditStatusVBAResponse**](ClaimAuditStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_audit_status

> <ClaimAuditStatusListVBAResponse> list_claim_audit_status(vbasoftware_database, opts)

List ClaimAuditStatus

Lists all ClaimAuditStatus

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAuditStatus
  result = api_instance.list_claim_audit_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->list_claim_audit_status: #{e}"
end
```

#### Using the list_claim_audit_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditStatusListVBAResponse>, Integer, Hash)> list_claim_audit_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAuditStatus
  data, status_code, headers = api_instance.list_claim_audit_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->list_claim_audit_status_with_http_info: #{e}"
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

[**ClaimAuditStatusListVBAResponse**](ClaimAuditStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_audit_status

> <MultiCodeResponseListVBAResponse> update_batch_claim_audit_status(vbasoftware_database, claim_audit_status)

Create or Update Batch ClaimAuditStatus

Create or Update multiple ClaimAuditStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_audit_status = [Vba::ClaimAuditStatus.new({audit_status: 'audit_status_example', complete_status: false})] # Array<ClaimAuditStatus> | 

begin
  # Create or Update Batch ClaimAuditStatus
  result = api_instance.update_batch_claim_audit_status(vbasoftware_database, claim_audit_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->update_batch_claim_audit_status: #{e}"
end
```

#### Using the update_batch_claim_audit_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_audit_status_with_http_info(vbasoftware_database, claim_audit_status)

```ruby
begin
  # Create or Update Batch ClaimAuditStatus
  data, status_code, headers = api_instance.update_batch_claim_audit_status_with_http_info(vbasoftware_database, claim_audit_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->update_batch_claim_audit_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_audit_status** | [**Array&lt;ClaimAuditStatus&gt;**](ClaimAuditStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_audit_status

> <ClaimAuditStatusVBAResponse> update_claim_audit_status(vbasoftware_database, audit_status, claim_audit_status)

Update ClaimAuditStatus

Updates a specific ClaimAuditStatus.

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

api_instance = Vba::ClaimAuditStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
audit_status = 'audit_status_example' # String | Audit Status
claim_audit_status = Vba::ClaimAuditStatus.new({audit_status: 'audit_status_example', complete_status: false}) # ClaimAuditStatus | 

begin
  # Update ClaimAuditStatus
  result = api_instance.update_claim_audit_status(vbasoftware_database, audit_status, claim_audit_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->update_claim_audit_status: #{e}"
end
```

#### Using the update_claim_audit_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAuditStatusVBAResponse>, Integer, Hash)> update_claim_audit_status_with_http_info(vbasoftware_database, audit_status, claim_audit_status)

```ruby
begin
  # Update ClaimAuditStatus
  data, status_code, headers = api_instance.update_claim_audit_status_with_http_info(vbasoftware_database, audit_status, claim_audit_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAuditStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAuditStatusesApi->update_claim_audit_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **audit_status** | **String** | Audit Status |  |
| **claim_audit_status** | [**ClaimAuditStatus**](ClaimAuditStatus.md) |  |  |

### Return type

[**ClaimAuditStatusVBAResponse**](ClaimAuditStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

