# Vba::ClaimRuleDependentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_dependent**](ClaimRuleDependentsApi.md#create_claim_rule_dependent) | **POST** /claim-rules/{claimRuleKey}/dependent-claim-rules | Create ClaimRuleDependent |
| [**delete_claim_rule_dependent**](ClaimRuleDependentsApi.md#delete_claim_rule_dependent) | **DELETE** /claim-rules/{claimRuleKey}/dependent-claim-rules/{dependentClaimRuleKey} | Delete ClaimRuleDependent |
| [**get_claim_rule_dependent**](ClaimRuleDependentsApi.md#get_claim_rule_dependent) | **GET** /claim-rules/{claimRuleKey}/dependent-claim-rules/{dependentClaimRuleKey} | Get ClaimRuleDependent |
| [**list_claim_rule_dependent**](ClaimRuleDependentsApi.md#list_claim_rule_dependent) | **GET** /claim-rules/{claimRuleKey}/dependent-claim-rules | List ClaimRuleDependent |
| [**update_batch_claim_rule_dependent**](ClaimRuleDependentsApi.md#update_batch_claim_rule_dependent) | **PUT** /claim-rules/{claimRuleKey}/dependent-claim-rules-batch | Create or Update Batch ClaimRuleDependent |


## create_claim_rule_dependent

> <ClaimRuleDependentVBAResponse> create_claim_rule_dependent(vbasoftware_database, claim_rule_key, claim_rule_dependent)

Create ClaimRuleDependent

Creates a new ClaimRuleDependent

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

api_instance = Vba::ClaimRuleDependentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_dependent = Vba::ClaimRuleDependent.new({claim_rule_key: 37, dependent_claim_rule_key: 37}) # ClaimRuleDependent | 

begin
  # Create ClaimRuleDependent
  result = api_instance.create_claim_rule_dependent(vbasoftware_database, claim_rule_key, claim_rule_dependent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->create_claim_rule_dependent: #{e}"
end
```

#### Using the create_claim_rule_dependent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleDependentVBAResponse>, Integer, Hash)> create_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_dependent)

```ruby
begin
  # Create ClaimRuleDependent
  data, status_code, headers = api_instance.create_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_dependent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleDependentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->create_claim_rule_dependent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_dependent** | [**ClaimRuleDependent**](ClaimRuleDependent.md) |  |  |

### Return type

[**ClaimRuleDependentVBAResponse**](ClaimRuleDependentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_dependent

> delete_claim_rule_dependent(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)

Delete ClaimRuleDependent

Deletes an ClaimRuleDependent

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

api_instance = Vba::ClaimRuleDependentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
dependent_claim_rule_key = 56 # Integer | Dependent ClaimRule Key

begin
  # Delete ClaimRuleDependent
  api_instance.delete_claim_rule_dependent(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->delete_claim_rule_dependent: #{e}"
end
```

#### Using the delete_claim_rule_dependent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)

```ruby
begin
  # Delete ClaimRuleDependent
  data, status_code, headers = api_instance.delete_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->delete_claim_rule_dependent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **dependent_claim_rule_key** | **Integer** | Dependent ClaimRule Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_dependent

> <ClaimRuleDependentVBAResponse> get_claim_rule_dependent(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)

Get ClaimRuleDependent

Gets ClaimRuleDependent

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

api_instance = Vba::ClaimRuleDependentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
dependent_claim_rule_key = 56 # Integer | Dependent ClaimRule Key

begin
  # Get ClaimRuleDependent
  result = api_instance.get_claim_rule_dependent(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->get_claim_rule_dependent: #{e}"
end
```

#### Using the get_claim_rule_dependent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleDependentVBAResponse>, Integer, Hash)> get_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)

```ruby
begin
  # Get ClaimRuleDependent
  data, status_code, headers = api_instance.get_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, dependent_claim_rule_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleDependentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->get_claim_rule_dependent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **dependent_claim_rule_key** | **Integer** | Dependent ClaimRule Key |  |

### Return type

[**ClaimRuleDependentVBAResponse**](ClaimRuleDependentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_dependent

> <ClaimRuleDependentListVBAResponse> list_claim_rule_dependent(vbasoftware_database, claim_rule_key, opts)

List ClaimRuleDependent

Lists all ClaimRuleDependent for the given claimRuleKey

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

api_instance = Vba::ClaimRuleDependentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleDependent
  result = api_instance.list_claim_rule_dependent(vbasoftware_database, claim_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->list_claim_rule_dependent: #{e}"
end
```

#### Using the list_claim_rule_dependent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleDependentListVBAResponse>, Integer, Hash)> list_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, opts)

```ruby
begin
  # List ClaimRuleDependent
  data, status_code, headers = api_instance.list_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleDependentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->list_claim_rule_dependent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimRuleDependentListVBAResponse**](ClaimRuleDependentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_dependent

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_dependent(vbasoftware_database, claim_rule_key, claim_rule_dependent)

Create or Update Batch ClaimRuleDependent

Create or Update multiple ClaimRuleDependent at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleDependentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_dependent = [Vba::ClaimRuleDependent.new({claim_rule_key: 37, dependent_claim_rule_key: 37})] # Array<ClaimRuleDependent> | 

begin
  # Create or Update Batch ClaimRuleDependent
  result = api_instance.update_batch_claim_rule_dependent(vbasoftware_database, claim_rule_key, claim_rule_dependent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->update_batch_claim_rule_dependent: #{e}"
end
```

#### Using the update_batch_claim_rule_dependent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_dependent)

```ruby
begin
  # Create or Update Batch ClaimRuleDependent
  data, status_code, headers = api_instance.update_batch_claim_rule_dependent_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_dependent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleDependentsApi->update_batch_claim_rule_dependent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_dependent** | [**Array&lt;ClaimRuleDependent&gt;**](ClaimRuleDependent.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

