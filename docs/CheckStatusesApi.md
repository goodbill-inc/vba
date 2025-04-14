# Vba::CheckStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_check_status**](CheckStatusesApi.md#create_check_status) | **POST** /check-statuses | Create CheckStatus |
| [**delete_check_status**](CheckStatusesApi.md#delete_check_status) | **DELETE** /check-statuses/{checkStatus} | Delete CheckStatus |
| [**get_check_status**](CheckStatusesApi.md#get_check_status) | **GET** /check-statuses/{checkStatus} | Get CheckStatus |
| [**list_check_status**](CheckStatusesApi.md#list_check_status) | **GET** /check-statuses | List CheckStatus |
| [**update_batch_check_status**](CheckStatusesApi.md#update_batch_check_status) | **PUT** /check-statuses-batch | Create or Update Batch CheckStatus |
| [**update_check_status**](CheckStatusesApi.md#update_check_status) | **PUT** /check-statuses/{checkStatus} | Update CheckStatus |


## create_check_status

> <CheckStatusVBAResponse> create_check_status(vbasoftware_database, check_status)

Create CheckStatus

Creates a new CheckStatus

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_status = Vba::CheckStatus.new({check_status: 'check_status_example'}) # CheckStatus | 

begin
  # Create CheckStatus
  result = api_instance.create_check_status(vbasoftware_database, check_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->create_check_status: #{e}"
end
```

#### Using the create_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckStatusVBAResponse>, Integer, Hash)> create_check_status_with_http_info(vbasoftware_database, check_status)

```ruby
begin
  # Create CheckStatus
  data, status_code, headers = api_instance.create_check_status_with_http_info(vbasoftware_database, check_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->create_check_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_status** | [**CheckStatus**](CheckStatus.md) |  |  |

### Return type

[**CheckStatusVBAResponse**](CheckStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_check_status

> delete_check_status(vbasoftware_database, check_status)

Delete CheckStatus

Deletes an CheckStatus

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_status = 'check_status_example' # String | Check Status

begin
  # Delete CheckStatus
  api_instance.delete_check_status(vbasoftware_database, check_status)
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->delete_check_status: #{e}"
end
```

#### Using the delete_check_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_check_status_with_http_info(vbasoftware_database, check_status)

```ruby
begin
  # Delete CheckStatus
  data, status_code, headers = api_instance.delete_check_status_with_http_info(vbasoftware_database, check_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->delete_check_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_status** | **String** | Check Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_check_status

> <CheckStatusVBAResponse> get_check_status(vbasoftware_database, check_status)

Get CheckStatus

Gets CheckStatus

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_status = 'check_status_example' # String | Check Status

begin
  # Get CheckStatus
  result = api_instance.get_check_status(vbasoftware_database, check_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->get_check_status: #{e}"
end
```

#### Using the get_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckStatusVBAResponse>, Integer, Hash)> get_check_status_with_http_info(vbasoftware_database, check_status)

```ruby
begin
  # Get CheckStatus
  data, status_code, headers = api_instance.get_check_status_with_http_info(vbasoftware_database, check_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->get_check_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_status** | **String** | Check Status |  |

### Return type

[**CheckStatusVBAResponse**](CheckStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_status

> <CheckStatusListVBAResponse> list_check_status(vbasoftware_database, opts)

List CheckStatus

Lists all CheckStatus

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckStatus
  result = api_instance.list_check_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->list_check_status: #{e}"
end
```

#### Using the list_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckStatusListVBAResponse>, Integer, Hash)> list_check_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckStatus
  data, status_code, headers = api_instance.list_check_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->list_check_status_with_http_info: #{e}"
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

[**CheckStatusListVBAResponse**](CheckStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_check_status

> <MultiCodeResponseListVBAResponse> update_batch_check_status(vbasoftware_database, check_status)

Create or Update Batch CheckStatus

Create or Update multiple CheckStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_status = [Vba::CheckStatus.new({check_status: 'check_status_example'})] # Array<CheckStatus> | 

begin
  # Create or Update Batch CheckStatus
  result = api_instance.update_batch_check_status(vbasoftware_database, check_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->update_batch_check_status: #{e}"
end
```

#### Using the update_batch_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_check_status_with_http_info(vbasoftware_database, check_status)

```ruby
begin
  # Create or Update Batch CheckStatus
  data, status_code, headers = api_instance.update_batch_check_status_with_http_info(vbasoftware_database, check_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->update_batch_check_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_status** | [**Array&lt;CheckStatus&gt;**](CheckStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_check_status

> <CheckStatusVBAResponse> update_check_status(vbasoftware_database, check_status, check_status2)

Update CheckStatus

Updates a specific CheckStatus.

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

api_instance = Vba::CheckStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_status = 'check_status_example' # String | Check Status
check_status2 = Vba::CheckStatus.new({check_status: 'check_status_example'}) # CheckStatus | 

begin
  # Update CheckStatus
  result = api_instance.update_check_status(vbasoftware_database, check_status, check_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->update_check_status: #{e}"
end
```

#### Using the update_check_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckStatusVBAResponse>, Integer, Hash)> update_check_status_with_http_info(vbasoftware_database, check_status, check_status2)

```ruby
begin
  # Update CheckStatus
  data, status_code, headers = api_instance.update_check_status_with_http_info(vbasoftware_database, check_status, check_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckStatusesApi->update_check_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_status** | **String** | Check Status |  |
| **check_status2** | [**CheckStatus**](CheckStatus.md) |  |  |

### Return type

[**CheckStatusVBAResponse**](CheckStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

