# Vba::AuthReviewApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_review**](AuthReviewApi.md#create_auth_review) | **POST** /auth-reviews | Create AuthReview |
| [**delete_auth_review**](AuthReviewApi.md#delete_auth_review) | **DELETE** /auth-reviews/{authReviewKey} | Delete AuthReview |
| [**get_auth_review**](AuthReviewApi.md#get_auth_review) | **GET** /auth-reviews/{authReviewKey} | Get AuthReview |
| [**list_auth_reviews**](AuthReviewApi.md#list_auth_reviews) | **GET** /auth-reviews | List AuthReviews |
| [**update_auth_review**](AuthReviewApi.md#update_auth_review) | **PUT** /auth-reviews/{authReviewKey} | Update AuthReview |
| [**update_batch_auth_review**](AuthReviewApi.md#update_batch_auth_review) | **PUT** /auth-reviews-batch | Update Batch AuthReview |


## create_auth_review

> <AuthReviewVBAResponse> create_auth_review(vbasoftware_database, auth_review)

Create AuthReview

Creates a new AuthReview.

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review = Vba::AuthReview.new({auth_review_key: 37, auth_number: 'auth_number_example'}) # AuthReview | 

begin
  # Create AuthReview
  result = api_instance.create_auth_review(vbasoftware_database, auth_review)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->create_auth_review: #{e}"
end
```

#### Using the create_auth_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewVBAResponse>, Integer, Hash)> create_auth_review_with_http_info(vbasoftware_database, auth_review)

```ruby
begin
  # Create AuthReview
  data, status_code, headers = api_instance.create_auth_review_with_http_info(vbasoftware_database, auth_review)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->create_auth_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review** | [**AuthReview**](AuthReview.md) |  |  |

### Return type

[**AuthReviewVBAResponse**](AuthReviewVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_review

> delete_auth_review(vbasoftware_database, auth_review_key)

Delete AuthReview

Deletes an AuthReview

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_key = 56 # Integer | AuthReview Key

begin
  # Delete AuthReview
  api_instance.delete_auth_review(vbasoftware_database, auth_review_key)
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->delete_auth_review: #{e}"
end
```

#### Using the delete_auth_review_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_review_with_http_info(vbasoftware_database, auth_review_key)

```ruby
begin
  # Delete AuthReview
  data, status_code, headers = api_instance.delete_auth_review_with_http_info(vbasoftware_database, auth_review_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->delete_auth_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_key** | **Integer** | AuthReview Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_review

> <AuthReviewVBAResponse> get_auth_review(vbasoftware_database, auth_review_key)

Get AuthReview

Gets AuthReview

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_key = 56 # Integer | AuthReview Key

begin
  # Get AuthReview
  result = api_instance.get_auth_review(vbasoftware_database, auth_review_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->get_auth_review: #{e}"
end
```

#### Using the get_auth_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewVBAResponse>, Integer, Hash)> get_auth_review_with_http_info(vbasoftware_database, auth_review_key)

```ruby
begin
  # Get AuthReview
  data, status_code, headers = api_instance.get_auth_review_with_http_info(vbasoftware_database, auth_review_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->get_auth_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_key** | **Integer** | AuthReview Key |  |

### Return type

[**AuthReviewVBAResponse**](AuthReviewVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_reviews

> <AuthReviewListVBAResponse> list_auth_reviews(vbasoftware_database, opts)

List AuthReviews

Lists all AuthReviews

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  auth_number: 'auth_number_example', # String | Auth Number
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthReviews
  result = api_instance.list_auth_reviews(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->list_auth_reviews: #{e}"
end
```

#### Using the list_auth_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewListVBAResponse>, Integer, Hash)> list_auth_reviews_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AuthReviews
  data, status_code, headers = api_instance.list_auth_reviews_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->list_auth_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_number** | **String** | Auth Number | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**AuthReviewListVBAResponse**](AuthReviewListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_review

> <AuthReviewVBAResponse> update_auth_review(vbasoftware_database, auth_review_key, auth_review)

Update AuthReview

Updates a specific AuthReview.

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review_key = 56 # Integer | AuthReview Key
auth_review = Vba::AuthReview.new({auth_review_key: 37, auth_number: 'auth_number_example'}) # AuthReview | 

begin
  # Update AuthReview
  result = api_instance.update_auth_review(vbasoftware_database, auth_review_key, auth_review)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->update_auth_review: #{e}"
end
```

#### Using the update_auth_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReviewVBAResponse>, Integer, Hash)> update_auth_review_with_http_info(vbasoftware_database, auth_review_key, auth_review)

```ruby
begin
  # Update AuthReview
  data, status_code, headers = api_instance.update_auth_review_with_http_info(vbasoftware_database, auth_review_key, auth_review)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReviewVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->update_auth_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review_key** | **Integer** | AuthReview Key |  |
| **auth_review** | [**AuthReview**](AuthReview.md) |  |  |

### Return type

[**AuthReviewVBAResponse**](AuthReviewVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_review

> <MultiCodeResponseListVBAResponse> update_batch_auth_review(vbasoftware_database, auth_review)

Update Batch AuthReview

Updates a multiple AuthReview.

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

api_instance = Vba::AuthReviewApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_review = [Vba::AuthReview.new({auth_review_key: 37, auth_number: 'auth_number_example'})] # Array<AuthReview> | 

begin
  # Update Batch AuthReview
  result = api_instance.update_batch_auth_review(vbasoftware_database, auth_review)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->update_batch_auth_review: #{e}"
end
```

#### Using the update_batch_auth_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_review_with_http_info(vbasoftware_database, auth_review)

```ruby
begin
  # Update Batch AuthReview
  data, status_code, headers = api_instance.update_batch_auth_review_with_http_info(vbasoftware_database, auth_review)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReviewApi->update_batch_auth_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_review** | [**Array&lt;AuthReview&gt;**](AuthReview.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

