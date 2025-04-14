# Vba::CaseStatusReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_status_reason**](CaseStatusReasonsApi.md#create_case_status_reason) | **POST** /case-status-reasons | Create CaseStatusReason |
| [**delete_case_status_reason**](CaseStatusReasonsApi.md#delete_case_status_reason) | **DELETE** /case-status-reasons/{caseStatusReason} | Delete CaseStatusReason |
| [**get_case_status_reason**](CaseStatusReasonsApi.md#get_case_status_reason) | **GET** /case-status-reasons/{caseStatusReason} | Get CaseStatusReason |
| [**list_case_status_reason**](CaseStatusReasonsApi.md#list_case_status_reason) | **GET** /case-status-reasons | List CaseStatusReason |
| [**update_batch_case_status_reason**](CaseStatusReasonsApi.md#update_batch_case_status_reason) | **PUT** /case-status-reasons-batch | Create or Update Batch CaseStatusReason |
| [**update_case_status_reason**](CaseStatusReasonsApi.md#update_case_status_reason) | **PUT** /case-status-reasons/{caseStatusReason} | Update CaseStatusReason |


## create_case_status_reason

> <CaseStatusReasonVBAResponse> create_case_status_reason(vbasoftware_database, case_status_reason)

Create CaseStatusReason

Creates a new CaseStatusReason

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status_reason = Vba::CaseStatusReason.new({case_status_reason: 'case_status_reason_example'}) # CaseStatusReason | 

begin
  # Create CaseStatusReason
  result = api_instance.create_case_status_reason(vbasoftware_database, case_status_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->create_case_status_reason: #{e}"
end
```

#### Using the create_case_status_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusReasonVBAResponse>, Integer, Hash)> create_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)

```ruby
begin
  # Create CaseStatusReason
  data, status_code, headers = api_instance.create_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->create_case_status_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status_reason** | [**CaseStatusReason**](CaseStatusReason.md) |  |  |

### Return type

[**CaseStatusReasonVBAResponse**](CaseStatusReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_status_reason

> delete_case_status_reason(vbasoftware_database, case_status_reason)

Delete CaseStatusReason

Deletes an CaseStatusReason

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status_reason = 'case_status_reason_example' # String | Case Status Reason

begin
  # Delete CaseStatusReason
  api_instance.delete_case_status_reason(vbasoftware_database, case_status_reason)
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->delete_case_status_reason: #{e}"
end
```

#### Using the delete_case_status_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)

```ruby
begin
  # Delete CaseStatusReason
  data, status_code, headers = api_instance.delete_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->delete_case_status_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status_reason** | **String** | Case Status Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_status_reason

> <CaseStatusReasonVBAResponse> get_case_status_reason(vbasoftware_database, case_status_reason)

Get CaseStatusReason

Gets CaseStatusReason

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status_reason = 'case_status_reason_example' # String | Case Status Reason

begin
  # Get CaseStatusReason
  result = api_instance.get_case_status_reason(vbasoftware_database, case_status_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->get_case_status_reason: #{e}"
end
```

#### Using the get_case_status_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusReasonVBAResponse>, Integer, Hash)> get_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)

```ruby
begin
  # Get CaseStatusReason
  data, status_code, headers = api_instance.get_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->get_case_status_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status_reason** | **String** | Case Status Reason |  |

### Return type

[**CaseStatusReasonVBAResponse**](CaseStatusReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_status_reason

> <CaseStatusReasonListVBAResponse> list_case_status_reason(vbasoftware_database, opts)

List CaseStatusReason

Lists all CaseStatusReason

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseStatusReason
  result = api_instance.list_case_status_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->list_case_status_reason: #{e}"
end
```

#### Using the list_case_status_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusReasonListVBAResponse>, Integer, Hash)> list_case_status_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseStatusReason
  data, status_code, headers = api_instance.list_case_status_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->list_case_status_reason_with_http_info: #{e}"
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

[**CaseStatusReasonListVBAResponse**](CaseStatusReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_status_reason

> <MultiCodeResponseListVBAResponse> update_batch_case_status_reason(vbasoftware_database, case_status_reason)

Create or Update Batch CaseStatusReason

Create or Update multiple CaseStatusReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status_reason = [Vba::CaseStatusReason.new({case_status_reason: 'case_status_reason_example'})] # Array<CaseStatusReason> | 

begin
  # Create or Update Batch CaseStatusReason
  result = api_instance.update_batch_case_status_reason(vbasoftware_database, case_status_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->update_batch_case_status_reason: #{e}"
end
```

#### Using the update_batch_case_status_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)

```ruby
begin
  # Create or Update Batch CaseStatusReason
  data, status_code, headers = api_instance.update_batch_case_status_reason_with_http_info(vbasoftware_database, case_status_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->update_batch_case_status_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status_reason** | [**Array&lt;CaseStatusReason&gt;**](CaseStatusReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_status_reason

> <CaseStatusReasonVBAResponse> update_case_status_reason(vbasoftware_database, case_status_reason, case_status_reason2)

Update CaseStatusReason

Updates a specific CaseStatusReason.

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

api_instance = Vba::CaseStatusReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status_reason = 'case_status_reason_example' # String | Case Status Reason
case_status_reason2 = Vba::CaseStatusReason.new({case_status_reason: 'case_status_reason_example'}) # CaseStatusReason | 

begin
  # Update CaseStatusReason
  result = api_instance.update_case_status_reason(vbasoftware_database, case_status_reason, case_status_reason2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->update_case_status_reason: #{e}"
end
```

#### Using the update_case_status_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusReasonVBAResponse>, Integer, Hash)> update_case_status_reason_with_http_info(vbasoftware_database, case_status_reason, case_status_reason2)

```ruby
begin
  # Update CaseStatusReason
  data, status_code, headers = api_instance.update_case_status_reason_with_http_info(vbasoftware_database, case_status_reason, case_status_reason2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusReasonsApi->update_case_status_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status_reason** | **String** | Case Status Reason |  |
| **case_status_reason2** | [**CaseStatusReason**](CaseStatusReason.md) |  |  |

### Return type

[**CaseStatusReasonVBAResponse**](CaseStatusReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

