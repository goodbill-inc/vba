# Vba::EDICodeMappingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_edi_code_map**](EDICodeMappingsApi.md#create_edi_code_map) | **POST** /edi-code-mapping | Create EDICodeMap |
| [**delete_edi_code_map**](EDICodeMappingsApi.md#delete_edi_code_map) | **DELETE** /edi-code-mapping/{eDICodeMapKey} | Delete EDICodeMap |
| [**get_edi_code_map**](EDICodeMappingsApi.md#get_edi_code_map) | **GET** /edi-code-mapping/{eDICodeMapKey} | Get EDICodeMap |
| [**list_edi_code_map**](EDICodeMappingsApi.md#list_edi_code_map) | **GET** /edi-code-mapping | List EDICodeMap |
| [**update_batch_edi_code_map**](EDICodeMappingsApi.md#update_batch_edi_code_map) | **PUT** /edi-code-mapping-batch | Create or Update Batch EDICodeMap |
| [**update_edi_code_map**](EDICodeMappingsApi.md#update_edi_code_map) | **PUT** /edi-code-mapping/{eDICodeMapKey} | Update EDICodeMap |


## create_edi_code_map

> <EDICodeMapVBAResponse> create_edi_code_map(vbasoftware_database, edi_code_map)

Create EDICodeMap

Creates a new EDICodeMap

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_code_map = Vba::EDICodeMap.new({edi_code_map_key: 37, destination_value: 'destination_value_example', direction: 'direction_example', map_type: 'map_type_example', source_value: 'source_value_example'}) # EDICodeMap | 

begin
  # Create EDICodeMap
  result = api_instance.create_edi_code_map(vbasoftware_database, edi_code_map)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->create_edi_code_map: #{e}"
end
```

#### Using the create_edi_code_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICodeMapVBAResponse>, Integer, Hash)> create_edi_code_map_with_http_info(vbasoftware_database, edi_code_map)

```ruby
begin
  # Create EDICodeMap
  data, status_code, headers = api_instance.create_edi_code_map_with_http_info(vbasoftware_database, edi_code_map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICodeMapVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->create_edi_code_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_code_map** | [**EDICodeMap**](EDICodeMap.md) |  |  |

### Return type

[**EDICodeMapVBAResponse**](EDICodeMapVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_edi_code_map

> delete_edi_code_map(vbasoftware_database, e_di_code_map_key)

Delete EDICodeMap

Deletes an EDICodeMap

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
e_di_code_map_key = 56 # Integer | EDICodeMap Key

begin
  # Delete EDICodeMap
  api_instance.delete_edi_code_map(vbasoftware_database, e_di_code_map_key)
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->delete_edi_code_map: #{e}"
end
```

#### Using the delete_edi_code_map_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key)

```ruby
begin
  # Delete EDICodeMap
  data, status_code, headers = api_instance.delete_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->delete_edi_code_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **e_di_code_map_key** | **Integer** | EDICodeMap Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_edi_code_map

> <EDICodeMapVBAResponse> get_edi_code_map(vbasoftware_database, e_di_code_map_key)

Get EDICodeMap

Gets EDICodeMap

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
e_di_code_map_key = 56 # Integer | EDICodeMap Key

begin
  # Get EDICodeMap
  result = api_instance.get_edi_code_map(vbasoftware_database, e_di_code_map_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->get_edi_code_map: #{e}"
end
```

#### Using the get_edi_code_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICodeMapVBAResponse>, Integer, Hash)> get_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key)

```ruby
begin
  # Get EDICodeMap
  data, status_code, headers = api_instance.get_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICodeMapVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->get_edi_code_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **e_di_code_map_key** | **Integer** | EDICodeMap Key |  |

### Return type

[**EDICodeMapVBAResponse**](EDICodeMapVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_edi_code_map

> <EDICodeMapListVBAResponse> list_edi_code_map(vbasoftware_database, opts)

List EDICodeMap

Lists all EDICodeMap

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EDICodeMap
  result = api_instance.list_edi_code_map(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->list_edi_code_map: #{e}"
end
```

#### Using the list_edi_code_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICodeMapListVBAResponse>, Integer, Hash)> list_edi_code_map_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EDICodeMap
  data, status_code, headers = api_instance.list_edi_code_map_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICodeMapListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->list_edi_code_map_with_http_info: #{e}"
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

[**EDICodeMapListVBAResponse**](EDICodeMapListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_edi_code_map

> <MultiCodeResponseListVBAResponse> update_batch_edi_code_map(vbasoftware_database, edi_code_map)

Create or Update Batch EDICodeMap

Create or Update multiple EDICodeMap at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_code_map = [Vba::EDICodeMap.new({edi_code_map_key: 37, destination_value: 'destination_value_example', direction: 'direction_example', map_type: 'map_type_example', source_value: 'source_value_example'})] # Array<EDICodeMap> | 

begin
  # Create or Update Batch EDICodeMap
  result = api_instance.update_batch_edi_code_map(vbasoftware_database, edi_code_map)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->update_batch_edi_code_map: #{e}"
end
```

#### Using the update_batch_edi_code_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_edi_code_map_with_http_info(vbasoftware_database, edi_code_map)

```ruby
begin
  # Create or Update Batch EDICodeMap
  data, status_code, headers = api_instance.update_batch_edi_code_map_with_http_info(vbasoftware_database, edi_code_map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->update_batch_edi_code_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_code_map** | [**Array&lt;EDICodeMap&gt;**](EDICodeMap.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_edi_code_map

> <EDICodeMapVBAResponse> update_edi_code_map(vbasoftware_database, e_di_code_map_key, edi_code_map)

Update EDICodeMap

Updates a specific EDICodeMap.

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

api_instance = Vba::EDICodeMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
e_di_code_map_key = 56 # Integer | EDICodeMap Key
edi_code_map = Vba::EDICodeMap.new({edi_code_map_key: 37, destination_value: 'destination_value_example', direction: 'direction_example', map_type: 'map_type_example', source_value: 'source_value_example'}) # EDICodeMap | 

begin
  # Update EDICodeMap
  result = api_instance.update_edi_code_map(vbasoftware_database, e_di_code_map_key, edi_code_map)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->update_edi_code_map: #{e}"
end
```

#### Using the update_edi_code_map_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICodeMapVBAResponse>, Integer, Hash)> update_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, edi_code_map)

```ruby
begin
  # Update EDICodeMap
  data, status_code, headers = api_instance.update_edi_code_map_with_http_info(vbasoftware_database, e_di_code_map_key, edi_code_map)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICodeMapVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICodeMappingsApi->update_edi_code_map_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **e_di_code_map_key** | **Integer** | EDICodeMap Key |  |
| **edi_code_map** | [**EDICodeMap**](EDICodeMap.md) |  |  |

### Return type

[**EDICodeMapVBAResponse**](EDICodeMapVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

