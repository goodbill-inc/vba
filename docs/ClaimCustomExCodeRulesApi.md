# Vba::ClaimCustomExCodeRulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#create_claim_custom_ex_code_rule) | **POST** /claim-custom-ex-code-rules | Create ClaimCustomExCodeRule |
| [**delete_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#delete_claim_custom_ex_code_rule) | **DELETE** /claim-custom-ex-code-rules/{customExCodeRuleKey} | Delete ClaimCustomExCodeRule |
| [**get_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#get_claim_custom_ex_code_rule) | **GET** /claim-custom-ex-code-rules/{customExCodeRuleKey} | Get ClaimCustomExCodeRule |
| [**list_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#list_claim_custom_ex_code_rule) | **GET** /claim-custom-ex-code-rules | List ClaimCustomExCodeRule |
| [**update_batch_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#update_batch_claim_custom_ex_code_rule) | **PUT** /claim-custom-ex-code-rules-batch | Create or Update Batch ClaimCustomExCodeRule |
| [**update_claim_custom_ex_code_rule**](ClaimCustomExCodeRulesApi.md#update_claim_custom_ex_code_rule) | **PUT** /claim-custom-ex-code-rules/{customExCodeRuleKey} | Update ClaimCustomExCodeRule |


## create_claim_custom_ex_code_rule

> <ClaimCustomExCodeRuleVBAResponse> create_claim_custom_ex_code_rule(vbasoftware_database, claim_custom_ex_code_rule)

Create ClaimCustomExCodeRule

Creates a new ClaimCustomExCodeRule

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_custom_ex_code_rule = Vba::ClaimCustomExCodeRule.new({claim_custom_ex_code_rule_key: 37, use_detail_ex_code: false}) # ClaimCustomExCodeRule | 

begin
  # Create ClaimCustomExCodeRule
  result = api_instance.create_claim_custom_ex_code_rule(vbasoftware_database, claim_custom_ex_code_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->create_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the create_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCustomExCodeRuleVBAResponse>, Integer, Hash)> create_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, claim_custom_ex_code_rule)

```ruby
begin
  # Create ClaimCustomExCodeRule
  data, status_code, headers = api_instance.create_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, claim_custom_ex_code_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCustomExCodeRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->create_claim_custom_ex_code_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_custom_ex_code_rule** | [**ClaimCustomExCodeRule**](ClaimCustomExCodeRule.md) |  |  |

### Return type

[**ClaimCustomExCodeRuleVBAResponse**](ClaimCustomExCodeRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_custom_ex_code_rule

> delete_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key)

Delete ClaimCustomExCodeRule

Deletes an ClaimCustomExCodeRule

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
custom_ex_code_rule_key = 56 # Integer | ClaimCustomExCodeRule Key

begin
  # Delete ClaimCustomExCodeRule
  api_instance.delete_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->delete_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the delete_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key)

```ruby
begin
  # Delete ClaimCustomExCodeRule
  data, status_code, headers = api_instance.delete_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->delete_claim_custom_ex_code_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **custom_ex_code_rule_key** | **Integer** | ClaimCustomExCodeRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_custom_ex_code_rule

> <ClaimCustomExCodeRuleVBAResponse> get_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key)

Get ClaimCustomExCodeRule

Gets ClaimCustomExCodeRule

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
custom_ex_code_rule_key = 56 # Integer | ClaimCustomExCodeRule Key

begin
  # Get ClaimCustomExCodeRule
  result = api_instance.get_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->get_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the get_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCustomExCodeRuleVBAResponse>, Integer, Hash)> get_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key)

```ruby
begin
  # Get ClaimCustomExCodeRule
  data, status_code, headers = api_instance.get_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCustomExCodeRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->get_claim_custom_ex_code_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **custom_ex_code_rule_key** | **Integer** | ClaimCustomExCodeRule Key |  |

### Return type

[**ClaimCustomExCodeRuleVBAResponse**](ClaimCustomExCodeRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_custom_ex_code_rule

> <ClaimCustomExCodeRuleListVBAResponse> list_claim_custom_ex_code_rule(vbasoftware_database, opts)

List ClaimCustomExCodeRule

Lists all ClaimCustomExCodeRule

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimCustomExCodeRule
  result = api_instance.list_claim_custom_ex_code_rule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->list_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the list_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCustomExCodeRuleListVBAResponse>, Integer, Hash)> list_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimCustomExCodeRule
  data, status_code, headers = api_instance.list_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCustomExCodeRuleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->list_claim_custom_ex_code_rule_with_http_info: #{e}"
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

[**ClaimCustomExCodeRuleListVBAResponse**](ClaimCustomExCodeRuleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_custom_ex_code_rule

> <MultiCodeResponseListVBAResponse> update_batch_claim_custom_ex_code_rule(vbasoftware_database, claim_custom_ex_code_rule)

Create or Update Batch ClaimCustomExCodeRule

Create or Update multiple ClaimCustomExCodeRule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_custom_ex_code_rule = [Vba::ClaimCustomExCodeRule.new({claim_custom_ex_code_rule_key: 37, use_detail_ex_code: false})] # Array<ClaimCustomExCodeRule> | 

begin
  # Create or Update Batch ClaimCustomExCodeRule
  result = api_instance.update_batch_claim_custom_ex_code_rule(vbasoftware_database, claim_custom_ex_code_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->update_batch_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the update_batch_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, claim_custom_ex_code_rule)

```ruby
begin
  # Create or Update Batch ClaimCustomExCodeRule
  data, status_code, headers = api_instance.update_batch_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, claim_custom_ex_code_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->update_batch_claim_custom_ex_code_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_custom_ex_code_rule** | [**Array&lt;ClaimCustomExCodeRule&gt;**](ClaimCustomExCodeRule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_custom_ex_code_rule

> <ClaimCustomExCodeRuleVBAResponse> update_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key, claim_custom_ex_code_rule)

Update ClaimCustomExCodeRule

Updates a specific ClaimCustomExCodeRule.

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

api_instance = Vba::ClaimCustomExCodeRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
custom_ex_code_rule_key = 56 # Integer | ClaimCustomExCodeRule Key
claim_custom_ex_code_rule = Vba::ClaimCustomExCodeRule.new({claim_custom_ex_code_rule_key: 37, use_detail_ex_code: false}) # ClaimCustomExCodeRule | 

begin
  # Update ClaimCustomExCodeRule
  result = api_instance.update_claim_custom_ex_code_rule(vbasoftware_database, custom_ex_code_rule_key, claim_custom_ex_code_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->update_claim_custom_ex_code_rule: #{e}"
end
```

#### Using the update_claim_custom_ex_code_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCustomExCodeRuleVBAResponse>, Integer, Hash)> update_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key, claim_custom_ex_code_rule)

```ruby
begin
  # Update ClaimCustomExCodeRule
  data, status_code, headers = api_instance.update_claim_custom_ex_code_rule_with_http_info(vbasoftware_database, custom_ex_code_rule_key, claim_custom_ex_code_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCustomExCodeRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCustomExCodeRulesApi->update_claim_custom_ex_code_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **custom_ex_code_rule_key** | **Integer** | ClaimCustomExCodeRule Key |  |
| **claim_custom_ex_code_rule** | [**ClaimCustomExCodeRule**](ClaimCustomExCodeRule.md) |  |  |

### Return type

[**ClaimCustomExCodeRuleVBAResponse**](ClaimCustomExCodeRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

