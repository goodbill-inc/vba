# Vba::GroupContractPlanRidersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_contract_plan_rider**](GroupContractPlanRidersApi.md#create_group_contract_plan_rider) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders | Create GroupContractPlanRider |
| [**delete_group_contract_plan_rider**](GroupContractPlanRidersApi.md#delete_group_contract_plan_rider) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode} | Delete GroupContractPlanRider |
| [**get_group_contract_plan_rider**](GroupContractPlanRidersApi.md#get_group_contract_plan_rider) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode} | Get GroupContractPlanRider |
| [**list_group_contract_plan_rider**](GroupContractPlanRidersApi.md#list_group_contract_plan_rider) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders | List GroupContractPlanRider |
| [**update_batch_group_contract_plan_rider**](GroupContractPlanRidersApi.md#update_batch_group_contract_plan_rider) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders-batch | Create or Update Batch GroupContractPlanRider |
| [**update_group_contract_plan_rider**](GroupContractPlanRidersApi.md#update_group_contract_plan_rider) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode} | Update GroupContractPlanRider |


## create_group_contract_plan_rider

> <GroupContractPlanRiderVBAResponse> create_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)

Create GroupContractPlanRider

Creates a new GroupContractPlanRider

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_rider = Vba::GroupContractPlanRider.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', employee_contribution_pct: false, use_salary_pct: false}) # GroupContractPlanRider | 

begin
  # Create GroupContractPlanRider
  result = api_instance.create_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->create_group_contract_plan_rider: #{e}"
end
```

#### Using the create_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderVBAResponse>, Integer, Hash)> create_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)

```ruby
begin
  # Create GroupContractPlanRider
  data, status_code, headers = api_instance.create_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->create_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **group_contract_plan_rider** | [**GroupContractPlanRider**](GroupContractPlanRider.md) |  |  |

### Return type

[**GroupContractPlanRiderVBAResponse**](GroupContractPlanRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract_plan_rider

> delete_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)

Delete GroupContractPlanRider

Deletes an GroupContractPlanRider

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete GroupContractPlanRider
  api_instance.delete_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->delete_group_contract_plan_rider: #{e}"
end
```

#### Using the delete_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)

```ruby
begin
  # Delete GroupContractPlanRider
  data, status_code, headers = api_instance.delete_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->delete_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract_plan_rider

> <GroupContractPlanRiderVBAResponse> get_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)

Get GroupContractPlanRider

Gets GroupContractPlanRider

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get GroupContractPlanRider
  result = api_instance.get_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->get_group_contract_plan_rider: #{e}"
end
```

#### Using the get_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderVBAResponse>, Integer, Hash)> get_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)

```ruby
begin
  # Get GroupContractPlanRider
  data, status_code, headers = api_instance.get_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->get_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**GroupContractPlanRiderVBAResponse**](GroupContractPlanRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract_plan_rider

> <GroupContractPlanRiderListVBAResponse> list_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)

List GroupContractPlanRider

Lists all GroupContractPlanRider for the given groupID and divisionID and coverageStart and planID

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupContractPlanRider
  result = api_instance.list_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->list_group_contract_plan_rider: #{e}"
end
```

#### Using the list_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderListVBAResponse>, Integer, Hash)> list_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)

```ruby
begin
  # List GroupContractPlanRider
  data, status_code, headers = api_instance.list_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->list_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupContractPlanRiderListVBAResponse**](GroupContractPlanRiderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract_plan_rider

> <MultiCodeResponseListVBAResponse> update_batch_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)

Create or Update Batch GroupContractPlanRider

Create or Update multiple GroupContractPlanRider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_rider = [Vba::GroupContractPlanRider.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', employee_contribution_pct: false, use_salary_pct: false})] # Array<GroupContractPlanRider> | 

begin
  # Create or Update Batch GroupContractPlanRider
  result = api_instance.update_batch_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->update_batch_group_contract_plan_rider: #{e}"
end
```

#### Using the update_batch_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)

```ruby
begin
  # Create or Update Batch GroupContractPlanRider
  data, status_code, headers = api_instance.update_batch_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->update_batch_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **group_contract_plan_rider** | [**Array&lt;GroupContractPlanRider&gt;**](GroupContractPlanRider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract_plan_rider

> <GroupContractPlanRiderVBAResponse> update_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider)

Update GroupContractPlanRider

Updates a specific GroupContractPlanRider.

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

api_instance = Vba::GroupContractPlanRidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
group_contract_plan_rider = Vba::GroupContractPlanRider.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', employee_contribution_pct: false, use_salary_pct: false}) # GroupContractPlanRider | 

begin
  # Update GroupContractPlanRider
  result = api_instance.update_group_contract_plan_rider(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->update_group_contract_plan_rider: #{e}"
end
```

#### Using the update_group_contract_plan_rider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderVBAResponse>, Integer, Hash)> update_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider)

```ruby
begin
  # Update GroupContractPlanRider
  data, status_code, headers = api_instance.update_group_contract_plan_rider_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRidersApi->update_group_contract_plan_rider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **group_contract_plan_rider** | [**GroupContractPlanRider**](GroupContractPlanRider.md) |  |  |

### Return type

[**GroupContractPlanRiderVBAResponse**](GroupContractPlanRiderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

