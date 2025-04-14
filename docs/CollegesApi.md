# Vba::CollegesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_college**](CollegesApi.md#create_college) | **POST** /colleges | Create College |
| [**delete_college**](CollegesApi.md#delete_college) | **DELETE** /colleges/{collegeKey} | Delete College |
| [**get_college**](CollegesApi.md#get_college) | **GET** /colleges/{collegeKey} | Get College |
| [**list_college**](CollegesApi.md#list_college) | **GET** /colleges | List College |
| [**update_batch_college**](CollegesApi.md#update_batch_college) | **PUT** /colleges-batch | Create or Update Batch College |
| [**update_college**](CollegesApi.md#update_college) | **PUT** /colleges/{collegeKey} | Update College |


## create_college

> <CollegeVBAResponse> create_college(vbasoftware_database, college)

Create College

Creates a new College

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college = Vba::College.new({college_key: 37}) # College | 

begin
  # Create College
  result = api_instance.create_college(vbasoftware_database, college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->create_college: #{e}"
end
```

#### Using the create_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeVBAResponse>, Integer, Hash)> create_college_with_http_info(vbasoftware_database, college)

```ruby
begin
  # Create College
  data, status_code, headers = api_instance.create_college_with_http_info(vbasoftware_database, college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->create_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college** | [**College**](College.md) |  |  |

### Return type

[**CollegeVBAResponse**](CollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_college

> delete_college(vbasoftware_database, college_key)

Delete College

Deletes an College

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_key = 56 # Integer | College Key

begin
  # Delete College
  api_instance.delete_college(vbasoftware_database, college_key)
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->delete_college: #{e}"
end
```

#### Using the delete_college_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_college_with_http_info(vbasoftware_database, college_key)

```ruby
begin
  # Delete College
  data, status_code, headers = api_instance.delete_college_with_http_info(vbasoftware_database, college_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->delete_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_key** | **Integer** | College Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_college

> <CollegeVBAResponse> get_college(vbasoftware_database, college_key)

Get College

Gets College

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_key = 56 # Integer | College Key

begin
  # Get College
  result = api_instance.get_college(vbasoftware_database, college_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->get_college: #{e}"
end
```

#### Using the get_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeVBAResponse>, Integer, Hash)> get_college_with_http_info(vbasoftware_database, college_key)

```ruby
begin
  # Get College
  data, status_code, headers = api_instance.get_college_with_http_info(vbasoftware_database, college_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->get_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_key** | **Integer** | College Key |  |

### Return type

[**CollegeVBAResponse**](CollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_college

> <CollegeListVBAResponse> list_college(vbasoftware_database, opts)

List College

Lists all College

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List College
  result = api_instance.list_college(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->list_college: #{e}"
end
```

#### Using the list_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeListVBAResponse>, Integer, Hash)> list_college_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List College
  data, status_code, headers = api_instance.list_college_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->list_college_with_http_info: #{e}"
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

[**CollegeListVBAResponse**](CollegeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_college

> <MultiCodeResponseListVBAResponse> update_batch_college(vbasoftware_database, college)

Create or Update Batch College

Create or Update multiple College at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college = [Vba::College.new({college_key: 37})] # Array<College> | 

begin
  # Create or Update Batch College
  result = api_instance.update_batch_college(vbasoftware_database, college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->update_batch_college: #{e}"
end
```

#### Using the update_batch_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_college_with_http_info(vbasoftware_database, college)

```ruby
begin
  # Create or Update Batch College
  data, status_code, headers = api_instance.update_batch_college_with_http_info(vbasoftware_database, college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->update_batch_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college** | [**Array&lt;College&gt;**](College.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_college

> <CollegeVBAResponse> update_college(vbasoftware_database, college_key, college)

Update College

Updates a specific College.

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

api_instance = Vba::CollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_key = 56 # Integer | College Key
college = Vba::College.new({college_key: 37}) # College | 

begin
  # Update College
  result = api_instance.update_college(vbasoftware_database, college_key, college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->update_college: #{e}"
end
```

#### Using the update_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeVBAResponse>, Integer, Hash)> update_college_with_http_info(vbasoftware_database, college_key, college)

```ruby
begin
  # Update College
  data, status_code, headers = api_instance.update_college_with_http_info(vbasoftware_database, college_key, college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegesApi->update_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_key** | **Integer** | College Key |  |
| **college** | [**College**](College.md) |  |  |

### Return type

[**CollegeVBAResponse**](CollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

