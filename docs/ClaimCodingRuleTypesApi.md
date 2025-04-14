# Vba::ClaimCodingRuleTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#create_claim_coding_rule_type) | **POST** /claim-coding-rule-types | Create ClaimCodingRuleType |
| [**delete_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#delete_claim_coding_rule_type) | **DELETE** /claim-coding-rule-types/{ruleType} | Delete ClaimCodingRuleType |
| [**get_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#get_claim_coding_rule_type) | **GET** /claim-coding-rule-types/{ruleType} | Get ClaimCodingRuleType |
| [**list_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#list_claim_coding_rule_type) | **GET** /claim-coding-rule-types | List ClaimCodingRuleType |
| [**update_batch_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#update_batch_claim_coding_rule_type) | **PUT** /claim-coding-rule-types-batch | Create or Update Batch ClaimCodingRuleType |
| [**update_claim_coding_rule_type**](ClaimCodingRuleTypesApi.md#update_claim_coding_rule_type) | **PUT** /claim-coding-rule-types/{ruleType} | Update ClaimCodingRuleType |


## create_claim_coding_rule_type

> <ClaimCodingRuleTypeVBAResponse> create_claim_coding_rule_type(vbasoftware_database, claim_coding_rule_type)

Create ClaimCodingRuleType

Creates a new ClaimCodingRuleType

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule_type = Vba::ClaimCodingRuleType.new({rule_type: 'rule_type_example'}) # ClaimCodingRuleType | 

begin
  # Create ClaimCodingRuleType
  result = api_instance.create_claim_coding_rule_type(vbasoftware_database, claim_coding_rule_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->create_claim_coding_rule_type: #{e}"
end
```

#### Using the create_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleTypeVBAResponse>, Integer, Hash)> create_claim_coding_rule_type_with_http_info(vbasoftware_database, claim_coding_rule_type)

```ruby
begin
  # Create ClaimCodingRuleType
  data, status_code, headers = api_instance.create_claim_coding_rule_type_with_http_info(vbasoftware_database, claim_coding_rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->create_claim_coding_rule_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule_type** | [**ClaimCodingRuleType**](ClaimCodingRuleType.md) |  |  |

### Return type

[**ClaimCodingRuleTypeVBAResponse**](ClaimCodingRuleTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_coding_rule_type

> delete_claim_coding_rule_type(vbasoftware_database, rule_type)

Delete ClaimCodingRuleType

Deletes an ClaimCodingRuleType

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rule_type = 'rule_type_example' # String | Rule Type

begin
  # Delete ClaimCodingRuleType
  api_instance.delete_claim_coding_rule_type(vbasoftware_database, rule_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->delete_claim_coding_rule_type: #{e}"
end
```

#### Using the delete_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type)

```ruby
begin
  # Delete ClaimCodingRuleType
  data, status_code, headers = api_instance.delete_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->delete_claim_coding_rule_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rule_type** | **String** | Rule Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_coding_rule_type

> <ClaimCodingRuleTypeVBAResponse> get_claim_coding_rule_type(vbasoftware_database, rule_type)

Get ClaimCodingRuleType

Gets ClaimCodingRuleType

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rule_type = 'rule_type_example' # String | Rule Type

begin
  # Get ClaimCodingRuleType
  result = api_instance.get_claim_coding_rule_type(vbasoftware_database, rule_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->get_claim_coding_rule_type: #{e}"
end
```

#### Using the get_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleTypeVBAResponse>, Integer, Hash)> get_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type)

```ruby
begin
  # Get ClaimCodingRuleType
  data, status_code, headers = api_instance.get_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->get_claim_coding_rule_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rule_type** | **String** | Rule Type |  |

### Return type

[**ClaimCodingRuleTypeVBAResponse**](ClaimCodingRuleTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_coding_rule_type

> <ClaimCodingRuleTypeListVBAResponse> list_claim_coding_rule_type(vbasoftware_database, opts)

List ClaimCodingRuleType

Lists all ClaimCodingRuleType

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimCodingRuleType
  result = api_instance.list_claim_coding_rule_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->list_claim_coding_rule_type: #{e}"
end
```

#### Using the list_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleTypeListVBAResponse>, Integer, Hash)> list_claim_coding_rule_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimCodingRuleType
  data, status_code, headers = api_instance.list_claim_coding_rule_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->list_claim_coding_rule_type_with_http_info: #{e}"
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

[**ClaimCodingRuleTypeListVBAResponse**](ClaimCodingRuleTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_coding_rule_type

> <MultiCodeResponseListVBAResponse> update_batch_claim_coding_rule_type(vbasoftware_database, claim_coding_rule_type)

Create or Update Batch ClaimCodingRuleType

Create or Update multiple ClaimCodingRuleType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_coding_rule_type = [Vba::ClaimCodingRuleType.new({rule_type: 'rule_type_example'})] # Array<ClaimCodingRuleType> | 

begin
  # Create or Update Batch ClaimCodingRuleType
  result = api_instance.update_batch_claim_coding_rule_type(vbasoftware_database, claim_coding_rule_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->update_batch_claim_coding_rule_type: #{e}"
end
```

#### Using the update_batch_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_coding_rule_type_with_http_info(vbasoftware_database, claim_coding_rule_type)

```ruby
begin
  # Create or Update Batch ClaimCodingRuleType
  data, status_code, headers = api_instance.update_batch_claim_coding_rule_type_with_http_info(vbasoftware_database, claim_coding_rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->update_batch_claim_coding_rule_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_coding_rule_type** | [**Array&lt;ClaimCodingRuleType&gt;**](ClaimCodingRuleType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_coding_rule_type

> <ClaimCodingRuleTypeVBAResponse> update_claim_coding_rule_type(vbasoftware_database, rule_type, claim_coding_rule_type)

Update ClaimCodingRuleType

Updates a specific ClaimCodingRuleType.

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

api_instance = Vba::ClaimCodingRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rule_type = 'rule_type_example' # String | Rule Type
claim_coding_rule_type = Vba::ClaimCodingRuleType.new({rule_type: 'rule_type_example'}) # ClaimCodingRuleType | 

begin
  # Update ClaimCodingRuleType
  result = api_instance.update_claim_coding_rule_type(vbasoftware_database, rule_type, claim_coding_rule_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->update_claim_coding_rule_type: #{e}"
end
```

#### Using the update_claim_coding_rule_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimCodingRuleTypeVBAResponse>, Integer, Hash)> update_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type, claim_coding_rule_type)

```ruby
begin
  # Update ClaimCodingRuleType
  data, status_code, headers = api_instance.update_claim_coding_rule_type_with_http_info(vbasoftware_database, rule_type, claim_coding_rule_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimCodingRuleTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimCodingRuleTypesApi->update_claim_coding_rule_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rule_type** | **String** | Rule Type |  |
| **claim_coding_rule_type** | [**ClaimCodingRuleType**](ClaimCodingRuleType.md) |  |  |

### Return type

[**ClaimCodingRuleTypeVBAResponse**](ClaimCodingRuleTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

