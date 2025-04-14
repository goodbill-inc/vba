# Vba::ClaimRuleProviderTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#create_claim_rule_provider_type) | **POST** /claim-rules/{claimRuleKey}/provider-types | Create ClaimRuleProviderType |
| [**delete_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#delete_claim_rule_provider_type) | **DELETE** /claim-rules/{claimRuleKey}/provider-types/{providerType} | Delete ClaimRuleProviderType |
| [**get_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#get_claim_rule_provider_type) | **GET** /claim-rules/{claimRuleKey}/provider-types/{providerType} | Get ClaimRuleProviderType |
| [**list_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#list_claim_rule_provider_type) | **GET** /claim-rules/{claimRuleKey}/provider-types | List ClaimRuleProviderType |
| [**update_batch_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#update_batch_claim_rule_provider_type) | **PUT** /claim-rules/{claimRuleKey}/provider-types-batch | Create or Update Batch ClaimRuleProviderType |
| [**update_claim_rule_provider_type**](ClaimRuleProviderTypesApi.md#update_claim_rule_provider_type) | **PUT** /claim-rules/{claimRuleKey}/provider-types/{providerType} | Update ClaimRuleProviderType |


## create_claim_rule_provider_type

> <ClaimRuleProviderTypeVBAResponse> create_claim_rule_provider_type(vbasoftware_database, claim_rule_key, claim_rule_provider_type)

Create ClaimRuleProviderType

Creates a new ClaimRuleProviderType

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_provider_type = Vba::ClaimRuleProviderType.new({claim_rule_key: 37, provider_type: 'provider_type_example', exclude: false}) # ClaimRuleProviderType | 

begin
  # Create ClaimRuleProviderType
  result = api_instance.create_claim_rule_provider_type(vbasoftware_database, claim_rule_key, claim_rule_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->create_claim_rule_provider_type: #{e}"
end
```

#### Using the create_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProviderTypeVBAResponse>, Integer, Hash)> create_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_provider_type)

```ruby
begin
  # Create ClaimRuleProviderType
  data, status_code, headers = api_instance.create_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->create_claim_rule_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_provider_type** | [**ClaimRuleProviderType**](ClaimRuleProviderType.md) |  |  |

### Return type

[**ClaimRuleProviderTypeVBAResponse**](ClaimRuleProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_provider_type

> delete_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type)

Delete ClaimRuleProviderType

Deletes an ClaimRuleProviderType

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Delete ClaimRuleProviderType
  api_instance.delete_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->delete_claim_rule_provider_type: #{e}"
end
```

#### Using the delete_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type)

```ruby
begin
  # Delete ClaimRuleProviderType
  data, status_code, headers = api_instance.delete_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->delete_claim_rule_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_provider_type

> <ClaimRuleProviderTypeVBAResponse> get_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type)

Get ClaimRuleProviderType

Gets ClaimRuleProviderType

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Get ClaimRuleProviderType
  result = api_instance.get_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->get_claim_rule_provider_type: #{e}"
end
```

#### Using the get_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProviderTypeVBAResponse>, Integer, Hash)> get_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type)

```ruby
begin
  # Get ClaimRuleProviderType
  data, status_code, headers = api_instance.get_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->get_claim_rule_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

[**ClaimRuleProviderTypeVBAResponse**](ClaimRuleProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_provider_type

> <ClaimRuleProviderTypeListVBAResponse> list_claim_rule_provider_type(vbasoftware_database, claim_rule_key, opts)

List ClaimRuleProviderType

Lists all ClaimRuleProviderType for the given claimRuleKey

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleProviderType
  result = api_instance.list_claim_rule_provider_type(vbasoftware_database, claim_rule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->list_claim_rule_provider_type: #{e}"
end
```

#### Using the list_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProviderTypeListVBAResponse>, Integer, Hash)> list_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, opts)

```ruby
begin
  # List ClaimRuleProviderType
  data, status_code, headers = api_instance.list_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProviderTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->list_claim_rule_provider_type_with_http_info: #{e}"
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

[**ClaimRuleProviderTypeListVBAResponse**](ClaimRuleProviderTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_provider_type

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_provider_type(vbasoftware_database, claim_rule_key, claim_rule_provider_type)

Create or Update Batch ClaimRuleProviderType

Create or Update multiple ClaimRuleProviderType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
claim_rule_provider_type = [Vba::ClaimRuleProviderType.new({claim_rule_key: 37, provider_type: 'provider_type_example', exclude: false})] # Array<ClaimRuleProviderType> | 

begin
  # Create or Update Batch ClaimRuleProviderType
  result = api_instance.update_batch_claim_rule_provider_type(vbasoftware_database, claim_rule_key, claim_rule_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->update_batch_claim_rule_provider_type: #{e}"
end
```

#### Using the update_batch_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_provider_type)

```ruby
begin
  # Create or Update Batch ClaimRuleProviderType
  data, status_code, headers = api_instance.update_batch_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->update_batch_claim_rule_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **claim_rule_provider_type** | [**Array&lt;ClaimRuleProviderType&gt;**](ClaimRuleProviderType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule_provider_type

> <ClaimRuleProviderTypeVBAResponse> update_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type, claim_rule_provider_type)

Update ClaimRuleProviderType

Updates a specific ClaimRuleProviderType.

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

api_instance = Vba::ClaimRuleProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_key = 56 # Integer | ClaimRule Key
provider_type = 'provider_type_example' # String | Provider Type
claim_rule_provider_type = Vba::ClaimRuleProviderType.new({claim_rule_key: 37, provider_type: 'provider_type_example', exclude: false}) # ClaimRuleProviderType | 

begin
  # Update ClaimRuleProviderType
  result = api_instance.update_claim_rule_provider_type(vbasoftware_database, claim_rule_key, provider_type, claim_rule_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->update_claim_rule_provider_type: #{e}"
end
```

#### Using the update_claim_rule_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleProviderTypeVBAResponse>, Integer, Hash)> update_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type, claim_rule_provider_type)

```ruby
begin
  # Update ClaimRuleProviderType
  data, status_code, headers = api_instance.update_claim_rule_provider_type_with_http_info(vbasoftware_database, claim_rule_key, provider_type, claim_rule_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleProviderTypesApi->update_claim_rule_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_key** | **Integer** | ClaimRule Key |  |
| **provider_type** | **String** | Provider Type |  |
| **claim_rule_provider_type** | [**ClaimRuleProviderType**](ClaimRuleProviderType.md) |  |  |

### Return type

[**ClaimRuleProviderTypeVBAResponse**](ClaimRuleProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

