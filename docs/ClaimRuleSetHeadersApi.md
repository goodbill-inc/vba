# Vba::ClaimRuleSetHeadersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#create_claim_rule_set_header) | **POST** /claim-rule-set-headers | Create ClaimRuleSetHeader |
| [**delete_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#delete_claim_rule_set_header) | **DELETE** /claim-rule-set-headers/{claimRuleSetHeaderKey} | Delete ClaimRuleSetHeader |
| [**get_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#get_claim_rule_set_header) | **GET** /claim-rule-set-headers/{claimRuleSetHeaderKey} | Get ClaimRuleSetHeader |
| [**list_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#list_claim_rule_set_header) | **GET** /claim-rule-set-headers | List ClaimRuleSetHeader |
| [**update_batch_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#update_batch_claim_rule_set_header) | **PUT** /claim-rule-set-headers-batch | Create or Update Batch ClaimRuleSetHeader |
| [**update_claim_rule_set_header**](ClaimRuleSetHeadersApi.md#update_claim_rule_set_header) | **PUT** /claim-rule-set-headers/{claimRuleSetHeaderKey} | Update ClaimRuleSetHeader |


## create_claim_rule_set_header

> <ClaimRuleSetHeaderVBAResponse> create_claim_rule_set_header(vbasoftware_database, claim_rule_set_header)

Create ClaimRuleSetHeader

Creates a new ClaimRuleSetHeader

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header = Vba::ClaimRuleSetHeader.new({claim_rule_set_header_key: 37}) # ClaimRuleSetHeader | 

begin
  # Create ClaimRuleSetHeader
  result = api_instance.create_claim_rule_set_header(vbasoftware_database, claim_rule_set_header)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->create_claim_rule_set_header: #{e}"
end
```

#### Using the create_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetHeaderVBAResponse>, Integer, Hash)> create_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header)

```ruby
begin
  # Create ClaimRuleSetHeader
  data, status_code, headers = api_instance.create_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetHeaderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->create_claim_rule_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header** | [**ClaimRuleSetHeader**](ClaimRuleSetHeader.md) |  |  |

### Return type

[**ClaimRuleSetHeaderVBAResponse**](ClaimRuleSetHeaderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_rule_set_header

> delete_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key)

Delete ClaimRuleSetHeader

Deletes an ClaimRuleSetHeader

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key

begin
  # Delete ClaimRuleSetHeader
  api_instance.delete_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->delete_claim_rule_set_header: #{e}"
end
```

#### Using the delete_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key)

```ruby
begin
  # Delete ClaimRuleSetHeader
  data, status_code, headers = api_instance.delete_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->delete_claim_rule_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule_set_header

> <ClaimRuleSetHeaderVBAResponse> get_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key)

Get ClaimRuleSetHeader

Gets ClaimRuleSetHeader

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key

begin
  # Get ClaimRuleSetHeader
  result = api_instance.get_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->get_claim_rule_set_header: #{e}"
end
```

#### Using the get_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetHeaderVBAResponse>, Integer, Hash)> get_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key)

```ruby
begin
  # Get ClaimRuleSetHeader
  data, status_code, headers = api_instance.get_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetHeaderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->get_claim_rule_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |

### Return type

[**ClaimRuleSetHeaderVBAResponse**](ClaimRuleSetHeaderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_rule_set_header

> <ClaimRuleSetHeaderListVBAResponse> list_claim_rule_set_header(vbasoftware_database, opts)

List ClaimRuleSetHeader

Lists all ClaimRuleSetHeader

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimRuleSetHeader
  result = api_instance.list_claim_rule_set_header(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->list_claim_rule_set_header: #{e}"
end
```

#### Using the list_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetHeaderListVBAResponse>, Integer, Hash)> list_claim_rule_set_header_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimRuleSetHeader
  data, status_code, headers = api_instance.list_claim_rule_set_header_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetHeaderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->list_claim_rule_set_header_with_http_info: #{e}"
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

[**ClaimRuleSetHeaderListVBAResponse**](ClaimRuleSetHeaderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_rule_set_header

> <MultiCodeResponseListVBAResponse> update_batch_claim_rule_set_header(vbasoftware_database, claim_rule_set_header)

Create or Update Batch ClaimRuleSetHeader

Create or Update multiple ClaimRuleSetHeader at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header = [Vba::ClaimRuleSetHeader.new({claim_rule_set_header_key: 37})] # Array<ClaimRuleSetHeader> | 

begin
  # Create or Update Batch ClaimRuleSetHeader
  result = api_instance.update_batch_claim_rule_set_header(vbasoftware_database, claim_rule_set_header)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->update_batch_claim_rule_set_header: #{e}"
end
```

#### Using the update_batch_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header)

```ruby
begin
  # Create or Update Batch ClaimRuleSetHeader
  data, status_code, headers = api_instance.update_batch_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->update_batch_claim_rule_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header** | [**Array&lt;ClaimRuleSetHeader&gt;**](ClaimRuleSetHeader.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_rule_set_header

> <ClaimRuleSetHeaderVBAResponse> update_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header)

Update ClaimRuleSetHeader

Updates a specific ClaimRuleSetHeader.

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

api_instance = Vba::ClaimRuleSetHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_rule_set_header_key = 56 # Integer | ClaimRuleSetHeader Key
claim_rule_set_header = Vba::ClaimRuleSetHeader.new({claim_rule_set_header_key: 37}) # ClaimRuleSetHeader | 

begin
  # Update ClaimRuleSetHeader
  result = api_instance.update_claim_rule_set_header(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->update_claim_rule_set_header: #{e}"
end
```

#### Using the update_claim_rule_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRuleSetHeaderVBAResponse>, Integer, Hash)> update_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header)

```ruby
begin
  # Update ClaimRuleSetHeader
  data, status_code, headers = api_instance.update_claim_rule_set_header_with_http_info(vbasoftware_database, claim_rule_set_header_key, claim_rule_set_header)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRuleSetHeaderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRuleSetHeadersApi->update_claim_rule_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_rule_set_header_key** | **Integer** | ClaimRuleSetHeader Key |  |
| **claim_rule_set_header** | [**ClaimRuleSetHeader**](ClaimRuleSetHeader.md) |  |  |

### Return type

[**ClaimRuleSetHeaderVBAResponse**](ClaimRuleSetHeaderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

