# Vba::CaseCloseReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_close_reason**](CaseCloseReasonsApi.md#create_case_close_reason) | **POST** /case-close-reasons | Create CaseCloseReason |
| [**delete_case_close_reason**](CaseCloseReasonsApi.md#delete_case_close_reason) | **DELETE** /case-close-reasons/{caseCloseReason} | Delete CaseCloseReason |
| [**get_case_close_reason**](CaseCloseReasonsApi.md#get_case_close_reason) | **GET** /case-close-reasons/{caseCloseReason} | Get CaseCloseReason |
| [**list_case_close_reason**](CaseCloseReasonsApi.md#list_case_close_reason) | **GET** /case-close-reasons | List CaseCloseReason |
| [**update_batch_case_close_reason**](CaseCloseReasonsApi.md#update_batch_case_close_reason) | **PUT** /case-close-reasons-batch | Create or Update Batch CaseCloseReason |
| [**update_case_close_reason**](CaseCloseReasonsApi.md#update_case_close_reason) | **PUT** /case-close-reasons/{caseCloseReason} | Update CaseCloseReason |


## create_case_close_reason

> <CaseCloseReasonVBAResponse> create_case_close_reason(vbasoftware_database, case_close_reason)

Create CaseCloseReason

Creates a new CaseCloseReason

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_close_reason = Vba::CaseCloseReason.new({case_close_reason: 'case_close_reason_example'}) # CaseCloseReason | 

begin
  # Create CaseCloseReason
  result = api_instance.create_case_close_reason(vbasoftware_database, case_close_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->create_case_close_reason: #{e}"
end
```

#### Using the create_case_close_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseCloseReasonVBAResponse>, Integer, Hash)> create_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)

```ruby
begin
  # Create CaseCloseReason
  data, status_code, headers = api_instance.create_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseCloseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->create_case_close_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_close_reason** | [**CaseCloseReason**](CaseCloseReason.md) |  |  |

### Return type

[**CaseCloseReasonVBAResponse**](CaseCloseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_close_reason

> delete_case_close_reason(vbasoftware_database, case_close_reason)

Delete CaseCloseReason

Deletes an CaseCloseReason

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_close_reason = 'case_close_reason_example' # String | Case Close Reason

begin
  # Delete CaseCloseReason
  api_instance.delete_case_close_reason(vbasoftware_database, case_close_reason)
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->delete_case_close_reason: #{e}"
end
```

#### Using the delete_case_close_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)

```ruby
begin
  # Delete CaseCloseReason
  data, status_code, headers = api_instance.delete_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->delete_case_close_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_close_reason** | **String** | Case Close Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_close_reason

> <CaseCloseReasonVBAResponse> get_case_close_reason(vbasoftware_database, case_close_reason)

Get CaseCloseReason

Gets CaseCloseReason

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_close_reason = 'case_close_reason_example' # String | Case Close Reason

begin
  # Get CaseCloseReason
  result = api_instance.get_case_close_reason(vbasoftware_database, case_close_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->get_case_close_reason: #{e}"
end
```

#### Using the get_case_close_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseCloseReasonVBAResponse>, Integer, Hash)> get_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)

```ruby
begin
  # Get CaseCloseReason
  data, status_code, headers = api_instance.get_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseCloseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->get_case_close_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_close_reason** | **String** | Case Close Reason |  |

### Return type

[**CaseCloseReasonVBAResponse**](CaseCloseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_close_reason

> <CaseCloseReasonListVBAResponse> list_case_close_reason(vbasoftware_database, opts)

List CaseCloseReason

Lists all CaseCloseReason

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseCloseReason
  result = api_instance.list_case_close_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->list_case_close_reason: #{e}"
end
```

#### Using the list_case_close_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseCloseReasonListVBAResponse>, Integer, Hash)> list_case_close_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseCloseReason
  data, status_code, headers = api_instance.list_case_close_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseCloseReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->list_case_close_reason_with_http_info: #{e}"
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

[**CaseCloseReasonListVBAResponse**](CaseCloseReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_close_reason

> <MultiCodeResponseListVBAResponse> update_batch_case_close_reason(vbasoftware_database, case_close_reason)

Create or Update Batch CaseCloseReason

Create or Update multiple CaseCloseReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_close_reason = [Vba::CaseCloseReason.new({case_close_reason: 'case_close_reason_example'})] # Array<CaseCloseReason> | 

begin
  # Create or Update Batch CaseCloseReason
  result = api_instance.update_batch_case_close_reason(vbasoftware_database, case_close_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->update_batch_case_close_reason: #{e}"
end
```

#### Using the update_batch_case_close_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)

```ruby
begin
  # Create or Update Batch CaseCloseReason
  data, status_code, headers = api_instance.update_batch_case_close_reason_with_http_info(vbasoftware_database, case_close_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->update_batch_case_close_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_close_reason** | [**Array&lt;CaseCloseReason&gt;**](CaseCloseReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_close_reason

> <CaseCloseReasonVBAResponse> update_case_close_reason(vbasoftware_database, case_close_reason, case_close_reason2)

Update CaseCloseReason

Updates a specific CaseCloseReason.

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

api_instance = Vba::CaseCloseReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_close_reason = 'case_close_reason_example' # String | Case Close Reason
case_close_reason2 = Vba::CaseCloseReason.new({case_close_reason: 'case_close_reason_example'}) # CaseCloseReason | 

begin
  # Update CaseCloseReason
  result = api_instance.update_case_close_reason(vbasoftware_database, case_close_reason, case_close_reason2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->update_case_close_reason: #{e}"
end
```

#### Using the update_case_close_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseCloseReasonVBAResponse>, Integer, Hash)> update_case_close_reason_with_http_info(vbasoftware_database, case_close_reason, case_close_reason2)

```ruby
begin
  # Update CaseCloseReason
  data, status_code, headers = api_instance.update_case_close_reason_with_http_info(vbasoftware_database, case_close_reason, case_close_reason2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseCloseReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseCloseReasonsApi->update_case_close_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_close_reason** | **String** | Case Close Reason |  |
| **case_close_reason2** | [**CaseCloseReason**](CaseCloseReason.md) |  |  |

### Return type

[**CaseCloseReasonVBAResponse**](CaseCloseReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

