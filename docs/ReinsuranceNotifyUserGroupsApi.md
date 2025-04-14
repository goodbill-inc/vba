# Vba::ReinsuranceNotifyUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_notify_group**](ReinsuranceNotifyUserGroupsApi.md#create_reins_contract_notify_group) | **POST** /reinsurance-contracts/{reinsContractKey}/notify-user-groups | Create ReinsContractNotifyGroup |
| [**delete_reins_contract_notify_group**](ReinsuranceNotifyUserGroupsApi.md#delete_reins_contract_notify_group) | **DELETE** /reinsurance-contracts/{reinsContractKey}/notify-user-groups/{userGroupKey} | Delete ReinsContractNotifyGroup |
| [**get_reins_contract_notify_group**](ReinsuranceNotifyUserGroupsApi.md#get_reins_contract_notify_group) | **GET** /reinsurance-contracts/{reinsContractKey}/notify-user-groups/{userGroupKey} | Get ReinsContractNotifyGroup |
| [**list_reins_contract_notify_group**](ReinsuranceNotifyUserGroupsApi.md#list_reins_contract_notify_group) | **GET** /reinsurance-contracts/{reinsContractKey}/notify-user-groups | List ReinsContractNotifyGroup |
| [**update_batch_reins_contract_notify_group**](ReinsuranceNotifyUserGroupsApi.md#update_batch_reins_contract_notify_group) | **PUT** /reinsurance-contracts/{reinsContractKey}/notify-user-groups-batch | Create or Update Batch ReinsContractNotifyGroup |


## create_reins_contract_notify_group

> <ReinsContractNotifyGroupVBAResponse> create_reins_contract_notify_group(vbasoftware_database, reins_contract_key, reins_contract_notify_group)

Create ReinsContractNotifyGroup

Creates a new ReinsContractNotifyGroup

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

api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_notify_group = Vba::ReinsContractNotifyGroup.new({reins_contract_key: 37, user_group_key: 37}) # ReinsContractNotifyGroup | 

begin
  # Create ReinsContractNotifyGroup
  result = api_instance.create_reins_contract_notify_group(vbasoftware_database, reins_contract_key, reins_contract_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->create_reins_contract_notify_group: #{e}"
end
```

#### Using the create_reins_contract_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractNotifyGroupVBAResponse>, Integer, Hash)> create_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_notify_group)

```ruby
begin
  # Create ReinsContractNotifyGroup
  data, status_code, headers = api_instance.create_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->create_reins_contract_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_notify_group** | [**ReinsContractNotifyGroup**](ReinsContractNotifyGroup.md) |  |  |

### Return type

[**ReinsContractNotifyGroupVBAResponse**](ReinsContractNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_notify_group

> delete_reins_contract_notify_group(vbasoftware_database, reins_contract_key, user_group_key)

Delete ReinsContractNotifyGroup

Deletes an ReinsContractNotifyGroup

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

api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Delete ReinsContractNotifyGroup
  api_instance.delete_reins_contract_notify_group(vbasoftware_database, reins_contract_key, user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->delete_reins_contract_notify_group: #{e}"
end
```

#### Using the delete_reins_contract_notify_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, user_group_key)

```ruby
begin
  # Delete ReinsContractNotifyGroup
  data, status_code, headers = api_instance.delete_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->delete_reins_contract_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_notify_group

> <ReinsContractNotifyGroupVBAResponse> get_reins_contract_notify_group(vbasoftware_database, reins_contract_key, user_group_key)

Get ReinsContractNotifyGroup

Gets ReinsContractNotifyGroup

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

api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Get ReinsContractNotifyGroup
  result = api_instance.get_reins_contract_notify_group(vbasoftware_database, reins_contract_key, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->get_reins_contract_notify_group: #{e}"
end
```

#### Using the get_reins_contract_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractNotifyGroupVBAResponse>, Integer, Hash)> get_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, user_group_key)

```ruby
begin
  # Get ReinsContractNotifyGroup
  data, status_code, headers = api_instance.get_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->get_reins_contract_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**ReinsContractNotifyGroupVBAResponse**](ReinsContractNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_notify_group

> <ReinsContractNotifyGroupListVBAResponse> list_reins_contract_notify_group(vbasoftware_database, reins_contract_key, opts)

List ReinsContractNotifyGroup

Lists all ReinsContractNotifyGroup for the given reinsContractKey

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

api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractNotifyGroup
  result = api_instance.list_reins_contract_notify_group(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->list_reins_contract_notify_group: #{e}"
end
```

#### Using the list_reins_contract_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractNotifyGroupListVBAResponse>, Integer, Hash)> list_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractNotifyGroup
  data, status_code, headers = api_instance.list_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractNotifyGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->list_reins_contract_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractNotifyGroupListVBAResponse**](ReinsContractNotifyGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_notify_group

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_notify_group(vbasoftware_database, reins_contract_key, reins_contract_notify_group)

Create or Update Batch ReinsContractNotifyGroup

Create or Update multiple ReinsContractNotifyGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_notify_group = [Vba::ReinsContractNotifyGroup.new({reins_contract_key: 37, user_group_key: 37})] # Array<ReinsContractNotifyGroup> | 

begin
  # Create or Update Batch ReinsContractNotifyGroup
  result = api_instance.update_batch_reins_contract_notify_group(vbasoftware_database, reins_contract_key, reins_contract_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->update_batch_reins_contract_notify_group: #{e}"
end
```

#### Using the update_batch_reins_contract_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_notify_group)

```ruby
begin
  # Create or Update Batch ReinsContractNotifyGroup
  data, status_code, headers = api_instance.update_batch_reins_contract_notify_group_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceNotifyUserGroupsApi->update_batch_reins_contract_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_notify_group** | [**Array&lt;ReinsContractNotifyGroup&gt;**](ReinsContractNotifyGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

