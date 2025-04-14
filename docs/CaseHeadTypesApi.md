# Vba::CaseHeadTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_head_type**](CaseHeadTypesApi.md#create_case_head_type) | **POST** /case-head-types | Create CaseHeadType |
| [**delete_case_head_type**](CaseHeadTypesApi.md#delete_case_head_type) | **DELETE** /case-head-types/{caseHeadType} | Delete CaseHeadType |
| [**get_case_head_type**](CaseHeadTypesApi.md#get_case_head_type) | **GET** /case-head-types/{caseHeadType} | Get CaseHeadType |
| [**list_case_head_type**](CaseHeadTypesApi.md#list_case_head_type) | **GET** /case-head-types | List CaseHeadType |
| [**update_batch_case_head_type**](CaseHeadTypesApi.md#update_batch_case_head_type) | **PUT** /case-head-types-batch | Create or Update Batch CaseHeadType |
| [**update_case_head_type**](CaseHeadTypesApi.md#update_case_head_type) | **PUT** /case-head-types/{caseHeadType} | Update CaseHeadType |


## create_case_head_type

> <CaseHeadTypeVBAResponse> create_case_head_type(vbasoftware_database, case_head_type)

Create CaseHeadType

Creates a new CaseHeadType

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_type = Vba::CaseHeadType.new({case_head_type: 'case_head_type_example'}) # CaseHeadType | 

begin
  # Create CaseHeadType
  result = api_instance.create_case_head_type(vbasoftware_database, case_head_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->create_case_head_type: #{e}"
end
```

#### Using the create_case_head_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadTypeVBAResponse>, Integer, Hash)> create_case_head_type_with_http_info(vbasoftware_database, case_head_type)

```ruby
begin
  # Create CaseHeadType
  data, status_code, headers = api_instance.create_case_head_type_with_http_info(vbasoftware_database, case_head_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->create_case_head_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_type** | [**CaseHeadType**](CaseHeadType.md) |  |  |

### Return type

[**CaseHeadTypeVBAResponse**](CaseHeadTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_head_type

> delete_case_head_type(vbasoftware_database, case_head_type)

Delete CaseHeadType

Deletes an CaseHeadType

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_type = 'case_head_type_example' # String | CaseHead Type

begin
  # Delete CaseHeadType
  api_instance.delete_case_head_type(vbasoftware_database, case_head_type)
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->delete_case_head_type: #{e}"
end
```

#### Using the delete_case_head_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_head_type_with_http_info(vbasoftware_database, case_head_type)

```ruby
begin
  # Delete CaseHeadType
  data, status_code, headers = api_instance.delete_case_head_type_with_http_info(vbasoftware_database, case_head_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->delete_case_head_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_type** | **String** | CaseHead Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_head_type

> <CaseHeadTypeVBAResponse> get_case_head_type(vbasoftware_database, case_head_type)

Get CaseHeadType

Gets CaseHeadType

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_type = 'case_head_type_example' # String | CaseHead Type

begin
  # Get CaseHeadType
  result = api_instance.get_case_head_type(vbasoftware_database, case_head_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->get_case_head_type: #{e}"
end
```

#### Using the get_case_head_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadTypeVBAResponse>, Integer, Hash)> get_case_head_type_with_http_info(vbasoftware_database, case_head_type)

```ruby
begin
  # Get CaseHeadType
  data, status_code, headers = api_instance.get_case_head_type_with_http_info(vbasoftware_database, case_head_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->get_case_head_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_type** | **String** | CaseHead Type |  |

### Return type

[**CaseHeadTypeVBAResponse**](CaseHeadTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_head_type

> <CaseHeadTypeListVBAResponse> list_case_head_type(vbasoftware_database, opts)

List CaseHeadType

Lists all CaseHeadType

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseHeadType
  result = api_instance.list_case_head_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->list_case_head_type: #{e}"
end
```

#### Using the list_case_head_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadTypeListVBAResponse>, Integer, Hash)> list_case_head_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseHeadType
  data, status_code, headers = api_instance.list_case_head_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->list_case_head_type_with_http_info: #{e}"
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

[**CaseHeadTypeListVBAResponse**](CaseHeadTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_head_type

> <MultiCodeResponseListVBAResponse> update_batch_case_head_type(vbasoftware_database, case_head_type)

Create or Update Batch CaseHeadType

Create or Update multiple CaseHeadType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_type = [Vba::CaseHeadType.new({case_head_type: 'case_head_type_example'})] # Array<CaseHeadType> | 

begin
  # Create or Update Batch CaseHeadType
  result = api_instance.update_batch_case_head_type(vbasoftware_database, case_head_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->update_batch_case_head_type: #{e}"
end
```

#### Using the update_batch_case_head_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_head_type_with_http_info(vbasoftware_database, case_head_type)

```ruby
begin
  # Create or Update Batch CaseHeadType
  data, status_code, headers = api_instance.update_batch_case_head_type_with_http_info(vbasoftware_database, case_head_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->update_batch_case_head_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_type** | [**Array&lt;CaseHeadType&gt;**](CaseHeadType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_head_type

> <CaseHeadTypeVBAResponse> update_case_head_type(vbasoftware_database, case_head_type, case_head_type2)

Update CaseHeadType

Updates a specific CaseHeadType.

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

api_instance = Vba::CaseHeadTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_head_type = 'case_head_type_example' # String | CaseHead Type
case_head_type2 = Vba::CaseHeadType.new({case_head_type: 'case_head_type_example'}) # CaseHeadType | 

begin
  # Update CaseHeadType
  result = api_instance.update_case_head_type(vbasoftware_database, case_head_type, case_head_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->update_case_head_type: #{e}"
end
```

#### Using the update_case_head_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseHeadTypeVBAResponse>, Integer, Hash)> update_case_head_type_with_http_info(vbasoftware_database, case_head_type, case_head_type2)

```ruby
begin
  # Update CaseHeadType
  data, status_code, headers = api_instance.update_case_head_type_with_http_info(vbasoftware_database, case_head_type, case_head_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseHeadTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseHeadTypesApi->update_case_head_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_head_type** | **String** | CaseHead Type |  |
| **case_head_type2** | [**CaseHeadType**](CaseHeadType.md) |  |  |

### Return type

[**CaseHeadTypeVBAResponse**](CaseHeadTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

