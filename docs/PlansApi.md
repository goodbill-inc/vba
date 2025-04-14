# Vba::PlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_plan**](PlansApi.md#copy_plan) | **POST** /plans-copy | Copy Plan |
| [**create_plans**](PlansApi.md#create_plans) | **POST** /plans | Create Plan |
| [**delete_plans**](PlansApi.md#delete_plans) | **DELETE** /plans/{planID} | Delete Plans |
| [**get_plans**](PlansApi.md#get_plans) | **GET** /plans/{planID} | Get Plan |
| [**list_plans**](PlansApi.md#list_plans) | **GET** /plans | List Plans |
| [**update_batch_plans**](PlansApi.md#update_batch_plans) | **PUT** /plans-batch | Create or Update Batch Plans |
| [**update_plans**](PlansApi.md#update_plans) | **PUT** /plans/{planID} | Update Plans |


## copy_plan

> <PlansVBAResponse> copy_plan(vbasoftware_database, plan_copy)

Copy Plan

Copies an existing plan.  This copy can be to a completely new Plan ID, or to overwrite an existing Plan ID.

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_copy = Vba::PlanCopy.new # PlanCopy | 

begin
  # Copy Plan
  result = api_instance.copy_plan(vbasoftware_database, plan_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->copy_plan: #{e}"
end
```

#### Using the copy_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansVBAResponse>, Integer, Hash)> copy_plan_with_http_info(vbasoftware_database, plan_copy)

```ruby
begin
  # Copy Plan
  data, status_code, headers = api_instance.copy_plan_with_http_info(vbasoftware_database, plan_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->copy_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_copy** | [**PlanCopy**](PlanCopy.md) |  |  |

### Return type

[**PlansVBAResponse**](PlansVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_plans

> <PlansVBAResponse> create_plans(vbasoftware_database, plans)

Create Plan

Creates a new Plan

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plans = Vba::Plans.new({plan_id: 'plan_id_example', auto_create_flex: false, capitated: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, context4_plan_price_not_greater_billed_fg: false, ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, family_level_co_ins: false, family_level_ded: false, family_level_oop: false, flex_advance_fund: false, lt_c_apply_elimination_period: false, lt_c_apply_waiver_of_premium: false, lt_c_elimination_period_per_claim: false, lt_c_lifetime_max_joint_policy: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, remove_member_amount_edit: false, use_cob_savings: false}) # Plans | 

begin
  # Create Plan
  result = api_instance.create_plans(vbasoftware_database, plans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->create_plans: #{e}"
end
```

#### Using the create_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansVBAResponse>, Integer, Hash)> create_plans_with_http_info(vbasoftware_database, plans)

```ruby
begin
  # Create Plan
  data, status_code, headers = api_instance.create_plans_with_http_info(vbasoftware_database, plans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->create_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plans** | [**Plans**](Plans.md) |  |  |

### Return type

[**PlansVBAResponse**](PlansVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plans

> delete_plans(vbasoftware_database, plan_id)

Delete Plans

Deletes an Plans

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete Plans
  api_instance.delete_plans(vbasoftware_database, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->delete_plans: #{e}"
end
```

#### Using the delete_plans_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plans_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # Delete Plans
  data, status_code, headers = api_instance.delete_plans_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->delete_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plans

> <PlansVBAResponse> get_plans(vbasoftware_database, plan_id)

Get Plan

Gets a specific Plan

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get Plan
  result = api_instance.get_plans(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->get_plans: #{e}"
end
```

#### Using the get_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansVBAResponse>, Integer, Hash)> get_plans_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # Get Plan
  data, status_code, headers = api_instance.get_plans_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->get_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlansVBAResponse**](PlansVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plans

> <PlansListVBAResponse> list_plans(vbasoftware_database, opts)

List Plans

Lists all Plans with option to filter by Plan Type.

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  plan_type: 'plan_type_example' # String | Plan Type
}

begin
  # List Plans
  result = api_instance.list_plans(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->list_plans: #{e}"
end
```

#### Using the list_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansListVBAResponse>, Integer, Hash)> list_plans_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Plans
  data, status_code, headers = api_instance.list_plans_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->list_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | **String** | Plan Type | [optional] |

### Return type

[**PlansListVBAResponse**](PlansListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plans

> <MultiCodeResponseListVBAResponse> update_batch_plans(vbasoftware_database, plans)

Create or Update Batch Plans

Create or Update multiple Plans at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plans = [Vba::Plans.new({plan_id: 'plan_id_example', auto_create_flex: false, capitated: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, context4_plan_price_not_greater_billed_fg: false, ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, family_level_co_ins: false, family_level_ded: false, family_level_oop: false, flex_advance_fund: false, lt_c_apply_elimination_period: false, lt_c_apply_waiver_of_premium: false, lt_c_elimination_period_per_claim: false, lt_c_lifetime_max_joint_policy: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, remove_member_amount_edit: false, use_cob_savings: false})] # Array<Plans> | 

begin
  # Create or Update Batch Plans
  result = api_instance.update_batch_plans(vbasoftware_database, plans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->update_batch_plans: #{e}"
end
```

#### Using the update_batch_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plans_with_http_info(vbasoftware_database, plans)

```ruby
begin
  # Create or Update Batch Plans
  data, status_code, headers = api_instance.update_batch_plans_with_http_info(vbasoftware_database, plans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->update_batch_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plans** | [**Array&lt;Plans&gt;**](Plans.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plans

> <PlansVBAResponse> update_plans(vbasoftware_database, plan_id, plans)

Update Plans

Updates a specific Plans.

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

api_instance = Vba::PlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plans = Vba::Plans.new({plan_id: 'plan_id_example', auto_create_flex: false, capitated: false, co_ins_in_to_out: false, co_ins_out_to_in: false, co_ins_out_to_in_limit: false, context4_plan_price_not_greater_billed_fg: false, ded_in_to_out: false, ded_out_to_in: false, ded_out_to_in_limit: false, family_level_co_ins: false, family_level_ded: false, family_level_oop: false, flex_advance_fund: false, lt_c_apply_elimination_period: false, lt_c_apply_waiver_of_premium: false, lt_c_elimination_period_per_claim: false, lt_c_lifetime_max_joint_policy: false, oo_p_in_to_out: false, oo_p_out_to_in: false, oo_p_out_to_in_limit: false, remove_member_amount_edit: false, use_cob_savings: false}) # Plans | 

begin
  # Update Plans
  result = api_instance.update_plans(vbasoftware_database, plan_id, plans)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->update_plans: #{e}"
end
```

#### Using the update_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansVBAResponse>, Integer, Hash)> update_plans_with_http_info(vbasoftware_database, plan_id, plans)

```ruby
begin
  # Update Plans
  data, status_code, headers = api_instance.update_plans_with_http_info(vbasoftware_database, plan_id, plans)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlansApi->update_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plans** | [**Plans**](Plans.md) |  |  |

### Return type

[**PlansVBAResponse**](PlansVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

