# Vba::CareManagerCareTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_manager_care_type**](CareManagerCareTypesApi.md#create_care_manager_care_type) | **POST** /care-managers/{careManagerKey}/care-types | Create CareManagerCareType |
| [**delete_care_manager_care_type**](CareManagerCareTypesApi.md#delete_care_manager_care_type) | **DELETE** /care-managers/{careManagerKey}/care-types/{careType} | Delete CareManagerCareType |
| [**get_care_manager_care_type**](CareManagerCareTypesApi.md#get_care_manager_care_type) | **GET** /care-managers/{careManagerKey}/care-types/{careType} | Get CareManagerCareType |
| [**list_care_manager_care_type**](CareManagerCareTypesApi.md#list_care_manager_care_type) | **GET** /care-managers/{careManagerKey}/care-types | List CareManagerCareType |
| [**update_batch_care_manager_care_type**](CareManagerCareTypesApi.md#update_batch_care_manager_care_type) | **PUT** /care-managers/{careManagerKey}/care-types-batch | Create or Update Batch CareManagerCareType |


## create_care_manager_care_type

> <CareManagerCareTypeVBAResponse> create_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type)

Create CareManagerCareType

Creates a new CareManagerCareType

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

api_instance = Vba::CareManagerCareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_care_type = Vba::CareManagerCareType.new({care_manager_key: 37, care_type: 'care_type_example'}) # CareManagerCareType | 

begin
  # Create CareManagerCareType
  result = api_instance.create_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->create_care_manager_care_type: #{e}"
end
```

#### Using the create_care_manager_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCareTypeVBAResponse>, Integer, Hash)> create_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type)

```ruby
begin
  # Create CareManagerCareType
  data, status_code, headers = api_instance.create_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCareTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->create_care_manager_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_care_type** | [**CareManagerCareType**](CareManagerCareType.md) |  |  |

### Return type

[**CareManagerCareTypeVBAResponse**](CareManagerCareTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager_care_type

> delete_care_manager_care_type(vbasoftware_database, care_manager_key, care_type)

Delete CareManagerCareType

Deletes an CareManagerCareType

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

api_instance = Vba::CareManagerCareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_type = 'care_type_example' # String | Care Type

begin
  # Delete CareManagerCareType
  api_instance.delete_care_manager_care_type(vbasoftware_database, care_manager_key, care_type)
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->delete_care_manager_care_type: #{e}"
end
```

#### Using the delete_care_manager_care_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type)

```ruby
begin
  # Delete CareManagerCareType
  data, status_code, headers = api_instance.delete_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->delete_care_manager_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_type** | **String** | Care Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager_care_type

> <CareManagerCareTypeVBAResponse> get_care_manager_care_type(vbasoftware_database, care_manager_key, care_type)

Get CareManagerCareType

Gets CareManagerCareType

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

api_instance = Vba::CareManagerCareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_type = 'care_type_example' # String | Care Type

begin
  # Get CareManagerCareType
  result = api_instance.get_care_manager_care_type(vbasoftware_database, care_manager_key, care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->get_care_manager_care_type: #{e}"
end
```

#### Using the get_care_manager_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCareTypeVBAResponse>, Integer, Hash)> get_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type)

```ruby
begin
  # Get CareManagerCareType
  data, status_code, headers = api_instance.get_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCareTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->get_care_manager_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_type** | **String** | Care Type |  |

### Return type

[**CareManagerCareTypeVBAResponse**](CareManagerCareTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager_care_type

> <CareManagerCareTypeListVBAResponse> list_care_manager_care_type(vbasoftware_database, care_manager_key, opts)

List CareManagerCareType

Lists all CareManagerCareType for the given careManagerKey

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

api_instance = Vba::CareManagerCareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManagerCareType
  result = api_instance.list_care_manager_care_type(vbasoftware_database, care_manager_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->list_care_manager_care_type: #{e}"
end
```

#### Using the list_care_manager_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCareTypeListVBAResponse>, Integer, Hash)> list_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, opts)

```ruby
begin
  # List CareManagerCareType
  data, status_code, headers = api_instance.list_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCareTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->list_care_manager_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareManagerCareTypeListVBAResponse**](CareManagerCareTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_manager_care_type

> <MultiCodeResponseListVBAResponse> update_batch_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type)

Create or Update Batch CareManagerCareType

Create or Update multiple CareManagerCareType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagerCareTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_care_type = [Vba::CareManagerCareType.new({care_manager_key: 37, care_type: 'care_type_example'})] # Array<CareManagerCareType> | 

begin
  # Create or Update Batch CareManagerCareType
  result = api_instance.update_batch_care_manager_care_type(vbasoftware_database, care_manager_key, care_manager_care_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->update_batch_care_manager_care_type: #{e}"
end
```

#### Using the update_batch_care_manager_care_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type)

```ruby
begin
  # Create or Update Batch CareManagerCareType
  data, status_code, headers = api_instance.update_batch_care_manager_care_type_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCareTypesApi->update_batch_care_manager_care_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_care_type** | [**Array&lt;CareManagerCareType&gt;**](CareManagerCareType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

