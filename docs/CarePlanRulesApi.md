# Vba::CarePlanRulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_rule**](CarePlanRulesApi.md#create_care_plan_rule) | **POST** /care-plans/{carePlanKey}/rules | Create CarePlanRule |
| [**delete_care_plan_rule**](CarePlanRulesApi.md#delete_care_plan_rule) | **DELETE** /care-plans/{carePlanKey}/rules/{carePlanRuleKey} | Delete CarePlanRule |
| [**get_care_plan_rule**](CarePlanRulesApi.md#get_care_plan_rule) | **GET** /care-plans/{carePlanKey}/rules/{carePlanRuleKey} | Get CarePlanRule |
| [**list_care_plan_rule**](CarePlanRulesApi.md#list_care_plan_rule) | **GET** /care-plans/{carePlanKey}/rules | List CarePlanRule |
| [**update_batch_care_plan_rule**](CarePlanRulesApi.md#update_batch_care_plan_rule) | **PUT** /care-plans/{carePlanKey}/rules-batch | Create or Update Batch CarePlanRule |
| [**update_care_plan_rule**](CarePlanRulesApi.md#update_care_plan_rule) | **PUT** /care-plans/{carePlanKey}/rules/{carePlanRuleKey} | Update CarePlanRule |


## create_care_plan_rule

> <CarePlanRuleVBAResponse> create_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule)

Create CarePlanRule

Creates a new CarePlanRule

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule = Vba::CarePlanRule.new({care_plan_rule_key: 37, care_plan_key: 37}) # CarePlanRule | 

begin
  # Create CarePlanRule
  result = api_instance.create_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->create_care_plan_rule: #{e}"
end
```

#### Using the create_care_plan_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleVBAResponse>, Integer, Hash)> create_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule)

```ruby
begin
  # Create CarePlanRule
  data, status_code, headers = api_instance.create_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->create_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule** | [**CarePlanRule**](CarePlanRule.md) |  |  |

### Return type

[**CarePlanRuleVBAResponse**](CarePlanRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_rule

> delete_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key)

Delete CarePlanRule

Deletes an CarePlanRule

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key

begin
  # Delete CarePlanRule
  api_instance.delete_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->delete_care_plan_rule: #{e}"
end
```

#### Using the delete_care_plan_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key)

```ruby
begin
  # Delete CarePlanRule
  data, status_code, headers = api_instance.delete_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->delete_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_rule

> <CarePlanRuleVBAResponse> get_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key)

Get CarePlanRule

Gets CarePlanRule

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key

begin
  # Get CarePlanRule
  result = api_instance.get_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->get_care_plan_rule: #{e}"
end
```

#### Using the get_care_plan_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleVBAResponse>, Integer, Hash)> get_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key)

```ruby
begin
  # Get CarePlanRule
  data, status_code, headers = api_instance.get_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->get_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |

### Return type

[**CarePlanRuleVBAResponse**](CarePlanRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_rule

> <CarePlanRuleListVBAResponse> list_care_plan_rule(vbasoftware_database, care_plan_key, opts)

List CarePlanRule

Lists all CarePlanRule for the given carePlanKey

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanRule
  result = api_instance.list_care_plan_rule(vbasoftware_database, care_plan_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->list_care_plan_rule: #{e}"
end
```

#### Using the list_care_plan_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleListVBAResponse>, Integer, Hash)> list_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, opts)

```ruby
begin
  # List CarePlanRule
  data, status_code, headers = api_instance.list_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->list_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanRuleListVBAResponse**](CarePlanRuleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_rule

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule)

Create or Update Batch CarePlanRule

Create or Update multiple CarePlanRule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule = [Vba::CarePlanRule.new({care_plan_rule_key: 37, care_plan_key: 37})] # Array<CarePlanRule> | 

begin
  # Create or Update Batch CarePlanRule
  result = api_instance.update_batch_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->update_batch_care_plan_rule: #{e}"
end
```

#### Using the update_batch_care_plan_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule)

```ruby
begin
  # Create or Update Batch CarePlanRule
  data, status_code, headers = api_instance.update_batch_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->update_batch_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule** | [**Array&lt;CarePlanRule&gt;**](CarePlanRule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_rule

> <CarePlanRuleVBAResponse> update_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule)

Update CarePlanRule

Updates a specific CarePlanRule.

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

api_instance = Vba::CarePlanRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_rule_key = 56 # Integer | CarePlanRule Key
care_plan_rule = Vba::CarePlanRule.new({care_plan_rule_key: 37, care_plan_key: 37}) # CarePlanRule | 

begin
  # Update CarePlanRule
  result = api_instance.update_care_plan_rule(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->update_care_plan_rule: #{e}"
end
```

#### Using the update_care_plan_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanRuleVBAResponse>, Integer, Hash)> update_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule)

```ruby
begin
  # Update CarePlanRule
  data, status_code, headers = api_instance.update_care_plan_rule_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanRulesApi->update_care_plan_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_rule_key** | **Integer** | CarePlanRule Key |  |
| **care_plan_rule** | [**CarePlanRule**](CarePlanRule.md) |  |  |

### Return type

[**CarePlanRuleVBAResponse**](CarePlanRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

