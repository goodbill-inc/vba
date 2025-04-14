# Vba::GroupVolumesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_volume**](GroupVolumesApi.md#create_group_volume) | **POST** /groups/{groupID}/volumes | Create GroupVolume |
| [**delete_group_volume**](GroupVolumesApi.md#delete_group_volume) | **DELETE** /groups/{groupID}/volumes/{groupVolumeKey} | Delete GroupVolume |
| [**get_group_volume**](GroupVolumesApi.md#get_group_volume) | **GET** /groups/{groupID}/volumes/{groupVolumeKey} | Get GroupVolume |
| [**list_group_volume**](GroupVolumesApi.md#list_group_volume) | **GET** /groups/{groupID}/volumes | List GroupVolume |
| [**list_group_volume_nested**](GroupVolumesApi.md#list_group_volume_nested) | **GET** /groups-volumes-nested | List GroupVolume nested by Division/Plan/Benefit |
| [**update_batch_group_volume**](GroupVolumesApi.md#update_batch_group_volume) | **PUT** /groups/{groupID}/volumes-batch | Create or Update Batch GroupVolume |
| [**update_group_volume**](GroupVolumesApi.md#update_group_volume) | **PUT** /groups/{groupID}/volumes/{groupVolumeKey} | Update GroupVolume |


## create_group_volume

> <GroupVolumeVBAResponse> create_group_volume(vbasoftware_database, group_id, group_volume)

Create GroupVolume

Creates a new GroupVolume

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_volume = Vba::GroupVolume.new({group_volume_key: 37, dist_volume_pct: false, group_id: 'group_id_example', use_dist_volume: false}) # GroupVolume | 

begin
  # Create GroupVolume
  result = api_instance.create_group_volume(vbasoftware_database, group_id, group_volume)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->create_group_volume: #{e}"
end
```

#### Using the create_group_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupVolumeVBAResponse>, Integer, Hash)> create_group_volume_with_http_info(vbasoftware_database, group_id, group_volume)

```ruby
begin
  # Create GroupVolume
  data, status_code, headers = api_instance.create_group_volume_with_http_info(vbasoftware_database, group_id, group_volume)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupVolumeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->create_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_volume** | [**GroupVolume**](GroupVolume.md) |  |  |

### Return type

[**GroupVolumeVBAResponse**](GroupVolumeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_volume

> delete_group_volume(vbasoftware_database, group_id, group_volume_key)

Delete GroupVolume

Deletes an GroupVolume

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_volume_key = 56 # Integer | GroupVolume Key

begin
  # Delete GroupVolume
  api_instance.delete_group_volume(vbasoftware_database, group_id, group_volume_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->delete_group_volume: #{e}"
end
```

#### Using the delete_group_volume_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key)

```ruby
begin
  # Delete GroupVolume
  data, status_code, headers = api_instance.delete_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->delete_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_volume_key** | **Integer** | GroupVolume Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_volume

> <GroupVolumeVBAResponse> get_group_volume(vbasoftware_database, group_id, group_volume_key)

Get GroupVolume

Gets GroupVolume

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_volume_key = 56 # Integer | GroupVolume Key

begin
  # Get GroupVolume
  result = api_instance.get_group_volume(vbasoftware_database, group_id, group_volume_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->get_group_volume: #{e}"
end
```

#### Using the get_group_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupVolumeVBAResponse>, Integer, Hash)> get_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key)

```ruby
begin
  # Get GroupVolume
  data, status_code, headers = api_instance.get_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupVolumeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->get_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_volume_key** | **Integer** | GroupVolume Key |  |

### Return type

[**GroupVolumeVBAResponse**](GroupVolumeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_volume

> <GroupVolumeListVBAResponse> list_group_volume(vbasoftware_database, group_id, opts)

List GroupVolume

Lists all GroupVolume for the given groupID

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupVolume
  result = api_instance.list_group_volume(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->list_group_volume: #{e}"
end
```

#### Using the list_group_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupVolumeListVBAResponse>, Integer, Hash)> list_group_volume_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupVolume
  data, status_code, headers = api_instance.list_group_volume_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupVolumeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->list_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupVolumeListVBAResponse**](GroupVolumeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_volume_nested

> <GroupVolumeNestedListVBAResponse> list_group_volume_nested(vbasoftware_database, opts)

List GroupVolume nested by Division/Plan/Benefit

Lists all GroupVolume for the given groupID and have it nested by Division, then by Plan, then by Benefit.

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  group_id: 'group_id_example' # String | Group ID
}

begin
  # List GroupVolume nested by Division/Plan/Benefit
  result = api_instance.list_group_volume_nested(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->list_group_volume_nested: #{e}"
end
```

#### Using the list_group_volume_nested_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupVolumeNestedListVBAResponse>, Integer, Hash)> list_group_volume_nested_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupVolume nested by Division/Plan/Benefit
  data, status_code, headers = api_instance.list_group_volume_nested_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupVolumeNestedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->list_group_volume_nested_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID | [optional] |

### Return type

[**GroupVolumeNestedListVBAResponse**](GroupVolumeNestedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_volume

> <MultiCodeResponseListVBAResponse> update_batch_group_volume(vbasoftware_database, group_id, group_volume)

Create or Update Batch GroupVolume

Create or Update multiple GroupVolume at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_volume = [Vba::GroupVolume.new({group_volume_key: 37, dist_volume_pct: false, group_id: 'group_id_example', use_dist_volume: false})] # Array<GroupVolume> | 

begin
  # Create or Update Batch GroupVolume
  result = api_instance.update_batch_group_volume(vbasoftware_database, group_id, group_volume)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->update_batch_group_volume: #{e}"
end
```

#### Using the update_batch_group_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_volume_with_http_info(vbasoftware_database, group_id, group_volume)

```ruby
begin
  # Create or Update Batch GroupVolume
  data, status_code, headers = api_instance.update_batch_group_volume_with_http_info(vbasoftware_database, group_id, group_volume)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->update_batch_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_volume** | [**Array&lt;GroupVolume&gt;**](GroupVolume.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_volume

> <GroupVolumeVBAResponse> update_group_volume(vbasoftware_database, group_id, group_volume_key, group_volume)

Update GroupVolume

Updates a specific GroupVolume.

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

api_instance = Vba::GroupVolumesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_volume_key = 56 # Integer | GroupVolume Key
group_volume = Vba::GroupVolume.new({group_volume_key: 37, dist_volume_pct: false, group_id: 'group_id_example', use_dist_volume: false}) # GroupVolume | 

begin
  # Update GroupVolume
  result = api_instance.update_group_volume(vbasoftware_database, group_id, group_volume_key, group_volume)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->update_group_volume: #{e}"
end
```

#### Using the update_group_volume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupVolumeVBAResponse>, Integer, Hash)> update_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key, group_volume)

```ruby
begin
  # Update GroupVolume
  data, status_code, headers = api_instance.update_group_volume_with_http_info(vbasoftware_database, group_id, group_volume_key, group_volume)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupVolumeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupVolumesApi->update_group_volume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_volume_key** | **Integer** | GroupVolume Key |  |
| **group_volume** | [**GroupVolume**](GroupVolume.md) |  |  |

### Return type

[**GroupVolumeVBAResponse**](GroupVolumeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

