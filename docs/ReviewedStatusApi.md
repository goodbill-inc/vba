# Vba::ReviewedStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reviewed_status**](ReviewedStatusApi.md#create_reviewed_status) | **POST** /claim-batch-reviewed-status | Create ReviewedStatus |
| [**delete_reviewed_status**](ReviewedStatusApi.md#delete_reviewed_status) | **DELETE** /claim-batch-reviewed-status/{Reviewed_Status} | Delete ReviewedStatus |
| [**get_reviewed_status**](ReviewedStatusApi.md#get_reviewed_status) | **GET** /claim-batch-reviewed-status/{Reviewed_Status} | Get ReviewedStatus |
| [**list_reviewed_status**](ReviewedStatusApi.md#list_reviewed_status) | **GET** /claim-batch-reviewed-status | List ReviewedStatus |
| [**update_batch_reviewed_status**](ReviewedStatusApi.md#update_batch_reviewed_status) | **PUT** /claim-batch-reviewed-status-batch | Create or Update Batch ReviewedStatus |
| [**update_reviewed_status**](ReviewedStatusApi.md#update_reviewed_status) | **PUT** /claim-batch-reviewed-status/{Reviewed_Status} | Update ReviewedStatus |


## create_reviewed_status

> <ReviewedStatusVBAResponse> create_reviewed_status(vbasoftware_database, reviewed_status)

Create ReviewedStatus

Creates a new ReviewedStatus

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reviewed_status = Vba::ReviewedStatus.new({reviewed_status: 'reviewed_status_example'}) # ReviewedStatus | 

begin
  # Create ReviewedStatus
  result = api_instance.create_reviewed_status(vbasoftware_database, reviewed_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->create_reviewed_status: #{e}"
end
```

#### Using the create_reviewed_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewedStatusVBAResponse>, Integer, Hash)> create_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)

```ruby
begin
  # Create ReviewedStatus
  data, status_code, headers = api_instance.create_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->create_reviewed_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reviewed_status** | [**ReviewedStatus**](ReviewedStatus.md) |  |  |

### Return type

[**ReviewedStatusVBAResponse**](ReviewedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reviewed_status

> delete_reviewed_status(vbasoftware_database, reviewed_status)

Delete ReviewedStatus

Deletes an ReviewedStatus

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reviewed_status = 'reviewed_status_example' # String | Reviewed Status

begin
  # Delete ReviewedStatus
  api_instance.delete_reviewed_status(vbasoftware_database, reviewed_status)
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->delete_reviewed_status: #{e}"
end
```

#### Using the delete_reviewed_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)

```ruby
begin
  # Delete ReviewedStatus
  data, status_code, headers = api_instance.delete_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->delete_reviewed_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reviewed_status** | **String** | Reviewed Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reviewed_status

> <ReviewedStatusVBAResponse> get_reviewed_status(vbasoftware_database, reviewed_status)

Get ReviewedStatus

Gets ReviewedStatus

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reviewed_status = 'reviewed_status_example' # String | Reviewed Status

begin
  # Get ReviewedStatus
  result = api_instance.get_reviewed_status(vbasoftware_database, reviewed_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->get_reviewed_status: #{e}"
end
```

#### Using the get_reviewed_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewedStatusVBAResponse>, Integer, Hash)> get_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)

```ruby
begin
  # Get ReviewedStatus
  data, status_code, headers = api_instance.get_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->get_reviewed_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reviewed_status** | **String** | Reviewed Status |  |

### Return type

[**ReviewedStatusVBAResponse**](ReviewedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reviewed_status

> <ReviewedStatusListVBAResponse> list_reviewed_status(vbasoftware_database, opts)

List ReviewedStatus

Lists all ReviewedStatus

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReviewedStatus
  result = api_instance.list_reviewed_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->list_reviewed_status: #{e}"
end
```

#### Using the list_reviewed_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewedStatusListVBAResponse>, Integer, Hash)> list_reviewed_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReviewedStatus
  data, status_code, headers = api_instance.list_reviewed_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewedStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->list_reviewed_status_with_http_info: #{e}"
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

[**ReviewedStatusListVBAResponse**](ReviewedStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reviewed_status

> <MultiCodeResponseListVBAResponse> update_batch_reviewed_status(vbasoftware_database, reviewed_status)

Create or Update Batch ReviewedStatus

Create or Update multiple ReviewedStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reviewed_status = [Vba::ReviewedStatus.new({reviewed_status: 'reviewed_status_example'})] # Array<ReviewedStatus> | 

begin
  # Create or Update Batch ReviewedStatus
  result = api_instance.update_batch_reviewed_status(vbasoftware_database, reviewed_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->update_batch_reviewed_status: #{e}"
end
```

#### Using the update_batch_reviewed_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)

```ruby
begin
  # Create or Update Batch ReviewedStatus
  data, status_code, headers = api_instance.update_batch_reviewed_status_with_http_info(vbasoftware_database, reviewed_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->update_batch_reviewed_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reviewed_status** | [**Array&lt;ReviewedStatus&gt;**](ReviewedStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reviewed_status

> <ReviewedStatusVBAResponse> update_reviewed_status(vbasoftware_database, reviewed_status, reviewed_status2)

Update ReviewedStatus

Updates a specific ReviewedStatus.

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

api_instance = Vba::ReviewedStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reviewed_status = 'reviewed_status_example' # String | Reviewed Status
reviewed_status2 = Vba::ReviewedStatus.new({reviewed_status: 'reviewed_status_example'}) # ReviewedStatus | 

begin
  # Update ReviewedStatus
  result = api_instance.update_reviewed_status(vbasoftware_database, reviewed_status, reviewed_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->update_reviewed_status: #{e}"
end
```

#### Using the update_reviewed_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewedStatusVBAResponse>, Integer, Hash)> update_reviewed_status_with_http_info(vbasoftware_database, reviewed_status, reviewed_status2)

```ruby
begin
  # Update ReviewedStatus
  data, status_code, headers = api_instance.update_reviewed_status_with_http_info(vbasoftware_database, reviewed_status, reviewed_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReviewedStatusApi->update_reviewed_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reviewed_status** | **String** | Reviewed Status |  |
| **reviewed_status2** | [**ReviewedStatus**](ReviewedStatus.md) |  |  |

### Return type

[**ReviewedStatusVBAResponse**](ReviewedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

