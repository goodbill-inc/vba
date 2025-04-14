# Vba::ClaimRuleTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_claim_type**](ClaimRuleTypesApi.md#create_claim_rule_claim_type) | **POST** /claim-rules/{claimRuleKey}/types | Create ClaimRuleClaimType |
| [**delete_claim_rule_claim_type**](ClaimRuleTypesApi.md#delete_claim_rule_claim_type) | **DELETE** /claim-rules/{claimRuleKey}/types/{claimType} | Delete ClaimRuleClaimType |
| [**get_claim_rule_claim_type**](ClaimRuleTypesApi.md#get_claim_rule_claim_type) | **GET** /claim-rules/{claimRuleKey}/types/{claimType} | Get ClaimRuleClaimType |
| [**list_claim_rule_claim_type**](ClaimRuleTypesApi.md#list_claim_rule_claim_type) | **GET** /claim-rules/{claimRuleKey}/types | List ClaimRuleClaimType |
| [**update_batch_claim_rule_claim_type**](ClaimRuleTypesApi.md#update_batch_claim_rule_claim_type) | **PUT** /claim-rules/{claimRuleKey}/types-batch | Create or Update Batch ClaimRuleClaimType |
| [**update_claim_rule_claim_type**](ClaimRuleTypesApi.md#update_claim_rule_claim_type) | **PUT** /claim-rules/{claimRuleKey}/types/{claimType} | Update ClaimRuleClaimType |


## create_claim_rule_claim_type

> <ClaimRuleClaimTypeVBAResponse> create_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_rule_claim_type)

Create ClaimRuleClaimType

Creates a new ClaimRuleClaimType

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_claim_type = Vba::ClaimRuleClaimType.new({claim_rule_key: 37, claim_type: 'claim_type_example'}) # ClaimRuleClaimType | 

begin
  # Create ClaimRuleClaimType
  result = api_instance.create_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_rule_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->create_claim_rule_claim_type: #{e}"
end
```

#### Using the create_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleClaimTypeVBAResponse>, Integer, Hash)> create_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_claim_type)

```ruby
begin
  # Create ClaimRuleClaimType
  data, status_code, headers = api_instance.create_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->create_claim_rule_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_claim_type** | [**ClaimRuleClaimType**](ClaimRuleClaimType.md) |  |  |

### Return type

[**ClaimRuleClaimTypeVBAResponse**](ClaimRuleClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_claim_type

> delete_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type)

Delete ClaimRuleClaimType

Deletes an ClaimRuleClaimType

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_type = 'claim_type_example' # String | Claim Type

begin
  # Delete ClaimRuleClaimType
  api_instance.delete_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->delete_claim_rule_claim_type: #{e}"
end
```

#### Using the delete_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type)

```ruby
begin
  # Delete ClaimRuleClaimType
  data, status_code, headers = api_instance.delete_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->delete_claim_rule_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_type** | **String** | Claim Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_claim_type

> <ClaimRuleClaimTypeVBAResponse> get_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type)

Get ClaimRuleClaimType

Gets ClaimRuleClaimType

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_type = 'claim_type_example' # String | Claim Type

begin
  # Get ClaimRuleClaimType
  result = api_instance.get_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->get_claim_rule_claim_type: #{e}"
end
```

#### Using the get_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleClaimTypeVBAResponse>, Integer, Hash)> get_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type)

```ruby
begin
  # Get ClaimRuleClaimType
  data, status_code, headers = api_instance.get_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->get_claim_rule_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_type** | **String** | Claim Type |  |

### Return type

[**ClaimRuleClaimTypeVBAResponse**](ClaimRuleClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_claim_type

> <ClaimRuleClaimTypeListVBAResponse> list_claim_rule_claim_type(vbasoftware_database, claim_rule_key, opts)

List ClaimRuleClaimType

Lists all ClaimRuleClaimType for the given claimRuleKey

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleClaimType
  result = api_instance.list_claim_rule_claim_type(vbasoftware_database, claim_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->list_claim_rule_claim_type: #{e}"
end
```

#### Using the list_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleClaimTypeListVBAResponse>, Integer, Hash)> list_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, opts)

```ruby
begin
  # List ClaimRuleClaimType
  data, status_code, headers = api_instance.list_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleClaimTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->list_claim_rule_claim_type_with_http_info: #{e}"
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

[**ClaimRuleClaimTypeListVBAResponse**](ClaimRuleClaimTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_claim_type

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_rule_claim_type)

Create or Update Batch ClaimRuleClaimType

Create or Update multiple ClaimRuleClaimType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_claim_type = [Vba::ClaimRuleClaimType.new({claim_rule_key: 37, claim_type: 'claim_type_example'})] # Array<ClaimRuleClaimType> | 

begin
  # Create or Update Batch ClaimRuleClaimType
  result = api_instance.update_batch_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_rule_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->update_batch_claim_rule_claim_type: #{e}"
end
```

#### Using the update_batch_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_claim_type)

```ruby
begin
  # Create or Update Batch ClaimRuleClaimType
  data, status_code, headers = api_instance.update_batch_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->update_batch_claim_rule_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_claim_type** | [**Array&lt;ClaimRuleClaimType&gt;**](ClaimRuleClaimType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule_claim_type

> <ClaimRuleClaimTypeVBAResponse> update_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type, claim_rule_claim_type)

Update ClaimRuleClaimType

Updates a specific ClaimRuleClaimType.

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

api_instance = Vba::ClaimRuleTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_type = 'claim_type_example' # String | Claim Type
claim_rule_claim_type = Vba::ClaimRuleClaimType.new({claim_rule_key: 37, claim_type: 'claim_type_example'}) # ClaimRuleClaimType | 

begin
  # Update ClaimRuleClaimType
  result = api_instance.update_claim_rule_claim_type(vbasoftware_database, claim_rule_key, claim_type, claim_rule_claim_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->update_claim_rule_claim_type: #{e}"
end
```

#### Using the update_claim_rule_claim_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleClaimTypeVBAResponse>, Integer, Hash)> update_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type, claim_rule_claim_type)

```ruby
begin
  # Update ClaimRuleClaimType
  data, status_code, headers = api_instance.update_claim_rule_claim_type_with_http_info(vbasoftware_database, claim_rule_key, claim_type, claim_rule_claim_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleClaimTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleTypesApi->update_claim_rule_claim_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_type** | **String** | Claim Type |  |
| **claim_rule_claim_type** | [**ClaimRuleClaimType**](ClaimRuleClaimType.md) |  |  |

### Return type

[**ClaimRuleClaimTypeVBAResponse**](ClaimRuleClaimTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

