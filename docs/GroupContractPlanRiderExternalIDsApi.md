# Vba::GroupContractPlanRiderExternalIDsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#create_group_contract_plan_rider_external_id) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids | Create GroupContractPlanRiderExternalID |
| [**delete_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#delete_group_contract_plan_rider_external_id) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids/{externalID} | Delete GroupContractPlanRiderExternalID |
| [**get_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#get_group_contract_plan_rider_external_id) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids/{externalID} | Get GroupContractPlanRiderExternalID |
| [**list_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#list_group_contract_plan_rider_external_id) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids | List GroupContractPlanRiderExternalID |
| [**update_batch_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#update_batch_group_contract_plan_rider_external_id) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids-batch | Create or Update Batch GroupContractPlanRiderExternalID |
| [**update_group_contract_plan_rider_external_id**](GroupContractPlanRiderExternalIDsApi.md#update_group_contract_plan_rider_external_id) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/plans/{planID}/riders/{benefitCode}/external-ids/{externalID} | Update GroupContractPlanRiderExternalID |


## create_group_contract_plan_rider_external_id

> <GroupContractPlanRiderExternalIDVBAResponse> create_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)

Create GroupContractPlanRiderExternalID

Creates a new GroupContractPlanRiderExternalID

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
group_contract_plan_rider_external_id = Vba::GroupContractPlanRiderExternalID.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', external_id: 'external_id_example'}) # GroupContractPlanRiderExternalID | 

begin
  # Create GroupContractPlanRiderExternalID
  result = api_instance.create_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->create_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the create_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderExternalIDVBAResponse>, Integer, Hash)> create_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)

```ruby
begin
  # Create GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.create_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->create_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **group_contract_plan_rider_external_id** | [**GroupContractPlanRiderExternalID**](GroupContractPlanRiderExternalID.md) |  |  |

### Return type

[**GroupContractPlanRiderExternalIDVBAResponse**](GroupContractPlanRiderExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract_plan_rider_external_id

> delete_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)

Delete GroupContractPlanRiderExternalID

Deletes an GroupContractPlanRiderExternalID

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
external_id = 'external_id_example' # String | External ID

begin
  # Delete GroupContractPlanRiderExternalID
  api_instance.delete_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->delete_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the delete_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)

```ruby
begin
  # Delete GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.delete_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->delete_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **external_id** | **String** | External ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract_plan_rider_external_id

> <GroupContractPlanRiderExternalIDVBAResponse> get_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)

Get GroupContractPlanRiderExternalID

Gets GroupContractPlanRiderExternalID

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
external_id = 'external_id_example' # String | External ID

begin
  # Get GroupContractPlanRiderExternalID
  result = api_instance.get_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->get_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the get_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderExternalIDVBAResponse>, Integer, Hash)> get_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)

```ruby
begin
  # Get GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.get_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->get_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **external_id** | **String** | External ID |  |

### Return type

[**GroupContractPlanRiderExternalIDVBAResponse**](GroupContractPlanRiderExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract_plan_rider_external_id

> <GroupContractPlanRiderExternalIDListVBAResponse> list_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, opts)

List GroupContractPlanRiderExternalID

Lists all GroupContractPlanRiderExternalID for the given groupID and divisionID and coverageStart and planID and benefitCode

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupContractPlanRiderExternalID
  result = api_instance.list_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->list_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the list_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderExternalIDListVBAResponse>, Integer, Hash)> list_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, opts)

```ruby
begin
  # List GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.list_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderExternalIDListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->list_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupContractPlanRiderExternalIDListVBAResponse**](GroupContractPlanRiderExternalIDListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract_plan_rider_external_id

> <MultiCodeResponseListVBAResponse> update_batch_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)

Create or Update Batch GroupContractPlanRiderExternalID

Create or Update multiple GroupContractPlanRiderExternalID at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
group_contract_plan_rider_external_id = [Vba::GroupContractPlanRiderExternalID.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', external_id: 'external_id_example'})] # Array<GroupContractPlanRiderExternalID> | 

begin
  # Create or Update Batch GroupContractPlanRiderExternalID
  result = api_instance.update_batch_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->update_batch_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the update_batch_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)

```ruby
begin
  # Create or Update Batch GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.update_batch_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, group_contract_plan_rider_external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->update_batch_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **group_contract_plan_rider_external_id** | [**Array&lt;GroupContractPlanRiderExternalID&gt;**](GroupContractPlanRiderExternalID.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract_plan_rider_external_id

> <GroupContractPlanRiderExternalIDVBAResponse> update_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id, group_contract_plan_rider_external_id)

Update GroupContractPlanRiderExternalID

Updates a specific GroupContractPlanRiderExternalID.

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

api_instance = Vba::GroupContractPlanRiderExternalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
external_id = 'external_id_example' # String | External ID
group_contract_plan_rider_external_id = Vba::GroupContractPlanRiderExternalID.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', external_id: 'external_id_example'}) # GroupContractPlanRiderExternalID | 

begin
  # Update GroupContractPlanRiderExternalID
  result = api_instance.update_group_contract_plan_rider_external_id(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id, group_contract_plan_rider_external_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->update_group_contract_plan_rider_external_id: #{e}"
end
```

#### Using the update_group_contract_plan_rider_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractPlanRiderExternalIDVBAResponse>, Integer, Hash)> update_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id, group_contract_plan_rider_external_id)

```ruby
begin
  # Update GroupContractPlanRiderExternalID
  data, status_code, headers = api_instance.update_group_contract_plan_rider_external_id_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, plan_id, benefit_code, external_id, group_contract_plan_rider_external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractPlanRiderExternalIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractPlanRiderExternalIDsApi->update_group_contract_plan_rider_external_id_with_http_info: #{e}"
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
| **external_id** | **String** | External ID |  |
| **group_contract_plan_rider_external_id** | [**GroupContractPlanRiderExternalID**](GroupContractPlanRiderExternalID.md) |  |  |

### Return type

[**GroupContractPlanRiderExternalIDVBAResponse**](GroupContractPlanRiderExternalIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

