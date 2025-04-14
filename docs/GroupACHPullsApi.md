# Vba::GroupACHPullsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_ach_pull**](GroupACHPullsApi.md#create_group_ach_pull) | **POST** /groups/{Group_ID}/ach-pulls | Create GroupACHPull |
| [**delete_group_ach_pull**](GroupACHPullsApi.md#delete_group_ach_pull) | **DELETE** /groups/{Group_ID}/ach-pulls/{ACH_Pull_Day} | Delete GroupACHPull |
| [**get_group_ach_pull**](GroupACHPullsApi.md#get_group_ach_pull) | **GET** /groups/{Group_ID}/ach-pulls/{ACH_Pull_Day} | Get GroupACHPull |
| [**list_group_ach_pull**](GroupACHPullsApi.md#list_group_ach_pull) | **GET** /groups/{Group_ID}/ach-pulls | List GroupACHPull |
| [**update_batch_group_ach_pull**](GroupACHPullsApi.md#update_batch_group_ach_pull) | **PUT** /groups/{Group_ID}/ach-pulls-batch | Create or Update Batch GroupACHPull |
| [**update_group_ach_pull**](GroupACHPullsApi.md#update_group_ach_pull) | **PUT** /groups/{Group_ID}/ach-pulls/{ACH_Pull_Day} | Update GroupACHPull |


## create_group_ach_pull

> <GroupACHPullVBAResponse> create_group_ach_pull(vbasoftware_database, group_id, group_ach_pull)

Create GroupACHPull

Creates a new GroupACHPull

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_ach_pull = Vba::GroupACHPull.new({group_id: 'group_id_example', ac_h_pull_day: 37}) # GroupACHPull | 

begin
  # Create GroupACHPull
  result = api_instance.create_group_ach_pull(vbasoftware_database, group_id, group_ach_pull)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->create_group_ach_pull: #{e}"
end
```

#### Using the create_group_ach_pull_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupACHPullVBAResponse>, Integer, Hash)> create_group_ach_pull_with_http_info(vbasoftware_database, group_id, group_ach_pull)

```ruby
begin
  # Create GroupACHPull
  data, status_code, headers = api_instance.create_group_ach_pull_with_http_info(vbasoftware_database, group_id, group_ach_pull)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupACHPullVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->create_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_ach_pull** | [**GroupACHPull**](GroupACHPull.md) |  |  |

### Return type

[**GroupACHPullVBAResponse**](GroupACHPullVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_ach_pull

> delete_group_ach_pull(vbasoftware_database, group_id, ach_pull_day)

Delete GroupACHPull

Deletes an GroupACHPull

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
ach_pull_day = 56 # Integer | ACH Pull Day

begin
  # Delete GroupACHPull
  api_instance.delete_group_ach_pull(vbasoftware_database, group_id, ach_pull_day)
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->delete_group_ach_pull: #{e}"
end
```

#### Using the delete_group_ach_pull_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day)

```ruby
begin
  # Delete GroupACHPull
  data, status_code, headers = api_instance.delete_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->delete_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **ach_pull_day** | **Integer** | ACH Pull Day |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_ach_pull

> <GroupACHPullVBAResponse> get_group_ach_pull(vbasoftware_database, group_id, ach_pull_day)

Get GroupACHPull

Gets GroupACHPull

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
ach_pull_day = 56 # Integer | ACH Pull Day

begin
  # Get GroupACHPull
  result = api_instance.get_group_ach_pull(vbasoftware_database, group_id, ach_pull_day)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->get_group_ach_pull: #{e}"
end
```

#### Using the get_group_ach_pull_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupACHPullVBAResponse>, Integer, Hash)> get_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day)

```ruby
begin
  # Get GroupACHPull
  data, status_code, headers = api_instance.get_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupACHPullVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->get_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **ach_pull_day** | **Integer** | ACH Pull Day |  |

### Return type

[**GroupACHPullVBAResponse**](GroupACHPullVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_ach_pull

> <GroupACHPullListVBAResponse> list_group_ach_pull(vbasoftware_database, group_id, opts)

List GroupACHPull

Lists all GroupACHPull for the given Group_ID

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List GroupACHPull
  result = api_instance.list_group_ach_pull(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->list_group_ach_pull: #{e}"
end
```

#### Using the list_group_ach_pull_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupACHPullListVBAResponse>, Integer, Hash)> list_group_ach_pull_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupACHPull
  data, status_code, headers = api_instance.list_group_ach_pull_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupACHPullListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->list_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**GroupACHPullListVBAResponse**](GroupACHPullListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_ach_pull

> <MultiCodeResponseListVBAResponse> update_batch_group_ach_pull(vbasoftware_database, group_id, group_ach_pull)

Create or Update Batch GroupACHPull

Create or Update multiple GroupACHPull at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_ach_pull = [Vba::GroupACHPull.new({group_id: 'group_id_example', ac_h_pull_day: 37})] # Array<GroupACHPull> | 

begin
  # Create or Update Batch GroupACHPull
  result = api_instance.update_batch_group_ach_pull(vbasoftware_database, group_id, group_ach_pull)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->update_batch_group_ach_pull: #{e}"
end
```

#### Using the update_batch_group_ach_pull_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_ach_pull_with_http_info(vbasoftware_database, group_id, group_ach_pull)

```ruby
begin
  # Create or Update Batch GroupACHPull
  data, status_code, headers = api_instance.update_batch_group_ach_pull_with_http_info(vbasoftware_database, group_id, group_ach_pull)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->update_batch_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_ach_pull** | [**Array&lt;GroupACHPull&gt;**](GroupACHPull.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_ach_pull

> <GroupACHPullVBAResponse> update_group_ach_pull(vbasoftware_database, group_id, ach_pull_day, group_ach_pull)

Update GroupACHPull

Updates a specific GroupACHPull.

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

api_instance = Vba::GroupACHPullsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
ach_pull_day = 56 # Integer | ACH Pull Day
group_ach_pull = Vba::GroupACHPull.new({group_id: 'group_id_example', ac_h_pull_day: 37}) # GroupACHPull | 

begin
  # Update GroupACHPull
  result = api_instance.update_group_ach_pull(vbasoftware_database, group_id, ach_pull_day, group_ach_pull)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->update_group_ach_pull: #{e}"
end
```

#### Using the update_group_ach_pull_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupACHPullVBAResponse>, Integer, Hash)> update_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day, group_ach_pull)

```ruby
begin
  # Update GroupACHPull
  data, status_code, headers = api_instance.update_group_ach_pull_with_http_info(vbasoftware_database, group_id, ach_pull_day, group_ach_pull)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupACHPullVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupACHPullsApi->update_group_ach_pull_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **ach_pull_day** | **Integer** | ACH Pull Day |  |
| **group_ach_pull** | [**GroupACHPull**](GroupACHPull.md) |  |  |

### Return type

[**GroupACHPullVBAResponse**](GroupACHPullVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

