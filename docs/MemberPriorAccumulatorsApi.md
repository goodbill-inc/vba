# Vba::MemberPriorAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_prior_accum**](MemberPriorAccumulatorsApi.md#create_member_prior_accum) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators | Create MemberPriorAccum |
| [**delete_member_prior_accum**](MemberPriorAccumulatorsApi.md#delete_member_prior_accum) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators/{groupID}/{divisionID}/{planYear}/{planType}/{benefitCode} | Delete MemberPriorAccum |
| [**get_member_prior_accum**](MemberPriorAccumulatorsApi.md#get_member_prior_accum) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators/{groupID}/{divisionID}/{planYear}/{planType}/{benefitCode} | Get MemberPriorAccum |
| [**list_member_prior_accum**](MemberPriorAccumulatorsApi.md#list_member_prior_accum) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators | List MemberPriorAccum |
| [**update_batch_member_prior_accum**](MemberPriorAccumulatorsApi.md#update_batch_member_prior_accum) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators-batch | Create or Update Batch MemberPriorAccum |
| [**update_member_prior_accum**](MemberPriorAccumulatorsApi.md#update_member_prior_accum) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/prior-accumulators/{groupID}/{divisionID}/{planYear}/{planType}/{benefitCode} | Update MemberPriorAccum |


## create_member_prior_accum

> <MemberPriorAccumVBAResponse> create_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)

Create MemberPriorAccum

Creates a new MemberPriorAccum

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_prior_accum = Vba::MemberPriorAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # MemberPriorAccum | 

begin
  # Create MemberPriorAccum
  result = api_instance.create_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->create_member_prior_accum: #{e}"
end
```

#### Using the create_member_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPriorAccumVBAResponse>, Integer, Hash)> create_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)

```ruby
begin
  # Create MemberPriorAccum
  data, status_code, headers = api_instance.create_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->create_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_prior_accum** | [**MemberPriorAccum**](MemberPriorAccum.md) |  |  |

### Return type

[**MemberPriorAccumVBAResponse**](MemberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_prior_accum

> delete_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)

Delete MemberPriorAccum

Deletes an MemberPriorAccum

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete MemberPriorAccum
  api_instance.delete_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->delete_member_prior_accum: #{e}"
end
```

#### Using the delete_member_prior_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Delete MemberPriorAccum
  data, status_code, headers = api_instance.delete_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->delete_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_prior_accum

> <MemberPriorAccumVBAResponse> get_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)

Get MemberPriorAccum

Gets MemberPriorAccum

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get MemberPriorAccum
  result = api_instance.get_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->get_member_prior_accum: #{e}"
end
```

#### Using the get_member_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPriorAccumVBAResponse>, Integer, Hash)> get_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Get MemberPriorAccum
  data, status_code, headers = api_instance.get_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->get_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**MemberPriorAccumVBAResponse**](MemberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_prior_accum

> <MemberPriorAccumListVBAResponse> list_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberPriorAccum

Lists all MemberPriorAccum for the given subscriberID and memberSeq

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberPriorAccum
  result = api_instance.list_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->list_member_prior_accum: #{e}"
end
```

#### Using the list_member_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPriorAccumListVBAResponse>, Integer, Hash)> list_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberPriorAccum
  data, status_code, headers = api_instance.list_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPriorAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->list_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberPriorAccumListVBAResponse**](MemberPriorAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_prior_accum

> <MultiCodeResponseListVBAResponse> update_batch_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)

Create or Update Batch MemberPriorAccum

Create or Update multiple MemberPriorAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_prior_accum = [Vba::MemberPriorAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56})] # Array<MemberPriorAccum> | 

begin
  # Create or Update Batch MemberPriorAccum
  result = api_instance.update_batch_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->update_batch_member_prior_accum: #{e}"
end
```

#### Using the update_batch_member_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)

```ruby
begin
  # Create or Update Batch MemberPriorAccum
  data, status_code, headers = api_instance.update_batch_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->update_batch_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_prior_accum** | [**Array&lt;MemberPriorAccum&gt;**](MemberPriorAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_prior_accum

> <MemberPriorAccumVBAResponse> update_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code, member_prior_accum)

Update MemberPriorAccum

Updates a specific MemberPriorAccum.

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

api_instance = Vba::MemberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code
member_prior_accum = Vba::MemberPriorAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # MemberPriorAccum | 

begin
  # Update MemberPriorAccum
  result = api_instance.update_member_prior_accum(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code, member_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->update_member_prior_accum: #{e}"
end
```

#### Using the update_member_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPriorAccumVBAResponse>, Integer, Hash)> update_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code, member_prior_accum)

```ruby
begin
  # Update MemberPriorAccum
  data, status_code, headers = api_instance.update_member_prior_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, plan_year, plan_type, benefit_code, member_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPriorAccumulatorsApi->update_member_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |
| **member_prior_accum** | [**MemberPriorAccum**](MemberPriorAccum.md) |  |  |

### Return type

[**MemberPriorAccumVBAResponse**](MemberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

