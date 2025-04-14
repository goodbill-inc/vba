# Vba::SubscriberAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_accum**](SubscriberAccumulatorsApi.md#create_subscriber_accum) | **POST** /subscribers/{subscriberID}/groups/{groupID}/accumulators | Create SubscriberAccum |
| [**delete_subscriber_accum**](SubscriberAccumulatorsApi.md#delete_subscriber_accum) | **DELETE** /subscribers/{subscriberID}/groups/{groupID}/accumulators/{planYear}/{planType}/{benefitCode} | Delete SubscriberAccum |
| [**get_subscriber_accum**](SubscriberAccumulatorsApi.md#get_subscriber_accum) | **GET** /subscribers/{subscriberID}/groups/{groupID}/accumulators/{planYear}/{planType}/{benefitCode} | Get SubscriberAccum |
| [**list_subscriber_accum**](SubscriberAccumulatorsApi.md#list_subscriber_accum) | **GET** /subscribers/{subscriberID}/groups/{groupID}/accumulators | List SubscriberAccum |
| [**update_batch_subscriber_accum**](SubscriberAccumulatorsApi.md#update_batch_subscriber_accum) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/accumulators-batch | Create or Update Batch SubscriberAccum |
| [**update_subscriber_accum**](SubscriberAccumulatorsApi.md#update_subscriber_accum) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/accumulators/{planYear}/{planType}/{benefitCode} | Update SubscriberAccum |


## create_subscriber_accum

> <SubscriberAccumVBAResponse> create_subscriber_accum(vbasoftware_database, subscriber_id, group_id, subscriber_accum)

Create SubscriberAccum

Creates a new SubscriberAccum

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
subscriber_accum = Vba::SubscriberAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # SubscriberAccum | 

begin
  # Create SubscriberAccum
  result = api_instance.create_subscriber_accum(vbasoftware_database, subscriber_id, group_id, subscriber_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->create_subscriber_accum: #{e}"
end
```

#### Using the create_subscriber_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberAccumVBAResponse>, Integer, Hash)> create_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_accum)

```ruby
begin
  # Create SubscriberAccum
  data, status_code, headers = api_instance.create_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->create_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **subscriber_accum** | [**SubscriberAccum**](SubscriberAccum.md) |  |  |

### Return type

[**SubscriberAccumVBAResponse**](SubscriberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_accum

> delete_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

Delete SubscriberAccum

Deletes an SubscriberAccum

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete SubscriberAccum
  api_instance.delete_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->delete_subscriber_accum: #{e}"
end
```

#### Using the delete_subscriber_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Delete SubscriberAccum
  data, status_code, headers = api_instance.delete_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->delete_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
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


## get_subscriber_accum

> <SubscriberAccumVBAResponse> get_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

Get SubscriberAccum

Gets SubscriberAccum

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get SubscriberAccum
  result = api_instance.get_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->get_subscriber_accum: #{e}"
end
```

#### Using the get_subscriber_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberAccumVBAResponse>, Integer, Hash)> get_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Get SubscriberAccum
  data, status_code, headers = api_instance.get_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->get_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**SubscriberAccumVBAResponse**](SubscriberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_accum

> <SubscriberAccumListVBAResponse> list_subscriber_accum(vbasoftware_database, subscriber_id, group_id, opts)

List SubscriberAccum

Lists all SubscriberAccum for the given subscriberID and groupID

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberAccum
  result = api_instance.list_subscriber_accum(vbasoftware_database, subscriber_id, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->list_subscriber_accum: #{e}"
end
```

#### Using the list_subscriber_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberAccumListVBAResponse>, Integer, Hash)> list_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, opts)

```ruby
begin
  # List SubscriberAccum
  data, status_code, headers = api_instance.list_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->list_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberAccumListVBAResponse**](SubscriberAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_accum

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_accum(vbasoftware_database, subscriber_id, group_id, subscriber_accum)

Create or Update Batch SubscriberAccum

Create or Update multiple SubscriberAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
subscriber_accum = [Vba::SubscriberAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56})] # Array<SubscriberAccum> | 

begin
  # Create or Update Batch SubscriberAccum
  result = api_instance.update_batch_subscriber_accum(vbasoftware_database, subscriber_id, group_id, subscriber_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->update_batch_subscriber_accum: #{e}"
end
```

#### Using the update_batch_subscriber_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_accum)

```ruby
begin
  # Create or Update Batch SubscriberAccum
  data, status_code, headers = api_instance.update_batch_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->update_batch_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **subscriber_accum** | [**Array&lt;SubscriberAccum&gt;**](SubscriberAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_accum

> <SubscriberAccumVBAResponse> update_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_accum)

Update SubscriberAccum

Updates a specific SubscriberAccum.

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

api_instance = Vba::SubscriberAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code
subscriber_accum = Vba::SubscriberAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_credit_oon_used: 3.56, ded_credit_ppo_used: 3.56, ded_credit_used: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # SubscriberAccum | 

begin
  # Update SubscriberAccum
  result = api_instance.update_subscriber_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->update_subscriber_accum: #{e}"
end
```

#### Using the update_subscriber_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberAccumVBAResponse>, Integer, Hash)> update_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_accum)

```ruby
begin
  # Update SubscriberAccum
  data, status_code, headers = api_instance.update_subscriber_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberAccumulatorsApi->update_subscriber_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_year** | **String** | Plan Year |  |
| **plan_type** | **String** | Plan Type |  |
| **benefit_code** | **String** | Benefit Code |  |
| **subscriber_accum** | [**SubscriberAccum**](SubscriberAccum.md) |  |  |

### Return type

[**SubscriberAccumVBAResponse**](SubscriberAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

