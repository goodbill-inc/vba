# Vba::DuplicateMasterSetsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_duplicate_master_set**](DuplicateMasterSetsApi.md#create_duplicate_master_set) | **POST** /duplicate-masters/{duplicateMasterKey}/sets | Create DuplicateMasterSet |
| [**delete_duplicate_master_set**](DuplicateMasterSetsApi.md#delete_duplicate_master_set) | **DELETE** /duplicate-masters/{duplicateMasterKey}/sets/{duplicateSetKey} | Delete DuplicateMasterSet |
| [**get_duplicate_master_set**](DuplicateMasterSetsApi.md#get_duplicate_master_set) | **GET** /duplicate-masters/{duplicateMasterKey}/sets/{duplicateSetKey} | Get DuplicateMasterSet |
| [**list_duplicate_master_set**](DuplicateMasterSetsApi.md#list_duplicate_master_set) | **GET** /duplicate-masters/{duplicateMasterKey}/sets | List DuplicateMasterSet |
| [**update_batch_duplicate_master_set**](DuplicateMasterSetsApi.md#update_batch_duplicate_master_set) | **PUT** /duplicate-masters/{duplicateMasterKey}/sets-batch | Create or Update Batch DuplicateMasterSet |
| [**update_duplicate_master_set**](DuplicateMasterSetsApi.md#update_duplicate_master_set) | **PUT** /duplicate-masters/{duplicateMasterKey}/sets/{duplicateSetKey} | Update DuplicateMasterSet |


## create_duplicate_master_set

> <DuplicateMasterSetVBAResponse> create_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_master_set)

Create DuplicateMasterSet

Creates a new DuplicateMasterSet

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_master_set = Vba::DuplicateMasterSet.new({duplicate_master_key: 37, duplicate_set_key: 37}) # DuplicateMasterSet | 

begin
  # Create DuplicateMasterSet
  result = api_instance.create_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_master_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->create_duplicate_master_set: #{e}"
end
```

#### Using the create_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterSetVBAResponse>, Integer, Hash)> create_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master_set)

```ruby
begin
  # Create DuplicateMasterSet
  data, status_code, headers = api_instance.create_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->create_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_master_set** | [**DuplicateMasterSet**](DuplicateMasterSet.md) |  |  |

### Return type

[**DuplicateMasterSetVBAResponse**](DuplicateMasterSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_duplicate_master_set

> delete_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key)

Delete DuplicateMasterSet

Deletes an DuplicateMasterSet

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_set_key = 56 # Integer | DuplicateSet Key

begin
  # Delete DuplicateMasterSet
  api_instance.delete_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key)
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->delete_duplicate_master_set: #{e}"
end
```

#### Using the delete_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key)

```ruby
begin
  # Delete DuplicateMasterSet
  data, status_code, headers = api_instance.delete_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->delete_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_duplicate_master_set

> <DuplicateMasterSetVBAResponse> get_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key)

Get DuplicateMasterSet

Gets DuplicateMasterSet

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_set_key = 56 # Integer | DuplicateSet Key

begin
  # Get DuplicateMasterSet
  result = api_instance.get_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->get_duplicate_master_set: #{e}"
end
```

#### Using the get_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterSetVBAResponse>, Integer, Hash)> get_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key)

```ruby
begin
  # Get DuplicateMasterSet
  data, status_code, headers = api_instance.get_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->get_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |

### Return type

[**DuplicateMasterSetVBAResponse**](DuplicateMasterSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_duplicate_master_set

> <DuplicateMasterSetListVBAResponse> list_duplicate_master_set(vbasoftware_database, duplicate_master_key, opts)

List DuplicateMasterSet

Lists all DuplicateMasterSet for the given duplicateMasterKey

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DuplicateMasterSet
  result = api_instance.list_duplicate_master_set(vbasoftware_database, duplicate_master_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->list_duplicate_master_set: #{e}"
end
```

#### Using the list_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterSetListVBAResponse>, Integer, Hash)> list_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, opts)

```ruby
begin
  # List DuplicateMasterSet
  data, status_code, headers = api_instance.list_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterSetListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->list_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**DuplicateMasterSetListVBAResponse**](DuplicateMasterSetListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_duplicate_master_set

> <MultiCodeResponseListVBAResponse> update_batch_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_master_set)

Create or Update Batch DuplicateMasterSet

Create or Update multiple DuplicateMasterSet at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_master_set = [Vba::DuplicateMasterSet.new({duplicate_master_key: 37, duplicate_set_key: 37})] # Array<DuplicateMasterSet> | 

begin
  # Create or Update Batch DuplicateMasterSet
  result = api_instance.update_batch_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_master_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->update_batch_duplicate_master_set: #{e}"
end
```

#### Using the update_batch_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master_set)

```ruby
begin
  # Create or Update Batch DuplicateMasterSet
  data, status_code, headers = api_instance.update_batch_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_master_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->update_batch_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_master_set** | [**Array&lt;DuplicateMasterSet&gt;**](DuplicateMasterSet.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_duplicate_master_set

> <DuplicateMasterSetVBAResponse> update_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key, duplicate_master_set)

Update DuplicateMasterSet

Updates a specific DuplicateMasterSet.

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

api_instance = Vba::DuplicateMasterSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_master_key = 56 # Integer | DuplicateMaster Key
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_master_set = Vba::DuplicateMasterSet.new({duplicate_master_key: 37, duplicate_set_key: 37}) # DuplicateMasterSet | 

begin
  # Update DuplicateMasterSet
  result = api_instance.update_duplicate_master_set(vbasoftware_database, duplicate_master_key, duplicate_set_key, duplicate_master_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->update_duplicate_master_set: #{e}"
end
```

#### Using the update_duplicate_master_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateMasterSetVBAResponse>, Integer, Hash)> update_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key, duplicate_master_set)

```ruby
begin
  # Update DuplicateMasterSet
  data, status_code, headers = api_instance.update_duplicate_master_set_with_http_info(vbasoftware_database, duplicate_master_key, duplicate_set_key, duplicate_master_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateMasterSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateMasterSetsApi->update_duplicate_master_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_master_key** | **Integer** | DuplicateMaster Key |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_master_set** | [**DuplicateMasterSet**](DuplicateMasterSet.md) |  |  |

### Return type

[**DuplicateMasterSetVBAResponse**](DuplicateMasterSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

