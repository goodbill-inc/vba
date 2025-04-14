# Vba::AdvGroupContractsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_next_group_contract**](AdvGroupContractsApi.md#add_next_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/add-contract | Add Next GroupContract |
| [**change_coverage_start_group_contract**](AdvGroupContractsApi.md#change_coverage_start_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/change-coverage-start | Change GroupContract Coverage Start |
| [**copy_network_config_to_division**](AdvGroupContractsApi.md#copy_network_config_to_division) | **POST** /copy-network-config-to-division | Copy GroupNetwork information |
| [**copy_tier_config_to_division**](AdvGroupContractsApi.md#copy_tier_config_to_division) | **POST** /copy-tier-config-to-division | Copy GroupContractTier information |
| [**set_coverage_group_contract**](AdvGroupContractsApi.md#set_coverage_group_contract) | **POST** /groups/{groupID}/divisions/{divisionID}/set-coverage | Set GroupContract Coverage End |


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

api_instance = Vba::AdvGroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_add_contract = Vba::GroupAddContract.new # GroupAddContract | 

begin
  # Add Next GroupContract
  result = api_instance.add_next_group_contract(vbasoftware_database, group_id, division_id, group_add_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupContractsApi->add_next_group_contract: #{e}"
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
  puts "Error when calling AdvGroupContractsApi->add_next_group_contract_with_http_info: #{e}"
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

api_instance = Vba::AdvGroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_change_coverage_start = Vba::GroupChangeCoverageStart.new # GroupChangeCoverageStart | 

begin
  # Change GroupContract Coverage Start
  result = api_instance.change_coverage_start_group_contract(vbasoftware_database, group_id, division_id, group_change_coverage_start)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupContractsApi->change_coverage_start_group_contract: #{e}"
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
  puts "Error when calling AdvGroupContractsApi->change_coverage_start_group_contract_with_http_info: #{e}"
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

api_instance = Vba::AdvGroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_contract_copy_config = Vba::GroupContractCopyConfig.new # GroupContractCopyConfig | 

begin
  # Copy GroupNetwork information
  api_instance.copy_network_config_to_division(vbasoftware_database, group_contract_copy_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupContractsApi->copy_network_config_to_division: #{e}"
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
  puts "Error when calling AdvGroupContractsApi->copy_network_config_to_division_with_http_info: #{e}"
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

api_instance = Vba::AdvGroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_contract_copy_config = Vba::GroupContractCopyConfig.new # GroupContractCopyConfig | 

begin
  # Copy GroupContractTier information
  api_instance.copy_tier_config_to_division(vbasoftware_database, group_contract_copy_config)
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupContractsApi->copy_tier_config_to_division: #{e}"
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
  puts "Error when calling AdvGroupContractsApi->copy_tier_config_to_division_with_http_info: #{e}"
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

api_instance = Vba::AdvGroupContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_contract = Vba::GroupContract.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, advice_to_pay: false, benefit_at_member: 'benefit_at_member_example', comm_pct_flag: false, max_at_subscriber: 'max_at_subscriber_example', rider_at_member: 'rider_at_member_example', salaried_benefit: false, total_at_member: 'total_at_member_example'}) # GroupContract | 

begin
  # Set GroupContract Coverage End
  result = api_instance.set_coverage_group_contract(vbasoftware_database, group_id, division_id, group_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvGroupContractsApi->set_coverage_group_contract: #{e}"
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
  puts "Error when calling AdvGroupContractsApi->set_coverage_group_contract_with_http_info: #{e}"
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

