# Vba::MemberAccumApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_accum**](MemberAccumApi.md#create_member_accum) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/accums | Create MemberAccum |
| [**delete_member_accum**](MemberAccumApi.md#delete_member_accum) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/accums/{groupID}/{planYear}/{planType}/{benefitCode} | Delete MemberAccum |
| [**get_member_accum**](MemberAccumApi.md#get_member_accum) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accums/{groupID}/{planYear}/{planType}/{benefitCode} | Get MemberAccum |
| [**list_member_accum**](MemberAccumApi.md#list_member_accum) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accums | List MemberAccum |
| [**update_batch_member_accum**](MemberAccumApi.md#update_batch_member_accum) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accums-batch | Create or Update Batch MemberAccum |
| [**update_member_accum**](MemberAccumApi.md#update_member_accum) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accums/{groupID}/{planYear}/{planType}/{benefitCode} | Update MemberAccum |


## create_member_accum

> <MemberAccumVBAResponse> create_member_accum(vbasoftware_database, subscriber_id, member_seq, member_accum)

Create MemberAccum

Creates a new MemberAccum

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_accum = Vba::MemberAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # MemberAccum | 

begin
  # Create MemberAccum
  result = api_instance.create_member_accum(vbasoftware_database, subscriber_id, member_seq, member_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->create_member_accum: #{e}"
end
```

#### Using the create_member_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccumVBAResponse>, Integer, Hash)> create_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_accum)

```ruby
begin
  # Create MemberAccum
  data, status_code, headers = api_instance.create_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->create_member_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_accum** | [**MemberAccum**](MemberAccum.md) |  |  |

### Return type

[**MemberAccumVBAResponse**](MemberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_accum

> delete_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)

Delete MemberAccum

Deletes an MemberAccum

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete MemberAccum
  api_instance.delete_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->delete_member_accum: #{e}"
end
```

#### Using the delete_member_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Delete MemberAccum
  data, status_code, headers = api_instance.delete_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->delete_member_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
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


## get_member_accum

> <MemberAccumVBAResponse> get_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)

Get MemberAccum

Gets MemberAccum

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get MemberAccum
  result = api_instance.get_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->get_member_accum: #{e}"
end
```

#### Using the get_member_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccumVBAResponse>, Integer, Hash)> get_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Get MemberAccum
  data, status_code, headers = api_instance.get_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->get_member_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**MemberAccumVBAResponse**](MemberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_accum

> <MemberAccumListVBAResponse> list_member_accum(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberAccum

Lists all MemberAccum for the given subscriberID and memberSeq

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberAccum
  result = api_instance.list_member_accum(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->list_member_accum: #{e}"
end
```

#### Using the list_member_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccumListVBAResponse>, Integer, Hash)> list_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberAccum
  data, status_code, headers = api_instance.list_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->list_member_accum_with_http_info: #{e}"
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

[**MemberAccumListVBAResponse**](MemberAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_accum

> <MultiCodeResponseListVBAResponse> update_batch_member_accum(vbasoftware_database, subscriber_id, member_seq, member_accum)

Create or Update Batch MemberAccum

Create or Update multiple MemberAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_accum = [Vba::MemberAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56})] # Array<MemberAccum> | 

begin
  # Create or Update Batch MemberAccum
  result = api_instance.update_batch_member_accum(vbasoftware_database, subscriber_id, member_seq, member_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->update_batch_member_accum: #{e}"
end
```

#### Using the update_batch_member_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_accum)

```ruby
begin
  # Create or Update Batch MemberAccum
  data, status_code, headers = api_instance.update_batch_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->update_batch_member_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_accum** | [**Array&lt;MemberAccum&gt;**](MemberAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_accum

> <MemberAccumVBAResponse> update_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code, member_accum)

Update MemberAccum

Updates a specific MemberAccum.

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

api_instance = Vba::MemberAccumApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code
member_accum = Vba::MemberAccum.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_amt_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # MemberAccum | 

begin
  # Update MemberAccum
  result = api_instance.update_member_accum(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code, member_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->update_member_accum: #{e}"
end
```

#### Using the update_member_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccumVBAResponse>, Integer, Hash)> update_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code, member_accum)

```ruby
begin
  # Update MemberAccum
  data, status_code, headers = api_instance.update_member_accum_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_year, plan_type, benefit_code, member_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccumApi->update_member_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |
| **member_accum** | [**MemberAccum**](MemberAccum.md) |  |  |

### Return type

[**MemberAccumVBAResponse**](MemberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

