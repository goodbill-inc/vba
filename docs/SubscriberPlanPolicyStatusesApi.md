# Vba::SubscriberPlanPolicyStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#create_subscriber_policy_status) | **POST** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses | Create SubscriberPolicyStatus |
| [**delete_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#delete_subscriber_policy_status) | **DELETE** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses/{policyStatus} | Delete SubscriberPolicyStatus |
| [**get_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#get_subscriber_policy_status) | **GET** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses/{policyStatus} | Get SubscriberPolicyStatus |
| [**list_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#list_subscriber_policy_status) | **GET** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses | List SubscriberPolicyStatus |
| [**update_batch_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#update_batch_subscriber_policy_status) | **PUT** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses-batch | Create or Update Batch SubscriberPolicyStatus |
| [**update_subscriber_policy_status**](SubscriberPlanPolicyStatusesApi.md#update_subscriber_policy_status) | **PUT** /subscribers/{subscriberID}/plans/{planID}/benefits/{benefitCode}/policies/{policyNumber}/statuses/{policyStatus} | Update SubscriberPolicyStatus |


## create_subscriber_policy_status

> <SubscriberPolicyStatusVBAResponse> create_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)

Create SubscriberPolicyStatus

Creates a new SubscriberPolicyStatus

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
subscriber_policy_status = Vba::SubscriberPolicyStatus.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example', policy_status: 'policy_status_example', effective_date: Time.now}) # SubscriberPolicyStatus | 

begin
  # Create SubscriberPolicyStatus
  result = api_instance.create_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->create_subscriber_policy_status: #{e}"
end
```

#### Using the create_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPolicyStatusVBAResponse>, Integer, Hash)> create_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)

```ruby
begin
  # Create SubscriberPolicyStatus
  data, status_code, headers = api_instance.create_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->create_subscriber_policy_status_with_http_info: #{e}"
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
| **subscriber_policy_status** | [**SubscriberPolicyStatus**](SubscriberPolicyStatus.md) |  |  |

### Return type

[**SubscriberPolicyStatusVBAResponse**](SubscriberPolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_policy_status

> delete_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)

Delete SubscriberPolicyStatus

Deletes an SubscriberPolicyStatus

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
policy_status = 'policy_status_example' # String | Policy Status

begin
  # Delete SubscriberPolicyStatus
  api_instance.delete_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->delete_subscriber_policy_status: #{e}"
end
```

#### Using the delete_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)

```ruby
begin
  # Delete SubscriberPolicyStatus
  data, status_code, headers = api_instance.delete_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->delete_subscriber_policy_status_with_http_info: #{e}"
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
| **policy_status** | **String** | Policy Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_policy_status

> <SubscriberPolicyStatusVBAResponse> get_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)

Get SubscriberPolicyStatus

Gets SubscriberPolicyStatus

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
policy_status = 'policy_status_example' # String | Policy Status

begin
  # Get SubscriberPolicyStatus
  result = api_instance.get_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->get_subscriber_policy_status: #{e}"
end
```

#### Using the get_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPolicyStatusVBAResponse>, Integer, Hash)> get_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)

```ruby
begin
  # Get SubscriberPolicyStatus
  data, status_code, headers = api_instance.get_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->get_subscriber_policy_status_with_http_info: #{e}"
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
| **policy_status** | **String** | Policy Status |  |

### Return type

[**SubscriberPolicyStatusVBAResponse**](SubscriberPolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_policy_status

> <SubscriberPolicyStatusListVBAResponse> list_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, opts)

List SubscriberPolicyStatus

Lists all SubscriberPolicyStatus for the given subscriberID and planID and benefitCode and policyNumber

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberPolicyStatus
  result = api_instance.list_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->list_subscriber_policy_status: #{e}"
end
```

#### Using the list_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPolicyStatusListVBAResponse>, Integer, Hash)> list_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, opts)

```ruby
begin
  # List SubscriberPolicyStatus
  data, status_code, headers = api_instance.list_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPolicyStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->list_subscriber_policy_status_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberPolicyStatusListVBAResponse**](SubscriberPolicyStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_policy_status

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)

Create or Update Batch SubscriberPolicyStatus

Create or Update multiple SubscriberPolicyStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
subscriber_policy_status = [Vba::SubscriberPolicyStatus.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example', policy_status: 'policy_status_example', effective_date: Time.now})] # Array<SubscriberPolicyStatus> | 

begin
  # Create or Update Batch SubscriberPolicyStatus
  result = api_instance.update_batch_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->update_batch_subscriber_policy_status: #{e}"
end
```

#### Using the update_batch_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)

```ruby
begin
  # Create or Update Batch SubscriberPolicyStatus
  data, status_code, headers = api_instance.update_batch_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, subscriber_policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->update_batch_subscriber_policy_status_with_http_info: #{e}"
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
| **subscriber_policy_status** | [**Array&lt;SubscriberPolicyStatus&gt;**](SubscriberPolicyStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_policy_status

> <SubscriberPolicyStatusVBAResponse> update_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status, subscriber_policy_status)

Update SubscriberPolicyStatus

Updates a specific SubscriberPolicyStatus.

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

api_instance = Vba::SubscriberPlanPolicyStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
policy_number = 'policy_number_example' # String | Policy Number
policy_status = 'policy_status_example' # String | Policy Status
subscriber_policy_status = Vba::SubscriberPolicyStatus.new({subscriber_id: 'subscriber_id_example', plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', policy_number: 'policy_number_example', policy_status: 'policy_status_example', effective_date: Time.now}) # SubscriberPolicyStatus | 

begin
  # Update SubscriberPolicyStatus
  result = api_instance.update_subscriber_policy_status(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status, subscriber_policy_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->update_subscriber_policy_status: #{e}"
end
```

#### Using the update_subscriber_policy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberPolicyStatusVBAResponse>, Integer, Hash)> update_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status, subscriber_policy_status)

```ruby
begin
  # Update SubscriberPolicyStatus
  data, status_code, headers = api_instance.update_subscriber_policy_status_with_http_info(vbasoftware_database, subscriber_id, plan_id, benefit_code, policy_number, policy_status, subscriber_policy_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberPolicyStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPlanPolicyStatusesApi->update_subscriber_policy_status_with_http_info: #{e}"
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
| **policy_status** | **String** | Policy Status |  |
| **subscriber_policy_status** | [**SubscriberPolicyStatus**](SubscriberPolicyStatus.md) |  |  |

### Return type

[**SubscriberPolicyStatusVBAResponse**](SubscriberPolicyStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

