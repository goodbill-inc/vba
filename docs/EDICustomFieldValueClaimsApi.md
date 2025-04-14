# Vba::EDICustomFieldValueClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#create_edi_custom_field_value_claim) | **POST** /edi-custom-field-value-claims | Create EDICustomFieldValueClaim |
| [**delete_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#delete_edi_custom_field_value_claim) | **DELETE** /edi-custom-field-value-claims/{EDICustomFieldValueClaim_Key} | Delete EDICustomFieldValueClaim |
| [**get_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#get_edi_custom_field_value_claim) | **GET** /edi-custom-field-value-claims/{EDICustomFieldValueClaim_Key} | Get EDICustomFieldValueClaim |
| [**list_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#list_edi_custom_field_value_claim) | **GET** /edi-custom-field-value-claims | List EDICustomFieldValueClaim |
| [**update_batch_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#update_batch_edi_custom_field_value_claim) | **PUT** /edi-custom-field-value-claims-batch | Create or Update Batch EDICustomFieldValueClaim |
| [**update_edi_custom_field_value_claim**](EDICustomFieldValueClaimsApi.md#update_edi_custom_field_value_claim) | **PUT** /edi-custom-field-value-claims/{EDICustomFieldValueClaim_Key} | Update EDICustomFieldValueClaim |


## create_edi_custom_field_value_claim

> <EDICustomFieldValueClaimVBAResponse> create_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim)

Create EDICustomFieldValueClaim

Creates a new EDICustomFieldValueClaim

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_value_claim = Vba::EDICustomFieldValueClaim.new({edi_custom_field_value_claim_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, claim_seq: 'claim_seq_example', edi_custom_field_key: 37}) # EDICustomFieldValueClaim | 

begin
  # Create EDICustomFieldValueClaim
  result = api_instance.create_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->create_edi_custom_field_value_claim: #{e}"
end
```

#### Using the create_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldValueClaimVBAResponse>, Integer, Hash)> create_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim)

```ruby
begin
  # Create EDICustomFieldValueClaim
  data, status_code, headers = api_instance.create_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldValueClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->create_edi_custom_field_value_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_value_claim** | [**EDICustomFieldValueClaim**](EDICustomFieldValueClaim.md) |  |  |

### Return type

[**EDICustomFieldValueClaimVBAResponse**](EDICustomFieldValueClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_edi_custom_field_value_claim

> delete_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key)

Delete EDICustomFieldValueClaim

Deletes an EDICustomFieldValueClaim

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_value_claim_key = 56 # Integer | EDICustomFieldValueClaim Key

begin
  # Delete EDICustomFieldValueClaim
  api_instance.delete_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key)
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->delete_edi_custom_field_value_claim: #{e}"
end
```

#### Using the delete_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key)

```ruby
begin
  # Delete EDICustomFieldValueClaim
  data, status_code, headers = api_instance.delete_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->delete_edi_custom_field_value_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_value_claim_key** | **Integer** | EDICustomFieldValueClaim Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_edi_custom_field_value_claim

> <EDICustomFieldValueClaimVBAResponse> get_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key)

Get EDICustomFieldValueClaim

Gets EDICustomFieldValueClaim

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_value_claim_key = 56 # Integer | EDICustomFieldValueClaim Key

begin
  # Get EDICustomFieldValueClaim
  result = api_instance.get_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->get_edi_custom_field_value_claim: #{e}"
end
```

#### Using the get_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldValueClaimVBAResponse>, Integer, Hash)> get_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key)

```ruby
begin
  # Get EDICustomFieldValueClaim
  data, status_code, headers = api_instance.get_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldValueClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->get_edi_custom_field_value_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_value_claim_key** | **Integer** | EDICustomFieldValueClaim Key |  |

### Return type

[**EDICustomFieldValueClaimVBAResponse**](EDICustomFieldValueClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_edi_custom_field_value_claim

> <EDICustomFieldValueClaimListVBAResponse> list_edi_custom_field_value_claim(vbasoftware_database, opts)

List EDICustomFieldValueClaim

Lists all EDICustomFieldValueClaim

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EDICustomFieldValueClaim
  result = api_instance.list_edi_custom_field_value_claim(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->list_edi_custom_field_value_claim: #{e}"
end
```

#### Using the list_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldValueClaimListVBAResponse>, Integer, Hash)> list_edi_custom_field_value_claim_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EDICustomFieldValueClaim
  data, status_code, headers = api_instance.list_edi_custom_field_value_claim_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldValueClaimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->list_edi_custom_field_value_claim_with_http_info: #{e}"
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

[**EDICustomFieldValueClaimListVBAResponse**](EDICustomFieldValueClaimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_edi_custom_field_value_claim

> <MultiCodeResponseListVBAResponse> update_batch_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim)

Create or Update Batch EDICustomFieldValueClaim

Create or Update multiple EDICustomFieldValueClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_value_claim = [Vba::EDICustomFieldValueClaim.new({edi_custom_field_value_claim_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, claim_seq: 'claim_seq_example', edi_custom_field_key: 37})] # Array<EDICustomFieldValueClaim> | 

begin
  # Create or Update Batch EDICustomFieldValueClaim
  result = api_instance.update_batch_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->update_batch_edi_custom_field_value_claim: #{e}"
end
```

#### Using the update_batch_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim)

```ruby
begin
  # Create or Update Batch EDICustomFieldValueClaim
  data, status_code, headers = api_instance.update_batch_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->update_batch_edi_custom_field_value_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_value_claim** | [**Array&lt;EDICustomFieldValueClaim&gt;**](EDICustomFieldValueClaim.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_edi_custom_field_value_claim

> <EDICustomFieldValueClaimVBAResponse> update_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key, edi_custom_field_value_claim)

Update EDICustomFieldValueClaim

Updates a specific EDICustomFieldValueClaim.

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

api_instance = Vba::EDICustomFieldValueClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_value_claim_key = 56 # Integer | EDICustomFieldValueClaim Key
edi_custom_field_value_claim = Vba::EDICustomFieldValueClaim.new({edi_custom_field_value_claim_key: 37, adjustment_seq: 'adjustment_seq_example', batch_claim: 37, batch_number: 37, claim_seq: 'claim_seq_example', edi_custom_field_key: 37}) # EDICustomFieldValueClaim | 

begin
  # Update EDICustomFieldValueClaim
  result = api_instance.update_edi_custom_field_value_claim(vbasoftware_database, edi_custom_field_value_claim_key, edi_custom_field_value_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->update_edi_custom_field_value_claim: #{e}"
end
```

#### Using the update_edi_custom_field_value_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldValueClaimVBAResponse>, Integer, Hash)> update_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key, edi_custom_field_value_claim)

```ruby
begin
  # Update EDICustomFieldValueClaim
  data, status_code, headers = api_instance.update_edi_custom_field_value_claim_with_http_info(vbasoftware_database, edi_custom_field_value_claim_key, edi_custom_field_value_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldValueClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldValueClaimsApi->update_edi_custom_field_value_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_value_claim_key** | **Integer** | EDICustomFieldValueClaim Key |  |
| **edi_custom_field_value_claim** | [**EDICustomFieldValueClaim**](EDICustomFieldValueClaim.md) |  |  |

### Return type

[**EDICustomFieldValueClaimVBAResponse**](EDICustomFieldValueClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

