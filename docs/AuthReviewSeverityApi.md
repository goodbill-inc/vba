# Vba::AuthReviewSeverityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_review_severity**](AuthReviewSeverityApi.md#create_auth_review_severity) | **POST** /auth-review-severities | Create AuthReviewSeverity |
| [**delete_auth_review_severity**](AuthReviewSeverityApi.md#delete_auth_review_severity) | **DELETE** /auth-review-severities/{reviewSeverity} | Delete AuthReviewSeverity |
| [**get_auth_review_severity**](AuthReviewSeverityApi.md#get_auth_review_severity) | **GET** /auth-review-severities/{reviewSeverity} | Get AuthReviewSeverity |
| [**list_auth_review_severity**](AuthReviewSeverityApi.md#list_auth_review_severity) | **GET** /auth-review-severities | List AuthReviewLevel |
| [**update_auth_review_severity**](AuthReviewSeverityApi.md#update_auth_review_severity) | **PUT** /auth-review-severities/{reviewSeverity} | Update AuthReviewSeverity |
| [**update_batch_auth_review_severity**](AuthReviewSeverityApi.md#update_batch_auth_review_severity) | **PUT** /auth-review-severities-batch | Update Batch AuthReviewSeverity |


## create_auth_review_severity

> <AuthReviewSeverityVBAResponse> create_auth_review_severity(vbasoftware_database, auth_review_severity)

Create AuthReviewSeverity

Creates a new AuthReviewSeverity.

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_severity = Vba::AuthReviewSeverity.new({review_severity: 'review_severity_example'}) # AuthReviewSeverity | 

begin
  # Create AuthReviewSeverity
  result = api_instance.create_auth_review_severity(vbasoftware_database, auth_review_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->create_auth_review_severity: #{e}"
end
```

#### Using the create_auth_review_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewSeverityVBAResponse>, Integer, Hash)> create_auth_review_severity_with_http_info(vbasoftware_database, auth_review_severity)

```ruby
begin
  # Create AuthReviewSeverity
  data, status_code, headers = api_instance.create_auth_review_severity_with_http_info(vbasoftware_database, auth_review_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->create_auth_review_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_severity** | [**AuthReviewSeverity**](AuthReviewSeverity.md) |  |  |

### Return type

[**AuthReviewSeverityVBAResponse**](AuthReviewSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_review_severity

> delete_auth_review_severity(vbasoftware_database, review_severity)

Delete AuthReviewSeverity

Deletes an AuthReviewSeverity

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_severity = 'review_severity_example' # String | Review Severity

begin
  # Delete AuthReviewSeverity
  api_instance.delete_auth_review_severity(vbasoftware_database, review_severity)
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->delete_auth_review_severity: #{e}"
end
```

#### Using the delete_auth_review_severity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_review_severity_with_http_info(vbasoftware_database, review_severity)

```ruby
begin
  # Delete AuthReviewSeverity
  data, status_code, headers = api_instance.delete_auth_review_severity_with_http_info(vbasoftware_database, review_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->delete_auth_review_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_severity** | **String** | Review Severity |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_review_severity

> <AuthReviewSeverityVBAResponse> get_auth_review_severity(vbasoftware_database, review_severity)

Get AuthReviewSeverity

Gets AuthReviewSeverity

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_severity = 'review_severity_example' # String | Review Severity

begin
  # Get AuthReviewSeverity
  result = api_instance.get_auth_review_severity(vbasoftware_database, review_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->get_auth_review_severity: #{e}"
end
```

#### Using the get_auth_review_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewSeverityVBAResponse>, Integer, Hash)> get_auth_review_severity_with_http_info(vbasoftware_database, review_severity)

```ruby
begin
  # Get AuthReviewSeverity
  data, status_code, headers = api_instance.get_auth_review_severity_with_http_info(vbasoftware_database, review_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->get_auth_review_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_severity** | **String** | Review Severity |  |

### Return type

[**AuthReviewSeverityVBAResponse**](AuthReviewSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_review_severity

> <AuthReviewSeverityListVBAResponse> list_auth_review_severity(vbasoftware_database, opts)

List AuthReviewLevel

Lists all AuthReviewSeverity

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthReviewLevel
  result = api_instance.list_auth_review_severity(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->list_auth_review_severity: #{e}"
end
```

#### Using the list_auth_review_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewSeverityListVBAResponse>, Integer, Hash)> list_auth_review_severity_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthReviewLevel
  data, status_code, headers = api_instance.list_auth_review_severity_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewSeverityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->list_auth_review_severity_with_http_info: #{e}"
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

[**AuthReviewSeverityListVBAResponse**](AuthReviewSeverityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_review_severity

> <AuthReviewSeverityVBAResponse> update_auth_review_severity(vbasoftware_database, review_severity, auth_review_severity)

Update AuthReviewSeverity

Updates a specific AuthReviewSeverity.

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_severity = 'review_severity_example' # String | Review Severity
auth_review_severity = Vba::AuthReviewSeverity.new({review_severity: 'review_severity_example'}) # AuthReviewSeverity | 

begin
  # Update AuthReviewSeverity
  result = api_instance.update_auth_review_severity(vbasoftware_database, review_severity, auth_review_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->update_auth_review_severity: #{e}"
end
```

#### Using the update_auth_review_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewSeverityVBAResponse>, Integer, Hash)> update_auth_review_severity_with_http_info(vbasoftware_database, review_severity, auth_review_severity)

```ruby
begin
  # Update AuthReviewSeverity
  data, status_code, headers = api_instance.update_auth_review_severity_with_http_info(vbasoftware_database, review_severity, auth_review_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->update_auth_review_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_severity** | **String** | Review Severity |  |
| **auth_review_severity** | [**AuthReviewSeverity**](AuthReviewSeverity.md) |  |  |

### Return type

[**AuthReviewSeverityVBAResponse**](AuthReviewSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_review_severity

> <MultiCodeResponseListVBAResponse> update_batch_auth_review_severity(vbasoftware_database, auth_review_severity)

Update Batch AuthReviewSeverity

Updates a multiple AuthReviewSeverity.

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

api_instance = Vba::AuthReviewSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_severity = [Vba::AuthReviewSeverity.new({review_severity: 'review_severity_example'})] # Array<AuthReviewSeverity> | 

begin
  # Update Batch AuthReviewSeverity
  result = api_instance.update_batch_auth_review_severity(vbasoftware_database, auth_review_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->update_batch_auth_review_severity: #{e}"
end
```

#### Using the update_batch_auth_review_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_review_severity_with_http_info(vbasoftware_database, auth_review_severity)

```ruby
begin
  # Update Batch AuthReviewSeverity
  data, status_code, headers = api_instance.update_batch_auth_review_severity_with_http_info(vbasoftware_database, auth_review_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewSeverityApi->update_batch_auth_review_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_severity** | [**Array&lt;AuthReviewSeverity&gt;**](AuthReviewSeverity.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

