# Vba::CaseReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_reason**](CaseReasonsApi.md#create_case_reason) | **POST** /case-reasons | Create CaseReason |
| [**delete_case_reason**](CaseReasonsApi.md#delete_case_reason) | **DELETE** /case-reasons/{caseReason} | Delete CaseReason |
| [**get_case_reason**](CaseReasonsApi.md#get_case_reason) | **GET** /case-reasons/{caseReason} | Get CaseReason |
| [**list_case_reason**](CaseReasonsApi.md#list_case_reason) | **GET** /case-reasons | List CaseReason |
| [**update_batch_case_reason**](CaseReasonsApi.md#update_batch_case_reason) | **PUT** /case-reasons-batch | Create or Update Batch CaseReason |
| [**update_case_reason**](CaseReasonsApi.md#update_case_reason) | **PUT** /case-reasons/{caseReason} | Update CaseReason |


## create_case_reason

> <CaseReasonVBAResponse> create_case_reason(vbasoftware_database, case_reason)

Create CaseReason

Creates a new CaseReason

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_reason = Vba::CaseReason.new({case_reason: 'case_reason_example'}) # CaseReason | 

begin
  # Create CaseReason
  result = api_instance.create_case_reason(vbasoftware_database, case_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->create_case_reason: #{e}"
end
```

#### Using the create_case_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseReasonVBAResponse>, Integer, Hash)> create_case_reason_with_http_info(vbasoftware_database, case_reason)

```ruby
begin
  # Create CaseReason
  data, status_code, headers = api_instance.create_case_reason_with_http_info(vbasoftware_database, case_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->create_case_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_reason** | [**CaseReason**](CaseReason.md) |  |  |

### Return type

[**CaseReasonVBAResponse**](CaseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_reason

> delete_case_reason(vbasoftware_database, case_reason)

Delete CaseReason

Deletes an CaseReason

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_reason = 'case_reason_example' # String | Case Reason

begin
  # Delete CaseReason
  api_instance.delete_case_reason(vbasoftware_database, case_reason)
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->delete_case_reason: #{e}"
end
```

#### Using the delete_case_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_reason_with_http_info(vbasoftware_database, case_reason)

```ruby
begin
  # Delete CaseReason
  data, status_code, headers = api_instance.delete_case_reason_with_http_info(vbasoftware_database, case_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->delete_case_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_reason** | **String** | Case Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_reason

> <CaseReasonVBAResponse> get_case_reason(vbasoftware_database, case_reason)

Get CaseReason

Gets CaseReason

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_reason = 'case_reason_example' # String | Case Reason

begin
  # Get CaseReason
  result = api_instance.get_case_reason(vbasoftware_database, case_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->get_case_reason: #{e}"
end
```

#### Using the get_case_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseReasonVBAResponse>, Integer, Hash)> get_case_reason_with_http_info(vbasoftware_database, case_reason)

```ruby
begin
  # Get CaseReason
  data, status_code, headers = api_instance.get_case_reason_with_http_info(vbasoftware_database, case_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->get_case_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_reason** | **String** | Case Reason |  |

### Return type

[**CaseReasonVBAResponse**](CaseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_reason

> <CaseReasonListVBAResponse> list_case_reason(vbasoftware_database, opts)

List CaseReason

Lists all CaseReason

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseReason
  result = api_instance.list_case_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->list_case_reason: #{e}"
end
```

#### Using the list_case_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseReasonListVBAResponse>, Integer, Hash)> list_case_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseReason
  data, status_code, headers = api_instance.list_case_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->list_case_reason_with_http_info: #{e}"
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

[**CaseReasonListVBAResponse**](CaseReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_reason

> <MultiCodeResponseListVBAResponse> update_batch_case_reason(vbasoftware_database, case_reason)

Create or Update Batch CaseReason

Create or Update multiple CaseReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_reason = [Vba::CaseReason.new({case_reason: 'case_reason_example'})] # Array<CaseReason> | 

begin
  # Create or Update Batch CaseReason
  result = api_instance.update_batch_case_reason(vbasoftware_database, case_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->update_batch_case_reason: #{e}"
end
```

#### Using the update_batch_case_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_reason_with_http_info(vbasoftware_database, case_reason)

```ruby
begin
  # Create or Update Batch CaseReason
  data, status_code, headers = api_instance.update_batch_case_reason_with_http_info(vbasoftware_database, case_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->update_batch_case_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_reason** | [**Array&lt;CaseReason&gt;**](CaseReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_reason

> <CaseReasonVBAResponse> update_case_reason(vbasoftware_database, case_reason, case_reason2)

Update CaseReason

Updates a specific CaseReason.

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

api_instance = Vba::CaseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_reason = 'case_reason_example' # String | Case Reason
case_reason2 = Vba::CaseReason.new({case_reason: 'case_reason_example'}) # CaseReason | 

begin
  # Update CaseReason
  result = api_instance.update_case_reason(vbasoftware_database, case_reason, case_reason2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->update_case_reason: #{e}"
end
```

#### Using the update_case_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseReasonVBAResponse>, Integer, Hash)> update_case_reason_with_http_info(vbasoftware_database, case_reason, case_reason2)

```ruby
begin
  # Update CaseReason
  data, status_code, headers = api_instance.update_case_reason_with_http_info(vbasoftware_database, case_reason, case_reason2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseReasonsApi->update_case_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_reason** | **String** | Case Reason |  |
| **case_reason2** | [**CaseReason**](CaseReason.md) |  |  |

### Return type

[**CaseReasonVBAResponse**](CaseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

