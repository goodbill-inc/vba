# Vba::AuthReviewStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_review_status**](AuthReviewStatusApi.md#create_auth_review_status) | **POST** /auth-review-statuses | Create AuthReviewStatus |
| [**delete_auth_review_status**](AuthReviewStatusApi.md#delete_auth_review_status) | **DELETE** /auth-review-statuses/{reviewStatus} | Delete AuthReviewStatus |
| [**get_auth_review_status**](AuthReviewStatusApi.md#get_auth_review_status) | **GET** /auth-review-statuses/{reviewStatus} | Get AuthReviewStatus |
| [**list_auth_review_status**](AuthReviewStatusApi.md#list_auth_review_status) | **GET** /auth-review-statuses | List AuthReviewStatus |
| [**update_auth_review_status**](AuthReviewStatusApi.md#update_auth_review_status) | **PUT** /auth-review-statuses/{reviewStatus} | Update AuthReviewStatus |
| [**update_batch_auth_review_status**](AuthReviewStatusApi.md#update_batch_auth_review_status) | **PUT** /auth-review-statuses-batch | Update Batch AuthReviewStatus |


## create_auth_review_status

> <AuthReviewStatusVBAResponse> create_auth_review_status(vbasoftware_database, auth_review_status)

Create AuthReviewStatus

Creates a new AuthReviewStatus.

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_status = Vba::AuthReviewStatus.new({review_status: 'review_status_example'}) # AuthReviewStatus | 

begin
  # Create AuthReviewStatus
  result = api_instance.create_auth_review_status(vbasoftware_database, auth_review_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->create_auth_review_status: #{e}"
end
```

#### Using the create_auth_review_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewStatusVBAResponse>, Integer, Hash)> create_auth_review_status_with_http_info(vbasoftware_database, auth_review_status)

```ruby
begin
  # Create AuthReviewStatus
  data, status_code, headers = api_instance.create_auth_review_status_with_http_info(vbasoftware_database, auth_review_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->create_auth_review_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_status** | [**AuthReviewStatus**](AuthReviewStatus.md) |  |  |

### Return type

[**AuthReviewStatusVBAResponse**](AuthReviewStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_review_status

> delete_auth_review_status(vbasoftware_database, review_status)

Delete AuthReviewStatus

Deletes an AuthReviewStatus

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_status = 'review_status_example' # String | Review Status

begin
  # Delete AuthReviewStatus
  api_instance.delete_auth_review_status(vbasoftware_database, review_status)
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->delete_auth_review_status: #{e}"
end
```

#### Using the delete_auth_review_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_review_status_with_http_info(vbasoftware_database, review_status)

```ruby
begin
  # Delete AuthReviewStatus
  data, status_code, headers = api_instance.delete_auth_review_status_with_http_info(vbasoftware_database, review_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->delete_auth_review_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_status** | **String** | Review Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_review_status

> <AuthReviewStatusVBAResponse> get_auth_review_status(vbasoftware_database, review_status)

Get AuthReviewStatus

Gets AuthReviewStatus

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_status = 'review_status_example' # String | Review Status

begin
  # Get AuthReviewStatus
  result = api_instance.get_auth_review_status(vbasoftware_database, review_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->get_auth_review_status: #{e}"
end
```

#### Using the get_auth_review_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewStatusVBAResponse>, Integer, Hash)> get_auth_review_status_with_http_info(vbasoftware_database, review_status)

```ruby
begin
  # Get AuthReviewStatus
  data, status_code, headers = api_instance.get_auth_review_status_with_http_info(vbasoftware_database, review_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->get_auth_review_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_status** | **String** | Review Status |  |

### Return type

[**AuthReviewStatusVBAResponse**](AuthReviewStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_review_status

> <AuthReviewStatusListVBAResponse> list_auth_review_status(vbasoftware_database, opts)

List AuthReviewStatus

Lists all AuthReviewStatus

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthReviewStatus
  result = api_instance.list_auth_review_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->list_auth_review_status: #{e}"
end
```

#### Using the list_auth_review_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewStatusListVBAResponse>, Integer, Hash)> list_auth_review_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthReviewStatus
  data, status_code, headers = api_instance.list_auth_review_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->list_auth_review_status_with_http_info: #{e}"
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

[**AuthReviewStatusListVBAResponse**](AuthReviewStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_review_status

> <AuthReviewStatusVBAResponse> update_auth_review_status(vbasoftware_database, review_status, auth_review_status)

Update AuthReviewStatus

Updates a specific AuthReviewStatus.

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_status = 'review_status_example' # String | Review Status
auth_review_status = Vba::AuthReviewStatus.new({review_status: 'review_status_example'}) # AuthReviewStatus | 

begin
  # Update AuthReviewStatus
  result = api_instance.update_auth_review_status(vbasoftware_database, review_status, auth_review_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->update_auth_review_status: #{e}"
end
```

#### Using the update_auth_review_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewStatusVBAResponse>, Integer, Hash)> update_auth_review_status_with_http_info(vbasoftware_database, review_status, auth_review_status)

```ruby
begin
  # Update AuthReviewStatus
  data, status_code, headers = api_instance.update_auth_review_status_with_http_info(vbasoftware_database, review_status, auth_review_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->update_auth_review_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_status** | **String** | Review Status |  |
| **auth_review_status** | [**AuthReviewStatus**](AuthReviewStatus.md) |  |  |

### Return type

[**AuthReviewStatusVBAResponse**](AuthReviewStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_review_status

> <MultiCodeResponseListVBAResponse> update_batch_auth_review_status(vbasoftware_database, auth_review_status)

Update Batch AuthReviewStatus

Updates a multiple AuthReviewStatus.

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

api_instance = Vba::AuthReviewStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_status = [Vba::AuthReviewStatus.new({review_status: 'review_status_example'})] # Array<AuthReviewStatus> | 

begin
  # Update Batch AuthReviewStatus
  result = api_instance.update_batch_auth_review_status(vbasoftware_database, auth_review_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->update_batch_auth_review_status: #{e}"
end
```

#### Using the update_batch_auth_review_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_review_status_with_http_info(vbasoftware_database, auth_review_status)

```ruby
begin
  # Update Batch AuthReviewStatus
  data, status_code, headers = api_instance.update_batch_auth_review_status_with_http_info(vbasoftware_database, auth_review_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewStatusApi->update_batch_auth_review_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_status** | [**Array&lt;AuthReviewStatus&gt;**](AuthReviewStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

