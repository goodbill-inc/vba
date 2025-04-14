# Vba::InsuranceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_insurance_type**](InsuranceTypesApi.md#create_insurance_type) | **POST** /insurance-types | Create InsuranceType |
| [**delete_insurance_type**](InsuranceTypesApi.md#delete_insurance_type) | **DELETE** /insurance-types/{insuranceType} | Delete InsuranceType |
| [**get_insurance_type**](InsuranceTypesApi.md#get_insurance_type) | **GET** /insurance-types/{insuranceType} | Get InsuranceType |
| [**list_insurance_type**](InsuranceTypesApi.md#list_insurance_type) | **GET** /insurance-types | List InsuranceType |
| [**update_batch_insurance_type**](InsuranceTypesApi.md#update_batch_insurance_type) | **PUT** /insurance-types-batch | Create or Update Batch InsuranceType |
| [**update_insurance_type**](InsuranceTypesApi.md#update_insurance_type) | **PUT** /insurance-types/{insuranceType} | Update InsuranceType |


## create_insurance_type

> <InsuranceTypeVBAResponse> create_insurance_type(vbasoftware_database, insurance_type)

Create InsuranceType

Creates a new InsuranceType

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_type = Vba::InsuranceType.new({insurance_type: 37}) # InsuranceType | 

begin
  # Create InsuranceType
  result = api_instance.create_insurance_type(vbasoftware_database, insurance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->create_insurance_type: #{e}"
end
```

#### Using the create_insurance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceTypeVBAResponse>, Integer, Hash)> create_insurance_type_with_http_info(vbasoftware_database, insurance_type)

```ruby
begin
  # Create InsuranceType
  data, status_code, headers = api_instance.create_insurance_type_with_http_info(vbasoftware_database, insurance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->create_insurance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_type** | [**InsuranceType**](InsuranceType.md) |  |  |

### Return type

[**InsuranceTypeVBAResponse**](InsuranceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_insurance_type

> delete_insurance_type(vbasoftware_database, insurance_type)

Delete InsuranceType

Deletes an InsuranceType

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_type = 56 # Integer | Insurance Type

begin
  # Delete InsuranceType
  api_instance.delete_insurance_type(vbasoftware_database, insurance_type)
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->delete_insurance_type: #{e}"
end
```

#### Using the delete_insurance_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_insurance_type_with_http_info(vbasoftware_database, insurance_type)

```ruby
begin
  # Delete InsuranceType
  data, status_code, headers = api_instance.delete_insurance_type_with_http_info(vbasoftware_database, insurance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->delete_insurance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_type** | **Integer** | Insurance Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_insurance_type

> <InsuranceTypeVBAResponse> get_insurance_type(vbasoftware_database, insurance_type)

Get InsuranceType

Gets InsuranceType

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_type = 56 # Integer | Insurance Type

begin
  # Get InsuranceType
  result = api_instance.get_insurance_type(vbasoftware_database, insurance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->get_insurance_type: #{e}"
end
```

#### Using the get_insurance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceTypeVBAResponse>, Integer, Hash)> get_insurance_type_with_http_info(vbasoftware_database, insurance_type)

```ruby
begin
  # Get InsuranceType
  data, status_code, headers = api_instance.get_insurance_type_with_http_info(vbasoftware_database, insurance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->get_insurance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_type** | **Integer** | Insurance Type |  |

### Return type

[**InsuranceTypeVBAResponse**](InsuranceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_insurance_type

> <InsuranceTypeListVBAResponse> list_insurance_type(vbasoftware_database, opts)

List InsuranceType

Lists all InsuranceType

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List InsuranceType
  result = api_instance.list_insurance_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->list_insurance_type: #{e}"
end
```

#### Using the list_insurance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceTypeListVBAResponse>, Integer, Hash)> list_insurance_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List InsuranceType
  data, status_code, headers = api_instance.list_insurance_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->list_insurance_type_with_http_info: #{e}"
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

[**InsuranceTypeListVBAResponse**](InsuranceTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_insurance_type

> <MultiCodeResponseListVBAResponse> update_batch_insurance_type(vbasoftware_database, insurance_type)

Create or Update Batch InsuranceType

Create or Update multiple InsuranceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_type = [Vba::InsuranceType.new({insurance_type: 37})] # Array<InsuranceType> | 

begin
  # Create or Update Batch InsuranceType
  result = api_instance.update_batch_insurance_type(vbasoftware_database, insurance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->update_batch_insurance_type: #{e}"
end
```

#### Using the update_batch_insurance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_insurance_type_with_http_info(vbasoftware_database, insurance_type)

```ruby
begin
  # Create or Update Batch InsuranceType
  data, status_code, headers = api_instance.update_batch_insurance_type_with_http_info(vbasoftware_database, insurance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->update_batch_insurance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_type** | [**Array&lt;InsuranceType&gt;**](InsuranceType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_insurance_type

> <InsuranceTypeVBAResponse> update_insurance_type(vbasoftware_database, insurance_type, insurance_type2)

Update InsuranceType

Updates a specific InsuranceType.

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

api_instance = Vba::InsuranceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_type = 56 # Integer | Insurance Type
insurance_type2 = Vba::InsuranceType.new({insurance_type: 37}) # InsuranceType | 

begin
  # Update InsuranceType
  result = api_instance.update_insurance_type(vbasoftware_database, insurance_type, insurance_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->update_insurance_type: #{e}"
end
```

#### Using the update_insurance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceTypeVBAResponse>, Integer, Hash)> update_insurance_type_with_http_info(vbasoftware_database, insurance_type, insurance_type2)

```ruby
begin
  # Update InsuranceType
  data, status_code, headers = api_instance.update_insurance_type_with_http_info(vbasoftware_database, insurance_type, insurance_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceTypesApi->update_insurance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_type** | **Integer** | Insurance Type |  |
| **insurance_type2** | [**InsuranceType**](InsuranceType.md) |  |  |

### Return type

[**InsuranceTypeVBAResponse**](InsuranceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

