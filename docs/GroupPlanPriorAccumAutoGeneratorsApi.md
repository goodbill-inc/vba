# Vba::GroupPlanPriorAccumAutoGeneratorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#create_group_plan_year_auto_prior_accum) | **POST** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators | Create GroupPlanYearAutoPriorAccum |
| [**delete_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#delete_group_plan_year_auto_prior_accum) | **DELETE** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators/{groupPlanYearAutoPriorAccumKey} | Delete GroupPlanYearAutoPriorAccum |
| [**get_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#get_group_plan_year_auto_prior_accum) | **GET** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators/{groupPlanYearAutoPriorAccumKey} | Get GroupPlanYearAutoPriorAccum |
| [**list_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#list_group_plan_year_auto_prior_accum) | **GET** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators | List GroupPlanYearAutoPriorAccum |
| [**update_batch_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#update_batch_group_plan_year_auto_prior_accum) | **PUT** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators-batch | Create or Update Batch GroupPlanYearAutoPriorAccum |
| [**update_group_plan_year_auto_prior_accum**](GroupPlanPriorAccumAutoGeneratorsApi.md#update_group_plan_year_auto_prior_accum) | **PUT** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear}/prior-accum-auto-generators/{groupPlanYearAutoPriorAccumKey} | Update GroupPlanYearAutoPriorAccum |


## create_group_plan_year_auto_prior_accum

> <GroupPlanYearAutoPriorAccumVBAResponse> create_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)

Create GroupPlanYearAutoPriorAccum

Creates a new GroupPlanYearAutoPriorAccum

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year_auto_prior_accum = Vba::GroupPlanYearAutoPriorAccum.new({group_plan_year_auto_prior_accum_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', prior_accum_plan_type: 'prior_accum_plan_type_example'}) # GroupPlanYearAutoPriorAccum | 

begin
  # Create GroupPlanYearAutoPriorAccum
  result = api_instance.create_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->create_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the create_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearAutoPriorAccumVBAResponse>, Integer, Hash)> create_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)

```ruby
begin
  # Create GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.create_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearAutoPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->create_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year_auto_prior_accum** | [**GroupPlanYearAutoPriorAccum**](GroupPlanYearAutoPriorAccum.md) |  |  |

### Return type

[**GroupPlanYearAutoPriorAccumVBAResponse**](GroupPlanYearAutoPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_plan_year_auto_prior_accum

> delete_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)

Delete GroupPlanYearAutoPriorAccum

Deletes an GroupPlanYearAutoPriorAccum

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year_auto_prior_accum_key = 56 # Integer | GroupPlanYearAutoPriorAccum Key

begin
  # Delete GroupPlanYearAutoPriorAccum
  api_instance.delete_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->delete_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the delete_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)

```ruby
begin
  # Delete GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.delete_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->delete_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year_auto_prior_accum_key** | **Integer** | GroupPlanYearAutoPriorAccum Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_plan_year_auto_prior_accum

> <GroupPlanYearAutoPriorAccumVBAResponse> get_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)

Get GroupPlanYearAutoPriorAccum

Gets GroupPlanYearAutoPriorAccum

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year_auto_prior_accum_key = 56 # Integer | GroupPlanYearAutoPriorAccum Key

begin
  # Get GroupPlanYearAutoPriorAccum
  result = api_instance.get_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->get_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the get_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearAutoPriorAccumVBAResponse>, Integer, Hash)> get_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)

```ruby
begin
  # Get GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.get_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearAutoPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->get_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year_auto_prior_accum_key** | **Integer** | GroupPlanYearAutoPriorAccum Key |  |

### Return type

[**GroupPlanYearAutoPriorAccumVBAResponse**](GroupPlanYearAutoPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_plan_year_auto_prior_accum

> <GroupPlanYearAutoPriorAccumListVBAResponse> list_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, opts)

List GroupPlanYearAutoPriorAccum

Lists all GroupPlanYearAutoPriorAccum for the given groupID and divisionID and planYear

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPlanYearAutoPriorAccum
  result = api_instance.list_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->list_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the list_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearAutoPriorAccumListVBAResponse>, Integer, Hash)> list_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, opts)

```ruby
begin
  # List GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.list_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearAutoPriorAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->list_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPlanYearAutoPriorAccumListVBAResponse**](GroupPlanYearAutoPriorAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_plan_year_auto_prior_accum

> <MultiCodeResponseListVBAResponse> update_batch_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)

Create or Update Batch GroupPlanYearAutoPriorAccum

Create or Update multiple GroupPlanYearAutoPriorAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year_auto_prior_accum = [Vba::GroupPlanYearAutoPriorAccum.new({group_plan_year_auto_prior_accum_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', prior_accum_plan_type: 'prior_accum_plan_type_example'})] # Array<GroupPlanYearAutoPriorAccum> | 

begin
  # Create or Update Batch GroupPlanYearAutoPriorAccum
  result = api_instance.update_batch_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->update_batch_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the update_batch_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)

```ruby
begin
  # Create or Update Batch GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.update_batch_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->update_batch_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year_auto_prior_accum** | [**Array&lt;GroupPlanYearAutoPriorAccum&gt;**](GroupPlanYearAutoPriorAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_plan_year_auto_prior_accum

> <GroupPlanYearAutoPriorAccumVBAResponse> update_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key, group_plan_year_auto_prior_accum)

Update GroupPlanYearAutoPriorAccum

Updates a specific GroupPlanYearAutoPriorAccum.

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

api_instance = Vba::GroupPlanPriorAccumAutoGeneratorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year_auto_prior_accum_key = 56 # Integer | GroupPlanYearAutoPriorAccum Key
group_plan_year_auto_prior_accum = Vba::GroupPlanYearAutoPriorAccum.new({group_plan_year_auto_prior_accum_key: 37, division_id: 'division_id_example', group_id: 'group_id_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', prior_accum_plan_type: 'prior_accum_plan_type_example'}) # GroupPlanYearAutoPriorAccum | 

begin
  # Update GroupPlanYearAutoPriorAccum
  result = api_instance.update_group_plan_year_auto_prior_accum(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key, group_plan_year_auto_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->update_group_plan_year_auto_prior_accum: #{e}"
end
```

#### Using the update_group_plan_year_auto_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearAutoPriorAccumVBAResponse>, Integer, Hash)> update_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key, group_plan_year_auto_prior_accum)

```ruby
begin
  # Update GroupPlanYearAutoPriorAccum
  data, status_code, headers = api_instance.update_group_plan_year_auto_prior_accum_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year_auto_prior_accum_key, group_plan_year_auto_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearAutoPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanPriorAccumAutoGeneratorsApi->update_group_plan_year_auto_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year_auto_prior_accum_key** | **Integer** | GroupPlanYearAutoPriorAccum Key |  |
| **group_plan_year_auto_prior_accum** | [**GroupPlanYearAutoPriorAccum**](GroupPlanYearAutoPriorAccum.md) |  |  |

### Return type

[**GroupPlanYearAutoPriorAccumVBAResponse**](GroupPlanYearAutoPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

