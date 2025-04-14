# Vba::MemberBeneficiaryPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#create_member_beneficiary_plan) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans | Create MemberBeneficiaryPlan |
| [**delete_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#delete_member_beneficiary_plan) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans/{planID} | Delete MemberBeneficiaryPlan |
| [**get_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#get_member_beneficiary_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans/{planID} | Get MemberBeneficiaryPlan |
| [**list_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#list_member_beneficiary_plan) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans | List MemberBeneficiaryPlan |
| [**update_batch_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#update_batch_member_beneficiary_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans-batch | Create or Update Batch MemberBeneficiaryPlan |
| [**update_member_beneficiary_plan**](MemberBeneficiaryPlansApi.md#update_member_beneficiary_plan) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID}/plans/{planID} | Update MemberBeneficiaryPlan |


## create_member_beneficiary_plan

> <MemberBeneficiaryPlanVBAResponse> create_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)

Create MemberBeneficiaryPlan

Creates a new MemberBeneficiaryPlan

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
member_beneficiary_plan = Vba::MemberBeneficiaryPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', plan_id: 'plan_id_example'}) # MemberBeneficiaryPlan | 

begin
  # Create MemberBeneficiaryPlan
  result = api_instance.create_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->create_member_beneficiary_plan: #{e}"
end
```

#### Using the create_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryPlanVBAResponse>, Integer, Hash)> create_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)

```ruby
begin
  # Create MemberBeneficiaryPlan
  data, status_code, headers = api_instance.create_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->create_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **member_beneficiary_plan** | [**MemberBeneficiaryPlan**](MemberBeneficiaryPlan.md) |  |  |

### Return type

[**MemberBeneficiaryPlanVBAResponse**](MemberBeneficiaryPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_beneficiary_plan

> delete_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)

Delete MemberBeneficiaryPlan

Deletes an MemberBeneficiaryPlan

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete MemberBeneficiaryPlan
  api_instance.delete_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->delete_member_beneficiary_plan: #{e}"
end
```

#### Using the delete_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)

```ruby
begin
  # Delete MemberBeneficiaryPlan
  data, status_code, headers = api_instance.delete_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->delete_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_beneficiary_plan

> <MemberBeneficiaryPlanVBAResponse> get_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)

Get MemberBeneficiaryPlan

Gets MemberBeneficiaryPlan

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get MemberBeneficiaryPlan
  result = api_instance.get_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->get_member_beneficiary_plan: #{e}"
end
```

#### Using the get_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryPlanVBAResponse>, Integer, Hash)> get_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)

```ruby
begin
  # Get MemberBeneficiaryPlan
  data, status_code, headers = api_instance.get_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->get_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**MemberBeneficiaryPlanVBAResponse**](MemberBeneficiaryPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_beneficiary_plan

> <MemberBeneficiaryPlanListVBAResponse> list_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, opts)

List MemberBeneficiaryPlan

Lists all MemberBeneficiaryPlan for the given subscriberID and memberSeq and beneficiaryID

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberBeneficiaryPlan
  result = api_instance.list_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->list_member_beneficiary_plan: #{e}"
end
```

#### Using the list_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryPlanListVBAResponse>, Integer, Hash)> list_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, opts)

```ruby
begin
  # List MemberBeneficiaryPlan
  data, status_code, headers = api_instance.list_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->list_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberBeneficiaryPlanListVBAResponse**](MemberBeneficiaryPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_beneficiary_plan

> <MultiCodeResponseListVBAResponse> update_batch_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)

Create or Update Batch MemberBeneficiaryPlan

Create or Update multiple MemberBeneficiaryPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
member_beneficiary_plan = [Vba::MemberBeneficiaryPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', plan_id: 'plan_id_example'})] # Array<MemberBeneficiaryPlan> | 

begin
  # Create or Update Batch MemberBeneficiaryPlan
  result = api_instance.update_batch_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->update_batch_member_beneficiary_plan: #{e}"
end
```

#### Using the update_batch_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)

```ruby
begin
  # Create or Update Batch MemberBeneficiaryPlan
  data, status_code, headers = api_instance.update_batch_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->update_batch_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **member_beneficiary_plan** | [**Array&lt;MemberBeneficiaryPlan&gt;**](MemberBeneficiaryPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_beneficiary_plan

> <MemberBeneficiaryPlanVBAResponse> update_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id, member_beneficiary_plan)

Update MemberBeneficiaryPlan

Updates a specific MemberBeneficiaryPlan.

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

api_instance = Vba::MemberBeneficiaryPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
plan_id = 'plan_id_example' # String | Plan ID
member_beneficiary_plan = Vba::MemberBeneficiaryPlan.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', plan_id: 'plan_id_example'}) # MemberBeneficiaryPlan | 

begin
  # Update MemberBeneficiaryPlan
  result = api_instance.update_member_beneficiary_plan(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id, member_beneficiary_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->update_member_beneficiary_plan: #{e}"
end
```

#### Using the update_member_beneficiary_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryPlanVBAResponse>, Integer, Hash)> update_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id, member_beneficiary_plan)

```ruby
begin
  # Update MemberBeneficiaryPlan
  data, status_code, headers = api_instance.update_member_beneficiary_plan_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, plan_id, member_beneficiary_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryPlansApi->update_member_beneficiary_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **plan_id** | **String** | Plan ID |  |
| **member_beneficiary_plan** | [**MemberBeneficiaryPlan**](MemberBeneficiaryPlan.md) |  |  |

### Return type

[**MemberBeneficiaryPlanVBAResponse**](MemberBeneficiaryPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

