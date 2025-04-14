# Vba::MemberAccountPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_account_plan**](MemberAccountPlansApi.md#create_member_account_plan) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans | Create MemberAccountPlan |
| [**delete_member_account_plan**](MemberAccountPlansApi.md#delete_member_account_plan) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID} | Delete MemberAccountPlan |
| [**get_member_account_plan**](MemberAccountPlansApi.md#get_member_account_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID} | Get MemberAccountPlan |
| [**list_member_account_plan**](MemberAccountPlansApi.md#list_member_account_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans | List MemberAccountPlan |
| [**update_batch_member_account_plan**](MemberAccountPlansApi.md#update_batch_member_account_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans-batch | Create or Update Batch MemberAccountPlan |
| [**update_member_account_plan**](MemberAccountPlansApi.md#update_member_account_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID} | Update MemberAccountPlan |


## create_member_account_plan

> <MemberAccountPlanVBAResponse> create_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)

Create MemberAccountPlan

Creates a new MemberAccountPlan

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
member_account_plan = Vba::MemberAccountPlan.new({member_account_key: 37, plan_id: 'plan_id_example'}) # MemberAccountPlan | 

begin
  # Create MemberAccountPlan
  result = api_instance.create_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->create_member_account_plan: #{e}"
end
```

#### Using the create_member_account_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanVBAResponse>, Integer, Hash)> create_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)

```ruby
begin
  # Create MemberAccountPlan
  data, status_code, headers = api_instance.create_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->create_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **member_account_plan** | [**MemberAccountPlan**](MemberAccountPlan.md) |  |  |

### Return type

[**MemberAccountPlanVBAResponse**](MemberAccountPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_account_plan

> delete_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)

Delete MemberAccountPlan

Deletes an MemberAccountPlan

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete MemberAccountPlan
  api_instance.delete_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->delete_member_account_plan: #{e}"
end
```

#### Using the delete_member_account_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)

```ruby
begin
  # Delete MemberAccountPlan
  data, status_code, headers = api_instance.delete_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->delete_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_account_plan

> <MemberAccountPlanVBAResponse> get_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)

Get MemberAccountPlan

Gets MemberAccountPlan

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get MemberAccountPlan
  result = api_instance.get_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->get_member_account_plan: #{e}"
end
```

#### Using the get_member_account_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanVBAResponse>, Integer, Hash)> get_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)

```ruby
begin
  # Get MemberAccountPlan
  data, status_code, headers = api_instance.get_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->get_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**MemberAccountPlanVBAResponse**](MemberAccountPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_account_plan

> <MemberAccountPlanListVBAResponse> list_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, opts)

List MemberAccountPlan

Lists all MemberAccountPlan for the given memberAccountKey

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberAccountPlan
  result = api_instance.list_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->list_member_account_plan: #{e}"
end
```

#### Using the list_member_account_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanListVBAResponse>, Integer, Hash)> list_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, opts)

```ruby
begin
  # List MemberAccountPlan
  data, status_code, headers = api_instance.list_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->list_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberAccountPlanListVBAResponse**](MemberAccountPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_account_plan

> <MultiCodeResponseListVBAResponse> update_batch_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)

Create or Update Batch MemberAccountPlan

Create or Update multiple MemberAccountPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
member_account_plan = [Vba::MemberAccountPlan.new({member_account_key: 37, plan_id: 'plan_id_example'})] # Array<MemberAccountPlan> | 

begin
  # Create or Update Batch MemberAccountPlan
  result = api_instance.update_batch_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->update_batch_member_account_plan: #{e}"
end
```

#### Using the update_batch_member_account_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)

```ruby
begin
  # Create or Update Batch MemberAccountPlan
  data, status_code, headers = api_instance.update_batch_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, member_account_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->update_batch_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **member_account_plan** | [**Array&lt;MemberAccountPlan&gt;**](MemberAccountPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_account_plan

> <MemberAccountPlanVBAResponse> update_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan)

Update MemberAccountPlan

Updates a specific MemberAccountPlan.

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

api_instance = Vba::MemberAccountPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
member_account_plan = Vba::MemberAccountPlan.new({member_account_key: 37, plan_id: 'plan_id_example'}) # MemberAccountPlan | 

begin
  # Update MemberAccountPlan
  result = api_instance.update_member_account_plan(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->update_member_account_plan: #{e}"
end
```

#### Using the update_member_account_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanVBAResponse>, Integer, Hash)> update_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan)

```ruby
begin
  # Update MemberAccountPlan
  data, status_code, headers = api_instance.update_member_account_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlansApi->update_member_account_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **member_account_plan** | [**MemberAccountPlan**](MemberAccountPlan.md) |  |  |

### Return type

[**MemberAccountPlanVBAResponse**](MemberAccountPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

