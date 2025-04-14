# Vba::CareManagerMappingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_care_manager_mapping**](CareManagerMappingsApi.md#create_batch_care_manager_mapping) | **PUT** /care-manager-mappings-batch | Create or Update Batch CareManagerMapping |
| [**create_care_manager_mapping**](CareManagerMappingsApi.md#create_care_manager_mapping) | **POST** /care-manager-mappings | Create CareManagerMapping |
| [**delete_care_manager_mapping**](CareManagerMappingsApi.md#delete_care_manager_mapping) | **DELETE** /care-manager-mappings/{parentCareManagerKey}/{childCareManagerKey} | Delete CareManagerMapping |
| [**get_care_manager_mapping**](CareManagerMappingsApi.md#get_care_manager_mapping) | **GET** /care-manager-mappings/{parentCareManagerKey}/{childCareManagerKey} | Get CareManagerMapping |
| [**list_care_manager_mapping**](CareManagerMappingsApi.md#list_care_manager_mapping) | **GET** /care-manager-mappings | List CareManagerMapping |


## create_batch_care_manager_mapping

> <MultiCodeResponseListVBAResponse> create_batch_care_manager_mapping(vbasoftware_database, care_manager_mapping)

Create or Update Batch CareManagerMapping

Create multiple CareManagerMapping at once.  If the entity exists, an error message will be returned for this record.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagerMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_mapping = [Vba::CareManagerMapping.new({parent_care_manager_key: 37, child_care_manager_key: 37})] # Array<CareManagerMapping> | 

begin
  # Create or Update Batch CareManagerMapping
  result = api_instance.create_batch_care_manager_mapping(vbasoftware_database, care_manager_mapping)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->create_batch_care_manager_mapping: #{e}"
end
```

#### Using the create_batch_care_manager_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_batch_care_manager_mapping_with_http_info(vbasoftware_database, care_manager_mapping)

```ruby
begin
  # Create or Update Batch CareManagerMapping
  data, status_code, headers = api_instance.create_batch_care_manager_mapping_with_http_info(vbasoftware_database, care_manager_mapping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->create_batch_care_manager_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_mapping** | [**Array&lt;CareManagerMapping&gt;**](CareManagerMapping.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_care_manager_mapping

> <CareManagerMappingVBAResponse> create_care_manager_mapping(vbasoftware_database, care_manager_mapping)

Create CareManagerMapping

Creates a new CareManagerMapping

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

api_instance = Vba::CareManagerMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_mapping = Vba::CareManagerMapping.new({parent_care_manager_key: 37, child_care_manager_key: 37}) # CareManagerMapping | 

begin
  # Create CareManagerMapping
  result = api_instance.create_care_manager_mapping(vbasoftware_database, care_manager_mapping)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->create_care_manager_mapping: #{e}"
end
```

#### Using the create_care_manager_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerMappingVBAResponse>, Integer, Hash)> create_care_manager_mapping_with_http_info(vbasoftware_database, care_manager_mapping)

```ruby
begin
  # Create CareManagerMapping
  data, status_code, headers = api_instance.create_care_manager_mapping_with_http_info(vbasoftware_database, care_manager_mapping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->create_care_manager_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_mapping** | [**CareManagerMapping**](CareManagerMapping.md) |  |  |

### Return type

[**CareManagerMappingVBAResponse**](CareManagerMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager_mapping

> delete_care_manager_mapping(vbasoftware_database, parent_care_manager_key, child_care_manager_key)

Delete CareManagerMapping

Deletes an CareManagerMapping

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

api_instance = Vba::CareManagerMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
parent_care_manager_key = 56 # Integer | Parent CareManager Key
child_care_manager_key = 56 # Integer | Child CareManager Key

begin
  # Delete CareManagerMapping
  api_instance.delete_care_manager_mapping(vbasoftware_database, parent_care_manager_key, child_care_manager_key)
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->delete_care_manager_mapping: #{e}"
end
```

#### Using the delete_care_manager_mapping_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_mapping_with_http_info(vbasoftware_database, parent_care_manager_key, child_care_manager_key)

```ruby
begin
  # Delete CareManagerMapping
  data, status_code, headers = api_instance.delete_care_manager_mapping_with_http_info(vbasoftware_database, parent_care_manager_key, child_care_manager_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->delete_care_manager_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **parent_care_manager_key** | **Integer** | Parent CareManager Key |  |
| **child_care_manager_key** | **Integer** | Child CareManager Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager_mapping

> <CareManagerMappingVBAResponse> get_care_manager_mapping(vbasoftware_database, parent_care_manager_key, child_care_manager_key)

Get CareManagerMapping

Gets CareManagerMapping

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

api_instance = Vba::CareManagerMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
parent_care_manager_key = 56 # Integer | Parent CareManager Key
child_care_manager_key = 56 # Integer | Child CareManager Key

begin
  # Get CareManagerMapping
  result = api_instance.get_care_manager_mapping(vbasoftware_database, parent_care_manager_key, child_care_manager_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->get_care_manager_mapping: #{e}"
end
```

#### Using the get_care_manager_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerMappingVBAResponse>, Integer, Hash)> get_care_manager_mapping_with_http_info(vbasoftware_database, parent_care_manager_key, child_care_manager_key)

```ruby
begin
  # Get CareManagerMapping
  data, status_code, headers = api_instance.get_care_manager_mapping_with_http_info(vbasoftware_database, parent_care_manager_key, child_care_manager_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->get_care_manager_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **parent_care_manager_key** | **Integer** | Parent CareManager Key |  |
| **child_care_manager_key** | **Integer** | Child CareManager Key |  |

### Return type

[**CareManagerMappingVBAResponse**](CareManagerMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager_mapping

> <CareManagerMappingListVBAResponse> list_care_manager_mapping(vbasoftware_database, opts)

List CareManagerMapping

Lists all CareManagerMapping

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

api_instance = Vba::CareManagerMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManagerMapping
  result = api_instance.list_care_manager_mapping(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->list_care_manager_mapping: #{e}"
end
```

#### Using the list_care_manager_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerMappingListVBAResponse>, Integer, Hash)> list_care_manager_mapping_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareManagerMapping
  data, status_code, headers = api_instance.list_care_manager_mapping_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerMappingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerMappingsApi->list_care_manager_mapping_with_http_info: #{e}"
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

[**CareManagerMappingListVBAResponse**](CareManagerMappingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

