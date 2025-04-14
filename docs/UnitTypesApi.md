# Vba::UnitTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_unit_type**](UnitTypesApi.md#create_unit_type) | **POST** /unit-types | Create UnitType |
| [**delete_unit_type**](UnitTypesApi.md#delete_unit_type) | **DELETE** /unit-types/{unitType} | Delete UnitType |
| [**get_unit_type**](UnitTypesApi.md#get_unit_type) | **GET** /unit-types/{unitType} | Get UnitType |
| [**list_unit_type**](UnitTypesApi.md#list_unit_type) | **GET** /unit-types | List UnitType |
| [**update_batch_unit_type**](UnitTypesApi.md#update_batch_unit_type) | **PUT** /unit-types-batch | Create or Update Batch UnitType |
| [**update_unit_type**](UnitTypesApi.md#update_unit_type) | **PUT** /unit-types/{unitType} | Update UnitType |


## create_unit_type

> <UnitTypeVBAResponse> create_unit_type(vbasoftware_database, unit_type)

Create UnitType

Creates a new UnitType

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
unit_type = Vba::UnitType.new({unit_type: 'unit_type_example'}) # UnitType | 

begin
  # Create UnitType
  result = api_instance.create_unit_type(vbasoftware_database, unit_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->create_unit_type: #{e}"
end
```

#### Using the create_unit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnitTypeVBAResponse>, Integer, Hash)> create_unit_type_with_http_info(vbasoftware_database, unit_type)

```ruby
begin
  # Create UnitType
  data, status_code, headers = api_instance.create_unit_type_with_http_info(vbasoftware_database, unit_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnitTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->create_unit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **unit_type** | [**UnitType**](UnitType.md) |  |  |

### Return type

[**UnitTypeVBAResponse**](UnitTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_unit_type

> delete_unit_type(vbasoftware_database, unit_type)

Delete UnitType

Deletes an UnitType

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
unit_type = 'unit_type_example' # String | Unit Type

begin
  # Delete UnitType
  api_instance.delete_unit_type(vbasoftware_database, unit_type)
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->delete_unit_type: #{e}"
end
```

#### Using the delete_unit_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_unit_type_with_http_info(vbasoftware_database, unit_type)

```ruby
begin
  # Delete UnitType
  data, status_code, headers = api_instance.delete_unit_type_with_http_info(vbasoftware_database, unit_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->delete_unit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **unit_type** | **String** | Unit Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_unit_type

> <UnitTypeVBAResponse> get_unit_type(vbasoftware_database, unit_type)

Get UnitType

Gets UnitType

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
unit_type = 'unit_type_example' # String | Unit Type

begin
  # Get UnitType
  result = api_instance.get_unit_type(vbasoftware_database, unit_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->get_unit_type: #{e}"
end
```

#### Using the get_unit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnitTypeVBAResponse>, Integer, Hash)> get_unit_type_with_http_info(vbasoftware_database, unit_type)

```ruby
begin
  # Get UnitType
  data, status_code, headers = api_instance.get_unit_type_with_http_info(vbasoftware_database, unit_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnitTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->get_unit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **unit_type** | **String** | Unit Type |  |

### Return type

[**UnitTypeVBAResponse**](UnitTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_unit_type

> <UnitTypeListVBAResponse> list_unit_type(vbasoftware_database, opts)

List UnitType

Lists all UnitType

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List UnitType
  result = api_instance.list_unit_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->list_unit_type: #{e}"
end
```

#### Using the list_unit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnitTypeListVBAResponse>, Integer, Hash)> list_unit_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List UnitType
  data, status_code, headers = api_instance.list_unit_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnitTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->list_unit_type_with_http_info: #{e}"
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

[**UnitTypeListVBAResponse**](UnitTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_unit_type

> <MultiCodeResponseListVBAResponse> update_batch_unit_type(vbasoftware_database, unit_type)

Create or Update Batch UnitType

Create or Update multiple UnitType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
unit_type = [Vba::UnitType.new({unit_type: 'unit_type_example'})] # Array<UnitType> | 

begin
  # Create or Update Batch UnitType
  result = api_instance.update_batch_unit_type(vbasoftware_database, unit_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->update_batch_unit_type: #{e}"
end
```

#### Using the update_batch_unit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_unit_type_with_http_info(vbasoftware_database, unit_type)

```ruby
begin
  # Create or Update Batch UnitType
  data, status_code, headers = api_instance.update_batch_unit_type_with_http_info(vbasoftware_database, unit_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->update_batch_unit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **unit_type** | [**Array&lt;UnitType&gt;**](UnitType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_unit_type

> <UnitTypeVBAResponse> update_unit_type(vbasoftware_database, unit_type, unit_type2)

Update UnitType

Updates a specific UnitType.

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

api_instance = Vba::UnitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
unit_type = 'unit_type_example' # String | Unit Type
unit_type2 = Vba::UnitType.new({unit_type: 'unit_type_example'}) # UnitType | 

begin
  # Update UnitType
  result = api_instance.update_unit_type(vbasoftware_database, unit_type, unit_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->update_unit_type: #{e}"
end
```

#### Using the update_unit_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnitTypeVBAResponse>, Integer, Hash)> update_unit_type_with_http_info(vbasoftware_database, unit_type, unit_type2)

```ruby
begin
  # Update UnitType
  data, status_code, headers = api_instance.update_unit_type_with_http_info(vbasoftware_database, unit_type, unit_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnitTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnitTypesApi->update_unit_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **unit_type** | **String** | Unit Type |  |
| **unit_type2** | [**UnitType**](UnitType.md) |  |  |

### Return type

[**UnitTypeVBAResponse**](UnitTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

