# Vba::SubscriberPriorAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#create_subscriber_prior_accum) | **POST** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators | Create SubscriberPriorAccum |
| [**delete_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#delete_subscriber_prior_accum) | **DELETE** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators/{planYear}/{planType}/{benefitCode} | Delete SubscriberPriorAccum |
| [**get_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#get_subscriber_prior_accum) | **GET** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators/{planYear}/{planType}/{benefitCode} | Get SubscriberPriorAccum |
| [**list_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#list_subscriber_prior_accum) | **GET** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators | List SubscriberPriorAccum |
| [**update_batch_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#update_batch_subscriber_prior_accum) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators-batch | Create or Update Batch SubscriberPriorAccum |
| [**update_subscriber_prior_accum**](SubscriberPriorAccumulatorsApi.md#update_subscriber_prior_accum) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/prior-accumulators/{planYear}/{planType}/{benefitCode} | Update SubscriberPriorAccum |


## create_subscriber_prior_accum

> <SubscriberPriorAccumVBAResponse> create_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)

Create SubscriberPriorAccum

Creates a new SubscriberPriorAccum

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
subscriber_prior_accum = Vba::SubscriberPriorAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # SubscriberPriorAccum | 

begin
  # Create SubscriberPriorAccum
  result = api_instance.create_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->create_subscriber_prior_accum: #{e}"
end
```

#### Using the create_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPriorAccumVBAResponse>, Integer, Hash)> create_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)

```ruby
begin
  # Create SubscriberPriorAccum
  data, status_code, headers = api_instance.create_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->create_subscriber_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **subscriber_prior_accum** | [**SubscriberPriorAccum**](SubscriberPriorAccum.md) |  |  |

### Return type

[**SubscriberPriorAccumVBAResponse**](SubscriberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_prior_accum

> delete_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

Delete SubscriberPriorAccum

Deletes an SubscriberPriorAccum

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete SubscriberPriorAccum
  api_instance.delete_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->delete_subscriber_prior_accum: #{e}"
end
```

#### Using the delete_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Delete SubscriberPriorAccum
  data, status_code, headers = api_instance.delete_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->delete_subscriber_prior_accum_with_http_info: #{e}"
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


## get_subscriber_prior_accum

> <SubscriberPriorAccumVBAResponse> get_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

Get SubscriberPriorAccum

Gets SubscriberPriorAccum

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get SubscriberPriorAccum
  result = api_instance.get_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->get_subscriber_prior_accum: #{e}"
end
```

#### Using the get_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPriorAccumVBAResponse>, Integer, Hash)> get_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)

```ruby
begin
  # Get SubscriberPriorAccum
  data, status_code, headers = api_instance.get_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->get_subscriber_prior_accum_with_http_info: #{e}"
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

[**SubscriberPriorAccumVBAResponse**](SubscriberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_prior_accum

> <SubscriberPriorAccumListVBAResponse> list_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, opts)

List SubscriberPriorAccum

Lists all SubscriberPriorAccum for the given subscriberID and groupID

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberPriorAccum
  result = api_instance.list_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->list_subscriber_prior_accum: #{e}"
end
```

#### Using the list_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPriorAccumListVBAResponse>, Integer, Hash)> list_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, opts)

```ruby
begin
  # List SubscriberPriorAccum
  data, status_code, headers = api_instance.list_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPriorAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->list_subscriber_prior_accum_with_http_info: #{e}"
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

[**SubscriberPriorAccumListVBAResponse**](SubscriberPriorAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_prior_accum

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)

Create or Update Batch SubscriberPriorAccum

Create or Update multiple SubscriberPriorAccum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
subscriber_prior_accum = [Vba::SubscriberPriorAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56})] # Array<SubscriberPriorAccum> | 

begin
  # Create or Update Batch SubscriberPriorAccum
  result = api_instance.update_batch_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->update_batch_subscriber_prior_accum: #{e}"
end
```

#### Using the update_batch_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)

```ruby
begin
  # Create or Update Batch SubscriberPriorAccum
  data, status_code, headers = api_instance.update_batch_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, subscriber_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->update_batch_subscriber_prior_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **subscriber_prior_accum** | [**Array&lt;SubscriberPriorAccum&gt;**](SubscriberPriorAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_prior_accum

> <SubscriberPriorAccumVBAResponse> update_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_prior_accum)

Update SubscriberPriorAccum

Updates a specific SubscriberPriorAccum.

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

api_instance = Vba::SubscriberPriorAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_year = 'plan_year_example' # String | Plan Year
plan_type = 'plan_type_example' # String | Plan Type
benefit_code = 'benefit_code_example' # String | Benefit Code
subscriber_prior_accum = Vba::SubscriberPriorAccum.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', division_id: 'division_id_example', plan_year: 'plan_year_example', plan_type: 'plan_type_example', benefit_code: 'benefit_code_example', allowed_amt: 3.56, allowed_amt_net: 3.56, allowed_amt_oon: 3.56, auto_generated: false, benefit_used: 3.56, benefit_used_net: 3.56, benefit_used_oon: 3.56, billed_amt: 3.56, billed_amt_net: 3.56, billed_amt_oon: 3.56, co_b_amt: 3.56, co_b_amt_net: 3.56, co_b_amt_oon: 3.56, coins_amt: 3.56, coins_amt_net: 3.56, coins_amt_oon: 3.56, copay_amt: 3.56, copay_amt_net: 3.56, copay_amt_oon: 3.56, ded_ppo_used: 3.56, deductible_used: 3.56, deductible_used_oon: 3.56, not_covered_amt: 3.56, not_covered_amt_net: 3.56, not_covered_oon: 3.56, out_of_pocket: 3.56, out_of_pocket_net: 3.56, out_of_pocket_oon: 3.56}) # SubscriberPriorAccum | 

begin
  # Update SubscriberPriorAccum
  result = api_instance.update_subscriber_prior_accum(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_prior_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->update_subscriber_prior_accum: #{e}"
end
```

#### Using the update_subscriber_prior_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPriorAccumVBAResponse>, Integer, Hash)> update_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_prior_accum)

```ruby
begin
  # Update SubscriberPriorAccum
  data, status_code, headers = api_instance.update_subscriber_prior_accum_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_year, plan_type, benefit_code, subscriber_prior_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPriorAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPriorAccumulatorsApi->update_subscriber_prior_accum_with_http_info: #{e}"
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
| **subscriber_prior_accum** | [**SubscriberPriorAccum**](SubscriberPriorAccum.md) |  |  |

### Return type

[**SubscriberPriorAccumVBAResponse**](SubscriberPriorAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

