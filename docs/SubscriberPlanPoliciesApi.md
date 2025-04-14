# Vba::SubscriberPlanPoliciesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#create_subscriber_plan_policy) | **POST** /subscribers/{subscriberID}/plan-policies | Create SubscriberPlanPolicy |
| [**delete_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#delete_subscriber_plan_policy) | **DELETE** /subscribers/{subscriberID}/plan-policies/{planID}/{benefitCode}/{policyNumber} | Delete SubscriberPlanPolicy |
| [**get_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#get_subscriber_plan_policy) | **GET** /subscribers/{subscriberID}/plan-policies/{planID}/{benefitCode}/{policyNumber} | Get SubscriberPlanPolicy |
| [**list_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#list_subscriber_plan_policy) | **GET** /subscribers/{subscriberID}/plan-policies | List SubscriberPlanPolicy |
| [**subscriber_surrender_policy**](SubscriberPlanPoliciesApi.md#subscriber_surrender_policy) | **POST** /subscribers/{subscriberID}/surrender-policy/{planID}/{benefitCode}/{policyNumber}/{cashValue} | Subscriber Policy Surrender |
| [**update_batch_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#update_batch_subscriber_plan_policy) | **PUT** /subscribers/{subscriberID}/plan-policies-batch | Create or Update Batch SubscriberPlanPolicy |
| [**update_subscriber_plan_policy**](SubscriberPlanPoliciesApi.md#update_subscriber_plan_policy) | **PUT** /subscribers/{subscriberID}/plan-policies/{planID}/{benefitCode}/{policyNumber} | Update SubscriberPlanPolicy |


## create_subscriber_plan_policy

> <SubscriberPlanPolicyVBAResponse> create_subscriber_plan_policy(vbasoftware_database, subscriber_id, subscriber_plan_policy)

Create SubscriberPlanPolicy

Creates a new SubscriberPlanPolicy

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_plan_policy = Vba::SubscriberPlanPolicy.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example'}) # SubscriberPlanPolicy | 

begin
  # Create SubscriberPlanPolicy
  result = api_instance.create_subscriber_plan_policy(vbasoftware_database, subscriber_id, subscriber_plan_policy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->create_subscriber_plan_policy: #{e}"
end
```

#### Using the create_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPlanPolicyVBAResponse>, Integer, Hash)> create_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, subscriber_plan_policy)

```ruby
begin
  # Create SubscriberPlanPolicy
  data, status_code, headers = api_instance.create_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, subscriber_plan_policy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPlanPolicyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->create_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_plan_policy** | [**SubscriberPlanPolicy**](SubscriberPlanPolicy.md) |  |  |

### Return type

[**SubscriberPlanPolicyVBAResponse**](SubscriberPlanPolicyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_plan_policy

> delete_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)

Delete SubscriberPlanPolicy

Deletes an SubscriberPlanPolicy

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number

begin
  # Delete SubscriberPlanPolicy
  api_instance.delete_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->delete_subscriber_plan_policy: #{e}"
end
```

#### Using the delete_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)

```ruby
begin
  # Delete SubscriberPlanPolicy
  data, status_code, headers = api_instance.delete_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->delete_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **policy_number** | **String** | Policy Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_plan_policy

> <SubscriberPlanPolicyVBAResponse> get_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)

Get SubscriberPlanPolicy

Gets SubscriberPlanPolicy

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number

begin
  # Get SubscriberPlanPolicy
  result = api_instance.get_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->get_subscriber_plan_policy: #{e}"
end
```

#### Using the get_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPlanPolicyVBAResponse>, Integer, Hash)> get_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)

```ruby
begin
  # Get SubscriberPlanPolicy
  data, status_code, headers = api_instance.get_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPlanPolicyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->get_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **policy_number** | **String** | Policy Number |  |

### Return type

[**SubscriberPlanPolicyVBAResponse**](SubscriberPlanPolicyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_plan_policy

> <SubscriberPlanPolicyListVBAResponse> list_subscriber_plan_policy(vbasoftware_database, subscriber_id, opts)

List SubscriberPlanPolicy

Lists all SubscriberPlanPolicy for the given subscriberID

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberPlanPolicy
  result = api_instance.list_subscriber_plan_policy(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->list_subscriber_plan_policy: #{e}"
end
```

#### Using the list_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPlanPolicyListVBAResponse>, Integer, Hash)> list_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List SubscriberPlanPolicy
  data, status_code, headers = api_instance.list_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPlanPolicyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->list_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberPlanPolicyListVBAResponse**](SubscriberPlanPolicyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## subscriber_surrender_policy

> subscriber_surrender_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)

Subscriber Policy Surrender

Surrender an existing Policy under the Policy & Forfeiture area.

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
cash_value = 1.2 # Float | Cash Value

begin
  # Subscriber Policy Surrender
  api_instance.subscriber_surrender_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->subscriber_surrender_policy: #{e}"
end
```

#### Using the subscriber_surrender_policy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_surrender_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)

```ruby
begin
  # Subscriber Policy Surrender
  data, status_code, headers = api_instance.subscriber_surrender_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, cash_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->subscriber_surrender_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **policy_number** | **String** | Policy Number |  |
| **cash_value** | **Float** | Cash Value |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_batch_subscriber_plan_policy

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_plan_policy(vbasoftware_database, subscriber_id, subscriber_plan_policy)

Create or Update Batch SubscriberPlanPolicy

Create or Update multiple SubscriberPlanPolicy at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Ssubscriber ID
subscriber_plan_policy = [Vba::SubscriberPlanPolicy.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example'})] # Array<SubscriberPlanPolicy> | 

begin
  # Create or Update Batch SubscriberPlanPolicy
  result = api_instance.update_batch_subscriber_plan_policy(vbasoftware_database, subscriber_id, subscriber_plan_policy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->update_batch_subscriber_plan_policy: #{e}"
end
```

#### Using the update_batch_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, subscriber_plan_policy)

```ruby
begin
  # Create or Update Batch SubscriberPlanPolicy
  data, status_code, headers = api_instance.update_batch_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, subscriber_plan_policy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->update_batch_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Ssubscriber ID |  |
| **subscriber_plan_policy** | [**Array&lt;SubscriberPlanPolicy&gt;**](SubscriberPlanPolicy.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_plan_policy

> <SubscriberPlanPolicyVBAResponse> update_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_plan_policy)

Update SubscriberPlanPolicy

Updates a specific SubscriberPlanPolicy.

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

api_instance = Vba::SubscriberPlanPoliciesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
subscriber_plan_policy = Vba::SubscriberPlanPolicy.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example'}) # SubscriberPlanPolicy | 

begin
  # Update SubscriberPlanPolicy
  result = api_instance.update_subscriber_plan_policy(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_plan_policy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->update_subscriber_plan_policy: #{e}"
end
```

#### Using the update_subscriber_plan_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPlanPolicyVBAResponse>, Integer, Hash)> update_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_plan_policy)

```ruby
begin
  # Update SubscriberPlanPolicy
  data, status_code, headers = api_instance.update_subscriber_plan_policy_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_plan_policy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPlanPolicyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPoliciesApi->update_subscriber_plan_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **policy_number** | **String** | Policy Number |  |
| **subscriber_plan_policy** | [**SubscriberPlanPolicy**](SubscriberPlanPolicy.md) |  |  |

### Return type

[**SubscriberPlanPolicyVBAResponse**](SubscriberPlanPolicyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

