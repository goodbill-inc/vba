# Vba::ReinsuranceAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_accum**](ReinsuranceAccumulatorsApi.md#create_reins_accum) | **POST** /reinsurance-contracts/{reinsContractKey}/accumulators | Create ReinsAccum |
| [**delete_reins_accum**](ReinsuranceAccumulatorsApi.md#delete_reins_accum) | **DELETE** /reinsurance-contracts/{reinsContractKey}/accumulators/{subscriberID}/{memberSeq}/{claimNumber} | Delete ReinsAccum |
| [**get_reins_accum**](ReinsuranceAccumulatorsApi.md#get_reins_accum) | **GET** /reinsurance-contracts/{reinsContractKey}/accumulators/{subscriberID}/{memberSeq}/{claimNumber} | Get ReinsAccum |
| [**list_reins_accum**](ReinsuranceAccumulatorsApi.md#list_reins_accum) | **GET** /reinsurance-contracts/{reinsContractKey}/accumulators | List ReinsAccum |
| [**update_batch_reins_accum**](ReinsuranceAccumulatorsApi.md#update_batch_reins_accum) | **PUT** /reinsurance-contracts/{reinsContractKey}/accumulators-batch | Create or Update Batch ReinsAccum |
| [**update_reins_accum**](ReinsuranceAccumulatorsApi.md#update_reins_accum) | **PUT** /reinsurance-contracts/{reinsContractKey}/accumulators/{subscriberID}/{memberSeq}/{claimNumber} | Update ReinsAccum |


## create_reins_accum

> <ReinsAccumVBAResponse> create_reins_accum(vbasoftware_database, reins_contract_key, reins_accum)

Create ReinsAccum

Creates a new ReinsAccum

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_accum = Vba::ReinsAccum.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', claim_number: 37}) # ReinsAccum | 

begin
  # Create ReinsAccum
  result = api_instance.create_reins_accum(vbasoftware_database, reins_contract_key, reins_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->create_reins_accum: #{e}"
end
```

#### Using the create_reins_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsAccumVBAResponse>, Integer, Hash)> create_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, reins_accum)

```ruby
begin
  # Create ReinsAccum
  data, status_code, headers = api_instance.create_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, reins_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->create_reins_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_accum** | [**ReinsAccum**](ReinsAccum.md) |  |  |

### Return type

[**ReinsAccumVBAResponse**](ReinsAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_accum

> delete_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)

Delete ReinsAccum

Deletes an ReinsAccum

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
claim_number = 56 # Integer | Claim Number

begin
  # Delete ReinsAccum
  api_instance.delete_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->delete_reins_accum: #{e}"
end
```

#### Using the delete_reins_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)

```ruby
begin
  # Delete ReinsAccum
  data, status_code, headers = api_instance.delete_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->delete_reins_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_accum

> <ReinsAccumVBAResponse> get_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)

Get ReinsAccum

Gets ReinsAccum

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
claim_number = 56 # Integer | Claim Number

begin
  # Get ReinsAccum
  result = api_instance.get_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->get_reins_accum: #{e}"
end
```

#### Using the get_reins_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsAccumVBAResponse>, Integer, Hash)> get_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)

```ruby
begin
  # Get ReinsAccum
  data, status_code, headers = api_instance.get_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->get_reins_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

[**ReinsAccumVBAResponse**](ReinsAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_accum

> <ReinsAccumListVBAResponse> list_reins_accum(vbasoftware_database, reins_contract_key, opts)

List ReinsAccum

Lists all ReinsAccum for the given reinsContractKey

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsAccum
  result = api_instance.list_reins_accum(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->list_reins_accum: #{e}"
end
```

#### Using the list_reins_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsAccumListVBAResponse>, Integer, Hash)> list_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsAccum
  data, status_code, headers = api_instance.list_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->list_reins_accum_with_http_info: #{e}"
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

[**ReinsAccumListVBAResponse**](ReinsAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_accum

> <MultiCodeResponseListVBAResponse> update_batch_reins_accum(vbasoftware_database, reins_contract_key, reins_accum)

Create or Update Batch ReinsAccum

Create or Update multiple ReinsAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_accum = [Vba::ReinsAccum.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', claim_number: 37})] # Array<ReinsAccum> | 

begin
  # Create or Update Batch ReinsAccum
  result = api_instance.update_batch_reins_accum(vbasoftware_database, reins_contract_key, reins_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->update_batch_reins_accum: #{e}"
end
```

#### Using the update_batch_reins_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, reins_accum)

```ruby
begin
  # Create or Update Batch ReinsAccum
  data, status_code, headers = api_instance.update_batch_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, reins_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->update_batch_reins_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_accum** | [**Array&lt;ReinsAccum&gt;**](ReinsAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_accum

> <ReinsAccumVBAResponse> update_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number, reins_accum)

Update ReinsAccum

Updates a specific ReinsAccum.

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

api_instance = Vba::ReinsuranceAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
claim_number = 56 # Integer | Claim Number
reins_accum = Vba::ReinsAccum.new({reins_contract_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', claim_number: 37}) # ReinsAccum | 

begin
  # Update ReinsAccum
  result = api_instance.update_reins_accum(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number, reins_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->update_reins_accum: #{e}"
end
```

#### Using the update_reins_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsAccumVBAResponse>, Integer, Hash)> update_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number, reins_accum)

```ruby
begin
  # Update ReinsAccum
  data, status_code, headers = api_instance.update_reins_accum_with_http_info(vbasoftware_database, reins_contract_key, subscriber_id, member_seq, claim_number, reins_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceAccumulatorsApi->update_reins_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **claim_number** | **Integer** | Claim Number |  |
| **reins_accum** | [**ReinsAccum**](ReinsAccum.md) |  |  |

### Return type

[**ReinsAccumVBAResponse**](ReinsAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

