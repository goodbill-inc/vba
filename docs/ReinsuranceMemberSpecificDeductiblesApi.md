# Vba::ReinsuranceMemberSpecificDeductiblesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#create_reins_contract_member_specific) | **POST** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles | Create ReinsContractMemberSpecific |
| [**delete_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#delete_reins_contract_member_specific) | **DELETE** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles/{subscriberID}/{memberSeq} | Delete ReinsContractMemberSpecific |
| [**get_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#get_reins_contract_member_specific) | **GET** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles/{subscriberID}/{memberSeq} | Get ReinsContractMemberSpecific |
| [**list_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#list_reins_contract_member_specific) | **GET** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles | List ReinsContractMemberSpecific |
| [**update_batch_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#update_batch_reins_contract_member_specific) | **PUT** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles-batch | Create or Update Batch ReinsContractMemberSpecific |
| [**update_reins_contract_member_specific**](ReinsuranceMemberSpecificDeductiblesApi.md#update_reins_contract_member_specific) | **PUT** /reinsurance-contracts/{reinsContractKey}/member-specific-deductibles/{subscriberID}/{memberSeq} | Update ReinsContractMemberSpecific |


## create_reins_contract_member_specific

> <ReinsContractMemberSpecificVBAResponse> create_reins_contract_member_specific(vbasoftware_database, reins_contract_key, reins_contract_member_specific)

Create ReinsContractMemberSpecific

Creates a new ReinsContractMemberSpecific

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_member_specific = Vba::ReinsContractMemberSpecific.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # ReinsContractMemberSpecific | 

begin
  # Create ReinsContractMemberSpecific
  result = api_instance.create_reins_contract_member_specific(vbasoftware_database, reins_contract_key, reins_contract_member_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->create_reins_contract_member_specific: #{e}"
end
```

#### Using the create_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractMemberSpecificVBAResponse>, Integer, Hash)> create_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_member_specific)

```ruby
begin
  # Create ReinsContractMemberSpecific
  data, status_code, headers = api_instance.create_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_member_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractMemberSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->create_reins_contract_member_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_member_specific** | [**ReinsContractMemberSpecific**](ReinsContractMemberSpecific.md) |  |  |

### Return type

[**ReinsContractMemberSpecificVBAResponse**](ReinsContractMemberSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_member_specific

> delete_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

Delete ReinsContractMemberSpecific

Deletes an ReinsContractMemberSpecific

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete ReinsContractMemberSpecific
  api_instance.delete_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->delete_reins_contract_member_specific: #{e}"
end
```

#### Using the delete_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

```ruby
begin
  # Delete ReinsContractMemberSpecific
  data, status_code, headers = api_instance.delete_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->delete_reins_contract_member_specific_with_http_info: #{e}"
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


## get_reins_contract_member_specific

> <ReinsContractMemberSpecificVBAResponse> get_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

Get ReinsContractMemberSpecific

Gets ReinsContractMemberSpecific

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get ReinsContractMemberSpecific
  result = api_instance.get_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->get_reins_contract_member_specific: #{e}"
end
```

#### Using the get_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractMemberSpecificVBAResponse>, Integer, Hash)> get_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)

```ruby
begin
  # Get ReinsContractMemberSpecific
  data, status_code, headers = api_instance.get_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractMemberSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->get_reins_contract_member_specific_with_http_info: #{e}"
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

[**ReinsContractMemberSpecificVBAResponse**](ReinsContractMemberSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_member_specific

> <ReinsContractMemberSpecificListVBAResponse> list_reins_contract_member_specific(vbasoftware_database, reins_contract_key, opts)

List ReinsContractMemberSpecific

Lists all ReinsContractMemberSpecific for the given reinsContractKey

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractMemberSpecific
  result = api_instance.list_reins_contract_member_specific(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->list_reins_contract_member_specific: #{e}"
end
```

#### Using the list_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractMemberSpecificListVBAResponse>, Integer, Hash)> list_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractMemberSpecific
  data, status_code, headers = api_instance.list_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractMemberSpecificListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->list_reins_contract_member_specific_with_http_info: #{e}"
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

[**ReinsContractMemberSpecificListVBAResponse**](ReinsContractMemberSpecificListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_member_specific

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_member_specific(vbasoftware_database, reins_contract_key, reins_contract_member_specific)

Create or Update Batch ReinsContractMemberSpecific

Create or Update multiple ReinsContractMemberSpecific at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_member_specific = [Vba::ReinsContractMemberSpecific.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'})] # Array<ReinsContractMemberSpecific> | 

begin
  # Create or Update Batch ReinsContractMemberSpecific
  result = api_instance.update_batch_reins_contract_member_specific(vbasoftware_database, reins_contract_key, reins_contract_member_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->update_batch_reins_contract_member_specific: #{e}"
end
```

#### Using the update_batch_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_member_specific)

```ruby
begin
  # Create or Update Batch ReinsContractMemberSpecific
  data, status_code, headers = api_instance.update_batch_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_member_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->update_batch_reins_contract_member_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_member_specific** | [**Array&lt;ReinsContractMemberSpecific&gt;**](ReinsContractMemberSpecific.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_member_specific

> <ReinsContractMemberSpecificVBAResponse> update_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, reins_contract_member_specific)

Update ReinsContractMemberSpecific

Updates a specific ReinsContractMemberSpecific.

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

api_instance = Vba::ReinsuranceMemberSpecificDeductiblesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
reins_contract_member_specific = Vba::ReinsContractMemberSpecific.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # ReinsContractMemberSpecific | 

begin
  # Update ReinsContractMemberSpecific
  result = api_instance.update_reins_contract_member_specific(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, reins_contract_member_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->update_reins_contract_member_specific: #{e}"
end
```

#### Using the update_reins_contract_member_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractMemberSpecificVBAResponse>, Integer, Hash)> update_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, reins_contract_member_specific)

```ruby
begin
  # Update ReinsContractMemberSpecific
  data, status_code, headers = api_instance.update_reins_contract_member_specific_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, reins_contract_member_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractMemberSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceMemberSpecificDeductiblesApi->update_reins_contract_member_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **reins_contract_member_specific** | [**ReinsContractMemberSpecific**](ReinsContractMemberSpecific.md) |  |  |

### Return type

[**ReinsContractMemberSpecificVBAResponse**](ReinsContractMemberSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

