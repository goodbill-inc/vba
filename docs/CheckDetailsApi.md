# Vba::CheckDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checks_detail**](CheckDetailsApi.md#create_checks_detail) | **POST** /checks/{checkID}/details | Create ChecksDetail |
| [**delete_checks_detail**](CheckDetailsApi.md#delete_checks_detail) | **DELETE** /checks/{checkID}/details/{itemSeq} | Delete ChecksDetail |
| [**get_checks_detail**](CheckDetailsApi.md#get_checks_detail) | **GET** /checks/{checkID}/details/{itemSeq} | Get ChecksDetail |
| [**list_checks_detail**](CheckDetailsApi.md#list_checks_detail) | **GET** /checks/{checkID}/details | List ChecksDetail |
| [**update_batch_checks_detail**](CheckDetailsApi.md#update_batch_checks_detail) | **PUT** /checks/{checkID}/details-batch | Create or Update Batch ChecksDetail |
| [**update_checks_detail**](CheckDetailsApi.md#update_checks_detail) | **PUT** /checks/{checkID}/details/{itemSeq} | Update ChecksDetail |


## create_checks_detail

> <ChecksDetailVBAResponse> create_checks_detail(vbasoftware_database, check_id, checks_detail)

Create ChecksDetail

Creates a new ChecksDetail

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
checks_detail = Vba::ChecksDetail.new({check_id: 37, item_seq: 37}) # ChecksDetail | 

begin
  # Create ChecksDetail
  result = api_instance.create_checks_detail(vbasoftware_database, check_id, checks_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->create_checks_detail: #{e}"
end
```

#### Using the create_checks_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksDetailVBAResponse>, Integer, Hash)> create_checks_detail_with_http_info(vbasoftware_database, check_id, checks_detail)

```ruby
begin
  # Create ChecksDetail
  data, status_code, headers = api_instance.create_checks_detail_with_http_info(vbasoftware_database, check_id, checks_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->create_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **checks_detail** | [**ChecksDetail**](ChecksDetail.md) |  |  |

### Return type

[**ChecksDetailVBAResponse**](ChecksDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_checks_detail

> delete_checks_detail(vbasoftware_database, check_id, item_seq)

Delete ChecksDetail

Deletes an ChecksDetail

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
item_seq = 56 # Integer | Item Seq

begin
  # Delete ChecksDetail
  api_instance.delete_checks_detail(vbasoftware_database, check_id, item_seq)
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->delete_checks_detail: #{e}"
end
```

#### Using the delete_checks_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq)

```ruby
begin
  # Delete ChecksDetail
  data, status_code, headers = api_instance.delete_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->delete_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **item_seq** | **Integer** | Item Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_checks_detail

> <ChecksDetailVBAResponse> get_checks_detail(vbasoftware_database, check_id, item_seq)

Get ChecksDetail

Gets ChecksDetail

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
item_seq = 56 # Integer | Item Seq

begin
  # Get ChecksDetail
  result = api_instance.get_checks_detail(vbasoftware_database, check_id, item_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->get_checks_detail: #{e}"
end
```

#### Using the get_checks_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksDetailVBAResponse>, Integer, Hash)> get_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq)

```ruby
begin
  # Get ChecksDetail
  data, status_code, headers = api_instance.get_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->get_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **item_seq** | **Integer** | Item Seq |  |

### Return type

[**ChecksDetailVBAResponse**](ChecksDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_checks_detail

> <ChecksDetailListVBAResponse> list_checks_detail(vbasoftware_database, check_id, opts)

List ChecksDetail

Lists all ChecksDetail for the given checkID

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ChecksDetail
  result = api_instance.list_checks_detail(vbasoftware_database, check_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->list_checks_detail: #{e}"
end
```

#### Using the list_checks_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksDetailListVBAResponse>, Integer, Hash)> list_checks_detail_with_http_info(vbasoftware_database, check_id, opts)

```ruby
begin
  # List ChecksDetail
  data, status_code, headers = api_instance.list_checks_detail_with_http_info(vbasoftware_database, check_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->list_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ChecksDetailListVBAResponse**](ChecksDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_checks_detail

> <MultiCodeResponseListVBAResponse> update_batch_checks_detail(vbasoftware_database, check_id, checks_detail)

Create or Update Batch ChecksDetail

Create or Update multiple ChecksDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
checks_detail = [Vba::ChecksDetail.new({check_id: 37, item_seq: 37})] # Array<ChecksDetail> | 

begin
  # Create or Update Batch ChecksDetail
  result = api_instance.update_batch_checks_detail(vbasoftware_database, check_id, checks_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->update_batch_checks_detail: #{e}"
end
```

#### Using the update_batch_checks_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_checks_detail_with_http_info(vbasoftware_database, check_id, checks_detail)

```ruby
begin
  # Create or Update Batch ChecksDetail
  data, status_code, headers = api_instance.update_batch_checks_detail_with_http_info(vbasoftware_database, check_id, checks_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->update_batch_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **checks_detail** | [**Array&lt;ChecksDetail&gt;**](ChecksDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_checks_detail

> <ChecksDetailVBAResponse> update_checks_detail(vbasoftware_database, check_id, item_seq, checks_detail)

Update ChecksDetail

Updates a specific ChecksDetail.

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

api_instance = Vba::CheckDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_id = 56 # Integer | Check ID
item_seq = 56 # Integer | Item Seq
checks_detail = Vba::ChecksDetail.new({check_id: 37, item_seq: 37}) # ChecksDetail | 

begin
  # Update ChecksDetail
  result = api_instance.update_checks_detail(vbasoftware_database, check_id, item_seq, checks_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->update_checks_detail: #{e}"
end
```

#### Using the update_checks_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChecksDetailVBAResponse>, Integer, Hash)> update_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq, checks_detail)

```ruby
begin
  # Update ChecksDetail
  data, status_code, headers = api_instance.update_checks_detail_with_http_info(vbasoftware_database, check_id, item_seq, checks_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChecksDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckDetailsApi->update_checks_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_id** | **Integer** | Check ID |  |
| **item_seq** | **Integer** | Item Seq |  |
| **checks_detail** | [**ChecksDetail**](ChecksDetail.md) |  |  |

### Return type

[**ChecksDetailVBAResponse**](ChecksDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

