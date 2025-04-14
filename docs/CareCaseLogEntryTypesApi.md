# Vba::CareCaseLogEntryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#create_care_case_log_entry_type) | **POST** /care-case-log-entry-types | Create CareCaseLogEntryType |
| [**delete_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#delete_care_case_log_entry_type) | **DELETE** /care-case-log-entry-types/{careCaseLogEntryTypeKey} | Delete CareCaseLogEntryType |
| [**get_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#get_care_case_log_entry_type) | **GET** /care-case-log-entry-types/{careCaseLogEntryTypeKey} | Get CareCaseLogEntryType |
| [**list_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#list_care_case_log_entry_type) | **GET** /care-case-log-entry-types | List CareCaseLogEntryType |
| [**update_batch_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#update_batch_care_case_log_entry_type) | **PUT** /care-case-log-entry-types-batch | Create or Update Batch CareCaseLogEntryType |
| [**update_care_case_log_entry_type**](CareCaseLogEntryTypesApi.md#update_care_case_log_entry_type) | **PUT** /care-case-log-entry-types/{careCaseLogEntryTypeKey} | Update CareCaseLogEntryType |


## create_care_case_log_entry_type

> <CareCaseLogEntryTypeVBAResponse> create_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type)

Create CareCaseLogEntryType

Creates a new CareCaseLogEntryType

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_log_entry_type = Vba::CareCaseLogEntryType.new({care_case_log_entry_type_key: 37}) # CareCaseLogEntryType | 

begin
  # Create CareCaseLogEntryType
  result = api_instance.create_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->create_care_case_log_entry_type: #{e}"
end
```

#### Using the create_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLogEntryTypeVBAResponse>, Integer, Hash)> create_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type)

```ruby
begin
  # Create CareCaseLogEntryType
  data, status_code, headers = api_instance.create_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLogEntryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->create_care_case_log_entry_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_log_entry_type** | [**CareCaseLogEntryType**](CareCaseLogEntryType.md) |  |  |

### Return type

[**CareCaseLogEntryTypeVBAResponse**](CareCaseLogEntryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_log_entry_type

> delete_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key)

Delete CareCaseLogEntryType

Deletes an CareCaseLogEntryType

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_log_entry_type_key = 56 # Integer | CareCaseLogEntryType Key

begin
  # Delete CareCaseLogEntryType
  api_instance.delete_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->delete_care_case_log_entry_type: #{e}"
end
```

#### Using the delete_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key)

```ruby
begin
  # Delete CareCaseLogEntryType
  data, status_code, headers = api_instance.delete_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->delete_care_case_log_entry_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_log_entry_type_key** | **Integer** | CareCaseLogEntryType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_log_entry_type

> <CareCaseLogEntryTypeVBAResponse> get_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key)

Get CareCaseLogEntryType

Gets CareCaseLogEntryType

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_log_entry_type_key = 56 # Integer | CareCaseLogEntryType Key

begin
  # Get CareCaseLogEntryType
  result = api_instance.get_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->get_care_case_log_entry_type: #{e}"
end
```

#### Using the get_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLogEntryTypeVBAResponse>, Integer, Hash)> get_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key)

```ruby
begin
  # Get CareCaseLogEntryType
  data, status_code, headers = api_instance.get_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLogEntryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->get_care_case_log_entry_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_log_entry_type_key** | **Integer** | CareCaseLogEntryType Key |  |

### Return type

[**CareCaseLogEntryTypeVBAResponse**](CareCaseLogEntryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_log_entry_type

> <CareCaseLogEntryTypeListVBAResponse> list_care_case_log_entry_type(vbasoftware_database, opts)

List CareCaseLogEntryType

Lists all CareCaseLogEntryType

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseLogEntryType
  result = api_instance.list_care_case_log_entry_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->list_care_case_log_entry_type: #{e}"
end
```

#### Using the list_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLogEntryTypeListVBAResponse>, Integer, Hash)> list_care_case_log_entry_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseLogEntryType
  data, status_code, headers = api_instance.list_care_case_log_entry_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLogEntryTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->list_care_case_log_entry_type_with_http_info: #{e}"
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

[**CareCaseLogEntryTypeListVBAResponse**](CareCaseLogEntryTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_log_entry_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type)

Create or Update Batch CareCaseLogEntryType

Create or Update multiple CareCaseLogEntryType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_log_entry_type = [Vba::CareCaseLogEntryType.new({care_case_log_entry_type_key: 37})] # Array<CareCaseLogEntryType> | 

begin
  # Create or Update Batch CareCaseLogEntryType
  result = api_instance.update_batch_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->update_batch_care_case_log_entry_type: #{e}"
end
```

#### Using the update_batch_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type)

```ruby
begin
  # Create or Update Batch CareCaseLogEntryType
  data, status_code, headers = api_instance.update_batch_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->update_batch_care_case_log_entry_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_log_entry_type** | [**Array&lt;CareCaseLogEntryType&gt;**](CareCaseLogEntryType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_log_entry_type

> <CareCaseLogEntryTypeVBAResponse> update_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key, care_case_log_entry_type)

Update CareCaseLogEntryType

Updates a specific CareCaseLogEntryType.

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

api_instance = Vba::CareCaseLogEntryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_log_entry_type_key = 56 # Integer | CareCaseLogEntryType Key
care_case_log_entry_type = Vba::CareCaseLogEntryType.new({care_case_log_entry_type_key: 37}) # CareCaseLogEntryType | 

begin
  # Update CareCaseLogEntryType
  result = api_instance.update_care_case_log_entry_type(vbasoftware_database, care_case_log_entry_type_key, care_case_log_entry_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->update_care_case_log_entry_type: #{e}"
end
```

#### Using the update_care_case_log_entry_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLogEntryTypeVBAResponse>, Integer, Hash)> update_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key, care_case_log_entry_type)

```ruby
begin
  # Update CareCaseLogEntryType
  data, status_code, headers = api_instance.update_care_case_log_entry_type_with_http_info(vbasoftware_database, care_case_log_entry_type_key, care_case_log_entry_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLogEntryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLogEntryTypesApi->update_care_case_log_entry_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_log_entry_type_key** | **Integer** | CareCaseLogEntryType Key |  |
| **care_case_log_entry_type** | [**CareCaseLogEntryType**](CareCaseLogEntryType.md) |  |  |

### Return type

[**CareCaseLogEntryTypeVBAResponse**](CareCaseLogEntryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

