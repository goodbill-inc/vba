# Vba::CareCaseWorkLogSavingsTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#create_care_case_work_log_savings_type) | **POST** /care-case-work-log-types/{workLogType}/savings-types | Create CareCaseWorkLogSavingsType |
| [**delete_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#delete_care_case_work_log_savings_type) | **DELETE** /care-case-work-log-types/{workLogType}/savings-types/{savingsType} | Delete CareCaseWorkLogSavingsType |
| [**get_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#get_care_case_work_log_savings_type) | **GET** /care-case-work-log-types/{workLogType}/savings-types/{savingsType} | Get CareCaseWorkLogSavingsType |
| [**list_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#list_care_case_work_log_savings_type) | **GET** /care-case-work-log-types/{workLogType}/savings-types | List CareCaseWorkLogSavingsType |
| [**update_batch_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#update_batch_care_case_work_log_savings_type) | **PUT** /care-case-work-log-types/{workLogType}/savings-types-batch | Create or Update Batch CareCaseWorkLogSavingsType |
| [**update_care_case_work_log_savings_type**](CareCaseWorkLogSavingsTypesApi.md#update_care_case_work_log_savings_type) | **PUT** /care-case-work-log-types/{workLogType}/savings-types/{savingsType} | Update CareCaseWorkLogSavingsType |


## create_care_case_work_log_savings_type

> <CareCaseWorkLogSavingsTypeVBAResponse> create_care_case_work_log_savings_type(vbasoftware_database, work_log_type, care_case_work_log_savings_type)

Create CareCaseWorkLogSavingsType

Creates a new CareCaseWorkLogSavingsType

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
care_case_work_log_savings_type = Vba::CareCaseWorkLogSavingsType.new({work_log_type: 'work_log_type_example', savings_type: 'savings_type_example', default_dates: false}) # CareCaseWorkLogSavingsType | 

begin
  # Create CareCaseWorkLogSavingsType
  result = api_instance.create_care_case_work_log_savings_type(vbasoftware_database, work_log_type, care_case_work_log_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->create_care_case_work_log_savings_type: #{e}"
end
```

#### Using the create_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogSavingsTypeVBAResponse>, Integer, Hash)> create_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_savings_type)

```ruby
begin
  # Create CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.create_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->create_care_case_work_log_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **care_case_work_log_savings_type** | [**CareCaseWorkLogSavingsType**](CareCaseWorkLogSavingsType.md) |  |  |

### Return type

[**CareCaseWorkLogSavingsTypeVBAResponse**](CareCaseWorkLogSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_work_log_savings_type

> delete_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type)

Delete CareCaseWorkLogSavingsType

Deletes an CareCaseWorkLogSavingsType

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
savings_type = 'savings_type_example' # String | Savings Type

begin
  # Delete CareCaseWorkLogSavingsType
  api_instance.delete_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->delete_care_case_work_log_savings_type: #{e}"
end
```

#### Using the delete_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type)

```ruby
begin
  # Delete CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.delete_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->delete_care_case_work_log_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **savings_type** | **String** | Savings Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_work_log_savings_type

> <CareCaseWorkLogSavingsTypeVBAResponse> get_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type)

Get CareCaseWorkLogSavingsType

Gets CareCaseWorkLogSavingsType

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
savings_type = 'savings_type_example' # String | Savings Type

begin
  # Get CareCaseWorkLogSavingsType
  result = api_instance.get_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->get_care_case_work_log_savings_type: #{e}"
end
```

#### Using the get_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogSavingsTypeVBAResponse>, Integer, Hash)> get_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type)

```ruby
begin
  # Get CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.get_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->get_care_case_work_log_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **savings_type** | **String** | Savings Type |  |

### Return type

[**CareCaseWorkLogSavingsTypeVBAResponse**](CareCaseWorkLogSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_work_log_savings_type

> <CareCaseWorkLogSavingsTypeListVBAResponse> list_care_case_work_log_savings_type(vbasoftware_database, work_log_type, opts)

List CareCaseWorkLogSavingsType

Lists all CareCaseWorkLogSavingsType for the given workLogType

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseWorkLogSavingsType
  result = api_instance.list_care_case_work_log_savings_type(vbasoftware_database, work_log_type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->list_care_case_work_log_savings_type: #{e}"
end
```

#### Using the list_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogSavingsTypeListVBAResponse>, Integer, Hash)> list_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, opts)

```ruby
begin
  # List CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.list_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogSavingsTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->list_care_case_work_log_savings_type_with_http_info: #{e}"
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

[**CareCaseWorkLogSavingsTypeListVBAResponse**](CareCaseWorkLogSavingsTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_work_log_savings_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_work_log_savings_type(vbasoftware_database, work_log_type, care_case_work_log_savings_type)

Create or Update Batch CareCaseWorkLogSavingsType

Create or Update multiple CareCaseWorkLogSavingsType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
care_case_work_log_savings_type = [Vba::CareCaseWorkLogSavingsType.new({work_log_type: 'work_log_type_example', savings_type: 'savings_type_example', default_dates: false})] # Array<CareCaseWorkLogSavingsType> | 

begin
  # Create or Update Batch CareCaseWorkLogSavingsType
  result = api_instance.update_batch_care_case_work_log_savings_type(vbasoftware_database, work_log_type, care_case_work_log_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->update_batch_care_case_work_log_savings_type: #{e}"
end
```

#### Using the update_batch_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_savings_type)

```ruby
begin
  # Create or Update Batch CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.update_batch_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, care_case_work_log_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->update_batch_care_case_work_log_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **care_case_work_log_savings_type** | [**Array&lt;CareCaseWorkLogSavingsType&gt;**](CareCaseWorkLogSavingsType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_work_log_savings_type

> <CareCaseWorkLogSavingsTypeVBAResponse> update_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type, care_case_work_log_savings_type)

Update CareCaseWorkLogSavingsType

Updates a specific CareCaseWorkLogSavingsType.

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

api_instance = Vba::CareCaseWorkLogSavingsTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
work_log_type = 'work_log_type_example' # String | WorkLog Type
savings_type = 'savings_type_example' # String | Savings Type
care_case_work_log_savings_type = Vba::CareCaseWorkLogSavingsType.new({work_log_type: 'work_log_type_example', savings_type: 'savings_type_example', default_dates: false}) # CareCaseWorkLogSavingsType | 

begin
  # Update CareCaseWorkLogSavingsType
  result = api_instance.update_care_case_work_log_savings_type(vbasoftware_database, work_log_type, savings_type, care_case_work_log_savings_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->update_care_case_work_log_savings_type: #{e}"
end
```

#### Using the update_care_case_work_log_savings_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseWorkLogSavingsTypeVBAResponse>, Integer, Hash)> update_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type, care_case_work_log_savings_type)

```ruby
begin
  # Update CareCaseWorkLogSavingsType
  data, status_code, headers = api_instance.update_care_case_work_log_savings_type_with_http_info(vbasoftware_database, work_log_type, savings_type, care_case_work_log_savings_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseWorkLogSavingsTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseWorkLogSavingsTypesApi->update_care_case_work_log_savings_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **work_log_type** | **String** | WorkLog Type |  |
| **savings_type** | **String** | Savings Type |  |
| **care_case_work_log_savings_type** | [**CareCaseWorkLogSavingsType**](CareCaseWorkLogSavingsType.md) |  |  |

### Return type

[**CareCaseWorkLogSavingsTypeVBAResponse**](CareCaseWorkLogSavingsTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

