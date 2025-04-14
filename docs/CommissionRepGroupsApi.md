# Vba::CommissionRepGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_group**](CommissionRepGroupsApi.md#create_commission_rep_group) | **POST** /commission-reps/{commRepKey}/commission-rep-groups | Create CommissionRepGroup |
| [**delete_commission_rep_group**](CommissionRepGroupsApi.md#delete_commission_rep_group) | **DELETE** /commission-reps/{commRepKey}/commission-rep-groups/{commRepGroupKey} | Delete CommissionRepGroup |
| [**get_commission_rep_group**](CommissionRepGroupsApi.md#get_commission_rep_group) | **GET** /commission-reps/{commRepKey}/commission-rep-groups/{commRepGroupKey} | Get CommissionRepGroup |
| [**list_commission_rep_group**](CommissionRepGroupsApi.md#list_commission_rep_group) | **GET** /commission-reps/{commRepKey}/commission-rep-groups | List CommissionRepGroup |
| [**update_batch_commission_rep_group**](CommissionRepGroupsApi.md#update_batch_commission_rep_group) | **PUT** /commission-reps/{commRepKey}/commission-rep-groups-batch | Create or Update Batch CommissionRepGroup |
| [**update_commission_rep_group**](CommissionRepGroupsApi.md#update_commission_rep_group) | **PUT** /commission-reps/{commRepKey}/commission-rep-groups/{commRepGroupKey} | Update CommissionRepGroup |


## create_commission_rep_group

> <CommissionRepGroupVBAResponse> create_commission_rep_group(vbasoftware_database, comm_rep_key, commission_rep_group)

Create CommissionRepGroup

Creates a new CommissionRepGroup

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_group = Vba::CommissionRepGroup.new({commission_rep_group_key: 37, commission_rep_key: 37, group_id: 'group_id_example'}) # CommissionRepGroup | 

begin
  # Create CommissionRepGroup
  result = api_instance.create_commission_rep_group(vbasoftware_database, comm_rep_key, commission_rep_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->create_commission_rep_group: #{e}"
end
```

#### Using the create_commission_rep_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepGroupVBAResponse>, Integer, Hash)> create_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_group)

```ruby
begin
  # Create CommissionRepGroup
  data, status_code, headers = api_instance.create_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->create_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_group** | [**CommissionRepGroup**](CommissionRepGroup.md) |  |  |

### Return type

[**CommissionRepGroupVBAResponse**](CommissionRepGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_group

> delete_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key)

Delete CommissionRepGroup

Deletes an CommissionRepGroup

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_group_key = 56 # Integer | CommissionRepGroup Key

begin
  # Delete CommissionRepGroup
  api_instance.delete_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->delete_commission_rep_group: #{e}"
end
```

#### Using the delete_commission_rep_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key)

```ruby
begin
  # Delete CommissionRepGroup
  data, status_code, headers = api_instance.delete_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->delete_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_group_key** | **Integer** | CommissionRepGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_group

> <CommissionRepGroupVBAResponse> get_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key)

Get CommissionRepGroup

Gets CommissionRepGroup

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_group_key = 56 # Integer | CommissionRepGroup Key

begin
  # Get CommissionRepGroup
  result = api_instance.get_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->get_commission_rep_group: #{e}"
end
```

#### Using the get_commission_rep_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepGroupVBAResponse>, Integer, Hash)> get_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key)

```ruby
begin
  # Get CommissionRepGroup
  data, status_code, headers = api_instance.get_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->get_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_group_key** | **Integer** | CommissionRepGroup Key |  |

### Return type

[**CommissionRepGroupVBAResponse**](CommissionRepGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_group

> <CommissionRepGroupListVBAResponse> list_commission_rep_group(vbasoftware_database, comm_rep_key, opts)

List CommissionRepGroup

Lists all CommissionRepGroup for the given commRepKey

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepGroup
  result = api_instance.list_commission_rep_group(vbasoftware_database, comm_rep_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->list_commission_rep_group: #{e}"
end
```

#### Using the list_commission_rep_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepGroupListVBAResponse>, Integer, Hash)> list_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, opts)

```ruby
begin
  # List CommissionRepGroup
  data, status_code, headers = api_instance.list_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->list_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRepGroupListVBAResponse**](CommissionRepGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_group

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_group(vbasoftware_database, comm_rep_key, commission_rep_group)

Create or Update Batch CommissionRepGroup

Create or Update multiple CommissionRepGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_group = [Vba::CommissionRepGroup.new({commission_rep_group_key: 37, commission_rep_key: 37, group_id: 'group_id_example'})] # Array<CommissionRepGroup> | 

begin
  # Create or Update Batch CommissionRepGroup
  result = api_instance.update_batch_commission_rep_group(vbasoftware_database, comm_rep_key, commission_rep_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->update_batch_commission_rep_group: #{e}"
end
```

#### Using the update_batch_commission_rep_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_group)

```ruby
begin
  # Create or Update Batch CommissionRepGroup
  data, status_code, headers = api_instance.update_batch_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->update_batch_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_group** | [**Array&lt;CommissionRepGroup&gt;**](CommissionRepGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_group

> <CommissionRepGroupVBAResponse> update_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key, commission_rep_group)

Update CommissionRepGroup

Updates a specific CommissionRepGroup.

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

api_instance = Vba::CommissionRepGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_group_key = 56 # Integer | CommissionRepGroup Key
commission_rep_group = Vba::CommissionRepGroup.new({commission_rep_group_key: 37, commission_rep_key: 37, group_id: 'group_id_example'}) # CommissionRepGroup | 

begin
  # Update CommissionRepGroup
  result = api_instance.update_commission_rep_group(vbasoftware_database, comm_rep_key, comm_rep_group_key, commission_rep_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->update_commission_rep_group: #{e}"
end
```

#### Using the update_commission_rep_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepGroupVBAResponse>, Integer, Hash)> update_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key, commission_rep_group)

```ruby
begin
  # Update CommissionRepGroup
  data, status_code, headers = api_instance.update_commission_rep_group_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_group_key, commission_rep_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepGroupsApi->update_commission_rep_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_group_key** | **Integer** | CommissionRepGroup Key |  |
| **commission_rep_group** | [**CommissionRepGroup**](CommissionRepGroup.md) |  |  |

### Return type

[**CommissionRepGroupVBAResponse**](CommissionRepGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

