# Vba::CheckEditDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_check_edit_set_detail**](CheckEditDetailsApi.md#create_check_edit_set_detail) | **POST** /check-edit-details/{checkEditSetHeaderKey}/{checkEditKey} | Create CheckEditSetDetail |
| [**delete_check_edit_set_detail**](CheckEditDetailsApi.md#delete_check_edit_set_detail) | **DELETE** /check-edit-details/{checkEditSetHeaderKey}/{checkEditKey} | Delete CheckEditSetDetail |
| [**get_check_edit_set_detail**](CheckEditDetailsApi.md#get_check_edit_set_detail) | **GET** /check-edit-details/{checkEditSetHeaderKey}/{checkEditKey} | Get CheckEditSetDetail |
| [**list_check_edit_set_detail**](CheckEditDetailsApi.md#list_check_edit_set_detail) | **GET** /check-edit-details | List CheckEditSetDetail |
| [**update_batch_check_edit_set_detail**](CheckEditDetailsApi.md#update_batch_check_edit_set_detail) | **PUT** /check-edit-details-batch | Create or Update Batch CheckEditSetDetail |
| [**update_check_edit_set_detail**](CheckEditDetailsApi.md#update_check_edit_set_detail) | **PUT** /check-edit-details/{checkEditSetHeaderKey}/{checkEditKey} | Update CheckEditSetDetail |


## create_check_edit_set_detail

> <CheckEditSetDetailVBAResponse> create_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)

Create CheckEditSetDetail

Creates a new CheckEditSetDetail

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_header_key = 56 # Integer | CheckEditSetHeader Key
check_edit_key = 56 # Integer | CheckEdit Key
check_edit_set_detail = Vba::CheckEditSetDetail.new({check_edit_set_header_key: 37, check_edit_key: 37, check_edit_sequence: 37, enabled: false}) # CheckEditSetDetail | 

begin
  # Create CheckEditSetDetail
  result = api_instance.create_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->create_check_edit_set_detail: #{e}"
end
```

#### Using the create_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetDetailVBAResponse>, Integer, Hash)> create_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)

```ruby
begin
  # Create CheckEditSetDetail
  data, status_code, headers = api_instance.create_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->create_check_edit_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_header_key** | **Integer** | CheckEditSetHeader Key |  |
| **check_edit_key** | **Integer** | CheckEdit Key |  |
| **check_edit_set_detail** | [**CheckEditSetDetail**](CheckEditSetDetail.md) |  |  |

### Return type

[**CheckEditSetDetailVBAResponse**](CheckEditSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_check_edit_set_detail

> delete_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key)

Delete CheckEditSetDetail

Deletes an CheckEditSetDetail

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_header_key = 56 # Integer | CheckEditSetHeader Key
check_edit_key = 56 # Integer | CheckEdit Key

begin
  # Delete CheckEditSetDetail
  api_instance.delete_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key)
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->delete_check_edit_set_detail: #{e}"
end
```

#### Using the delete_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key)

```ruby
begin
  # Delete CheckEditSetDetail
  data, status_code, headers = api_instance.delete_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->delete_check_edit_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_header_key** | **Integer** | CheckEditSetHeader Key |  |
| **check_edit_key** | **Integer** | CheckEdit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_check_edit_set_detail

> <CheckEditSetDetailVBAResponse> get_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key)

Get CheckEditSetDetail

Gets CheckEditSetDetail

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_header_key = 56 # Integer | CheckEditSetHeader Key
check_edit_key = 56 # Integer | CheckEdit Key

begin
  # Get CheckEditSetDetail
  result = api_instance.get_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->get_check_edit_set_detail: #{e}"
end
```

#### Using the get_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetDetailVBAResponse>, Integer, Hash)> get_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key)

```ruby
begin
  # Get CheckEditSetDetail
  data, status_code, headers = api_instance.get_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->get_check_edit_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_header_key** | **Integer** | CheckEditSetHeader Key |  |
| **check_edit_key** | **Integer** | CheckEdit Key |  |

### Return type

[**CheckEditSetDetailVBAResponse**](CheckEditSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_edit_set_detail

> <CheckEditSetDetailListVBAResponse> list_check_edit_set_detail(vbasoftware_database, opts)

List CheckEditSetDetail

Lists all CheckEditSetDetail

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckEditSetDetail
  result = api_instance.list_check_edit_set_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->list_check_edit_set_detail: #{e}"
end
```

#### Using the list_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetDetailListVBAResponse>, Integer, Hash)> list_check_edit_set_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckEditSetDetail
  data, status_code, headers = api_instance.list_check_edit_set_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->list_check_edit_set_detail_with_http_info: #{e}"
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

[**CheckEditSetDetailListVBAResponse**](CheckEditSetDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_check_edit_set_detail

> <MultiCodeResponseListVBAResponse> update_batch_check_edit_set_detail(vbasoftware_database, check_edit_set_detail)

Create or Update Batch CheckEditSetDetail

Create or Update multiple CheckEditSetDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_detail = [Vba::CheckEditSetDetail.new({check_edit_set_header_key: 37, check_edit_key: 37, check_edit_sequence: 37, enabled: false})] # Array<CheckEditSetDetail> | 

begin
  # Create or Update Batch CheckEditSetDetail
  result = api_instance.update_batch_check_edit_set_detail(vbasoftware_database, check_edit_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->update_batch_check_edit_set_detail: #{e}"
end
```

#### Using the update_batch_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_detail)

```ruby
begin
  # Create or Update Batch CheckEditSetDetail
  data, status_code, headers = api_instance.update_batch_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->update_batch_check_edit_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_detail** | [**Array&lt;CheckEditSetDetail&gt;**](CheckEditSetDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_check_edit_set_detail

> <CheckEditSetDetailVBAResponse> update_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)

Update CheckEditSetDetail

Updates a specific CheckEditSetDetail.

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

api_instance = Vba::CheckEditDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_header_key = 56 # Integer | CheckEditSetHeader Key
check_edit_key = 56 # Integer | CheckEdit Key
check_edit_set_detail = Vba::CheckEditSetDetail.new({check_edit_set_header_key: 37, check_edit_key: 37, check_edit_sequence: 37, enabled: false}) # CheckEditSetDetail | 

begin
  # Update CheckEditSetDetail
  result = api_instance.update_check_edit_set_detail(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->update_check_edit_set_detail: #{e}"
end
```

#### Using the update_check_edit_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetDetailVBAResponse>, Integer, Hash)> update_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)

```ruby
begin
  # Update CheckEditSetDetail
  data, status_code, headers = api_instance.update_check_edit_set_detail_with_http_info(vbasoftware_database, check_edit_set_header_key, check_edit_key, check_edit_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditDetailsApi->update_check_edit_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_header_key** | **Integer** | CheckEditSetHeader Key |  |
| **check_edit_key** | **Integer** | CheckEdit Key |  |
| **check_edit_set_detail** | [**CheckEditSetDetail**](CheckEditSetDetail.md) |  |  |

### Return type

[**CheckEditSetDetailVBAResponse**](CheckEditSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

