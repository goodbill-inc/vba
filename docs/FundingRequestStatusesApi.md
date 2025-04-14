# Vba::FundingRequestStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_request_status**](FundingRequestStatusesApi.md#create_funding_request_status) | **POST** /funding-request-statuses | Create FundingRequestStatus |
| [**delete_funding_request_status**](FundingRequestStatusesApi.md#delete_funding_request_status) | **DELETE** /funding-request-statuses/{requestStatus} | Delete FundingRequestStatus |
| [**get_funding_request_status**](FundingRequestStatusesApi.md#get_funding_request_status) | **GET** /funding-request-statuses/{requestStatus} | Get FundingRequestStatus |
| [**list_funding_request_status**](FundingRequestStatusesApi.md#list_funding_request_status) | **GET** /funding-request-statuses | List FundingRequestStatus |
| [**update_batch_funding_request_status**](FundingRequestStatusesApi.md#update_batch_funding_request_status) | **PUT** /funding-request-statuses-batch | Create or Update Batch FundingRequestStatus |
| [**update_funding_request_status**](FundingRequestStatusesApi.md#update_funding_request_status) | **PUT** /funding-request-statuses/{requestStatus} | Update FundingRequestStatus |


## create_funding_request_status

> <FundingRequestStatusVBAResponse> create_funding_request_status(vbasoftware_database, funding_request_status)

Create FundingRequestStatus

Creates a new FundingRequestStatus

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request_status = Vba::FundingRequestStatus.new({request_status: 'request_status_example'}) # FundingRequestStatus | 

begin
  # Create FundingRequestStatus
  result = api_instance.create_funding_request_status(vbasoftware_database, funding_request_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->create_funding_request_status: #{e}"
end
```

#### Using the create_funding_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestStatusVBAResponse>, Integer, Hash)> create_funding_request_status_with_http_info(vbasoftware_database, funding_request_status)

```ruby
begin
  # Create FundingRequestStatus
  data, status_code, headers = api_instance.create_funding_request_status_with_http_info(vbasoftware_database, funding_request_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->create_funding_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request_status** | [**FundingRequestStatus**](FundingRequestStatus.md) |  |  |

### Return type

[**FundingRequestStatusVBAResponse**](FundingRequestStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_request_status

> delete_funding_request_status(vbasoftware_database, request_status)

Delete FundingRequestStatus

Deletes an FundingRequestStatus

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_status = 'request_status_example' # String | Request Status

begin
  # Delete FundingRequestStatus
  api_instance.delete_funding_request_status(vbasoftware_database, request_status)
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->delete_funding_request_status: #{e}"
end
```

#### Using the delete_funding_request_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_request_status_with_http_info(vbasoftware_database, request_status)

```ruby
begin
  # Delete FundingRequestStatus
  data, status_code, headers = api_instance.delete_funding_request_status_with_http_info(vbasoftware_database, request_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->delete_funding_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_status** | **String** | Request Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_request_status

> <FundingRequestStatusVBAResponse> get_funding_request_status(vbasoftware_database, request_status)

Get FundingRequestStatus

Gets FundingRequestStatus

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_status = 'request_status_example' # String | Request Status

begin
  # Get FundingRequestStatus
  result = api_instance.get_funding_request_status(vbasoftware_database, request_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->get_funding_request_status: #{e}"
end
```

#### Using the get_funding_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestStatusVBAResponse>, Integer, Hash)> get_funding_request_status_with_http_info(vbasoftware_database, request_status)

```ruby
begin
  # Get FundingRequestStatus
  data, status_code, headers = api_instance.get_funding_request_status_with_http_info(vbasoftware_database, request_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->get_funding_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_status** | **String** | Request Status |  |

### Return type

[**FundingRequestStatusVBAResponse**](FundingRequestStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_request_status

> <FundingRequestStatusListVBAResponse> list_funding_request_status(vbasoftware_database, opts)

List FundingRequestStatus

Lists all FundingRequestStatus

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingRequestStatus
  result = api_instance.list_funding_request_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->list_funding_request_status: #{e}"
end
```

#### Using the list_funding_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestStatusListVBAResponse>, Integer, Hash)> list_funding_request_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingRequestStatus
  data, status_code, headers = api_instance.list_funding_request_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->list_funding_request_status_with_http_info: #{e}"
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

[**FundingRequestStatusListVBAResponse**](FundingRequestStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_request_status

> <MultiCodeResponseListVBAResponse> update_batch_funding_request_status(vbasoftware_database, funding_request_status)

Create or Update Batch FundingRequestStatus

Create or Update multiple FundingRequestStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request_status = [Vba::FundingRequestStatus.new({request_status: 'request_status_example'})] # Array<FundingRequestStatus> | 

begin
  # Create or Update Batch FundingRequestStatus
  result = api_instance.update_batch_funding_request_status(vbasoftware_database, funding_request_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->update_batch_funding_request_status: #{e}"
end
```

#### Using the update_batch_funding_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_request_status_with_http_info(vbasoftware_database, funding_request_status)

```ruby
begin
  # Create or Update Batch FundingRequestStatus
  data, status_code, headers = api_instance.update_batch_funding_request_status_with_http_info(vbasoftware_database, funding_request_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->update_batch_funding_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request_status** | [**Array&lt;FundingRequestStatus&gt;**](FundingRequestStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_request_status

> <FundingRequestStatusVBAResponse> update_funding_request_status(vbasoftware_database, request_status, funding_request_status)

Update FundingRequestStatus

Updates a specific FundingRequestStatus.

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

api_instance = Vba::FundingRequestStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_status = 'request_status_example' # String | Request Status
funding_request_status = Vba::FundingRequestStatus.new({request_status: 'request_status_example'}) # FundingRequestStatus | 

begin
  # Update FundingRequestStatus
  result = api_instance.update_funding_request_status(vbasoftware_database, request_status, funding_request_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->update_funding_request_status: #{e}"
end
```

#### Using the update_funding_request_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestStatusVBAResponse>, Integer, Hash)> update_funding_request_status_with_http_info(vbasoftware_database, request_status, funding_request_status)

```ruby
begin
  # Update FundingRequestStatus
  data, status_code, headers = api_instance.update_funding_request_status_with_http_info(vbasoftware_database, request_status, funding_request_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestStatusesApi->update_funding_request_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_status** | **String** | Request Status |  |
| **funding_request_status** | [**FundingRequestStatus**](FundingRequestStatus.md) |  |  |

### Return type

[**FundingRequestStatusVBAResponse**](FundingRequestStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

