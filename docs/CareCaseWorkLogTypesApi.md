# Vba::CareCaseWorkLogTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#create_care_case_work_log_type) | **POST** /care-case-work-log-types | Create CareCaseWorkLogType |
| [**delete_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#delete_care_case_work_log_type) | **DELETE** /care-case-work-log-types/{workLogType} | Delete CareCaseWorkLogType |
| [**get_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#get_care_case_work_log_type) | **GET** /care-case-work-log-types/{workLogType} | Get CareCaseWorkLogType |
| [**list_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#list_care_case_work_log_type) | **GET** /care-case-work-log-types | List CareCaseWorkLogType |
| [**update_batch_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#update_batch_care_case_work_log_type) | **PUT** /care-case-work-log-types-batch | Create or Update Batch CareCaseWorkLogType |
| [**update_care_case_work_log_type**](CareCaseWorkLogTypesApi.md#update_care_case_work_log_type) | **PUT** /care-case-work-log-types/{workLogType} | Update CareCaseWorkLogType |


## create_care_case_work_log_type

> <CareCaseWorkLogTypeVBAResponse> create_care_case_work_log_type(vbasoftware_database, care_case_work_log_type)

Create CareCaseWorkLogType

Creates a new CareCaseWorkLogType

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_work_log_type = Vba::CareCaseWorkLogType.new({work_log_type: 'work_log_type_example'}) # CareCaseWorkLogType | 

begin
  # Create CareCaseWorkLogType
  result = api_instance.create_care_case_work_log_type(vbasoftware_database, care_case_work_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->create_care_case_work_log_type: #{e}"
end
```

#### Using the create_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogTypeVBAResponse>, Integer, Hash)> create_care_case_work_log_type_with_http_info(vbasoftware_database, care_case_work_log_type)

```ruby
begin
  # Create CareCaseWorkLogType
  data, status_code, headers = api_instance.create_care_case_work_log_type_with_http_info(vbasoftware_database, care_case_work_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->create_care_case_work_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_work_log_type** | [**CareCaseWorkLogType**](CareCaseWorkLogType.md) |  |  |

### Return type

[**CareCaseWorkLogTypeVBAResponse**](CareCaseWorkLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_work_log_type

> delete_care_case_work_log_type(vbasoftware_database, work_log_type)

Delete CareCaseWorkLogType

Deletes an CareCaseWorkLogType

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type

begin
  # Delete CareCaseWorkLogType
  api_instance.delete_care_case_work_log_type(vbasoftware_database, work_log_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->delete_care_case_work_log_type: #{e}"
end
```

#### Using the delete_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type)

```ruby
begin
  # Delete CareCaseWorkLogType
  data, status_code, headers = api_instance.delete_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->delete_care_case_work_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_work_log_type

> <CareCaseWorkLogTypeVBAResponse> get_care_case_work_log_type(vbasoftware_database, work_log_type)

Get CareCaseWorkLogType

Gets CareCaseWorkLogType

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type

begin
  # Get CareCaseWorkLogType
  result = api_instance.get_care_case_work_log_type(vbasoftware_database, work_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->get_care_case_work_log_type: #{e}"
end
```

#### Using the get_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogTypeVBAResponse>, Integer, Hash)> get_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type)

```ruby
begin
  # Get CareCaseWorkLogType
  data, status_code, headers = api_instance.get_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->get_care_case_work_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |

### Return type

[**CareCaseWorkLogTypeVBAResponse**](CareCaseWorkLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_work_log_type

> <CareCaseWorkLogTypeListVBAResponse> list_care_case_work_log_type(vbasoftware_database, opts)

List CareCaseWorkLogType

Lists all CareCaseWorkLogType

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseWorkLogType
  result = api_instance.list_care_case_work_log_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->list_care_case_work_log_type: #{e}"
end
```

#### Using the list_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogTypeListVBAResponse>, Integer, Hash)> list_care_case_work_log_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseWorkLogType
  data, status_code, headers = api_instance.list_care_case_work_log_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->list_care_case_work_log_type_with_http_info: #{e}"
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

[**CareCaseWorkLogTypeListVBAResponse**](CareCaseWorkLogTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_work_log_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_work_log_type(vbasoftware_database, care_case_work_log_type)

Create or Update Batch CareCaseWorkLogType

Create or Update multiple CareCaseWorkLogType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_work_log_type = [Vba::CareCaseWorkLogType.new({work_log_type: 'work_log_type_example'})] # Array<CareCaseWorkLogType> | 

begin
  # Create or Update Batch CareCaseWorkLogType
  result = api_instance.update_batch_care_case_work_log_type(vbasoftware_database, care_case_work_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->update_batch_care_case_work_log_type: #{e}"
end
```

#### Using the update_batch_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_work_log_type_with_http_info(vbasoftware_database, care_case_work_log_type)

```ruby
begin
  # Create or Update Batch CareCaseWorkLogType
  data, status_code, headers = api_instance.update_batch_care_case_work_log_type_with_http_info(vbasoftware_database, care_case_work_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->update_batch_care_case_work_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_work_log_type** | [**Array&lt;CareCaseWorkLogType&gt;**](CareCaseWorkLogType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_work_log_type

> <CareCaseWorkLogTypeVBAResponse> update_care_case_work_log_type(vbasoftware_database, work_log_type, care_case_work_log_type)

Update CareCaseWorkLogType

Updates a specific CareCaseWorkLogType.

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

api_instance = Vba::CareCaseWorkLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
care_case_work_log_type = Vba::CareCaseWorkLogType.new({work_log_type: 'work_log_type_example'}) # CareCaseWorkLogType | 

begin
  # Update CareCaseWorkLogType
  result = api_instance.update_care_case_work_log_type(vbasoftware_database, work_log_type, care_case_work_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->update_care_case_work_log_type: #{e}"
end
```

#### Using the update_care_case_work_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogTypeVBAResponse>, Integer, Hash)> update_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_type)

```ruby
begin
  # Update CareCaseWorkLogType
  data, status_code, headers = api_instance.update_care_case_work_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogTypesApi->update_care_case_work_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **care_case_work_log_type** | [**CareCaseWorkLogType**](CareCaseWorkLogType.md) |  |  |

### Return type

[**CareCaseWorkLogTypeVBAResponse**](CareCaseWorkLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

