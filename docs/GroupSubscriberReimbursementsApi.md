# Vba::GroupSubscriberReimbursementsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#create_subscriber_reimbursement) | **POST** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements | Create SubscriberReimbursement |
| [**delete_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#delete_subscriber_reimbursement) | **DELETE** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey} | Delete SubscriberReimbursement |
| [**get_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#get_subscriber_reimbursement) | **GET** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey} | Get SubscriberReimbursement |
| [**list_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#list_subscriber_reimbursement) | **GET** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements | List SubscriberReimbursement |
| [**update_batch_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#update_batch_subscriber_reimbursement) | **PUT** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements-batch | Create or Update Batch SubscriberReimbursement |
| [**update_subscriber_reimbursement**](GroupSubscriberReimbursementsApi.md#update_subscriber_reimbursement) | **PUT** /groups/{groupID}/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/subscriber-reimbursements/{subscriberReimbursementKey} | Update SubscriberReimbursement |


## create_subscriber_reimbursement

> <SubscriberReimbursementVBAResponse> create_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)

Create SubscriberReimbursement

Creates a new SubscriberReimbursement

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
subscriber_reimbursement = Vba::SubscriberReimbursement.new({subscriber_reimbursement_key: 37, benefit_code: 'benefit_code_example', group_id: 'group_id_example', max_id: 'max_id_example', plan_id: 'plan_id_example'}) # SubscriberReimbursement | 

begin
  # Create SubscriberReimbursement
  result = api_instance.create_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->create_subscriber_reimbursement: #{e}"
end
```

#### Using the create_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberReimbursementVBAResponse>, Integer, Hash)> create_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)

```ruby
begin
  # Create SubscriberReimbursement
  data, status_code, headers = api_instance.create_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberReimbursementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->create_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **subscriber_reimbursement** | [**SubscriberReimbursement**](SubscriberReimbursement.md) |  |  |

### Return type

[**SubscriberReimbursementVBAResponse**](SubscriberReimbursementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_reimbursement

> delete_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)

Delete SubscriberReimbursement

Deletes an SubscriberReimbursement

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
subscriber_reimbursement_key = 56 # Integer | SubscriberReimbursement Key

begin
  # Delete SubscriberReimbursement
  api_instance.delete_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->delete_subscriber_reimbursement: #{e}"
end
```

#### Using the delete_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)

```ruby
begin
  # Delete SubscriberReimbursement
  data, status_code, headers = api_instance.delete_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->delete_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **subscriber_reimbursement_key** | **Integer** | SubscriberReimbursement Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_reimbursement

> <SubscriberReimbursementVBAResponse> get_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)

Get SubscriberReimbursement

Gets SubscriberReimbursement

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
subscriber_reimbursement_key = 56 # Integer | SubscriberReimbursement Key

begin
  # Get SubscriberReimbursement
  result = api_instance.get_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->get_subscriber_reimbursement: #{e}"
end
```

#### Using the get_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberReimbursementVBAResponse>, Integer, Hash)> get_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)

```ruby
begin
  # Get SubscriberReimbursement
  data, status_code, headers = api_instance.get_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberReimbursementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->get_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **subscriber_reimbursement_key** | **Integer** | SubscriberReimbursement Key |  |

### Return type

[**SubscriberReimbursementVBAResponse**](SubscriberReimbursementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_reimbursement

> <SubscriberReimbursementListVBAResponse> list_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts)

List SubscriberReimbursement

Lists all SubscriberReimbursement for the given groupID and planID and benefitCode and maxID

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberReimbursement
  result = api_instance.list_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->list_subscriber_reimbursement: #{e}"
end
```

#### Using the list_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberReimbursementListVBAResponse>, Integer, Hash)> list_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts)

```ruby
begin
  # List SubscriberReimbursement
  data, status_code, headers = api_instance.list_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberReimbursementListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->list_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberReimbursementListVBAResponse**](SubscriberReimbursementListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_reimbursement

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)

Create or Update Batch SubscriberReimbursement

Create or Update multiple SubscriberReimbursement at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
subscriber_reimbursement = [Vba::SubscriberReimbursement.new({subscriber_reimbursement_key: 37, benefit_code: 'benefit_code_example', group_id: 'group_id_example', max_id: 'max_id_example', plan_id: 'plan_id_example'})] # Array<SubscriberReimbursement> | 

begin
  # Create or Update Batch SubscriberReimbursement
  result = api_instance.update_batch_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->update_batch_subscriber_reimbursement: #{e}"
end
```

#### Using the update_batch_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)

```ruby
begin
  # Create or Update Batch SubscriberReimbursement
  data, status_code, headers = api_instance.update_batch_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->update_batch_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **subscriber_reimbursement** | [**Array&lt;SubscriberReimbursement&gt;**](SubscriberReimbursement.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_reimbursement

> <SubscriberReimbursementVBAResponse> update_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement)

Update SubscriberReimbursement

Updates a specific SubscriberReimbursement.

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

api_instance = Vba::GroupSubscriberReimbursementsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
subscriber_reimbursement_key = 56 # Integer | SubscriberReimbursement Key
subscriber_reimbursement = Vba::SubscriberReimbursement.new({subscriber_reimbursement_key: 37, benefit_code: 'benefit_code_example', group_id: 'group_id_example', max_id: 'max_id_example', plan_id: 'plan_id_example'}) # SubscriberReimbursement | 

begin
  # Update SubscriberReimbursement
  result = api_instance.update_subscriber_reimbursement(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->update_subscriber_reimbursement: #{e}"
end
```

#### Using the update_subscriber_reimbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberReimbursementVBAResponse>, Integer, Hash)> update_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement)

```ruby
begin
  # Update SubscriberReimbursement
  data, status_code, headers = api_instance.update_subscriber_reimbursement_with_http_info(vbasoftware_database, group_id, plan_id, benefit_code, max_id, subscriber_reimbursement_key, subscriber_reimbursement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberReimbursementVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupSubscriberReimbursementsApi->update_subscriber_reimbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **subscriber_reimbursement_key** | **Integer** | SubscriberReimbursement Key |  |
| **subscriber_reimbursement** | [**SubscriberReimbursement**](SubscriberReimbursement.md) |  |  |

### Return type

[**SubscriberReimbursementVBAResponse**](SubscriberReimbursementVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

