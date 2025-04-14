# Vba::GroupAdviceToPayApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_atp**](GroupAdviceToPayApi.md#create_group_atp) | **POST** /groups/{groupID}/avdvice-to-pay | Create GroupATP |
| [**delete_group_atp**](GroupAdviceToPayApi.md#delete_group_atp) | **DELETE** /groups/{groupID}/avdvice-to-pay/{groupATPKey} | Delete GroupATP |
| [**get_group_atp**](GroupAdviceToPayApi.md#get_group_atp) | **GET** /groups/{groupID}/avdvice-to-pay/{groupATPKey} | Get GroupATP |
| [**list_group_atp**](GroupAdviceToPayApi.md#list_group_atp) | **GET** /groups/{groupID}/avdvice-to-pay | List GroupATP |
| [**update_batch_group_atp**](GroupAdviceToPayApi.md#update_batch_group_atp) | **PUT** /groups/{groupID}/avdvice-to-pay-batch | Create or Update Batch GroupATP |
| [**update_group_atp**](GroupAdviceToPayApi.md#update_group_atp) | **PUT** /groups/{groupID}/avdvice-to-pay/{groupATPKey} | Update GroupATP |


## create_group_atp

> <GroupATPVBAResponse> create_group_atp(vbasoftware_database, group_id, group_atp)

Create GroupATP

Creates a new GroupATP

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_atp = Vba::GroupATP.new({group_atp_key: 37, group_id: 'group_id_example'}) # GroupATP | 

begin
  # Create GroupATP
  result = api_instance.create_group_atp(vbasoftware_database, group_id, group_atp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->create_group_atp: #{e}"
end
```

#### Using the create_group_atp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupATPVBAResponse>, Integer, Hash)> create_group_atp_with_http_info(vbasoftware_database, group_id, group_atp)

```ruby
begin
  # Create GroupATP
  data, status_code, headers = api_instance.create_group_atp_with_http_info(vbasoftware_database, group_id, group_atp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupATPVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->create_group_atp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_atp** | [**GroupATP**](GroupATP.md) |  |  |

### Return type

[**GroupATPVBAResponse**](GroupATPVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_atp

> delete_group_atp(vbasoftware_database, group_id, group_atp_key)

Delete GroupATP

Deletes an GroupATP

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_atp_key = 56 # Integer | GroupATP Key

begin
  # Delete GroupATP
  api_instance.delete_group_atp(vbasoftware_database, group_id, group_atp_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->delete_group_atp: #{e}"
end
```

#### Using the delete_group_atp_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key)

```ruby
begin
  # Delete GroupATP
  data, status_code, headers = api_instance.delete_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->delete_group_atp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_atp_key** | **Integer** | GroupATP Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_atp

> <GroupATPVBAResponse> get_group_atp(vbasoftware_database, group_id, group_atp_key)

Get GroupATP

Gets GroupATP

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_atp_key = 56 # Integer | GroupATP Key

begin
  # Get GroupATP
  result = api_instance.get_group_atp(vbasoftware_database, group_id, group_atp_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->get_group_atp: #{e}"
end
```

#### Using the get_group_atp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupATPVBAResponse>, Integer, Hash)> get_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key)

```ruby
begin
  # Get GroupATP
  data, status_code, headers = api_instance.get_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupATPVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->get_group_atp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_atp_key** | **Integer** | GroupATP Key |  |

### Return type

[**GroupATPVBAResponse**](GroupATPVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_atp

> <GroupATPListVBAResponse> list_group_atp(vbasoftware_database, group_id, opts)

List GroupATP

Lists all GroupATP for the given groupID

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupATP
  result = api_instance.list_group_atp(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->list_group_atp: #{e}"
end
```

#### Using the list_group_atp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupATPListVBAResponse>, Integer, Hash)> list_group_atp_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupATP
  data, status_code, headers = api_instance.list_group_atp_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupATPListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->list_group_atp_with_http_info: #{e}"
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

[**GroupATPListVBAResponse**](GroupATPListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_atp

> <MultiCodeResponseListVBAResponse> update_batch_group_atp(vbasoftware_database, group_id, group_atp)

Create or Update Batch GroupATP

Create or Update multiple GroupATP at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_atp = [Vba::GroupATP.new({group_atp_key: 37, group_id: 'group_id_example'})] # Array<GroupATP> | 

begin
  # Create or Update Batch GroupATP
  result = api_instance.update_batch_group_atp(vbasoftware_database, group_id, group_atp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->update_batch_group_atp: #{e}"
end
```

#### Using the update_batch_group_atp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_atp_with_http_info(vbasoftware_database, group_id, group_atp)

```ruby
begin
  # Create or Update Batch GroupATP
  data, status_code, headers = api_instance.update_batch_group_atp_with_http_info(vbasoftware_database, group_id, group_atp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->update_batch_group_atp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_atp** | [**Array&lt;GroupATP&gt;**](GroupATP.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_atp

> <GroupATPVBAResponse> update_group_atp(vbasoftware_database, group_id, group_atp_key, group_atp)

Update GroupATP

Updates a specific GroupATP.

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

api_instance = Vba::GroupAdviceToPayApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_atp_key = 56 # Integer | GroupATP Key
group_atp = Vba::GroupATP.new({group_atp_key: 37, group_id: 'group_id_example'}) # GroupATP | 

begin
  # Update GroupATP
  result = api_instance.update_group_atp(vbasoftware_database, group_id, group_atp_key, group_atp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->update_group_atp: #{e}"
end
```

#### Using the update_group_atp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupATPVBAResponse>, Integer, Hash)> update_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key, group_atp)

```ruby
begin
  # Update GroupATP
  data, status_code, headers = api_instance.update_group_atp_with_http_info(vbasoftware_database, group_id, group_atp_key, group_atp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupATPVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAdviceToPayApi->update_group_atp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_atp_key** | **Integer** | GroupATP Key |  |
| **group_atp** | [**GroupATP**](GroupATP.md) |  |  |

### Return type

[**GroupATPVBAResponse**](GroupATPVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

