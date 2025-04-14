# Vba::AuthReviewUrgencyTypeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#create_auth_review_urgency_type) | **POST** /auth-review-urgency-types | Create AuthReviewUrgencyType |
| [**delete_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#delete_auth_review_urgency_type) | **DELETE** /auth-review-urgency-types/{reviewUrgencyType} | Delete AuthReviewUrgencyType |
| [**get_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#get_auth_review_urgency_type) | **GET** /auth-review-urgency-types/{reviewUrgencyType} | Get AuthReviewUrgencyType |
| [**list_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#list_auth_review_urgency_type) | **GET** /auth-review-urgency-types | List AuthReviewUrgencyType |
| [**update_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#update_auth_review_urgency_type) | **PUT** /auth-review-urgency-types/{reviewUrgencyType} | Update AuthReviewUrgencyType |
| [**update_batch_auth_review_urgency_type**](AuthReviewUrgencyTypeApi.md#update_batch_auth_review_urgency_type) | **PUT** /auth-review-urgency-types-batch | Update Batch AuthReviewUrgencyType |


## create_auth_review_urgency_type

> <AuthReviewUrgencyTypeVBAResponse> create_auth_review_urgency_type(vbasoftware_database, auth_review_urgency_type)

Create AuthReviewUrgencyType

Creates a new AuthReviewUrgencyType.

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_urgency_type = Vba::AuthReviewUrgencyType.new({review_urgency_type: 'review_urgency_type_example'}) # AuthReviewUrgencyType | 

begin
  # Create AuthReviewUrgencyType
  result = api_instance.create_auth_review_urgency_type(vbasoftware_database, auth_review_urgency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->create_auth_review_urgency_type: #{e}"
end
```

#### Using the create_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewUrgencyTypeVBAResponse>, Integer, Hash)> create_auth_review_urgency_type_with_http_info(vbasoftware_database, auth_review_urgency_type)

```ruby
begin
  # Create AuthReviewUrgencyType
  data, status_code, headers = api_instance.create_auth_review_urgency_type_with_http_info(vbasoftware_database, auth_review_urgency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewUrgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->create_auth_review_urgency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_urgency_type** | [**AuthReviewUrgencyType**](AuthReviewUrgencyType.md) |  |  |

### Return type

[**AuthReviewUrgencyTypeVBAResponse**](AuthReviewUrgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_review_urgency_type

> delete_auth_review_urgency_type(vbasoftware_database, review_urgency_type)

Delete AuthReviewUrgencyType

Deletes an AuthReviewUrgencyType

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_urgency_type = 'review_urgency_type_example' # String | Review Urgency Type

begin
  # Delete AuthReviewUrgencyType
  api_instance.delete_auth_review_urgency_type(vbasoftware_database, review_urgency_type)
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->delete_auth_review_urgency_type: #{e}"
end
```

#### Using the delete_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type)

```ruby
begin
  # Delete AuthReviewUrgencyType
  data, status_code, headers = api_instance.delete_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->delete_auth_review_urgency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_urgency_type** | **String** | Review Urgency Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_review_urgency_type

> <AuthReviewUrgencyTypeVBAResponse> get_auth_review_urgency_type(vbasoftware_database, review_urgency_type)

Get AuthReviewUrgencyType

Gets AuthReviewUrgencyType

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_urgency_type = 'review_urgency_type_example' # String | Review Urgency Type

begin
  # Get AuthReviewUrgencyType
  result = api_instance.get_auth_review_urgency_type(vbasoftware_database, review_urgency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->get_auth_review_urgency_type: #{e}"
end
```

#### Using the get_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewUrgencyTypeVBAResponse>, Integer, Hash)> get_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type)

```ruby
begin
  # Get AuthReviewUrgencyType
  data, status_code, headers = api_instance.get_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewUrgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->get_auth_review_urgency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_urgency_type** | **String** | Review Urgency Type |  |

### Return type

[**AuthReviewUrgencyTypeVBAResponse**](AuthReviewUrgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_review_urgency_type

> <AuthReviewUrgencyTypeListVBAResponse> list_auth_review_urgency_type(vbasoftware_database, opts)

List AuthReviewUrgencyType

Lists all AuthReviewUrgencyType

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthReviewUrgencyType
  result = api_instance.list_auth_review_urgency_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->list_auth_review_urgency_type: #{e}"
end
```

#### Using the list_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewUrgencyTypeListVBAResponse>, Integer, Hash)> list_auth_review_urgency_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthReviewUrgencyType
  data, status_code, headers = api_instance.list_auth_review_urgency_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewUrgencyTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->list_auth_review_urgency_type_with_http_info: #{e}"
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

[**AuthReviewUrgencyTypeListVBAResponse**](AuthReviewUrgencyTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_review_urgency_type

> <AuthReviewUrgencyTypeVBAResponse> update_auth_review_urgency_type(vbasoftware_database, review_urgency_type, auth_review_urgency_type)

Update AuthReviewUrgencyType

Updates a specific AuthReviewUrgencyType.

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
review_urgency_type = 'review_urgency_type_example' # String | Review Urgency Type
auth_review_urgency_type = Vba::AuthReviewUrgencyType.new({review_urgency_type: 'review_urgency_type_example'}) # AuthReviewUrgencyType | 

begin
  # Update AuthReviewUrgencyType
  result = api_instance.update_auth_review_urgency_type(vbasoftware_database, review_urgency_type, auth_review_urgency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->update_auth_review_urgency_type: #{e}"
end
```

#### Using the update_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewUrgencyTypeVBAResponse>, Integer, Hash)> update_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type, auth_review_urgency_type)

```ruby
begin
  # Update AuthReviewUrgencyType
  data, status_code, headers = api_instance.update_auth_review_urgency_type_with_http_info(vbasoftware_database, review_urgency_type, auth_review_urgency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewUrgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->update_auth_review_urgency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **review_urgency_type** | **String** | Review Urgency Type |  |
| **auth_review_urgency_type** | [**AuthReviewUrgencyType**](AuthReviewUrgencyType.md) |  |  |

### Return type

[**AuthReviewUrgencyTypeVBAResponse**](AuthReviewUrgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_review_urgency_type

> <MultiCodeResponseListVBAResponse> update_batch_auth_review_urgency_type(vbasoftware_database, auth_review_urgency_type)

Update Batch AuthReviewUrgencyType

Updates a multiple AuthReviewUrgencyType.

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

api_instance = Vba::AuthReviewUrgencyTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_urgency_type = [Vba::AuthReviewUrgencyType.new({review_urgency_type: 'review_urgency_type_example'})] # Array<AuthReviewUrgencyType> | 

begin
  # Update Batch AuthReviewUrgencyType
  result = api_instance.update_batch_auth_review_urgency_type(vbasoftware_database, auth_review_urgency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->update_batch_auth_review_urgency_type: #{e}"
end
```

#### Using the update_batch_auth_review_urgency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_review_urgency_type_with_http_info(vbasoftware_database, auth_review_urgency_type)

```ruby
begin
  # Update Batch AuthReviewUrgencyType
  data, status_code, headers = api_instance.update_batch_auth_review_urgency_type_with_http_info(vbasoftware_database, auth_review_urgency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewUrgencyTypeApi->update_batch_auth_review_urgency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_urgency_type** | [**Array&lt;AuthReviewUrgencyType&gt;**](AuthReviewUrgencyType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

