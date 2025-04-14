# Vba::CareManagerTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_manager_type**](CareManagerTypesApi.md#create_care_manager_type) | **POST** /care-manager-types | Create CareManagerType |
| [**delete_care_manager_type**](CareManagerTypesApi.md#delete_care_manager_type) | **DELETE** /care-manager-types/{careManagerType} | Delete CareManagerType |
| [**get_care_manager_type**](CareManagerTypesApi.md#get_care_manager_type) | **GET** /care-manager-types/{careManagerType} | Get CareManagerType |
| [**list_care_manager_type**](CareManagerTypesApi.md#list_care_manager_type) | **GET** /care-manager-types | List CareManagerType |
| [**update_batch_care_manager_type**](CareManagerTypesApi.md#update_batch_care_manager_type) | **PUT** /care-manager-types-batch | Create or Update Batch CareManagerType |
| [**update_care_manager_type**](CareManagerTypesApi.md#update_care_manager_type) | **PUT** /care-manager-types/{careManagerType} | Update CareManagerType |


## create_care_manager_type

> <CareManagerTypeVBAResponse> create_care_manager_type(vbasoftware_database, care_manager_type)

Create CareManagerType

Creates a new CareManagerType

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_type = Vba::CareManagerType.new({care_manager_type: 'care_manager_type_example'}) # CareManagerType | 

begin
  # Create CareManagerType
  result = api_instance.create_care_manager_type(vbasoftware_database, care_manager_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->create_care_manager_type: #{e}"
end
```

#### Using the create_care_manager_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerTypeVBAResponse>, Integer, Hash)> create_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)

```ruby
begin
  # Create CareManagerType
  data, status_code, headers = api_instance.create_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->create_care_manager_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_type** | [**CareManagerType**](CareManagerType.md) |  |  |

### Return type

[**CareManagerTypeVBAResponse**](CareManagerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager_type

> delete_care_manager_type(vbasoftware_database, care_manager_type)

Delete CareManagerType

Deletes an CareManagerType

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_type = 'care_manager_type_example' # String | CareManager Type

begin
  # Delete CareManagerType
  api_instance.delete_care_manager_type(vbasoftware_database, care_manager_type)
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->delete_care_manager_type: #{e}"
end
```

#### Using the delete_care_manager_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)

```ruby
begin
  # Delete CareManagerType
  data, status_code, headers = api_instance.delete_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->delete_care_manager_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_type** | **String** | CareManager Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager_type

> <CareManagerTypeVBAResponse> get_care_manager_type(vbasoftware_database, care_manager_type)

Get CareManagerType

Gets CareManagerType

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_type = 'care_manager_type_example' # String | CareManager Type

begin
  # Get CareManagerType
  result = api_instance.get_care_manager_type(vbasoftware_database, care_manager_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->get_care_manager_type: #{e}"
end
```

#### Using the get_care_manager_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerTypeVBAResponse>, Integer, Hash)> get_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)

```ruby
begin
  # Get CareManagerType
  data, status_code, headers = api_instance.get_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->get_care_manager_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_type** | **String** | CareManager Type |  |

### Return type

[**CareManagerTypeVBAResponse**](CareManagerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager_type

> <CareManagerTypeListVBAResponse> list_care_manager_type(vbasoftware_database, opts)

List CareManagerType

Lists all CareManagerType

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManagerType
  result = api_instance.list_care_manager_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->list_care_manager_type: #{e}"
end
```

#### Using the list_care_manager_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerTypeListVBAResponse>, Integer, Hash)> list_care_manager_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareManagerType
  data, status_code, headers = api_instance.list_care_manager_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->list_care_manager_type_with_http_info: #{e}"
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

[**CareManagerTypeListVBAResponse**](CareManagerTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_manager_type

> <MultiCodeResponseListVBAResponse> update_batch_care_manager_type(vbasoftware_database, care_manager_type)

Create or Update Batch CareManagerType

Create or Update multiple CareManagerType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_type = [Vba::CareManagerType.new({care_manager_type: 'care_manager_type_example'})] # Array<CareManagerType> | 

begin
  # Create or Update Batch CareManagerType
  result = api_instance.update_batch_care_manager_type(vbasoftware_database, care_manager_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->update_batch_care_manager_type: #{e}"
end
```

#### Using the update_batch_care_manager_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)

```ruby
begin
  # Create or Update Batch CareManagerType
  data, status_code, headers = api_instance.update_batch_care_manager_type_with_http_info(vbasoftware_database, care_manager_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->update_batch_care_manager_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_type** | [**Array&lt;CareManagerType&gt;**](CareManagerType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_manager_type

> <CareManagerTypeVBAResponse> update_care_manager_type(vbasoftware_database, care_manager_type, care_manager_type2)

Update CareManagerType

Updates a specific CareManagerType.

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

api_instance = Vba::CareManagerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_type = 'care_manager_type_example' # String | CareManager Type
care_manager_type2 = Vba::CareManagerType.new({care_manager_type: 'care_manager_type_example'}) # CareManagerType | 

begin
  # Update CareManagerType
  result = api_instance.update_care_manager_type(vbasoftware_database, care_manager_type, care_manager_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->update_care_manager_type: #{e}"
end
```

#### Using the update_care_manager_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerTypeVBAResponse>, Integer, Hash)> update_care_manager_type_with_http_info(vbasoftware_database, care_manager_type, care_manager_type2)

```ruby
begin
  # Update CareManagerType
  data, status_code, headers = api_instance.update_care_manager_type_with_http_info(vbasoftware_database, care_manager_type, care_manager_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerTypesApi->update_care_manager_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_type** | **String** | CareManager Type |  |
| **care_manager_type2** | [**CareManagerType**](CareManagerType.md) |  |  |

### Return type

[**CareManagerTypeVBAResponse**](CareManagerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

