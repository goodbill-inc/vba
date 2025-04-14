# Vba::CarePlanRuleCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#create_care_plan_rule_criteria) | **POST** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias | Create CarePlanRuleCriteria |
| [**delete_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#delete_care_plan_rule_criteria) | **DELETE** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey} | Delete CarePlanRuleCriteria |
| [**get_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#get_care_plan_rule_criteria) | **GET** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey} | Get CarePlanRuleCriteria |
| [**list_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#list_care_plan_rule_criteria) | **GET** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias | List CarePlanRuleCriteria |
| [**update_batch_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#update_batch_care_plan_rule_criteria) | **PUT** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias-batch | Create or Update Batch CarePlanRuleCriteria |
| [**update_care_plan_rule_criteria**](CarePlanRuleCriteriasApi.md#update_care_plan_rule_criteria) | **PUT** /care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey} | Update CarePlanRuleCriteria |


## create_care_plan_rule_criteria

> <CarePlanRuleCriteriaVBAResponse> create_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)

Create CarePlanRuleCriteria

Creates a new CarePlanRuleCriteria

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_criteria = Vba::CarePlanRuleCriteria.new({care_plan_rule_criteria_key: 37, care_plan_rule_key: 37, question_care_plan_detail_key: 37}) # CarePlanRuleCriteria | 

begin
  # Create CarePlanRuleCriteria
  result = api_instance.create_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->create_care_plan_rule_criteria: #{e}"
end
```

#### Using the create_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleCriteriaVBAResponse>, Integer, Hash)> create_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)

```ruby
begin
  # Create CarePlanRuleCriteria
  data, status_code, headers = api_instance.create_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->create_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_criteria** | [**CarePlanRuleCriteria**](CarePlanRuleCriteria.md) |  |  |

### Return type

[**CarePlanRuleCriteriaVBAResponse**](CarePlanRuleCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_rule_criteria

> delete_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)

Delete CarePlanRuleCriteria

Deletes an CarePlanRuleCriteria

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_criteria_key = 56 # Integer | CarePlanRuleCriteria Key

begin
  # Delete CarePlanRuleCriteria
  api_instance.delete_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->delete_care_plan_rule_criteria: #{e}"
end
```

#### Using the delete_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)

```ruby
begin
  # Delete CarePlanRuleCriteria
  data, status_code, headers = api_instance.delete_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->delete_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_criteria_key** | **Integer** | CarePlanRuleCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_rule_criteria

> <CarePlanRuleCriteriaVBAResponse> get_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)

Get CarePlanRuleCriteria

Gets CarePlanRuleCriteria

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_criteria_key = 56 # Integer | CarePlanRuleCriteria Key

begin
  # Get CarePlanRuleCriteria
  result = api_instance.get_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->get_care_plan_rule_criteria: #{e}"
end
```

#### Using the get_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleCriteriaVBAResponse>, Integer, Hash)> get_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)

```ruby
begin
  # Get CarePlanRuleCriteria
  data, status_code, headers = api_instance.get_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->get_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_criteria_key** | **Integer** | CarePlanRuleCriteria Key |  |

### Return type

[**CarePlanRuleCriteriaVBAResponse**](CarePlanRuleCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_rule_criteria

> <CarePlanRuleCriteriaListVBAResponse> list_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)

List CarePlanRuleCriteria

Lists all CarePlanRuleCriteria for the given carePlanRuleKey

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanRuleCriteria
  result = api_instance.list_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->list_care_plan_rule_criteria: #{e}"
end
```

#### Using the list_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleCriteriaListVBAResponse>, Integer, Hash)> list_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)

```ruby
begin
  # List CarePlanRuleCriteria
  data, status_code, headers = api_instance.list_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->list_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanRuleCriteriaListVBAResponse**](CarePlanRuleCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_rule_criteria

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)

Create or Update Batch CarePlanRuleCriteria

Create or Update multiple CarePlanRuleCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_criteria = [Vba::CarePlanRuleCriteria.new({care_plan_rule_criteria_key: 37, care_plan_rule_key: 37, question_care_plan_detail_key: 37})] # Array<CarePlanRuleCriteria> | 

begin
  # Create or Update Batch CarePlanRuleCriteria
  result = api_instance.update_batch_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->update_batch_care_plan_rule_criteria: #{e}"
end
```

#### Using the update_batch_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)

```ruby
begin
  # Create or Update Batch CarePlanRuleCriteria
  data, status_code, headers = api_instance.update_batch_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->update_batch_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_criteria** | [**Array&lt;CarePlanRuleCriteria&gt;**](CarePlanRuleCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_rule_criteria

> <CarePlanRuleCriteriaVBAResponse> update_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria)

Update CarePlanRuleCriteria

Updates a specific CarePlanRuleCriteria.

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

api_instance = Vba::CarePlanRuleCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule_criteria_key = 56 # Integer | CarePlanRuleCriteria Key
care_plan_rule_criteria = Vba::CarePlanRuleCriteria.new({care_plan_rule_criteria_key: 37, care_plan_rule_key: 37, question_care_plan_detail_key: 37}) # CarePlanRuleCriteria | 

begin
  # Update CarePlanRuleCriteria
  result = api_instance.update_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->update_care_plan_rule_criteria: #{e}"
end
```

#### Using the update_care_plan_rule_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleCriteriaVBAResponse>, Integer, Hash)> update_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria)

```ruby
begin
  # Update CarePlanRuleCriteria
  data, status_code, headers = api_instance.update_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRuleCriteriasApi->update_care_plan_rule_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule_criteria_key** | **Integer** | CarePlanRuleCriteria Key |  |
| **care_plan_rule_criteria** | [**CarePlanRuleCriteria**](CarePlanRuleCriteria.md) |  |  |

### Return type

[**CarePlanRuleCriteriaVBAResponse**](CarePlanRuleCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

