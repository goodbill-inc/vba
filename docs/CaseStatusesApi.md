# Vba::CaseStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_status**](CaseStatusesApi.md#create_case_status) | **POST** /case-statuses | Create CaseStatus |
| [**delete_case_status**](CaseStatusesApi.md#delete_case_status) | **DELETE** /case-statuses/{caseStatus} | Delete CaseStatus |
| [**get_case_status**](CaseStatusesApi.md#get_case_status) | **GET** /case-statuses/{caseStatus} | Get CaseStatus |
| [**list_case_status**](CaseStatusesApi.md#list_case_status) | **GET** /case-statuses | List CaseStatus |
| [**update_batch_case_status**](CaseStatusesApi.md#update_batch_case_status) | **PUT** /case-statuses-batch | Create or Update Batch CaseStatus |
| [**update_case_status**](CaseStatusesApi.md#update_case_status) | **PUT** /case-statuses/{caseStatus} | Update CaseStatus |


## create_case_status

> <CaseStatusVBAResponse> create_case_status(vbasoftware_database, case_status)

Create CaseStatus

Creates a new CaseStatus

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status = Vba::CaseStatus.new({case_status: 'case_status_example'}) # CaseStatus | 

begin
  # Create CaseStatus
  result = api_instance.create_case_status(vbasoftware_database, case_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->create_case_status: #{e}"
end
```

#### Using the create_case_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusVBAResponse>, Integer, Hash)> create_case_status_with_http_info(vbasoftware_database, case_status)

```ruby
begin
  # Create CaseStatus
  data, status_code, headers = api_instance.create_case_status_with_http_info(vbasoftware_database, case_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->create_case_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status** | [**CaseStatus**](CaseStatus.md) |  |  |

### Return type

[**CaseStatusVBAResponse**](CaseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_status

> delete_case_status(vbasoftware_database, case_status)

Delete CaseStatus

Deletes an CaseStatus

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status = 'case_status_example' # String | Case Status

begin
  # Delete CaseStatus
  api_instance.delete_case_status(vbasoftware_database, case_status)
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->delete_case_status: #{e}"
end
```

#### Using the delete_case_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_status_with_http_info(vbasoftware_database, case_status)

```ruby
begin
  # Delete CaseStatus
  data, status_code, headers = api_instance.delete_case_status_with_http_info(vbasoftware_database, case_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->delete_case_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status** | **String** | Case Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_status

> <CaseStatusVBAResponse> get_case_status(vbasoftware_database, case_status)

Get CaseStatus

Gets CaseStatus

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status = 'case_status_example' # String | Case Status

begin
  # Get CaseStatus
  result = api_instance.get_case_status(vbasoftware_database, case_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->get_case_status: #{e}"
end
```

#### Using the get_case_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusVBAResponse>, Integer, Hash)> get_case_status_with_http_info(vbasoftware_database, case_status)

```ruby
begin
  # Get CaseStatus
  data, status_code, headers = api_instance.get_case_status_with_http_info(vbasoftware_database, case_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->get_case_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status** | **String** | Case Status |  |

### Return type

[**CaseStatusVBAResponse**](CaseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_status

> <CaseStatusListVBAResponse> list_case_status(vbasoftware_database, opts)

List CaseStatus

Lists all CaseStatus

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseStatus
  result = api_instance.list_case_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->list_case_status: #{e}"
end
```

#### Using the list_case_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusListVBAResponse>, Integer, Hash)> list_case_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseStatus
  data, status_code, headers = api_instance.list_case_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->list_case_status_with_http_info: #{e}"
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

[**CaseStatusListVBAResponse**](CaseStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_status

> <MultiCodeResponseListVBAResponse> update_batch_case_status(vbasoftware_database, case_status)

Create or Update Batch CaseStatus

Create or Update multiple CaseStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status = [Vba::CaseStatus.new({case_status: 'case_status_example'})] # Array<CaseStatus> | 

begin
  # Create or Update Batch CaseStatus
  result = api_instance.update_batch_case_status(vbasoftware_database, case_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->update_batch_case_status: #{e}"
end
```

#### Using the update_batch_case_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_status_with_http_info(vbasoftware_database, case_status)

```ruby
begin
  # Create or Update Batch CaseStatus
  data, status_code, headers = api_instance.update_batch_case_status_with_http_info(vbasoftware_database, case_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->update_batch_case_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status** | [**Array&lt;CaseStatus&gt;**](CaseStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_status

> <CaseStatusVBAResponse> update_case_status(vbasoftware_database, case_status, case_status2)

Update CaseStatus

Updates a specific CaseStatus.

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

api_instance = Vba::CaseStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_status = 'case_status_example' # String | Case Status
case_status2 = Vba::CaseStatus.new({case_status: 'case_status_example'}) # CaseStatus | 

begin
  # Update CaseStatus
  result = api_instance.update_case_status(vbasoftware_database, case_status, case_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->update_case_status: #{e}"
end
```

#### Using the update_case_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseStatusVBAResponse>, Integer, Hash)> update_case_status_with_http_info(vbasoftware_database, case_status, case_status2)

```ruby
begin
  # Update CaseStatus
  data, status_code, headers = api_instance.update_case_status_with_http_info(vbasoftware_database, case_status, case_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseStatusesApi->update_case_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_status** | **String** | Case Status |  |
| **case_status2** | [**CaseStatus**](CaseStatus.md) |  |  |

### Return type

[**CaseStatusVBAResponse**](CaseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

