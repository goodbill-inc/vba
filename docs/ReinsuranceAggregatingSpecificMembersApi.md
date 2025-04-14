# Vba::ReinsuranceAggregatingSpecificMembersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_agg_spec_member**](ReinsuranceAggregatingSpecificMembersApi.md#create_reins_contract_agg_spec_member) | **POST** /reinsurance-contracts/{reinsContractKey}/aggregate-specific-members | Create ReinsContractAggSpecMember |
| [**delete_reins_contract_agg_spec_member**](ReinsuranceAggregatingSpecificMembersApi.md#delete_reins_contract_agg_spec_member) | **DELETE** /reinsurance-contracts/{reinsContractKey}/aggregate-specific-members/{subscriberID}/{memberSeq} | Delete ReinsContractAggSpecMember |
| [**get_reins_contract_agg_spec_member**](ReinsuranceAggregatingSpecificMembersApi.md#get_reins_contract_agg_spec_member) | **GET** /reinsurance-contracts/{reinsContractKey}/aggregate-specific-members/{subscriberID}/{memberSeq} | Get ReinsContractAggSpecMember |
| [**list_reins_contract_agg_spec_member**](ReinsuranceAggregatingSpecificMembersApi.md#list_reins_contract_agg_spec_member) | **GET** /reinsurance-contracts/{reinsContractKey}/aggregate-specific-members | List ReinsContractAggSpecMember |
| [**update_batch_reins_contract_agg_spec_member**](ReinsuranceAggregatingSpecificMembersApi.md#update_batch_reins_contract_agg_spec_member) | **PUT** /reinsurance-contracts/{reinsContractKey}/aggregate-specific-members-batch | Create Batch ReinsContractAggSpecMember |


## create_reins_contract_agg_spec_member

> <ReinsContractAggSpecMemberVBAResponse> create_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)

Create ReinsContractAggSpecMember

Creates a new ReinsContractAggSpecMember

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

api_instance = Vba::ReinsuranceAggregatingSpecificMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_agg_spec_member = Vba::ReinsContractAggSpecMember.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # ReinsContractAggSpecMember | 

begin
  # Create ReinsContractAggSpecMember
  result = api_instance.create_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->create_reins_contract_agg_spec_member: #{e}"
end
```

#### Using the create_reins_contract_agg_spec_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractAggSpecMemberVBAResponse>, Integer, Hash)> create_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)

```ruby
begin
  # Create ReinsContractAggSpecMember
  data, status_code, headers = api_instance.create_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractAggSpecMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->create_reins_contract_agg_spec_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_agg_spec_member** | [**ReinsContractAggSpecMember**](ReinsContractAggSpecMember.md) |  |  |

### Return type

[**ReinsContractAggSpecMemberVBAResponse**](ReinsContractAggSpecMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_agg_spec_member

> delete_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

Delete ReinsContractAggSpecMember

Deletes an ReinsContractAggSpecMember

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

api_instance = Vba::ReinsuranceAggregatingSpecificMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete ReinsContractAggSpecMember
  api_instance.delete_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->delete_reins_contract_agg_spec_member: #{e}"
end
```

#### Using the delete_reins_contract_agg_spec_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

```ruby
begin
  # Delete ReinsContractAggSpecMember
  data, status_code, headers = api_instance.delete_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->delete_reins_contract_agg_spec_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_agg_spec_member

> <ReinsContractAggSpecMemberVBAResponse> get_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

Get ReinsContractAggSpecMember

Gets ReinsContractAggSpecMember

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

api_instance = Vba::ReinsuranceAggregatingSpecificMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get ReinsContractAggSpecMember
  result = api_instance.get_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->get_reins_contract_agg_spec_member: #{e}"
end
```

#### Using the get_reins_contract_agg_spec_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractAggSpecMemberVBAResponse>, Integer, Hash)> get_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

```ruby
begin
  # Get ReinsContractAggSpecMember
  data, status_code, headers = api_instance.get_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractAggSpecMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->get_reins_contract_agg_spec_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**ReinsContractAggSpecMemberVBAResponse**](ReinsContractAggSpecMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_agg_spec_member

> <ReinsContractAggSpecMemberListVBAResponse> list_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, opts)

List ReinsContractAggSpecMember

Lists all ReinsContractAggSpecMember for the given reinsContractKey

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

api_instance = Vba::ReinsuranceAggregatingSpecificMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractAggSpecMember
  result = api_instance.list_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->list_reins_contract_agg_spec_member: #{e}"
end
```

#### Using the list_reins_contract_agg_spec_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractAggSpecMemberListVBAResponse>, Integer, Hash)> list_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractAggSpecMember
  data, status_code, headers = api_instance.list_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractAggSpecMemberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->list_reins_contract_agg_spec_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractAggSpecMemberListVBAResponse**](ReinsContractAggSpecMemberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_agg_spec_member

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)

Create Batch ReinsContractAggSpecMember

Create multiple ReinsContractAggSpecMember at once.  If the entity does not exist, it will be created. If the entity exists, an error message will be returned for this item.

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

api_instance = Vba::ReinsuranceAggregatingSpecificMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_agg_spec_member = [Vba::ReinsContractAggSpecMember.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'})] # Array<ReinsContractAggSpecMember> | 

begin
  # Create Batch ReinsContractAggSpecMember
  result = api_instance.update_batch_reins_contract_agg_spec_member(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->update_batch_reins_contract_agg_spec_member: #{e}"
end
```

#### Using the update_batch_reins_contract_agg_spec_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)

```ruby
begin
  # Create Batch ReinsContractAggSpecMember
  data, status_code, headers = api_instance.update_batch_reins_contract_agg_spec_member_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_agg_spec_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAggregatingSpecificMembersApi->update_batch_reins_contract_agg_spec_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_agg_spec_member** | [**Array&lt;ReinsContractAggSpecMember&gt;**](ReinsContractAggSpecMember.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

