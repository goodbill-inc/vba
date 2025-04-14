# Vba::GroupContractsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_next_group_contract**](GroupContractsApi.md#add_next_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/add-contract | Add Next GroupContract |
| [**change_coverage_start_group_contract**](GroupContractsApi.md#change_coverage_start_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/change-coverage-start | Change GroupContract Coverage Start |
| [**copy_network_config_to_division**](GroupContractsApi.md#copy_network_config_to_division) | **POST** /copy-network-config-to-division | Copy GroupNetwork information |
| [**copy_tier_config_to_division**](GroupContractsApi.md#copy_tier_config_to_division) | **POST** /copy-tier-config-to-division | Copy GroupContractTier information |
| [**create_group_contract**](GroupContractsApi.md#create_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts | Create GroupContract |
| [**delete_group_contract**](GroupContractsApi.md#delete_group_contract) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart} | Delete GroupContract |
| [**get_group_contract**](GroupContractsApi.md#get_group_contract) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart} | Get GroupContract |
| [**list_group_contract**](GroupContractsApi.md#list_group_contract) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts | List GroupContract |
| [**list_vba_group_contract**](GroupContractsApi.md#list_vba_group_contract) | **GET** /groups/{groupID}/divisions/{divisionID}/vba-contracts | List VBA_GroupContract |
| [**set_coverage_group_contract**](GroupContractsApi.md#set_coverage_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/set-coverage | Set GroupContract Coverage End |
| [**update_batch_group_contract**](GroupContractsApi.md#update_batch_group_contract) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts-batch | Create or Update Batch GroupContract |
| [**update_group_contract**](GroupContractsApi.md#update_group_contract) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart} | Update GroupContract |


## add_next_group_contract

> <VBAProcessVBAResponse> add_next_group_contract(vbasoftware_database, group_id, division_id, group_add_contract)

Add Next GroupContract

Adds the next GroupContract, starting the day after that existing contract. A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_add_contract = Vba::GroupAddContract.new # GroupAddContract | 

begin
  # Add Next GroupContract
  result = api_instance.add_next_group_contract(vbasoftware_database, group_id, division_id, group_add_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->add_next_group_contract: #{e}"
end
```

#### Using the add_next_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> add_next_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_add_contract)

```ruby
begin
  # Add Next GroupContract
  data, status_code, headers = api_instance.add_next_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_add_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->add_next_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_add_contract** | [**GroupAddContract**](GroupAddContract.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## change_coverage_start_group_contract

> <VBAProcessVBAResponse> change_coverage_start_group_contract(vbasoftware_database, group_id, division_id, group_change_coverage_start)

Change GroupContract Coverage Start

Changes the Coverage Start for a contract. A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_change_coverage_start = Vba::GroupChangeCoverageStart.new # GroupChangeCoverageStart | 

begin
  # Change GroupContract Coverage Start
  result = api_instance.change_coverage_start_group_contract(vbasoftware_database, group_id, division_id, group_change_coverage_start)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->change_coverage_start_group_contract: #{e}"
end
```

#### Using the change_coverage_start_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> change_coverage_start_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_change_coverage_start)

```ruby
begin
  # Change GroupContract Coverage Start
  data, status_code, headers = api_instance.change_coverage_start_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_change_coverage_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->change_coverage_start_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_change_coverage_start** | [**GroupChangeCoverageStart**](GroupChangeCoverageStart.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## copy_network_config_to_division

> copy_network_config_to_division(vbasoftware_database, group_contract_copy_config)

Copy GroupNetwork information

Take an existing configuration of GroupNetwork and copy that to any number of destination Divisions with the same Contract.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_contract_copy_config = Vba::GroupContractCopyConfig.new # GroupContractCopyConfig | 

begin
  # Copy GroupNetwork information
  api_instance.copy_network_config_to_division(vbasoftware_database, group_contract_copy_config)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->copy_network_config_to_division: #{e}"
end
```

#### Using the copy_network_config_to_division_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_network_config_to_division_with_http_info(vbasoftware_database, group_contract_copy_config)

```ruby
begin
  # Copy GroupNetwork information
  data, status_code, headers = api_instance.copy_network_config_to_division_with_http_info(vbasoftware_database, group_contract_copy_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->copy_network_config_to_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_contract_copy_config** | [**GroupContractCopyConfig**](GroupContractCopyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## copy_tier_config_to_division

> copy_tier_config_to_division(vbasoftware_database, group_contract_copy_config)

Copy GroupContractTier information

Take an existing configuration of GroupContractTier and copy that to any number of destination Divisions with the same Contract.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_contract_copy_config = Vba::GroupContractCopyConfig.new # GroupContractCopyConfig | 

begin
  # Copy GroupContractTier information
  api_instance.copy_tier_config_to_division(vbasoftware_database, group_contract_copy_config)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->copy_tier_config_to_division: #{e}"
end
```

#### Using the copy_tier_config_to_division_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> copy_tier_config_to_division_with_http_info(vbasoftware_database, group_contract_copy_config)

```ruby
begin
  # Copy GroupContractTier information
  data, status_code, headers = api_instance.copy_tier_config_to_division_with_http_info(vbasoftware_database, group_contract_copy_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->copy_tier_config_to_division_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_contract_copy_config** | [**GroupContractCopyConfig**](GroupContractCopyConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_group_contract

> <GroupContractVBAResponse> create_group_contract(vbasoftware_database, group_id, division_id, group_contract)

Create GroupContract

Creates a new GroupContract

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_contract = Vba::GroupContract.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, advice_to_pay: false, benefit_at_member: 'benefit_at_member_example', comm_pct_flag: false, max_at_subscriber: 'max_at_subscriber_example', rider_at_member: 'rider_at_member_example', salaried_benefit: false, total_at_member: 'total_at_member_example'}) # GroupContract | 

begin
  # Create GroupContract
  result = api_instance.create_group_contract(vbasoftware_database, group_id, division_id, group_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->create_group_contract: #{e}"
end
```

#### Using the create_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractVBAResponse>, Integer, Hash)> create_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)

```ruby
begin
  # Create GroupContract
  data, status_code, headers = api_instance.create_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->create_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_contract** | [**GroupContract**](GroupContract.md) |  |  |

### Return type

[**GroupContractVBAResponse**](GroupContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract

> delete_group_contract(vbasoftware_database, group_id, division_id, coverage_start)

Delete GroupContract

Deletes an GroupContract

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start

begin
  # Delete GroupContract
  api_instance.delete_group_contract(vbasoftware_database, group_id, division_id, coverage_start)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->delete_group_contract: #{e}"
end
```

#### Using the delete_group_contract_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start)

```ruby
begin
  # Delete GroupContract
  data, status_code, headers = api_instance.delete_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->delete_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract

> <GroupContractVBAResponse> get_group_contract(vbasoftware_database, group_id, division_id, coverage_start)

Get GroupContract

Gets GroupContract

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start

begin
  # Get GroupContract
  result = api_instance.get_group_contract(vbasoftware_database, group_id, division_id, coverage_start)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->get_group_contract: #{e}"
end
```

#### Using the get_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractVBAResponse>, Integer, Hash)> get_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start)

```ruby
begin
  # Get GroupContract
  data, status_code, headers = api_instance.get_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->get_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |

### Return type

[**GroupContractVBAResponse**](GroupContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract

> <GroupContractListVBAResponse> list_group_contract(vbasoftware_database, group_id, division_id, opts)

List GroupContract

Lists all GroupContract for the given groupID and divisionID

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupContract
  result = api_instance.list_group_contract(vbasoftware_database, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->list_group_contract: #{e}"
end
```

#### Using the list_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractListVBAResponse>, Integer, Hash)> list_group_contract_with_http_info(vbasoftware_database, group_id, division_id, opts)

```ruby
begin
  # List GroupContract
  data, status_code, headers = api_instance.list_group_contract_with_http_info(vbasoftware_database, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->list_group_contract_with_http_info: #{e}"
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

[**GroupContractListVBAResponse**](GroupContractListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_group_contract

> <VBAGroupContractListVBAResponse> list_vba_group_contract(vbasoftware_database, group_id, division_id)

List VBA_GroupContract

Lists all VBA_GroupContract for the given groupID and divisionID

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID

begin
  # List VBA_GroupContract
  result = api_instance.list_vba_group_contract(vbasoftware_database, group_id, division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->list_vba_group_contract: #{e}"
end
```

#### Using the list_vba_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupContractListVBAResponse>, Integer, Hash)> list_vba_group_contract_with_http_info(vbasoftware_database, group_id, division_id)

```ruby
begin
  # List VBA_GroupContract
  data, status_code, headers = api_instance.list_vba_group_contract_with_http_info(vbasoftware_database, group_id, division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupContractListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->list_vba_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |

### Return type

[**VBAGroupContractListVBAResponse**](VBAGroupContractListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## set_coverage_group_contract

> <VBAProcessVBAResponse> set_coverage_group_contract(vbasoftware_database, group_id, division_id, group_contract)

Set GroupContract Coverage End

Changes the Coverage End for a contract. A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_contract = Vba::GroupContract.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, advice_to_pay: false, benefit_at_member: 'benefit_at_member_example', comm_pct_flag: false, max_at_subscriber: 'max_at_subscriber_example', rider_at_member: 'rider_at_member_example', salaried_benefit: false, total_at_member: 'total_at_member_example'}) # GroupContract | 

begin
  # Set GroupContract Coverage End
  result = api_instance.set_coverage_group_contract(vbasoftware_database, group_id, division_id, group_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->set_coverage_group_contract: #{e}"
end
```

#### Using the set_coverage_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> set_coverage_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)

```ruby
begin
  # Set GroupContract Coverage End
  data, status_code, headers = api_instance.set_coverage_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->set_coverage_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_contract** | [**GroupContract**](GroupContract.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract

> <MultiCodeResponseListVBAResponse> update_batch_group_contract(vbasoftware_database, group_id, division_id, group_contract)

Create or Update Batch GroupContract

Create or Update multiple GroupContract at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_contract = [Vba::GroupContract.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, advice_to_pay: false, benefit_at_member: 'benefit_at_member_example', comm_pct_flag: false, max_at_subscriber: 'max_at_subscriber_example', rider_at_member: 'rider_at_member_example', salaried_benefit: false, total_at_member: 'total_at_member_example'})] # Array<GroupContract> | 

begin
  # Create or Update Batch GroupContract
  result = api_instance.update_batch_group_contract(vbasoftware_database, group_id, division_id, group_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->update_batch_group_contract: #{e}"
end
```

#### Using the update_batch_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)

```ruby
begin
  # Create or Update Batch GroupContract
  data, status_code, headers = api_instance.update_batch_group_contract_with_http_info(vbasoftware_database, group_id, division_id, group_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->update_batch_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_contract** | [**Array&lt;GroupContract&gt;**](GroupContract.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract

> <GroupContractVBAResponse> update_group_contract(vbasoftware_database, group_id, division_id, coverage_start, group_contract)

Update GroupContract

Updates a specific GroupContract.

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

api_instance = Vba::GroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_contract = Vba::GroupContract.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, advice_to_pay: false, benefit_at_member: 'benefit_at_member_example', comm_pct_flag: false, max_at_subscriber: 'max_at_subscriber_example', rider_at_member: 'rider_at_member_example', salaried_benefit: false, total_at_member: 'total_at_member_example'}) # GroupContract | 

begin
  # Update GroupContract
  result = api_instance.update_group_contract(vbasoftware_database, group_id, division_id, coverage_start, group_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->update_group_contract: #{e}"
end
```

#### Using the update_group_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractVBAResponse>, Integer, Hash)> update_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract)

```ruby
begin
  # Update GroupContract
  data, status_code, headers = api_instance.update_group_contract_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractsApi->update_group_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_contract** | [**GroupContract**](GroupContract.md) |  |  |

### Return type

[**GroupContractVBAResponse**](GroupContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

