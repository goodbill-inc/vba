# Vba::GroupAccountPeriodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_account_period**](GroupAccountPeriodsApi.md#create_group_account_period) | **POST** /groups/{groupID}/account-periods | Create GroupAccountPeriod |
| [**delete_group_account_period**](GroupAccountPeriodsApi.md#delete_group_account_period) | **DELETE** /groups/{groupID}/account-periods/{groupAccountPeriodKey} | Delete GroupAccountPeriod |
| [**get_group_account_period**](GroupAccountPeriodsApi.md#get_group_account_period) | **GET** /groups/{groupID}/account-periods/{groupAccountPeriodKey} | Get GroupAccountPeriod |
| [**list_group_account_period**](GroupAccountPeriodsApi.md#list_group_account_period) | **GET** /groups/{groupID}/account-periods | List GroupAccountPeriod |
| [**update_batch_group_account_period**](GroupAccountPeriodsApi.md#update_batch_group_account_period) | **PUT** /groups/{groupID}/account-periods-batch | Create or Update Batch GroupAccountPeriod |
| [**update_group_account_period**](GroupAccountPeriodsApi.md#update_group_account_period) | **PUT** /groups/{groupID}/account-periods/{groupAccountPeriodKey} | Update GroupAccountPeriod |


## create_group_account_period

> <GroupAccountPeriodVBAResponse> create_group_account_period(vbasoftware_database, group_id, group_account_period)

Create GroupAccountPeriod

Creates a new GroupAccountPeriod

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_period = Vba::GroupAccountPeriod.new({group_account_period_key: 37, group_id: 'group_id_example'}) # GroupAccountPeriod | 

begin
  # Create GroupAccountPeriod
  result = api_instance.create_group_account_period(vbasoftware_database, group_id, group_account_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->create_group_account_period: #{e}"
end
```

#### Using the create_group_account_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountPeriodVBAResponse>, Integer, Hash)> create_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period)

```ruby
begin
  # Create GroupAccountPeriod
  data, status_code, headers = api_instance.create_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->create_group_account_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_period** | [**GroupAccountPeriod**](GroupAccountPeriod.md) |  |  |

### Return type

[**GroupAccountPeriodVBAResponse**](GroupAccountPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_account_period

> delete_group_account_period(vbasoftware_database, group_id, group_account_period_key)

Delete GroupAccountPeriod

Deletes an GroupAccountPeriod

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_period_key = 56 # Integer | GroupAccountPeriod Key

begin
  # Delete GroupAccountPeriod
  api_instance.delete_group_account_period(vbasoftware_database, group_id, group_account_period_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->delete_group_account_period: #{e}"
end
```

#### Using the delete_group_account_period_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key)

```ruby
begin
  # Delete GroupAccountPeriod
  data, status_code, headers = api_instance.delete_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->delete_group_account_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_period_key** | **Integer** | GroupAccountPeriod Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_account_period

> <GroupAccountPeriodVBAResponse> get_group_account_period(vbasoftware_database, group_id, group_account_period_key)

Get GroupAccountPeriod

Gets GroupAccountPeriod

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_period_key = 56 # Integer | GroupAccountPeriod Key

begin
  # Get GroupAccountPeriod
  result = api_instance.get_group_account_period(vbasoftware_database, group_id, group_account_period_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->get_group_account_period: #{e}"
end
```

#### Using the get_group_account_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountPeriodVBAResponse>, Integer, Hash)> get_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key)

```ruby
begin
  # Get GroupAccountPeriod
  data, status_code, headers = api_instance.get_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->get_group_account_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_period_key** | **Integer** | GroupAccountPeriod Key |  |

### Return type

[**GroupAccountPeriodVBAResponse**](GroupAccountPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_account_period

> <GroupAccountPeriodListVBAResponse> list_group_account_period(vbasoftware_database, group_id, opts)

List GroupAccountPeriod

Lists all GroupAccountPeriod

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupAccountPeriod
  result = api_instance.list_group_account_period(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->list_group_account_period: #{e}"
end
```

#### Using the list_group_account_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountPeriodListVBAResponse>, Integer, Hash)> list_group_account_period_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupAccountPeriod
  data, status_code, headers = api_instance.list_group_account_period_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountPeriodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->list_group_account_period_with_http_info: #{e}"
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

[**GroupAccountPeriodListVBAResponse**](GroupAccountPeriodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_account_period

> <MultiCodeResponseListVBAResponse> update_batch_group_account_period(vbasoftware_database, group_id, group_account_period)

Create or Update Batch GroupAccountPeriod

Create or Update multiple GroupAccountPeriod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_period = [Vba::GroupAccountPeriod.new({group_account_period_key: 37, group_id: 'group_id_example'})] # Array<GroupAccountPeriod> | 

begin
  # Create or Update Batch GroupAccountPeriod
  result = api_instance.update_batch_group_account_period(vbasoftware_database, group_id, group_account_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->update_batch_group_account_period: #{e}"
end
```

#### Using the update_batch_group_account_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period)

```ruby
begin
  # Create or Update Batch GroupAccountPeriod
  data, status_code, headers = api_instance.update_batch_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->update_batch_group_account_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_period** | [**Array&lt;GroupAccountPeriod&gt;**](GroupAccountPeriod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_account_period

> <GroupAccountPeriodVBAResponse> update_group_account_period(vbasoftware_database, group_id, group_account_period_key, group_account_period)

Update GroupAccountPeriod

Updates a specific GroupAccountPeriod.

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

api_instance = Vba::GroupAccountPeriodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_account_period_key = 56 # Integer | GroupAccountPeriod Key
group_account_period = Vba::GroupAccountPeriod.new({group_account_period_key: 37, group_id: 'group_id_example'}) # GroupAccountPeriod | 

begin
  # Update GroupAccountPeriod
  result = api_instance.update_group_account_period(vbasoftware_database, group_id, group_account_period_key, group_account_period)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->update_group_account_period: #{e}"
end
```

#### Using the update_group_account_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAccountPeriodVBAResponse>, Integer, Hash)> update_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key, group_account_period)

```ruby
begin
  # Update GroupAccountPeriod
  data, status_code, headers = api_instance.update_group_account_period_with_http_info(vbasoftware_database, group_id, group_account_period_key, group_account_period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAccountPeriodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupAccountPeriodsApi->update_group_account_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_account_period_key** | **Integer** | GroupAccountPeriod Key |  |
| **group_account_period** | [**GroupAccountPeriod**](GroupAccountPeriod.md) |  |  |

### Return type

[**GroupAccountPeriodVBAResponse**](GroupAccountPeriodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

