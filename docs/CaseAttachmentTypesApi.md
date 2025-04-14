# Vba::CaseAttachmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_attachment_type**](CaseAttachmentTypesApi.md#create_case_attachment_type) | **POST** /case-attachment-types | Create CaseAttachmentType |
| [**delete_case_attachment_type**](CaseAttachmentTypesApi.md#delete_case_attachment_type) | **DELETE** /case-attachment-types/{caseAttachmentTypeKey} | Delete CaseAttachmentType |
| [**get_case_attachment_type**](CaseAttachmentTypesApi.md#get_case_attachment_type) | **GET** /case-attachment-types/{caseAttachmentTypeKey} | Get CaseAttachmentType |
| [**list_case_attachment_type**](CaseAttachmentTypesApi.md#list_case_attachment_type) | **GET** /case-attachment-types | List CaseAttachmentType |
| [**update_batch_case_attachment_type**](CaseAttachmentTypesApi.md#update_batch_case_attachment_type) | **PUT** /case-attachment-types-batch | Create or Update Batch CaseAttachmentType |
| [**update_case_attachment_type**](CaseAttachmentTypesApi.md#update_case_attachment_type) | **PUT** /case-attachment-types/{caseAttachmentTypeKey} | Update CaseAttachmentType |


## create_case_attachment_type

> <CaseAttachmentTypeVBAResponse> create_case_attachment_type(vbasoftware_database, case_attachment_type)

Create CaseAttachmentType

Creates a new CaseAttachmentType

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_type = Vba::CaseAttachmentType.new({case_attachment_type_key: 37, case_attachment_type: 'case_attachment_type_example'}) # CaseAttachmentType | 

begin
  # Create CaseAttachmentType
  result = api_instance.create_case_attachment_type(vbasoftware_database, case_attachment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->create_case_attachment_type: #{e}"
end
```

#### Using the create_case_attachment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentTypeVBAResponse>, Integer, Hash)> create_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type)

```ruby
begin
  # Create CaseAttachmentType
  data, status_code, headers = api_instance.create_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->create_case_attachment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_type** | [**CaseAttachmentType**](CaseAttachmentType.md) |  |  |

### Return type

[**CaseAttachmentTypeVBAResponse**](CaseAttachmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_attachment_type

> delete_case_attachment_type(vbasoftware_database, case_attachment_type_key)

Delete CaseAttachmentType

Deletes an CaseAttachmentType

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_type_key = 56 # Integer | CaseAttachmentType Key

begin
  # Delete CaseAttachmentType
  api_instance.delete_case_attachment_type(vbasoftware_database, case_attachment_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->delete_case_attachment_type: #{e}"
end
```

#### Using the delete_case_attachment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key)

```ruby
begin
  # Delete CaseAttachmentType
  data, status_code, headers = api_instance.delete_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->delete_case_attachment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_type_key** | **Integer** | CaseAttachmentType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_attachment_type

> <CaseAttachmentTypeVBAResponse> get_case_attachment_type(vbasoftware_database, case_attachment_type_key)

Get CaseAttachmentType

Gets CaseAttachmentType

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_type_key = 56 # Integer | CaseAttachmentType Key

begin
  # Get CaseAttachmentType
  result = api_instance.get_case_attachment_type(vbasoftware_database, case_attachment_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->get_case_attachment_type: #{e}"
end
```

#### Using the get_case_attachment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentTypeVBAResponse>, Integer, Hash)> get_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key)

```ruby
begin
  # Get CaseAttachmentType
  data, status_code, headers = api_instance.get_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->get_case_attachment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_type_key** | **Integer** | CaseAttachmentType Key |  |

### Return type

[**CaseAttachmentTypeVBAResponse**](CaseAttachmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_attachment_type

> <CaseAttachmentTypeListVBAResponse> list_case_attachment_type(vbasoftware_database, opts)

List CaseAttachmentType

Lists all CaseAttachmentType

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseAttachmentType
  result = api_instance.list_case_attachment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->list_case_attachment_type: #{e}"
end
```

#### Using the list_case_attachment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentTypeListVBAResponse>, Integer, Hash)> list_case_attachment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseAttachmentType
  data, status_code, headers = api_instance.list_case_attachment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->list_case_attachment_type_with_http_info: #{e}"
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

[**CaseAttachmentTypeListVBAResponse**](CaseAttachmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_attachment_type

> <MultiCodeResponseListVBAResponse> update_batch_case_attachment_type(vbasoftware_database, case_attachment_type)

Create or Update Batch CaseAttachmentType

Create or Update multiple CaseAttachmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_type = [Vba::CaseAttachmentType.new({case_attachment_type_key: 37, case_attachment_type: 'case_attachment_type_example'})] # Array<CaseAttachmentType> | 

begin
  # Create or Update Batch CaseAttachmentType
  result = api_instance.update_batch_case_attachment_type(vbasoftware_database, case_attachment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->update_batch_case_attachment_type: #{e}"
end
```

#### Using the update_batch_case_attachment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type)

```ruby
begin
  # Create or Update Batch CaseAttachmentType
  data, status_code, headers = api_instance.update_batch_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->update_batch_case_attachment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_type** | [**Array&lt;CaseAttachmentType&gt;**](CaseAttachmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_attachment_type

> <CaseAttachmentTypeVBAResponse> update_case_attachment_type(vbasoftware_database, case_attachment_type_key, case_attachment_type)

Update CaseAttachmentType

Updates a specific CaseAttachmentType.

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

api_instance = Vba::CaseAttachmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_attachment_type_key = 56 # Integer | CaseAttachmentType Key
case_attachment_type = Vba::CaseAttachmentType.new({case_attachment_type_key: 37, case_attachment_type: 'case_attachment_type_example'}) # CaseAttachmentType | 

begin
  # Update CaseAttachmentType
  result = api_instance.update_case_attachment_type(vbasoftware_database, case_attachment_type_key, case_attachment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->update_case_attachment_type: #{e}"
end
```

#### Using the update_case_attachment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseAttachmentTypeVBAResponse>, Integer, Hash)> update_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key, case_attachment_type)

```ruby
begin
  # Update CaseAttachmentType
  data, status_code, headers = api_instance.update_case_attachment_type_with_http_info(vbasoftware_database, case_attachment_type_key, case_attachment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseAttachmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseAttachmentTypesApi->update_case_attachment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_attachment_type_key** | **Integer** | CaseAttachmentType Key |  |
| **case_attachment_type** | [**CaseAttachmentType**](CaseAttachmentType.md) |  |  |

### Return type

[**CaseAttachmentTypeVBAResponse**](CaseAttachmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

