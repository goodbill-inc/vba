# Vba::GroupPlanYearsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_plan_year**](GroupPlanYearsApi.md#create_group_plan_year) | **POST** /groups/{groupID}/divisions/{divisionID}/plan-years | Create GroupPlanYear |
| [**delete_group_plan_year**](GroupPlanYearsApi.md#delete_group_plan_year) | **DELETE** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear} | Delete GroupPlanYear |
| [**get_group_plan_year**](GroupPlanYearsApi.md#get_group_plan_year) | **GET** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear} | Get GroupPlanYear |
| [**list_group_plan_year**](GroupPlanYearsApi.md#list_group_plan_year) | **GET** /groups/{groupID}/divisions/{divisionID}/plan-years | List GroupPlanYear |
| [**update_batch_group_plan_year**](GroupPlanYearsApi.md#update_batch_group_plan_year) | **PUT** /groups/{groupID}/divisions/{divisionID}/plan-years-batch | Create or Update Batch GroupPlanYear |
| [**update_group_plan_year**](GroupPlanYearsApi.md#update_group_plan_year) | **PUT** /groups/{groupID}/divisions/{divisionID}/plan-years/{planYear} | Update GroupPlanYear |


## create_group_plan_year

> <GroupPlanYearVBAResponse> create_group_plan_year(vbasoftware_database, group_id, division_id, group_plan_year)

Create GroupPlanYear

Creates a new GroupPlanYear

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_plan_year = Vba::GroupPlanYear.new({group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', qtr4_accum: false, qtr4_deductible: false, qtr4_member: false, qtr4_out_of_pocket: false, qtr4_subscriber: false}) # GroupPlanYear | 

begin
  # Create GroupPlanYear
  result = api_instance.create_group_plan_year(vbasoftware_database, group_id, division_id, group_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->create_group_plan_year: #{e}"
end
```

#### Using the create_group_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearVBAResponse>, Integer, Hash)> create_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, group_plan_year)

```ruby
begin
  # Create GroupPlanYear
  data, status_code, headers = api_instance.create_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, group_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->create_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_plan_year** | [**GroupPlanYear**](GroupPlanYear.md) |  |  |

### Return type

[**GroupPlanYearVBAResponse**](GroupPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_plan_year

> delete_group_plan_year(vbasoftware_database, group_id, division_id, plan_year)

Delete GroupPlanYear

Deletes an GroupPlanYear

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year

begin
  # Delete GroupPlanYear
  api_instance.delete_group_plan_year(vbasoftware_database, group_id, division_id, plan_year)
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->delete_group_plan_year: #{e}"
end
```

#### Using the delete_group_plan_year_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year)

```ruby
begin
  # Delete GroupPlanYear
  data, status_code, headers = api_instance.delete_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->delete_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_plan_year

> <GroupPlanYearVBAResponse> get_group_plan_year(vbasoftware_database, group_id, division_id, plan_year)

Get GroupPlanYear

Gets GroupPlanYear

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year

begin
  # Get GroupPlanYear
  result = api_instance.get_group_plan_year(vbasoftware_database, group_id, division_id, plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->get_group_plan_year: #{e}"
end
```

#### Using the get_group_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearVBAResponse>, Integer, Hash)> get_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year)

```ruby
begin
  # Get GroupPlanYear
  data, status_code, headers = api_instance.get_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->get_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |

### Return type

[**GroupPlanYearVBAResponse**](GroupPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_plan_year

> <GroupPlanYearListVBAResponse> list_group_plan_year(vbasoftware_database, group_id, division_id, opts)

List GroupPlanYear

Lists all GroupPlanYear for the given groupID and divisionID

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPlanYear
  result = api_instance.list_group_plan_year(vbasoftware_database, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->list_group_plan_year: #{e}"
end
```

#### Using the list_group_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearListVBAResponse>, Integer, Hash)> list_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, opts)

```ruby
begin
  # List GroupPlanYear
  data, status_code, headers = api_instance.list_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->list_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPlanYearListVBAResponse**](GroupPlanYearListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_plan_year

> <MultiCodeResponseListVBAResponse> update_batch_group_plan_year(vbasoftware_database, group_id, division_id, group_plan_year)

Create or Update Batch GroupPlanYear

Create or Update multiple GroupPlanYear at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_plan_year = [Vba::GroupPlanYear.new({group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', qtr4_accum: false, qtr4_deductible: false, qtr4_member: false, qtr4_out_of_pocket: false, qtr4_subscriber: false})] # Array<GroupPlanYear> | 

begin
  # Create or Update Batch GroupPlanYear
  result = api_instance.update_batch_group_plan_year(vbasoftware_database, group_id, division_id, group_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->update_batch_group_plan_year: #{e}"
end
```

#### Using the update_batch_group_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, group_plan_year)

```ruby
begin
  # Create or Update Batch GroupPlanYear
  data, status_code, headers = api_instance.update_batch_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, group_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->update_batch_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_plan_year** | [**Array&lt;GroupPlanYear&gt;**](GroupPlanYear.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_plan_year

> <GroupPlanYearVBAResponse> update_group_plan_year(vbasoftware_database, group_id, division_id, plan_year, group_plan_year)

Update GroupPlanYear

Updates a specific GroupPlanYear.

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

api_instance = Vba::GroupPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
group_plan_year = Vba::GroupPlanYear.new({group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', qtr4_accum: false, qtr4_deductible: false, qtr4_member: false, qtr4_out_of_pocket: false, qtr4_subscriber: false}) # GroupPlanYear | 

begin
  # Update GroupPlanYear
  result = api_instance.update_group_plan_year(vbasoftware_database, group_id, division_id, plan_year, group_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->update_group_plan_year: #{e}"
end
```

#### Using the update_group_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearVBAResponse>, Integer, Hash)> update_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year)

```ruby
begin
  # Update GroupPlanYear
  data, status_code, headers = api_instance.update_group_plan_year_with_http_info(vbasoftware_database, group_id, division_id, plan_year, group_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPlanYearsApi->update_group_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **group_plan_year** | [**GroupPlanYear**](GroupPlanYear.md) |  |  |

### Return type

[**GroupPlanYearVBAResponse**](GroupPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

