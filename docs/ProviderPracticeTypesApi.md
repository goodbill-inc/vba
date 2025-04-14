# Vba::ProviderPracticeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_practice_type**](ProviderPracticeTypesApi.md#create_practice_type) | **POST** /practice-types | Create PracticeType |
| [**delete_practice_type**](ProviderPracticeTypesApi.md#delete_practice_type) | **DELETE** /practice-types/{practiceType} | Delete PracticeType |
| [**get_practice_type**](ProviderPracticeTypesApi.md#get_practice_type) | **GET** /practice-types/{practiceType} | Get PracticeType |
| [**list_practice_type**](ProviderPracticeTypesApi.md#list_practice_type) | **GET** /practice-types | List PracticeType |
| [**update_batch_practice_type**](ProviderPracticeTypesApi.md#update_batch_practice_type) | **PUT** /practice-types-batch | Create or Update Batch PracticeType |
| [**update_practice_type**](ProviderPracticeTypesApi.md#update_practice_type) | **PUT** /practice-types/{practiceType} | Update PracticeType |


## create_practice_type

> <PracticeTypeVBAResponse> create_practice_type(vbasoftware_database, practice_type)

Create PracticeType

Creates a new PracticeType

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
practice_type = Vba::PracticeType.new({practice_type: 'practice_type_example'}) # PracticeType | 

begin
  # Create PracticeType
  result = api_instance.create_practice_type(vbasoftware_database, practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->create_practice_type: #{e}"
end
```

#### Using the create_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeTypeVBAResponse>, Integer, Hash)> create_practice_type_with_http_info(vbasoftware_database, practice_type)

```ruby
begin
  # Create PracticeType
  data, status_code, headers = api_instance.create_practice_type_with_http_info(vbasoftware_database, practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->create_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **practice_type** | [**PracticeType**](PracticeType.md) |  |  |

### Return type

[**PracticeTypeVBAResponse**](PracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_practice_type

> delete_practice_type(vbasoftware_database, practice_type)

Delete PracticeType

Deletes an PracticeType

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
practice_type = 'practice_type_example' # String | Practice Type

begin
  # Delete PracticeType
  api_instance.delete_practice_type(vbasoftware_database, practice_type)
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->delete_practice_type: #{e}"
end
```

#### Using the delete_practice_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_practice_type_with_http_info(vbasoftware_database, practice_type)

```ruby
begin
  # Delete PracticeType
  data, status_code, headers = api_instance.delete_practice_type_with_http_info(vbasoftware_database, practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->delete_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **practice_type** | **String** | Practice Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_practice_type

> <PracticeTypeVBAResponse> get_practice_type(vbasoftware_database, practice_type)

Get PracticeType

Gets PracticeType

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
practice_type = 'practice_type_example' # String | Practice Type

begin
  # Get PracticeType
  result = api_instance.get_practice_type(vbasoftware_database, practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->get_practice_type: #{e}"
end
```

#### Using the get_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeTypeVBAResponse>, Integer, Hash)> get_practice_type_with_http_info(vbasoftware_database, practice_type)

```ruby
begin
  # Get PracticeType
  data, status_code, headers = api_instance.get_practice_type_with_http_info(vbasoftware_database, practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->get_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **practice_type** | **String** | Practice Type |  |

### Return type

[**PracticeTypeVBAResponse**](PracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_practice_type

> <PracticeTypeListVBAResponse> list_practice_type(vbasoftware_database, opts)

List PracticeType

Lists all PracticeType

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PracticeType
  result = api_instance.list_practice_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->list_practice_type: #{e}"
end
```

#### Using the list_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeTypeListVBAResponse>, Integer, Hash)> list_practice_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PracticeType
  data, status_code, headers = api_instance.list_practice_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->list_practice_type_with_http_info: #{e}"
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

[**PracticeTypeListVBAResponse**](PracticeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_practice_type

> <MultiCodeResponseListVBAResponse> update_batch_practice_type(vbasoftware_database, practice_type)

Create or Update Batch PracticeType

Create or Update multiple PracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
practice_type = [Vba::PracticeType.new({practice_type: 'practice_type_example'})] # Array<PracticeType> | 

begin
  # Create or Update Batch PracticeType
  result = api_instance.update_batch_practice_type(vbasoftware_database, practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->update_batch_practice_type: #{e}"
end
```

#### Using the update_batch_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_practice_type_with_http_info(vbasoftware_database, practice_type)

```ruby
begin
  # Create or Update Batch PracticeType
  data, status_code, headers = api_instance.update_batch_practice_type_with_http_info(vbasoftware_database, practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->update_batch_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **practice_type** | [**Array&lt;PracticeType&gt;**](PracticeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_practice_type

> <PracticeTypeVBAResponse> update_practice_type(vbasoftware_database, practice_type, practice_type2)

Update PracticeType

Updates a specific PracticeType.

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

api_instance = Vba::ProviderPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
practice_type = 'practice_type_example' # String | Practice Type
practice_type2 = Vba::PracticeType.new({practice_type: 'practice_type_example'}) # PracticeType | 

begin
  # Update PracticeType
  result = api_instance.update_practice_type(vbasoftware_database, practice_type, practice_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->update_practice_type: #{e}"
end
```

#### Using the update_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PracticeTypeVBAResponse>, Integer, Hash)> update_practice_type_with_http_info(vbasoftware_database, practice_type, practice_type2)

```ruby
begin
  # Update PracticeType
  data, status_code, headers = api_instance.update_practice_type_with_http_info(vbasoftware_database, practice_type, practice_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPracticeTypesApi->update_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **practice_type** | **String** | Practice Type |  |
| **practice_type2** | [**PracticeType**](PracticeType.md) |  |  |

### Return type

[**PracticeTypeVBAResponse**](PracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

