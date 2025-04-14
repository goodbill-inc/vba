# Vba::GroupContractPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cascade_update_group_contract_plan**](GroupContractPlansApi.md#cascade_update_group_contract_plan) | **POST** /group-contract-plan-cascade-update/{planId} | Cascade Plan Update to GroupContractPlan |
| [**create_group_contract_plan**](GroupContractPlansApi.md#create_group_contract_plan) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans | Create GroupContractPlan |
| [**delete_group_contract_plan**](GroupContractPlansApi.md#delete_group_contract_plan) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID} | Delete GroupContractPlan |
| [**get_group_contract_plan**](GroupContractPlansApi.md#get_group_contract_plan) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID} | Get GroupContractPlan |
| [**list_group_contract_plan**](GroupContractPlansApi.md#list_group_contract_plan) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans | List GroupContractPlan |
| [**list_plan_no_contract**](GroupContractPlansApi.md#list_plan_no_contract) | **GET** /groups/{groupID}/divisions/{divisionID}/plans-no-contracts | List Plans by Group and Division |
| [**update_batch_group_contract_plan**](GroupContractPlansApi.md#update_batch_group_contract_plan) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans-batch | Create or Update Batch GroupContractPlan |
| [**update_group_contract_plan**](GroupContractPlansApi.md#update_group_contract_plan) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID} | Update GroupContractPlan |


## cascade_update_group_contract_plan

> <GroupContractPlanVBAResponse> cascade_update_group_contract_plan(vbasoftware_database, plan_id, group_contract_plan)

Cascade Plan Update to GroupContractPlan

Using an existing GroupContractPlan, pass in a Plan ID to be updated that then updates downstream SubenrollmentPlan and MemenrollmentPlan records.

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan = Vba::GroupContractPlan.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', advice_to_pay: false, calc_interest: false, calc_interest_ach: false, calc_interest_ach_on_adj: false, calc_interest_on_adj: false, dependent_contribution_pct: false, employee_contribution_pct: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, prorate_fica: false, retirement_plan: false, tax_day_limit_type: 37, use_plan_options: false, use_salary_pct: false}) # GroupContractPlan | 

begin
  # Cascade Plan Update to GroupContractPlan
  result = api_instance.cascade_update_group_contract_plan(vbasoftware_database, plan_id, group_contract_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->cascade_update_group_contract_plan: #{e}"
end
```

#### Using the cascade_update_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanVBAResponse>, Integer, Hash)> cascade_update_group_contract_plan_with_http_info(vbasoftware_database, plan_id, group_contract_plan)

```ruby
begin
  # Cascade Plan Update to GroupContractPlan
  data, status_code, headers = api_instance.cascade_update_group_contract_plan_with_http_info(vbasoftware_database, plan_id, group_contract_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->cascade_update_group_contract_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **group_contract_plan** | [**GroupContractPlan**](GroupContractPlan.md) |  |  |

### Return type

[**GroupContractPlanVBAResponse**](GroupContractPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_group_contract_plan

> <GroupContractPlanVBAResponse> create_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)

Create GroupContractPlan

Creates a new GroupContractPlan

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_contract_plan = Vba::GroupContractPlan.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', advice_to_pay: false, calc_interest: false, calc_interest_ach: false, calc_interest_ach_on_adj: false, calc_interest_on_adj: false, dependent_contribution_pct: false, employee_contribution_pct: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, prorate_fica: false, retirement_plan: false, tax_day_limit_type: 37, use_plan_options: false, use_salary_pct: false}) # GroupContractPlan | 

begin
  # Create GroupContractPlan
  result = api_instance.create_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->create_group_contract_plan: #{e}"
end
```

#### Using the create_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanVBAResponse>, Integer, Hash)> create_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)

```ruby
begin
  # Create GroupContractPlan
  data, status_code, headers = api_instance.create_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->create_group_contract_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_contract_plan** | [**GroupContractPlan**](GroupContractPlan.md) |  |  |

### Return type

[**GroupContractPlanVBAResponse**](GroupContractPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract_plan

> delete_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id)

Delete GroupContractPlan

Deletes an GroupContractPlan

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete GroupContractPlan
  api_instance.delete_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->delete_group_contract_plan: #{e}"
end
```

#### Using the delete_group_contract_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id)

```ruby
begin
  # Delete GroupContractPlan
  data, status_code, headers = api_instance.delete_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->delete_group_contract_plan_with_http_info: #{e}"
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

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract_plan

> <GroupContractPlanVBAResponse> get_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id)

Get GroupContractPlan

Gets GroupContractPlan

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get GroupContractPlan
  result = api_instance.get_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->get_group_contract_plan: #{e}"
end
```

#### Using the get_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanVBAResponse>, Integer, Hash)> get_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id)

```ruby
begin
  # Get GroupContractPlan
  data, status_code, headers = api_instance.get_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->get_group_contract_plan_with_http_info: #{e}"
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

### Return type

[**GroupContractPlanVBAResponse**](GroupContractPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract_plan

> <GroupContractPlanListVBAResponse> list_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, opts)

List GroupContractPlan

Lists all GroupContractPlan for the given groupID and divisionID and coverageStart

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupContractPlan
  result = api_instance.list_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->list_group_contract_plan: #{e}"
end
```

#### Using the list_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanListVBAResponse>, Integer, Hash)> list_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)

```ruby
begin
  # List GroupContractPlan
  data, status_code, headers = api_instance.list_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->list_group_contract_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupContractPlanListVBAResponse**](GroupContractPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_no_contract

> <PlansListVBAResponse> list_plan_no_contract(vbasoftware_database, group_id, division_id)

List Plans by Group and Division

A unique list of Plans for all GroupContractPlan for the given groupID and divisionID

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # List Plans by Group and Division
  result = api_instance.list_plan_no_contract(vbasoftware_database, group_id, division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->list_plan_no_contract: #{e}"
end
```

#### Using the list_plan_no_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansListVBAResponse>, Integer, Hash)> list_plan_no_contract_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # List Plans by Group and Division
  data, status_code, headers = api_instance.list_plan_no_contract_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->list_plan_no_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

[**PlansListVBAResponse**](PlansListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract_plan

> <MultiCodeResponseListVBAResponse> update_batch_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)

Create or Update Batch GroupContractPlan

Create or Update multiple GroupContractPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_contract_plan = [Vba::GroupContractPlan.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', advice_to_pay: false, calc_interest: false, calc_interest_ach: false, calc_interest_ach_on_adj: false, calc_interest_on_adj: false, dependent_contribution_pct: false, employee_contribution_pct: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, prorate_fica: false, retirement_plan: false, tax_day_limit_type: 37, use_plan_options: false, use_salary_pct: false})] # Array<GroupContractPlan> | 

begin
  # Create or Update Batch GroupContractPlan
  result = api_instance.update_batch_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->update_batch_group_contract_plan: #{e}"
end
```

#### Using the update_batch_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)

```ruby
begin
  # Create or Update Batch GroupContractPlan
  data, status_code, headers = api_instance.update_batch_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->update_batch_group_contract_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_contract_plan** | [**Array&lt;GroupContractPlan&gt;**](GroupContractPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract_plan

> <GroupContractPlanVBAResponse> update_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan)

Update GroupContractPlan

Updates a specific GroupContractPlan.

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

api_instance = Vba::GroupContractPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan = Vba::GroupContractPlan.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', advice_to_pay: false, calc_interest: false, calc_interest_ach: false, calc_interest_ach_on_adj: false, calc_interest_on_adj: false, dependent_contribution_pct: false, employee_contribution_pct: false, exempt_federal: false, exempt_medicare: false, exempt_soc_sec: false, exempt_state: false, prorate_fica: false, retirement_plan: false, tax_day_limit_type: 37, use_plan_options: false, use_salary_pct: false}) # GroupContractPlan | 

begin
  # Update GroupContractPlan
  result = api_instance.update_group_contract_plan(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->update_group_contract_plan: #{e}"
end
```

#### Using the update_group_contract_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanVBAResponse>, Integer, Hash)> update_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan)

```ruby
begin
  # Update GroupContractPlan
  data, status_code, headers = api_instance.update_group_contract_plan_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlansApi->update_group_contract_plan_with_http_info: #{e}"
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
| **group_contract_plan** | [**GroupContractPlan**](GroupContractPlan.md) |  |  |

### Return type

[**GroupContractPlanVBAResponse**](GroupContractPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

