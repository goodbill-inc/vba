# Vba::CareCaseIntakeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_intake_type**](CareCaseIntakeTypesApi.md#create_care_case_intake_type) | **POST** /intake-types | Create CareCaseIntakeType |
| [**delete_care_case_intake_type**](CareCaseIntakeTypesApi.md#delete_care_case_intake_type) | **DELETE** /intake-types/{careCaseIntakeTypeID} | Delete CareCaseIntakeType |
| [**get_care_case_intake_type**](CareCaseIntakeTypesApi.md#get_care_case_intake_type) | **GET** /intake-types/{careCaseIntakeTypeID} | Get CareCaseIntakeType |
| [**list_care_case_intake_type**](CareCaseIntakeTypesApi.md#list_care_case_intake_type) | **GET** /intake-types | List CareCaseIntakeType |
| [**update_batch_care_case_intake_type**](CareCaseIntakeTypesApi.md#update_batch_care_case_intake_type) | **PUT** /intake-types-batch | Create or Update Batch CareCaseIntakeType |
| [**update_care_case_intake_type**](CareCaseIntakeTypesApi.md#update_care_case_intake_type) | **PUT** /intake-types/{careCaseIntakeTypeID} | Update CareCaseIntakeType |


## create_care_case_intake_type

> <CareCaseIntakeTypeVBAResponse> create_care_case_intake_type(vbasoftware_database, care_case_intake_type)

Create CareCaseIntakeType

Creates a new CareCaseIntakeType

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intake_type = Vba::CareCaseIntakeType.new({care_case_intake_type_id: 'care_case_intake_type_id_example'}) # CareCaseIntakeType | 

begin
  # Create CareCaseIntakeType
  result = api_instance.create_care_case_intake_type(vbasoftware_database, care_case_intake_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->create_care_case_intake_type: #{e}"
end
```

#### Using the create_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeTypeVBAResponse>, Integer, Hash)> create_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type)

```ruby
begin
  # Create CareCaseIntakeType
  data, status_code, headers = api_instance.create_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->create_care_case_intake_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intake_type** | [**CareCaseIntakeType**](CareCaseIntakeType.md) |  |  |

### Return type

[**CareCaseIntakeTypeVBAResponse**](CareCaseIntakeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_intake_type

> delete_care_case_intake_type(vbasoftware_database, care_case_intake_type_id)

Delete CareCaseIntakeType

Deletes an CareCaseIntakeType

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intake_type_id = 'care_case_intake_type_id_example' # String | CareCaseIntakeType ID

begin
  # Delete CareCaseIntakeType
  api_instance.delete_care_case_intake_type(vbasoftware_database, care_case_intake_type_id)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->delete_care_case_intake_type: #{e}"
end
```

#### Using the delete_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id)

```ruby
begin
  # Delete CareCaseIntakeType
  data, status_code, headers = api_instance.delete_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->delete_care_case_intake_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intake_type_id** | **String** | CareCaseIntakeType ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_intake_type

> <CareCaseIntakeTypeVBAResponse> get_care_case_intake_type(vbasoftware_database, care_case_intake_type_id)

Get CareCaseIntakeType

Gets CareCaseIntakeType

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intake_type_id = 'care_case_intake_type_id_example' # String | CareCaseIntakeType ID

begin
  # Get CareCaseIntakeType
  result = api_instance.get_care_case_intake_type(vbasoftware_database, care_case_intake_type_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->get_care_case_intake_type: #{e}"
end
```

#### Using the get_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeTypeVBAResponse>, Integer, Hash)> get_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id)

```ruby
begin
  # Get CareCaseIntakeType
  data, status_code, headers = api_instance.get_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->get_care_case_intake_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intake_type_id** | **String** | CareCaseIntakeType ID |  |

### Return type

[**CareCaseIntakeTypeVBAResponse**](CareCaseIntakeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_intake_type

> <CareCaseIntakeTypeListVBAResponse> list_care_case_intake_type(vbasoftware_database, opts)

List CareCaseIntakeType

Lists all CareCaseIntakeType

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseIntakeType
  result = api_instance.list_care_case_intake_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->list_care_case_intake_type: #{e}"
end
```

#### Using the list_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeTypeListVBAResponse>, Integer, Hash)> list_care_case_intake_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseIntakeType
  data, status_code, headers = api_instance.list_care_case_intake_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->list_care_case_intake_type_with_http_info: #{e}"
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

[**CareCaseIntakeTypeListVBAResponse**](CareCaseIntakeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_intake_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_intake_type(vbasoftware_database, care_case_intake_type)

Create or Update Batch CareCaseIntakeType

Create or Update multiple CareCaseIntakeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intake_type = [Vba::CareCaseIntakeType.new({care_case_intake_type_id: 'care_case_intake_type_id_example'})] # Array<CareCaseIntakeType> | 

begin
  # Create or Update Batch CareCaseIntakeType
  result = api_instance.update_batch_care_case_intake_type(vbasoftware_database, care_case_intake_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->update_batch_care_case_intake_type: #{e}"
end
```

#### Using the update_batch_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type)

```ruby
begin
  # Create or Update Batch CareCaseIntakeType
  data, status_code, headers = api_instance.update_batch_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->update_batch_care_case_intake_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intake_type** | [**Array&lt;CareCaseIntakeType&gt;**](CareCaseIntakeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_intake_type

> <CareCaseIntakeTypeVBAResponse> update_care_case_intake_type(vbasoftware_database, care_case_intake_type_id, care_case_intake_type)

Update CareCaseIntakeType

Updates a specific CareCaseIntakeType.

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

api_instance = Vba::CareCaseIntakeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intake_type_id = 'care_case_intake_type_id_example' # String | CareCaseIntakeType ID
care_case_intake_type = Vba::CareCaseIntakeType.new({care_case_intake_type_id: 'care_case_intake_type_id_example'}) # CareCaseIntakeType | 

begin
  # Update CareCaseIntakeType
  result = api_instance.update_care_case_intake_type(vbasoftware_database, care_case_intake_type_id, care_case_intake_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->update_care_case_intake_type: #{e}"
end
```

#### Using the update_care_case_intake_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeTypeVBAResponse>, Integer, Hash)> update_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id, care_case_intake_type)

```ruby
begin
  # Update CareCaseIntakeType
  data, status_code, headers = api_instance.update_care_case_intake_type_with_http_info(vbasoftware_database, care_case_intake_type_id, care_case_intake_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakeTypesApi->update_care_case_intake_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intake_type_id** | **String** | CareCaseIntakeType ID |  |
| **care_case_intake_type** | [**CareCaseIntakeType**](CareCaseIntakeType.md) |  |  |

### Return type

[**CareCaseIntakeTypeVBAResponse**](CareCaseIntakeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

