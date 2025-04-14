# Vba::GroupFlexesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_flex**](GroupFlexesApi.md#create_group_flex) | **POST** /groups/{groupID}/flexes | Create GroupFlex |
| [**delete_group_flex**](GroupFlexesApi.md#delete_group_flex) | **DELETE** /groups/{groupID}/flexes/{planID}/{calendarYear} | Delete GroupFlex |
| [**get_group_flex**](GroupFlexesApi.md#get_group_flex) | **GET** /groups/{groupID}/flexes/{planID}/{calendarYear} | Get GroupFlex |
| [**list_group_flex**](GroupFlexesApi.md#list_group_flex) | **GET** /groups/{groupID}/flexes | List GroupFlex |
| [**update_batch_group_flex**](GroupFlexesApi.md#update_batch_group_flex) | **PUT** /groups/{groupID}/flexes-batch | Create or Update Batch GroupFlex |
| [**update_group_flex**](GroupFlexesApi.md#update_group_flex) | **PUT** /groups/{groupID}/flexes/{planID}/{calendarYear} | Update GroupFlex |


## create_group_flex

> <GroupFlexVBAResponse> create_group_flex(vbasoftware_database, group_id, group_flex)

Create GroupFlex

Creates a new GroupFlex

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex = Vba::GroupFlex.new({group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', contribution_pct: false, effective_date: Time.now, term_date: Time.now}) # GroupFlex | 

begin
  # Create GroupFlex
  result = api_instance.create_group_flex(vbasoftware_database, group_id, group_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->create_group_flex: #{e}"
end
```

#### Using the create_group_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexVBAResponse>, Integer, Hash)> create_group_flex_with_http_info(vbasoftware_database, group_id, group_flex)

```ruby
begin
  # Create GroupFlex
  data, status_code, headers = api_instance.create_group_flex_with_http_info(vbasoftware_database, group_id, group_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->create_group_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex** | [**GroupFlex**](GroupFlex.md) |  |  |

### Return type

[**GroupFlexVBAResponse**](GroupFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_flex

> delete_group_flex(vbasoftware_database, group_id, plan_id, calendar_year)

Delete GroupFlex

Deletes an GroupFlex

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year

begin
  # Delete GroupFlex
  api_instance.delete_group_flex(vbasoftware_database, group_id, plan_id, calendar_year)
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->delete_group_flex: #{e}"
end
```

#### Using the delete_group_flex_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year)

```ruby
begin
  # Delete GroupFlex
  data, status_code, headers = api_instance.delete_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->delete_group_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_flex

> <GroupFlexVBAResponse> get_group_flex(vbasoftware_database, group_id, plan_id, calendar_year)

Get GroupFlex

Gets GroupFlex

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year

begin
  # Get GroupFlex
  result = api_instance.get_group_flex(vbasoftware_database, group_id, plan_id, calendar_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->get_group_flex: #{e}"
end
```

#### Using the get_group_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexVBAResponse>, Integer, Hash)> get_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year)

```ruby
begin
  # Get GroupFlex
  data, status_code, headers = api_instance.get_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->get_group_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |

### Return type

[**GroupFlexVBAResponse**](GroupFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_flex

> <GroupFlexListVBAResponse> list_group_flex(vbasoftware_database, group_id, opts)

List GroupFlex

Lists all GroupFlex for the given groupID

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupFlex
  result = api_instance.list_group_flex(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->list_group_flex: #{e}"
end
```

#### Using the list_group_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexListVBAResponse>, Integer, Hash)> list_group_flex_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupFlex
  data, status_code, headers = api_instance.list_group_flex_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->list_group_flex_with_http_info: #{e}"
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

[**GroupFlexListVBAResponse**](GroupFlexListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_flex

> <MultiCodeResponseListVBAResponse> update_batch_group_flex(vbasoftware_database, group_id, group_flex)

Create or Update Batch GroupFlex

Create or Update multiple GroupFlex at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex = [Vba::GroupFlex.new({group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', contribution_pct: false, effective_date: Time.now, term_date: Time.now})] # Array<GroupFlex> | 

begin
  # Create or Update Batch GroupFlex
  result = api_instance.update_batch_group_flex(vbasoftware_database, group_id, group_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->update_batch_group_flex: #{e}"
end
```

#### Using the update_batch_group_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_flex_with_http_info(vbasoftware_database, group_id, group_flex)

```ruby
begin
  # Create or Update Batch GroupFlex
  data, status_code, headers = api_instance.update_batch_group_flex_with_http_info(vbasoftware_database, group_id, group_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->update_batch_group_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex** | [**Array&lt;GroupFlex&gt;**](GroupFlex.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_flex

> <GroupFlexVBAResponse> update_group_flex(vbasoftware_database, group_id, plan_id, calendar_year, group_flex)

Update GroupFlex

Updates a specific GroupFlex.

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

api_instance = Vba::GroupFlexesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
group_flex = Vba::GroupFlex.new({group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', contribution_pct: false, effective_date: Time.now, term_date: Time.now}) # GroupFlex | 

begin
  # Update GroupFlex
  result = api_instance.update_group_flex(vbasoftware_database, group_id, plan_id, calendar_year, group_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->update_group_flex: #{e}"
end
```

#### Using the update_group_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexVBAResponse>, Integer, Hash)> update_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year, group_flex)

```ruby
begin
  # Update GroupFlex
  data, status_code, headers = api_instance.update_group_flex_with_http_info(vbasoftware_database, group_id, plan_id, calendar_year, group_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexesApi->update_group_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |
| **group_flex** | [**GroupFlex**](GroupFlex.md) |  |  |

### Return type

[**GroupFlexVBAResponse**](GroupFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

