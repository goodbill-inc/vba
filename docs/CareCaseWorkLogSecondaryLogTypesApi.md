# Vba::CareCaseWorkLogSecondaryLogTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#create_care_case_work_secondary_log_type) | **POST** /care-case-work-log-types/{workLogType}/secondary-log-types | Create CareCaseWorkSecondaryLogType |
| [**delete_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#delete_care_case_work_secondary_log_type) | **DELETE** /care-case-work-log-types/{workLogType}/secondary-log-types/{workLogSecondaryType} | Delete CareCaseWorkSecondaryLogType |
| [**get_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#get_care_case_work_secondary_log_type) | **GET** /care-case-work-log-types/{workLogType}/secondary-log-types/{workLogSecondaryType} | Get CareCaseWorkSecondaryLogType |
| [**list_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#list_care_case_work_secondary_log_type) | **GET** /care-case-work-log-types/{workLogType}/secondary-log-types | List CareCaseWorkSecondaryLogType |
| [**update_batch_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#update_batch_care_case_work_secondary_log_type) | **PUT** /care-case-work-log-types/{workLogType}/secondary-log-types-batch | Create or Update Batch CareCaseWorkSecondaryLogType |
| [**update_care_case_work_secondary_log_type**](CareCaseWorkLogSecondaryLogTypesApi.md#update_care_case_work_secondary_log_type) | **PUT** /care-case-work-log-types/{workLogType}/secondary-log-types/{workLogSecondaryType} | Update CareCaseWorkSecondaryLogType |


## create_care_case_work_secondary_log_type

> <CareCaseWorkSecondaryLogTypeVBAResponse> create_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)

Create CareCaseWorkSecondaryLogType

Creates a new CareCaseWorkSecondaryLogType

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
care_case_work_secondary_log_type = Vba::CareCaseWorkSecondaryLogType.new({work_log_type: 'work_log_type_example', work_log_secondary_type: 'work_log_secondary_type_example'}) # CareCaseWorkSecondaryLogType | 

begin
  # Create CareCaseWorkSecondaryLogType
  result = api_instance.create_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->create_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the create_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkSecondaryLogTypeVBAResponse>, Integer, Hash)> create_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)

```ruby
begin
  # Create CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.create_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkSecondaryLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->create_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **care_case_work_secondary_log_type** | [**CareCaseWorkSecondaryLogType**](CareCaseWorkSecondaryLogType.md) |  |  |

### Return type

[**CareCaseWorkSecondaryLogTypeVBAResponse**](CareCaseWorkSecondaryLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_work_secondary_log_type

> delete_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type)

Delete CareCaseWorkSecondaryLogType

Deletes an CareCaseWorkSecondaryLogType

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
work_log_secondary_type = 'work_log_secondary_type_example' # String | WorkLog SecondaryType

begin
  # Delete CareCaseWorkSecondaryLogType
  api_instance.delete_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->delete_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the delete_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type)

```ruby
begin
  # Delete CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.delete_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->delete_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **work_log_secondary_type** | **String** | WorkLog SecondaryType |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_work_secondary_log_type

> <CareCaseWorkSecondaryLogTypeVBAResponse> get_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type)

Get CareCaseWorkSecondaryLogType

Gets CareCaseWorkSecondaryLogType

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
work_log_secondary_type = 'work_log_secondary_type_example' # String | WorkLog SecondaryType

begin
  # Get CareCaseWorkSecondaryLogType
  result = api_instance.get_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->get_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the get_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkSecondaryLogTypeVBAResponse>, Integer, Hash)> get_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type)

```ruby
begin
  # Get CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.get_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkSecondaryLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->get_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **work_log_secondary_type** | **String** | WorkLog SecondaryType |  |

### Return type

[**CareCaseWorkSecondaryLogTypeVBAResponse**](CareCaseWorkSecondaryLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_work_secondary_log_type

> <CareCaseWorkSecondaryLogTypeListVBAResponse> list_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, opts)

List CareCaseWorkSecondaryLogType

Lists all CareCaseWorkSecondaryLogType for the given workLogType

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseWorkSecondaryLogType
  result = api_instance.list_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->list_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the list_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkSecondaryLogTypeListVBAResponse>, Integer, Hash)> list_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, opts)

```ruby
begin
  # List CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.list_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkSecondaryLogTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->list_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseWorkSecondaryLogTypeListVBAResponse**](CareCaseWorkSecondaryLogTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_work_secondary_log_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)

Create or Update Batch CareCaseWorkSecondaryLogType

Create or Update multiple CareCaseWorkSecondaryLogType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
care_case_work_secondary_log_type = [Vba::CareCaseWorkSecondaryLogType.new({work_log_type: 'work_log_type_example', work_log_secondary_type: 'work_log_secondary_type_example'})] # Array<CareCaseWorkSecondaryLogType> | 

begin
  # Create or Update Batch CareCaseWorkSecondaryLogType
  result = api_instance.update_batch_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->update_batch_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the update_batch_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)

```ruby
begin
  # Create or Update Batch CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.update_batch_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_secondary_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->update_batch_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **care_case_work_secondary_log_type** | [**Array&lt;CareCaseWorkSecondaryLogType&gt;**](CareCaseWorkSecondaryLogType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_work_secondary_log_type

> <CareCaseWorkSecondaryLogTypeVBAResponse> update_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type, care_case_work_secondary_log_type)

Update CareCaseWorkSecondaryLogType

Updates a specific CareCaseWorkSecondaryLogType.

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

api_instance = Vba::CareCaseWorkLogSecondaryLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
work_log_secondary_type = 'work_log_secondary_type_example' # String | WorkLog SecondaryType
care_case_work_secondary_log_type = Vba::CareCaseWorkSecondaryLogType.new({work_log_type: 'work_log_type_example', work_log_secondary_type: 'work_log_secondary_type_example'}) # CareCaseWorkSecondaryLogType | 

begin
  # Update CareCaseWorkSecondaryLogType
  result = api_instance.update_care_case_work_secondary_log_type(vbasoftware_database, work_log_type, work_log_secondary_type, care_case_work_secondary_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->update_care_case_work_secondary_log_type: #{e}"
end
```

#### Using the update_care_case_work_secondary_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkSecondaryLogTypeVBAResponse>, Integer, Hash)> update_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type, care_case_work_secondary_log_type)

```ruby
begin
  # Update CareCaseWorkSecondaryLogType
  data, status_code, headers = api_instance.update_care_case_work_secondary_log_type_with_http_info(vbasoftware_database, work_log_type, work_log_secondary_type, care_case_work_secondary_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkSecondaryLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSecondaryLogTypesApi->update_care_case_work_secondary_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **work_log_secondary_type** | **String** | WorkLog SecondaryType |  |
| **care_case_work_secondary_log_type** | [**CareCaseWorkSecondaryLogType**](CareCaseWorkSecondaryLogType.md) |  |  |

### Return type

[**CareCaseWorkSecondaryLogTypeVBAResponse**](CareCaseWorkSecondaryLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

