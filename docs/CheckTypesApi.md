# Vba::CheckTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_check_type**](CheckTypesApi.md#create_check_type) | **POST** /check-types | Create CheckType |
| [**delete_check_type**](CheckTypesApi.md#delete_check_type) | **DELETE** /check-types/{checkType} | Delete CheckType |
| [**get_check_type**](CheckTypesApi.md#get_check_type) | **GET** /check-types/{checkType} | Get CheckType |
| [**list_check_type**](CheckTypesApi.md#list_check_type) | **GET** /check-types | List CheckType |
| [**update_batch_check_type**](CheckTypesApi.md#update_batch_check_type) | **PUT** /check-types-batch | Create or Update Batch CheckType |
| [**update_check_type**](CheckTypesApi.md#update_check_type) | **PUT** /check-types/{checkType} | Update CheckType |


## create_check_type

> <CheckTypeVBAResponse> create_check_type(vbasoftware_database, check_type)

Create CheckType

Creates a new CheckType

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_type = Vba::CheckType.new({check_type: 'check_type_example'}) # CheckType | 

begin
  # Create CheckType
  result = api_instance.create_check_type(vbasoftware_database, check_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->create_check_type: #{e}"
end
```

#### Using the create_check_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckTypeVBAResponse>, Integer, Hash)> create_check_type_with_http_info(vbasoftware_database, check_type)

```ruby
begin
  # Create CheckType
  data, status_code, headers = api_instance.create_check_type_with_http_info(vbasoftware_database, check_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->create_check_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_type** | [**CheckType**](CheckType.md) |  |  |

### Return type

[**CheckTypeVBAResponse**](CheckTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_check_type

> delete_check_type(vbasoftware_database, check_type)

Delete CheckType

Deletes an CheckType

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_type = 'check_type_example' # String | Check Type

begin
  # Delete CheckType
  api_instance.delete_check_type(vbasoftware_database, check_type)
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->delete_check_type: #{e}"
end
```

#### Using the delete_check_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_check_type_with_http_info(vbasoftware_database, check_type)

```ruby
begin
  # Delete CheckType
  data, status_code, headers = api_instance.delete_check_type_with_http_info(vbasoftware_database, check_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->delete_check_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_type** | **String** | Check Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_check_type

> <CheckTypeVBAResponse> get_check_type(vbasoftware_database, check_type)

Get CheckType

Gets CheckType

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_type = 'check_type_example' # String | Check Type

begin
  # Get CheckType
  result = api_instance.get_check_type(vbasoftware_database, check_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->get_check_type: #{e}"
end
```

#### Using the get_check_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckTypeVBAResponse>, Integer, Hash)> get_check_type_with_http_info(vbasoftware_database, check_type)

```ruby
begin
  # Get CheckType
  data, status_code, headers = api_instance.get_check_type_with_http_info(vbasoftware_database, check_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->get_check_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_type** | **String** | Check Type |  |

### Return type

[**CheckTypeVBAResponse**](CheckTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_type

> <CheckTypeListVBAResponse> list_check_type(vbasoftware_database, opts)

List CheckType

Lists all CheckType

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckType
  result = api_instance.list_check_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->list_check_type: #{e}"
end
```

#### Using the list_check_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckTypeListVBAResponse>, Integer, Hash)> list_check_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckType
  data, status_code, headers = api_instance.list_check_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->list_check_type_with_http_info: #{e}"
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

[**CheckTypeListVBAResponse**](CheckTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_check_type

> <MultiCodeResponseListVBAResponse> update_batch_check_type(vbasoftware_database, check_type)

Create or Update Batch CheckType

Create or Update multiple CheckType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_type = [Vba::CheckType.new({check_type: 'check_type_example'})] # Array<CheckType> | 

begin
  # Create or Update Batch CheckType
  result = api_instance.update_batch_check_type(vbasoftware_database, check_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->update_batch_check_type: #{e}"
end
```

#### Using the update_batch_check_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_check_type_with_http_info(vbasoftware_database, check_type)

```ruby
begin
  # Create or Update Batch CheckType
  data, status_code, headers = api_instance.update_batch_check_type_with_http_info(vbasoftware_database, check_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->update_batch_check_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_type** | [**Array&lt;CheckType&gt;**](CheckType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_check_type

> <CheckTypeVBAResponse> update_check_type(vbasoftware_database, check_type, check_type2)

Update CheckType

Updates a specific CheckType.

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

api_instance = Vba::CheckTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_type = 'check_type_example' # String | Check Type
check_type2 = Vba::CheckType.new({check_type: 'check_type_example'}) # CheckType | 

begin
  # Update CheckType
  result = api_instance.update_check_type(vbasoftware_database, check_type, check_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->update_check_type: #{e}"
end
```

#### Using the update_check_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckTypeVBAResponse>, Integer, Hash)> update_check_type_with_http_info(vbasoftware_database, check_type, check_type2)

```ruby
begin
  # Update CheckType
  data, status_code, headers = api_instance.update_check_type_with_http_info(vbasoftware_database, check_type, check_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckTypesApi->update_check_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_type** | **String** | Check Type |  |
| **check_type2** | [**CheckType**](CheckType.md) |  |  |

### Return type

[**CheckTypeVBAResponse**](CheckTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

