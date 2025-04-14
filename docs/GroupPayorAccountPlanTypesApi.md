# Vba::GroupPayorAccountPlanTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_plan_type**](GroupPayorAccountPlanTypesApi.md#create_group_payor_account_plan_type) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/plan-types | Create GroupPayorAccountPlanType |
| [**delete_group_payor_account_plan_type**](GroupPayorAccountPlanTypesApi.md#delete_group_payor_account_plan_type) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/plan-types/{planType} | Delete GroupPayorAccountPlanType |
| [**get_group_payor_account_plan_type**](GroupPayorAccountPlanTypesApi.md#get_group_payor_account_plan_type) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/plan-types/{planType} | Get GroupPayorAccountPlanType |
| [**list_group_payor_account_plan_type**](GroupPayorAccountPlanTypesApi.md#list_group_payor_account_plan_type) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/plan-types | List GroupPayorAccountPlanType |
| [**update_batch_group_payor_account_plan_type**](GroupPayorAccountPlanTypesApi.md#update_batch_group_payor_account_plan_type) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/plan-types-batch | Create or Update Batch GroupPayorAccountPlanType |


## create_group_payor_account_plan_type

> <GroupPayorAccountPlanTypeVBAResponse> create_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)

Create GroupPayorAccountPlanType

Creates a new GroupPayorAccountPlanType

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

api_instance = Vba::GroupPayorAccountPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_plan_type = Vba::GroupPayorAccountPlanType.new({group_id: 'group_id_example', setting_id: 'setting_id_example', plan_type: 'plan_type_example'}) # GroupPayorAccountPlanType | 

begin
  # Create GroupPayorAccountPlanType
  result = api_instance.create_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->create_group_payor_account_plan_type: #{e}"
end
```

#### Using the create_group_payor_account_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPlanTypeVBAResponse>, Integer, Hash)> create_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)

```ruby
begin
  # Create GroupPayorAccountPlanType
  data, status_code, headers = api_instance.create_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->create_group_payor_account_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_plan_type** | [**GroupPayorAccountPlanType**](GroupPayorAccountPlanType.md) |  |  |

### Return type

[**GroupPayorAccountPlanTypeVBAResponse**](GroupPayorAccountPlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_plan_type

> delete_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, plan_type)

Delete GroupPayorAccountPlanType

Deletes an GroupPayorAccountPlanType

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

api_instance = Vba::GroupPayorAccountPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
plan_type = 'plan_type_example' # String | Plan Type

begin
  # Delete GroupPayorAccountPlanType
  api_instance.delete_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, plan_type)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->delete_group_payor_account_plan_type: #{e}"
end
```

#### Using the delete_group_payor_account_plan_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, plan_type)

```ruby
begin
  # Delete GroupPayorAccountPlanType
  data, status_code, headers = api_instance.delete_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->delete_group_payor_account_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **plan_type** | **String** | Plan Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_plan_type

> <GroupPayorAccountPlanTypeVBAResponse> get_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, plan_type)

Get GroupPayorAccountPlanType

Gets GroupPayorAccountPlanType

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

api_instance = Vba::GroupPayorAccountPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
plan_type = 'plan_type_example' # String | Plan Type

begin
  # Get GroupPayorAccountPlanType
  result = api_instance.get_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->get_group_payor_account_plan_type: #{e}"
end
```

#### Using the get_group_payor_account_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPlanTypeVBAResponse>, Integer, Hash)> get_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, plan_type)

```ruby
begin
  # Get GroupPayorAccountPlanType
  data, status_code, headers = api_instance.get_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->get_group_payor_account_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **plan_type** | **String** | Plan Type |  |

### Return type

[**GroupPayorAccountPlanTypeVBAResponse**](GroupPayorAccountPlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_plan_type

> <GroupPayorAccountPlanTypeListVBAResponse> list_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountPlanType

Lists all GroupPayorAccountPlanType for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountPlanType
  result = api_instance.list_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->list_group_payor_account_plan_type: #{e}"
end
```

#### Using the list_group_payor_account_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountPlanTypeListVBAResponse>, Integer, Hash)> list_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountPlanType
  data, status_code, headers = api_instance.list_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountPlanTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->list_group_payor_account_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountPlanTypeListVBAResponse**](GroupPayorAccountPlanTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_plan_type

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)

Create or Update Batch GroupPayorAccountPlanType

Create or Update multiple GroupPayorAccountPlanType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_plan_type = [Vba::GroupPayorAccountPlanType.new({group_id: 'group_id_example', setting_id: 'setting_id_example', plan_type: 'plan_type_example'})] # Array<GroupPayorAccountPlanType> | 

begin
  # Create or Update Batch GroupPayorAccountPlanType
  result = api_instance.update_batch_group_payor_account_plan_type(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->update_batch_group_payor_account_plan_type: #{e}"
end
```

#### Using the update_batch_group_payor_account_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)

```ruby
begin
  # Create or Update Batch GroupPayorAccountPlanType
  data, status_code, headers = api_instance.update_batch_group_payor_account_plan_type_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountPlanTypesApi->update_batch_group_payor_account_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_plan_type** | [**Array&lt;GroupPayorAccountPlanType&gt;**](GroupPayorAccountPlanType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

