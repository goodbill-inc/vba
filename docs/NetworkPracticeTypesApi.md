# Vba::NetworkPracticeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_practice_type**](NetworkPracticeTypesApi.md#create_network_practice_type) | **POST** /networks/{networkID}/practice-types | Create NetworkPracticeType |
| [**delete_network_practice_type**](NetworkPracticeTypesApi.md#delete_network_practice_type) | **DELETE** /networks/{networkID}/practice-types/{practiceType}/{effectiveDate} | Delete NetworkPracticeType |
| [**get_network_practice_type**](NetworkPracticeTypesApi.md#get_network_practice_type) | **GET** /networks/{networkID}/practice-types/{practiceType}/{effectiveDate} | Get NetworkPracticeType |
| [**list_network_practice_type**](NetworkPracticeTypesApi.md#list_network_practice_type) | **GET** /networks/{networkID}/practice-types | List NetworkPracticeType |
| [**update_batch_network_practice_type**](NetworkPracticeTypesApi.md#update_batch_network_practice_type) | **PUT** /networks/{networkID}/practice-types-batch | Create or Update Batch NetworkPracticeType |
| [**update_network_practice_type**](NetworkPracticeTypesApi.md#update_network_practice_type) | **PUT** /networks/{networkID}/practice-types/{practiceType}/{effectiveDate} | Update NetworkPracticeType |


## create_network_practice_type

> <NetworkPracticeTypeVBAResponse> create_network_practice_type(vbasoftware_database, network_id, network_practice_type)

Create NetworkPracticeType

Creates a new NetworkPracticeType

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_practice_type = Vba::NetworkPracticeType.new({network_id: 'network_id_example', practice_type: 'practice_type_example', effective_date: Time.now, context4_fg: false}) # NetworkPracticeType | 

begin
  # Create NetworkPracticeType
  result = api_instance.create_network_practice_type(vbasoftware_database, network_id, network_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->create_network_practice_type: #{e}"
end
```

#### Using the create_network_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPracticeTypeVBAResponse>, Integer, Hash)> create_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type)

```ruby
begin
  # Create NetworkPracticeType
  data, status_code, headers = api_instance.create_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->create_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_practice_type** | [**NetworkPracticeType**](NetworkPracticeType.md) |  |  |

### Return type

[**NetworkPracticeTypeVBAResponse**](NetworkPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_practice_type

> delete_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date)

Delete NetworkPracticeType

Deletes an NetworkPracticeType

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
practice_type = 'practice_type_example' # String | Practice Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete NetworkPracticeType
  api_instance.delete_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->delete_network_practice_type: #{e}"
end
```

#### Using the delete_network_practice_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date)

```ruby
begin
  # Delete NetworkPracticeType
  data, status_code, headers = api_instance.delete_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->delete_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **practice_type** | **String** | Practice Type |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_practice_type

> <NetworkPracticeTypeVBAResponse> get_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date)

Get NetworkPracticeType

Gets NetworkPracticeType

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
practice_type = 'practice_type_example' # String | Practice Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get NetworkPracticeType
  result = api_instance.get_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->get_network_practice_type: #{e}"
end
```

#### Using the get_network_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPracticeTypeVBAResponse>, Integer, Hash)> get_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date)

```ruby
begin
  # Get NetworkPracticeType
  data, status_code, headers = api_instance.get_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->get_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **practice_type** | **String** | Practice Type |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**NetworkPracticeTypeVBAResponse**](NetworkPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_practice_type

> <NetworkPracticeTypeListVBAResponse> list_network_practice_type(vbasoftware_database, network_id, opts)

List NetworkPracticeType

Lists all NetworkPracticeType for the given networkID

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NetworkPracticeType
  result = api_instance.list_network_practice_type(vbasoftware_database, network_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->list_network_practice_type: #{e}"
end
```

#### Using the list_network_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPracticeTypeListVBAResponse>, Integer, Hash)> list_network_practice_type_with_http_info(vbasoftware_database, network_id, opts)

```ruby
begin
  # List NetworkPracticeType
  data, status_code, headers = api_instance.list_network_practice_type_with_http_info(vbasoftware_database, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPracticeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->list_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**NetworkPracticeTypeListVBAResponse**](NetworkPracticeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_practice_type

> <MultiCodeResponseListVBAResponse> update_batch_network_practice_type(vbasoftware_database, network_id, network_practice_type)

Create or Update Batch NetworkPracticeType

Create or Update multiple NetworkPracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_practice_type = [Vba::NetworkPracticeType.new({network_id: 'network_id_example', practice_type: 'practice_type_example', effective_date: Time.now, context4_fg: false})] # Array<NetworkPracticeType> | 

begin
  # Create or Update Batch NetworkPracticeType
  result = api_instance.update_batch_network_practice_type(vbasoftware_database, network_id, network_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->update_batch_network_practice_type: #{e}"
end
```

#### Using the update_batch_network_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type)

```ruby
begin
  # Create or Update Batch NetworkPracticeType
  data, status_code, headers = api_instance.update_batch_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->update_batch_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_practice_type** | [**Array&lt;NetworkPracticeType&gt;**](NetworkPracticeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_practice_type

> <NetworkPracticeTypeVBAResponse> update_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type)

Update NetworkPracticeType

Updates a specific NetworkPracticeType.

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

api_instance = Vba::NetworkPracticeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
practice_type = 'practice_type_example' # String | Practice Type
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
network_practice_type = Vba::NetworkPracticeType.new({network_id: 'network_id_example', practice_type: 'practice_type_example', effective_date: Time.now, context4_fg: false}) # NetworkPracticeType | 

begin
  # Update NetworkPracticeType
  result = api_instance.update_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->update_network_practice_type: #{e}"
end
```

#### Using the update_network_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkPracticeTypeVBAResponse>, Integer, Hash)> update_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type)

```ruby
begin
  # Update NetworkPracticeType
  data, status_code, headers = api_instance.update_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkPracticeTypesApi->update_network_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **practice_type** | **String** | Practice Type |  |
| **effective_date** | **Time** | Effective Date |  |
| **network_practice_type** | [**NetworkPracticeType**](NetworkPracticeType.md) |  |  |

### Return type

[**NetworkPracticeTypeVBAResponse**](NetworkPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

