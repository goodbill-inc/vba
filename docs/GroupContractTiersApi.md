# Vba::GroupContractTiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_contract_tier**](GroupContractTiersApi.md#create_group_contract_tier) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers | Create GroupContractTier |
| [**delete_group_contract_tier**](GroupContractTiersApi.md#delete_group_contract_tier) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers/{tier} | Delete GroupContractTier |
| [**get_group_contract_tier**](GroupContractTiersApi.md#get_group_contract_tier) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers/{tier} | Get GroupContractTier |
| [**list_group_contract_tier**](GroupContractTiersApi.md#list_group_contract_tier) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers | List GroupContractTier |
| [**update_batch_group_contract_tier**](GroupContractTiersApi.md#update_batch_group_contract_tier) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers-batch | Create or Update Batch GroupContractTier |
| [**update_group_contract_tier**](GroupContractTiersApi.md#update_group_contract_tier) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/tiers/{tier} | Update GroupContractTier |


## create_group_contract_tier

> <GroupContractTierVBAResponse> create_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)

Create GroupContractTier

Creates a new GroupContractTier

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

api_instance = Vba::GroupContractTiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_contract_tier = Vba::GroupContractTier.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, tier: 'tier_example'}) # GroupContractTier | 

begin
  # Create GroupContractTier
  result = api_instance.create_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->create_group_contract_tier: #{e}"
end
```

#### Using the create_group_contract_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractTierVBAResponse>, Integer, Hash)> create_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)

```ruby
begin
  # Create GroupContractTier
  data, status_code, headers = api_instance.create_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractTierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->create_group_contract_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_contract_tier** | [**GroupContractTier**](GroupContractTier.md) |  |  |

### Return type

[**GroupContractTierVBAResponse**](GroupContractTierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_contract_tier

> delete_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier)

Delete GroupContractTier

Deletes an GroupContractTier

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

api_instance = Vba::GroupContractTiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
tier = 'tier_example' # String | Tier

begin
  # Delete GroupContractTier
  api_instance.delete_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier)
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->delete_group_contract_tier: #{e}"
end
```

#### Using the delete_group_contract_tier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier)

```ruby
begin
  # Delete GroupContractTier
  data, status_code, headers = api_instance.delete_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->delete_group_contract_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **tier** | **String** | Tier |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_contract_tier

> <GroupContractTierVBAResponse> get_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier)

Get GroupContractTier

Gets GroupContractTier

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

api_instance = Vba::GroupContractTiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
tier = 'tier_example' # String | Tier

begin
  # Get GroupContractTier
  result = api_instance.get_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->get_group_contract_tier: #{e}"
end
```

#### Using the get_group_contract_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractTierVBAResponse>, Integer, Hash)> get_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier)

```ruby
begin
  # Get GroupContractTier
  data, status_code, headers = api_instance.get_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractTierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->get_group_contract_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **tier** | **String** | Tier |  |

### Return type

[**GroupContractTierVBAResponse**](GroupContractTierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_contract_tier

> <GroupContractTierListVBAResponse> list_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, opts)

List GroupContractTier

Lists all GroupContractTier for the given groupID and divisionID and coverageStart

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

api_instance = Vba::GroupContractTiersApi.new
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
  # List GroupContractTier
  result = api_instance.list_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->list_group_contract_tier: #{e}"
end
```

#### Using the list_group_contract_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractTierListVBAResponse>, Integer, Hash)> list_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)

```ruby
begin
  # List GroupContractTier
  data, status_code, headers = api_instance.list_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractTierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->list_group_contract_tier_with_http_info: #{e}"
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

[**GroupContractTierListVBAResponse**](GroupContractTierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_contract_tier

> <MultiCodeResponseListVBAResponse> update_batch_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)

Create or Update Batch GroupContractTier

Create or Update multiple GroupContractTier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupContractTiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
group_contract_tier = [Vba::GroupContractTier.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, tier: 'tier_example'})] # Array<GroupContractTier> | 

begin
  # Create or Update Batch GroupContractTier
  result = api_instance.update_batch_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->update_batch_group_contract_tier: #{e}"
end
```

#### Using the update_batch_group_contract_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)

```ruby
begin
  # Create or Update Batch GroupContractTier
  data, status_code, headers = api_instance.update_batch_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_contract_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->update_batch_group_contract_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **group_contract_tier** | [**Array&lt;GroupContractTier&gt;**](GroupContractTier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_contract_tier

> <GroupContractTierVBAResponse> update_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier, group_contract_tier)

Update GroupContractTier

Updates a specific GroupContractTier.

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

api_instance = Vba::GroupContractTiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
tier = 'tier_example' # String | Tier
group_contract_tier = Vba::GroupContractTier.new({group_id: 'group_id_example', division_id: 'division_id_example', coverage_start: Time.now, tier: 'tier_example'}) # GroupContractTier | 

begin
  # Update GroupContractTier
  result = api_instance.update_group_contract_tier(vbasoftware_database, group_id, division_id, coverage_start, tier, group_contract_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->update_group_contract_tier: #{e}"
end
```

#### Using the update_group_contract_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupContractTierVBAResponse>, Integer, Hash)> update_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier, group_contract_tier)

```ruby
begin
  # Update GroupContractTier
  data, status_code, headers = api_instance.update_group_contract_tier_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, tier, group_contract_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupContractTierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupContractTiersApi->update_group_contract_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **tier** | **String** | Tier |  |
| **group_contract_tier** | [**GroupContractTier**](GroupContractTier.md) |  |  |

### Return type

[**GroupContractTierVBAResponse**](GroupContractTierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

