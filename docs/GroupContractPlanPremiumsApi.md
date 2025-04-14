# Vba::GroupContractPlanPremiumsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#create_group_contract_plan_premium) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums | Create GroupContractPlanPremium |
| [**delete_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#delete_group_contract_plan_premium) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums/{groupContractPlanPremiumKey} | Delete GroupContractPlanPremium |
| [**get_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#get_group_contract_plan_premium) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums/{groupContractPlanPremiumKey} | Get GroupContractPlanPremium |
| [**list_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#list_group_contract_plan_premium) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums | List GroupContractPlanPremium |
| [**update_batch_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#update_batch_group_contract_plan_premium) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums-batch | Create or Update Batch GroupContractPlanPremium |
| [**update_group_contract_plan_premium**](GroupContractPlanPremiumsApi.md#update_group_contract_plan_premium) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/premiums/{groupContractPlanPremiumKey} | Update GroupContractPlanPremium |


## create_group_contract_plan_premium

> <GroupContractPlanPremiumVBAResponse> create_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)

Create GroupContractPlanPremium

Creates a new GroupContractPlanPremium

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_premium = Vba::GroupContractPlanPremium.new({group_contract_plan_premium_key: 37, adult: false, billing_basis: 'billing_basis_example', child: false, coverage_start: Time.now, division_id: 'division_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example'}) # GroupContractPlanPremium | 

begin
  # Create GroupContractPlanPremium
  result = api_instance.create_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->create_group_contract_plan_premium: #{e}"
end
```

#### Using the create_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanPremiumVBAResponse>, Integer, Hash)> create_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)

```ruby
begin
  # Create GroupContractPlanPremium
  data, status_code, headers = api_instance.create_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanPremiumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->create_group_contract_plan_premium_with_http_info: #{e}"
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
| **group_contract_plan_premium** | [**GroupContractPlanPremium**](GroupContractPlanPremium.md) |  |  |

### Return type

[**GroupContractPlanPremiumVBAResponse**](GroupContractPlanPremiumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract_plan_premium

> delete_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)

Delete GroupContractPlanPremium

Deletes an GroupContractPlanPremium

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_premium_key = 56 # Integer | GroupContractPlanPremium Key

begin
  # Delete GroupContractPlanPremium
  api_instance.delete_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->delete_group_contract_plan_premium: #{e}"
end
```

#### Using the delete_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)

```ruby
begin
  # Delete GroupContractPlanPremium
  data, status_code, headers = api_instance.delete_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->delete_group_contract_plan_premium_with_http_info: #{e}"
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
| **group_contract_plan_premium_key** | **Integer** | GroupContractPlanPremium Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract_plan_premium

> <GroupContractPlanPremiumVBAResponse> get_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)

Get GroupContractPlanPremium

Gets GroupContractPlanPremium

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_premium_key = 56 # Integer | GroupContractPlanPremium Key

begin
  # Get GroupContractPlanPremium
  result = api_instance.get_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->get_group_contract_plan_premium: #{e}"
end
```

#### Using the get_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanPremiumVBAResponse>, Integer, Hash)> get_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)

```ruby
begin
  # Get GroupContractPlanPremium
  data, status_code, headers = api_instance.get_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanPremiumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->get_group_contract_plan_premium_with_http_info: #{e}"
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
| **group_contract_plan_premium_key** | **Integer** | GroupContractPlanPremium Key |  |

### Return type

[**GroupContractPlanPremiumVBAResponse**](GroupContractPlanPremiumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract_plan_premium

> <GroupContractPlanPremiumListVBAResponse> list_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)

List GroupContractPlanPremium

Lists all GroupContractPlanPremium for the given groupID and divisionID and coverageStart and planID

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
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
  # List GroupContractPlanPremium
  result = api_instance.list_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->list_group_contract_plan_premium: #{e}"
end
```

#### Using the list_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanPremiumListVBAResponse>, Integer, Hash)> list_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)

```ruby
begin
  # List GroupContractPlanPremium
  data, status_code, headers = api_instance.list_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanPremiumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->list_group_contract_plan_premium_with_http_info: #{e}"
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

[**GroupContractPlanPremiumListVBAResponse**](GroupContractPlanPremiumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract_plan_premium

> <MultiCodeResponseListVBAResponse> update_batch_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)

Create or Update Batch GroupContractPlanPremium

Create or Update multiple GroupContractPlanPremium at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_premium = [Vba::GroupContractPlanPremium.new({group_contract_plan_premium_key: 37, adult: false, billing_basis: 'billing_basis_example', child: false, coverage_start: Time.now, division_id: 'division_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example'})] # Array<GroupContractPlanPremium> | 

begin
  # Create or Update Batch GroupContractPlanPremium
  result = api_instance.update_batch_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->update_batch_group_contract_plan_premium: #{e}"
end
```

#### Using the update_batch_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)

```ruby
begin
  # Create or Update Batch GroupContractPlanPremium
  data, status_code, headers = api_instance.update_batch_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->update_batch_group_contract_plan_premium_with_http_info: #{e}"
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
| **group_contract_plan_premium** | [**Array&lt;GroupContractPlanPremium&gt;**](GroupContractPlanPremium.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract_plan_premium

> <GroupContractPlanPremiumVBAResponse> update_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key, group_contract_plan_premium)

Update GroupContractPlanPremium

Updates a specific GroupContractPlanPremium.

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

api_instance = Vba::GroupContractPlanPremiumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
group_contract_plan_premium_key = 56 # Integer | GroupContractPlanPremium Key
group_contract_plan_premium = Vba::GroupContractPlanPremium.new({group_contract_plan_premium_key: 37, adult: false, billing_basis: 'billing_basis_example', child: false, coverage_start: Time.now, division_id: 'division_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example'}) # GroupContractPlanPremium | 

begin
  # Update GroupContractPlanPremium
  result = api_instance.update_group_contract_plan_premium(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key, group_contract_plan_premium)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->update_group_contract_plan_premium: #{e}"
end
```

#### Using the update_group_contract_plan_premium_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanPremiumVBAResponse>, Integer, Hash)> update_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key, group_contract_plan_premium)

```ruby
begin
  # Update GroupContractPlanPremium
  data, status_code, headers = api_instance.update_group_contract_plan_premium_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, group_contract_plan_premium_key, group_contract_plan_premium)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanPremiumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanPremiumsApi->update_group_contract_plan_premium_with_http_info: #{e}"
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
| **group_contract_plan_premium_key** | **Integer** | GroupContractPlanPremium Key |  |
| **group_contract_plan_premium** | [**GroupContractPlanPremium**](GroupContractPlanPremium.md) |  |  |

### Return type

[**GroupContractPlanPremiumVBAResponse**](GroupContractPlanPremiumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

