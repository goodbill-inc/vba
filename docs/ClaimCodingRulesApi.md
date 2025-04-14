# Vba::ClaimCodingRulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_coding_rule**](ClaimCodingRulesApi.md#create_claim_coding_rule) | **POST** /claim-coding-rules | Create ClaimCodingRule |
| [**delete_claim_coding_rule**](ClaimCodingRulesApi.md#delete_claim_coding_rule) | **DELETE** /claim-coding-rules/{claimCodingRuleKey} | Delete ClaimCodingRule |
| [**get_claim_coding_rule**](ClaimCodingRulesApi.md#get_claim_coding_rule) | **GET** /claim-coding-rules/{claimCodingRuleKey} | Get ClaimCodingRule |
| [**list_claim_coding_rule**](ClaimCodingRulesApi.md#list_claim_coding_rule) | **GET** /claim-coding-rules | List ClaimCodingRule |
| [**update_batch_claim_coding_rule**](ClaimCodingRulesApi.md#update_batch_claim_coding_rule) | **PUT** /claim-coding-rules-batch | Create or Update Batch ClaimCodingRule |
| [**update_claim_coding_rule**](ClaimCodingRulesApi.md#update_claim_coding_rule) | **PUT** /claim-coding-rules/{claimCodingRuleKey} | Update ClaimCodingRule |


## create_claim_coding_rule

> <ClaimCodingRuleVBAResponse> create_claim_coding_rule(vbasoftware_database, claim_coding_rule)

Create ClaimCodingRule

Creates a new ClaimCodingRule

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule = Vba::ClaimCodingRule.new({claim_coding_rule_key: 37}) # ClaimCodingRule | 

begin
  # Create ClaimCodingRule
  result = api_instance.create_claim_coding_rule(vbasoftware_database, claim_coding_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->create_claim_coding_rule: #{e}"
end
```

#### Using the create_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleVBAResponse>, Integer, Hash)> create_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule)

```ruby
begin
  # Create ClaimCodingRule
  data, status_code, headers = api_instance.create_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->create_claim_coding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule** | [**ClaimCodingRule**](ClaimCodingRule.md) |  |  |

### Return type

[**ClaimCodingRuleVBAResponse**](ClaimCodingRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_coding_rule

> delete_claim_coding_rule(vbasoftware_database, claim_coding_rule_key)

Delete ClaimCodingRule

Deletes an ClaimCodingRule

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule_key = 56 # Integer | ClaimCodingRule Key

begin
  # Delete ClaimCodingRule
  api_instance.delete_claim_coding_rule(vbasoftware_database, claim_coding_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->delete_claim_coding_rule: #{e}"
end
```

#### Using the delete_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key)

```ruby
begin
  # Delete ClaimCodingRule
  data, status_code, headers = api_instance.delete_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->delete_claim_coding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule_key** | **Integer** | ClaimCodingRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_coding_rule

> <ClaimCodingRuleVBAResponse> get_claim_coding_rule(vbasoftware_database, claim_coding_rule_key)

Get ClaimCodingRule

Gets ClaimCodingRule

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule_key = 56 # Integer | ClaimCodingRule Key

begin
  # Get ClaimCodingRule
  result = api_instance.get_claim_coding_rule(vbasoftware_database, claim_coding_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->get_claim_coding_rule: #{e}"
end
```

#### Using the get_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleVBAResponse>, Integer, Hash)> get_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key)

```ruby
begin
  # Get ClaimCodingRule
  data, status_code, headers = api_instance.get_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->get_claim_coding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule_key** | **Integer** | ClaimCodingRule Key |  |

### Return type

[**ClaimCodingRuleVBAResponse**](ClaimCodingRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_coding_rule

> <ClaimCodingRuleListVBAResponse> list_claim_coding_rule(vbasoftware_database, opts)

List ClaimCodingRule

Lists all ClaimCodingRule

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimCodingRule
  result = api_instance.list_claim_coding_rule(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->list_claim_coding_rule: #{e}"
end
```

#### Using the list_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleListVBAResponse>, Integer, Hash)> list_claim_coding_rule_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimCodingRule
  data, status_code, headers = api_instance.list_claim_coding_rule_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->list_claim_coding_rule_with_http_info: #{e}"
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

[**ClaimCodingRuleListVBAResponse**](ClaimCodingRuleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_coding_rule

> <MultiCodeResponseListVBAResponse> update_batch_claim_coding_rule(vbasoftware_database, claim_coding_rule)

Create or Update Batch ClaimCodingRule

Create or Update multiple ClaimCodingRule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule = [Vba::ClaimCodingRule.new({claim_coding_rule_key: 37})] # Array<ClaimCodingRule> | 

begin
  # Create or Update Batch ClaimCodingRule
  result = api_instance.update_batch_claim_coding_rule(vbasoftware_database, claim_coding_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->update_batch_claim_coding_rule: #{e}"
end
```

#### Using the update_batch_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule)

```ruby
begin
  # Create or Update Batch ClaimCodingRule
  data, status_code, headers = api_instance.update_batch_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->update_batch_claim_coding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule** | [**Array&lt;ClaimCodingRule&gt;**](ClaimCodingRule.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_coding_rule

> <ClaimCodingRuleVBAResponse> update_claim_coding_rule(vbasoftware_database, claim_coding_rule_key, claim_coding_rule)

Update ClaimCodingRule

Updates a specific ClaimCodingRule.

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

api_instance = Vba::ClaimCodingRulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule_key = 56 # Integer | ClaimCodingRule Key
claim_coding_rule = Vba::ClaimCodingRule.new({claim_coding_rule_key: 37}) # ClaimCodingRule | 

begin
  # Update ClaimCodingRule
  result = api_instance.update_claim_coding_rule(vbasoftware_database, claim_coding_rule_key, claim_coding_rule)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->update_claim_coding_rule: #{e}"
end
```

#### Using the update_claim_coding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleVBAResponse>, Integer, Hash)> update_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key, claim_coding_rule)

```ruby
begin
  # Update ClaimCodingRule
  data, status_code, headers = api_instance.update_claim_coding_rule_with_http_info(vbasoftware_database, claim_coding_rule_key, claim_coding_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRulesApi->update_claim_coding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule_key** | **Integer** | ClaimCodingRule Key |  |
| **claim_coding_rule** | [**ClaimCodingRule**](ClaimCodingRule.md) |  |  |

### Return type

[**ClaimCodingRuleVBAResponse**](ClaimCodingRuleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

