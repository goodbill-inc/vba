# Vba::AuthReviewLevelApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_review_level**](AuthReviewLevelApi.md#create_auth_review_level) | **POST** /auth-review-levels | Create AuthReviewLevel |
| [**delete_auth_review_level**](AuthReviewLevelApi.md#delete_auth_review_level) | **DELETE** /auth-review-levels/{reviewLevel} | Delete AuthReviewLevel |
| [**get_auth_review_level**](AuthReviewLevelApi.md#get_auth_review_level) | **GET** /auth-review-levels/{reviewLevel} | Get AuthReviewLevel |
| [**list_auth_review_level**](AuthReviewLevelApi.md#list_auth_review_level) | **GET** /auth-review-levels | List AuthReviewLevel |
| [**update_auth_review_level**](AuthReviewLevelApi.md#update_auth_review_level) | **PUT** /auth-review-levels/{reviewLevel} | Update AuthReviewLevel |
| [**update_batch_auth_review_level**](AuthReviewLevelApi.md#update_batch_auth_review_level) | **PUT** /auth-review-levels-batch | Update Batch AuthReviewLevel |


## create_auth_review_level

> <AuthReviewLevelVBAResponse> create_auth_review_level(vbasoftware_database, auth_review_level)

Create AuthReviewLevel

Creates a new AuthReviewLevel.

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_level = Vba::AuthReviewLevel.new({review_level: 'review_level_example'}) # AuthReviewLevel | 

begin
  # Create AuthReviewLevel
  result = api_instance.create_auth_review_level(vbasoftware_database, auth_review_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->create_auth_review_level: #{e}"
end
```

#### Using the create_auth_review_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewLevelVBAResponse>, Integer, Hash)> create_auth_review_level_with_http_info(vbasoftware_database, auth_review_level)

```ruby
begin
  # Create AuthReviewLevel
  data, status_code, headers = api_instance.create_auth_review_level_with_http_info(vbasoftware_database, auth_review_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->create_auth_review_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_level** | [**AuthReviewLevel**](AuthReviewLevel.md) |  |  |

### Return type

[**AuthReviewLevelVBAResponse**](AuthReviewLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_review_level

> delete_auth_review_level(vbasoftware_database, review_level)

Delete AuthReviewLevel

Deletes an AuthReviewLevel

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_level = 'review_level_example' # String | Review Level

begin
  # Delete AuthReviewLevel
  api_instance.delete_auth_review_level(vbasoftware_database, review_level)
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->delete_auth_review_level: #{e}"
end
```

#### Using the delete_auth_review_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_review_level_with_http_info(vbasoftware_database, review_level)

```ruby
begin
  # Delete AuthReviewLevel
  data, status_code, headers = api_instance.delete_auth_review_level_with_http_info(vbasoftware_database, review_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->delete_auth_review_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_level** | **String** | Review Level |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_review_level

> <AuthReviewLevelVBAResponse> get_auth_review_level(vbasoftware_database, review_level)

Get AuthReviewLevel

Gets AuthReviewLevel

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_level = 'review_level_example' # String | Review Level

begin
  # Get AuthReviewLevel
  result = api_instance.get_auth_review_level(vbasoftware_database, review_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->get_auth_review_level: #{e}"
end
```

#### Using the get_auth_review_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewLevelVBAResponse>, Integer, Hash)> get_auth_review_level_with_http_info(vbasoftware_database, review_level)

```ruby
begin
  # Get AuthReviewLevel
  data, status_code, headers = api_instance.get_auth_review_level_with_http_info(vbasoftware_database, review_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->get_auth_review_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_level** | **String** | Review Level |  |

### Return type

[**AuthReviewLevelVBAResponse**](AuthReviewLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_review_level

> <AuthReviewLevelListVBAResponse> list_auth_review_level(vbasoftware_database, opts)

List AuthReviewLevel

Lists all AuthReviewLevel

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthReviewLevel
  result = api_instance.list_auth_review_level(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->list_auth_review_level: #{e}"
end
```

#### Using the list_auth_review_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewLevelListVBAResponse>, Integer, Hash)> list_auth_review_level_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthReviewLevel
  data, status_code, headers = api_instance.list_auth_review_level_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewLevelListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->list_auth_review_level_with_http_info: #{e}"
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

[**AuthReviewLevelListVBAResponse**](AuthReviewLevelListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_review_level

> <AuthReviewLevelVBAResponse> update_auth_review_level(vbasoftware_database, review_level, auth_review_level)

Update AuthReviewLevel

Updates a specific AuthReviewLevel.

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_level = 'review_level_example' # String | Review Level
auth_review_level = Vba::AuthReviewLevel.new({review_level: 'review_level_example'}) # AuthReviewLevel | 

begin
  # Update AuthReviewLevel
  result = api_instance.update_auth_review_level(vbasoftware_database, review_level, auth_review_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->update_auth_review_level: #{e}"
end
```

#### Using the update_auth_review_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewLevelVBAResponse>, Integer, Hash)> update_auth_review_level_with_http_info(vbasoftware_database, review_level, auth_review_level)

```ruby
begin
  # Update AuthReviewLevel
  data, status_code, headers = api_instance.update_auth_review_level_with_http_info(vbasoftware_database, review_level, auth_review_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->update_auth_review_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_level** | **String** | Review Level |  |
| **auth_review_level** | [**AuthReviewLevel**](AuthReviewLevel.md) |  |  |

### Return type

[**AuthReviewLevelVBAResponse**](AuthReviewLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_review_level

> <MultiCodeResponseListVBAResponse> update_batch_auth_review_level(vbasoftware_database, auth_review_level)

Update Batch AuthReviewLevel

Updates a multiple AuthReviewLevel.

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

api_instance = Vba::AuthReviewLevelApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_level = [Vba::AuthReviewLevel.new({review_level: 'review_level_example'})] # Array<AuthReviewLevel> | 

begin
  # Update Batch AuthReviewLevel
  result = api_instance.update_batch_auth_review_level(vbasoftware_database, auth_review_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->update_batch_auth_review_level: #{e}"
end
```

#### Using the update_batch_auth_review_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_review_level_with_http_info(vbasoftware_database, auth_review_level)

```ruby
begin
  # Update Batch AuthReviewLevel
  data, status_code, headers = api_instance.update_batch_auth_review_level_with_http_info(vbasoftware_database, auth_review_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewLevelApi->update_batch_auth_review_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_level** | [**Array&lt;AuthReviewLevel&gt;**](AuthReviewLevel.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

