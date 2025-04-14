# Vba::CareCaseSavingsTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_savings_type**](CareCaseSavingsTypesApi.md#create_care_case_savings_type) | **POST** /care-case-savings-types | Create CareCaseSavingsType |
| [**delete_care_case_savings_type**](CareCaseSavingsTypesApi.md#delete_care_case_savings_type) | **DELETE** /care-case-savings-types/{savingsType} | Delete CareCaseSavingsType |
| [**get_care_case_savings_type**](CareCaseSavingsTypesApi.md#get_care_case_savings_type) | **GET** /care-case-savings-types/{savingsType} | Get CareCaseSavingsType |
| [**list_care_case_savings_type**](CareCaseSavingsTypesApi.md#list_care_case_savings_type) | **GET** /care-case-savings-types | List CareCaseSavingsType |
| [**update_batch_care_case_savings_type**](CareCaseSavingsTypesApi.md#update_batch_care_case_savings_type) | **PUT** /care-case-savings-types-batch | Create or Update Batch CareCaseSavingsType |
| [**update_care_case_savings_type**](CareCaseSavingsTypesApi.md#update_care_case_savings_type) | **PUT** /care-case-savings-types/{savingsType} | Update CareCaseSavingsType |


## create_care_case_savings_type

> <CareCaseSavingsTypeVBAResponse> create_care_case_savings_type(vbasoftware_database, care_case_savings_type)

Create CareCaseSavingsType

Creates a new CareCaseSavingsType

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_savings_type = Vba::CareCaseSavingsType.new({savings_type: 'savings_type_example'}) # CareCaseSavingsType | 

begin
  # Create CareCaseSavingsType
  result = api_instance.create_care_case_savings_type(vbasoftware_database, care_case_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->create_care_case_savings_type: #{e}"
end
```

#### Using the create_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsTypeVBAResponse>, Integer, Hash)> create_care_case_savings_type_with_http_info(vbasoftware_database, care_case_savings_type)

```ruby
begin
  # Create CareCaseSavingsType
  data, status_code, headers = api_instance.create_care_case_savings_type_with_http_info(vbasoftware_database, care_case_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->create_care_case_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_savings_type** | [**CareCaseSavingsType**](CareCaseSavingsType.md) |  |  |

### Return type

[**CareCaseSavingsTypeVBAResponse**](CareCaseSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_savings_type

> delete_care_case_savings_type(vbasoftware_database, savings_type)

Delete CareCaseSavingsType

Deletes an CareCaseSavingsType

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
savings_type = 'savings_type_example' # String | Savings Type

begin
  # Delete CareCaseSavingsType
  api_instance.delete_care_case_savings_type(vbasoftware_database, savings_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->delete_care_case_savings_type: #{e}"
end
```

#### Using the delete_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_savings_type_with_http_info(vbasoftware_database, savings_type)

```ruby
begin
  # Delete CareCaseSavingsType
  data, status_code, headers = api_instance.delete_care_case_savings_type_with_http_info(vbasoftware_database, savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->delete_care_case_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **savings_type** | **String** | Savings Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_savings_type

> <CareCaseSavingsTypeVBAResponse> get_care_case_savings_type(vbasoftware_database, savings_type)

Get CareCaseSavingsType

Gets CareCaseSavingsType

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
savings_type = 'savings_type_example' # String | Savings Type

begin
  # Get CareCaseSavingsType
  result = api_instance.get_care_case_savings_type(vbasoftware_database, savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->get_care_case_savings_type: #{e}"
end
```

#### Using the get_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsTypeVBAResponse>, Integer, Hash)> get_care_case_savings_type_with_http_info(vbasoftware_database, savings_type)

```ruby
begin
  # Get CareCaseSavingsType
  data, status_code, headers = api_instance.get_care_case_savings_type_with_http_info(vbasoftware_database, savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->get_care_case_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **savings_type** | **String** | Savings Type |  |

### Return type

[**CareCaseSavingsTypeVBAResponse**](CareCaseSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_savings_type

> <CareCaseSavingsTypeListVBAResponse> list_care_case_savings_type(vbasoftware_database, opts)

List CareCaseSavingsType

Lists all CareCaseSavingsType

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseSavingsType
  result = api_instance.list_care_case_savings_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->list_care_case_savings_type: #{e}"
end
```

#### Using the list_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsTypeListVBAResponse>, Integer, Hash)> list_care_case_savings_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseSavingsType
  data, status_code, headers = api_instance.list_care_case_savings_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->list_care_case_savings_type_with_http_info: #{e}"
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

[**CareCaseSavingsTypeListVBAResponse**](CareCaseSavingsTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_savings_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_savings_type(vbasoftware_database, care_case_savings_type)

Create or Update Batch CareCaseSavingsType

Create or Update multiple CareCaseSavingsType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_savings_type = [Vba::CareCaseSavingsType.new({savings_type: 'savings_type_example'})] # Array<CareCaseSavingsType> | 

begin
  # Create or Update Batch CareCaseSavingsType
  result = api_instance.update_batch_care_case_savings_type(vbasoftware_database, care_case_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->update_batch_care_case_savings_type: #{e}"
end
```

#### Using the update_batch_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_savings_type_with_http_info(vbasoftware_database, care_case_savings_type)

```ruby
begin
  # Create or Update Batch CareCaseSavingsType
  data, status_code, headers = api_instance.update_batch_care_case_savings_type_with_http_info(vbasoftware_database, care_case_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->update_batch_care_case_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_savings_type** | [**Array&lt;CareCaseSavingsType&gt;**](CareCaseSavingsType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_savings_type

> <CareCaseSavingsTypeVBAResponse> update_care_case_savings_type(vbasoftware_database, savings_type, care_case_savings_type)

Update CareCaseSavingsType

Updates a specific CareCaseSavingsType.

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

api_instance = Vba::CareCaseSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
savings_type = 'savings_type_example' # String | Savings Type
care_case_savings_type = Vba::CareCaseSavingsType.new({savings_type: 'savings_type_example'}) # CareCaseSavingsType | 

begin
  # Update CareCaseSavingsType
  result = api_instance.update_care_case_savings_type(vbasoftware_database, savings_type, care_case_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->update_care_case_savings_type: #{e}"
end
```

#### Using the update_care_case_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsTypeVBAResponse>, Integer, Hash)> update_care_case_savings_type_with_http_info(vbasoftware_database, savings_type, care_case_savings_type)

```ruby
begin
  # Update CareCaseSavingsType
  data, status_code, headers = api_instance.update_care_case_savings_type_with_http_info(vbasoftware_database, savings_type, care_case_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsTypesApi->update_care_case_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **savings_type** | **String** | Savings Type |  |
| **care_case_savings_type** | [**CareCaseSavingsType**](CareCaseSavingsType.md) |  |  |

### Return type

[**CareCaseSavingsTypeVBAResponse**](CareCaseSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

