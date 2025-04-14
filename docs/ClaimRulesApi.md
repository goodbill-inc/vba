# Vba::ClaimRulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule**](ClaimRulesApi.md#create_claim_rule) | **POST** /claim-rules | Create ClaimRule |
| [**delete_claim_rule**](ClaimRulesApi.md#delete_claim_rule) | **DELETE** /claim-rules/{claimRuleKey} | Delete ClaimRule |
| [**get_claim_rule**](ClaimRulesApi.md#get_claim_rule) | **GET** /claim-rules/{claimRuleKey} | Get ClaimRule |
| [**list_claim_rule**](ClaimRulesApi.md#list_claim_rule) | **GET** /claim-rules | List ClaimRule |
| [**update_batch_claim_rule**](ClaimRulesApi.md#update_batch_claim_rule) | **PUT** /claim-rules-batch | Create or Update Batch ClaimRule |
| [**update_claim_rule**](ClaimRulesApi.md#update_claim_rule) | **PUT** /claim-rules/{claimRuleKey} | Update ClaimRule |


## create_claim_rule

> <ClaimRuleVBAResponse> create_claim_rule(vbasoftware_database, claim_rule)

Create ClaimRule

Creates a new ClaimRule

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule = Vba::ClaimRule.new({claim_rule_key: 37, debug: false, process_if_error: false, process_if_override: false, required: false, system_rule: false}) # ClaimRule | 

begin
  # Create ClaimRule
  result = api_instance.create_claim_rule(vbasoftware_database, claim_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->create_claim_rule: #{e}"
end
```

#### Using the create_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleVBAResponse>, Integer, Hash)> create_claim_rule_with_http_info(vbasoftware_database, claim_rule)

```ruby
begin
  # Create ClaimRule
  data, status_code, headers = api_instance.create_claim_rule_with_http_info(vbasoftware_database, claim_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->create_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule** | [**ClaimRule**](ClaimRule.md) |  |  |

### Return type

[**ClaimRuleVBAResponse**](ClaimRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule

> delete_claim_rule(vbasoftware_database, claim_rule_key)

Delete ClaimRule

Deletes an ClaimRule

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key

begin
  # Delete ClaimRule
  api_instance.delete_claim_rule(vbasoftware_database, claim_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->delete_claim_rule: #{e}"
end
```

#### Using the delete_claim_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_with_http_info(vbasoftware_database, claim_rule_key)

```ruby
begin
  # Delete ClaimRule
  data, status_code, headers = api_instance.delete_claim_rule_with_http_info(vbasoftware_database, claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->delete_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule

> <ClaimRuleVBAResponse> get_claim_rule(vbasoftware_database, claim_rule_key)

Get ClaimRule

Gets ClaimRule

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key

begin
  # Get ClaimRule
  result = api_instance.get_claim_rule(vbasoftware_database, claim_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->get_claim_rule: #{e}"
end
```

#### Using the get_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleVBAResponse>, Integer, Hash)> get_claim_rule_with_http_info(vbasoftware_database, claim_rule_key)

```ruby
begin
  # Get ClaimRule
  data, status_code, headers = api_instance.get_claim_rule_with_http_info(vbasoftware_database, claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->get_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |

### Return type

[**ClaimRuleVBAResponse**](ClaimRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule

> <ClaimRuleListVBAResponse> list_claim_rule(vbasoftware_database, opts)

List ClaimRule

Lists all ClaimRule

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRule
  result = api_instance.list_claim_rule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->list_claim_rule: #{e}"
end
```

#### Using the list_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleListVBAResponse>, Integer, Hash)> list_claim_rule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimRule
  data, status_code, headers = api_instance.list_claim_rule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->list_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimRuleListVBAResponse**](ClaimRuleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule(vbasoftware_database, claim_rule)

Create or Update Batch ClaimRule

Create or Update multiple ClaimRule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule = [Vba::ClaimRule.new({claim_rule_key: 37, debug: false, process_if_error: false, process_if_override: false, required: false, system_rule: false})] # Array<ClaimRule> | 

begin
  # Create or Update Batch ClaimRule
  result = api_instance.update_batch_claim_rule(vbasoftware_database, claim_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->update_batch_claim_rule: #{e}"
end
```

#### Using the update_batch_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_with_http_info(vbasoftware_database, claim_rule)

```ruby
begin
  # Create or Update Batch ClaimRule
  data, status_code, headers = api_instance.update_batch_claim_rule_with_http_info(vbasoftware_database, claim_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->update_batch_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule** | [**Array&lt;ClaimRule&gt;**](ClaimRule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule

> <ClaimRuleVBAResponse> update_claim_rule(vbasoftware_database, claim_rule_key, claim_rule)

Update ClaimRule

Updates a specific ClaimRule.

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

api_instance = Vba::ClaimRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule = Vba::ClaimRule.new({claim_rule_key: 37, debug: false, process_if_error: false, process_if_override: false, required: false, system_rule: false}) # ClaimRule | 

begin
  # Update ClaimRule
  result = api_instance.update_claim_rule(vbasoftware_database, claim_rule_key, claim_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->update_claim_rule: #{e}"
end
```

#### Using the update_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleVBAResponse>, Integer, Hash)> update_claim_rule_with_http_info(vbasoftware_database, claim_rule_key, claim_rule)

```ruby
begin
  # Update ClaimRule
  data, status_code, headers = api_instance.update_claim_rule_with_http_info(vbasoftware_database, claim_rule_key, claim_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRulesApi->update_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule** | [**ClaimRule**](ClaimRule.md) |  |  |

### Return type

[**ClaimRuleVBAResponse**](ClaimRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

