# Vba::FlexClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_flex**](FlexClaimsApi.md#create_claim_flex) | **POST** /flex-claims | Create ClaimFlex |
| [**delete_claim_flex**](FlexClaimsApi.md#delete_claim_flex) | **DELETE** /flex-claims/{claimFlexKey} | Delete ClaimFlex |
| [**get_claim_flex**](FlexClaimsApi.md#get_claim_flex) | **GET** /flex-claims/{claimFlexKey} | Get ClaimFlex |
| [**list_claim_flex**](FlexClaimsApi.md#list_claim_flex) | **GET** /flex-claims | List ClaimFlex |
| [**update_batch_claim_flex**](FlexClaimsApi.md#update_batch_claim_flex) | **PUT** /flex-claims-batch | Create or Update Batch ClaimFlex |
| [**update_claim_flex**](FlexClaimsApi.md#update_claim_flex) | **PUT** /flex-claims/{claimFlexKey} | Update ClaimFlex |


## create_claim_flex

> <ClaimFlexVBAResponse> create_claim_flex(vbasoftware_database, claim_flex)

Create ClaimFlex

Creates a new ClaimFlex

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex = Vba::ClaimFlex.new({claim_flex_key: 37, auto_created: false, batch_number: 37, calendar_year: 'calendar_year_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, flex_claim_number: 'flex_claim_number_example', group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'}) # ClaimFlex | 

begin
  # Create ClaimFlex
  result = api_instance.create_claim_flex(vbasoftware_database, claim_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->create_claim_flex: #{e}"
end
```

#### Using the create_claim_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexVBAResponse>, Integer, Hash)> create_claim_flex_with_http_info(vbasoftware_database, claim_flex)

```ruby
begin
  # Create ClaimFlex
  data, status_code, headers = api_instance.create_claim_flex_with_http_info(vbasoftware_database, claim_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->create_claim_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex** | [**ClaimFlex**](ClaimFlex.md) |  |  |

### Return type

[**ClaimFlexVBAResponse**](ClaimFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_flex

> delete_claim_flex(vbasoftware_database, claim_flex_key)

Delete ClaimFlex

Deletes an ClaimFlex

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key

begin
  # Delete ClaimFlex
  api_instance.delete_claim_flex(vbasoftware_database, claim_flex_key)
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->delete_claim_flex: #{e}"
end
```

#### Using the delete_claim_flex_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_flex_with_http_info(vbasoftware_database, claim_flex_key)

```ruby
begin
  # Delete ClaimFlex
  data, status_code, headers = api_instance.delete_claim_flex_with_http_info(vbasoftware_database, claim_flex_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->delete_claim_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_flex

> <ClaimFlexVBAResponse> get_claim_flex(vbasoftware_database, claim_flex_key)

Get ClaimFlex

Gets ClaimFlex

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key

begin
  # Get ClaimFlex
  result = api_instance.get_claim_flex(vbasoftware_database, claim_flex_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->get_claim_flex: #{e}"
end
```

#### Using the get_claim_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexVBAResponse>, Integer, Hash)> get_claim_flex_with_http_info(vbasoftware_database, claim_flex_key)

```ruby
begin
  # Get ClaimFlex
  data, status_code, headers = api_instance.get_claim_flex_with_http_info(vbasoftware_database, claim_flex_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->get_claim_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |

### Return type

[**ClaimFlexVBAResponse**](ClaimFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_flex

> <ClaimFlexListVBAResponse> list_claim_flex(vbasoftware_database, opts)

List ClaimFlex

Lists all ClaimFlex

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimFlex
  result = api_instance.list_claim_flex(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->list_claim_flex: #{e}"
end
```

#### Using the list_claim_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexListVBAResponse>, Integer, Hash)> list_claim_flex_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimFlex
  data, status_code, headers = api_instance.list_claim_flex_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->list_claim_flex_with_http_info: #{e}"
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

[**ClaimFlexListVBAResponse**](ClaimFlexListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_flex

> <MultiCodeResponseListVBAResponse> update_batch_claim_flex(vbasoftware_database, claim_flex)

Create or Update Batch ClaimFlex

Create or Update multiple ClaimFlex at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex = [Vba::ClaimFlex.new({claim_flex_key: 37, auto_created: false, batch_number: 37, calendar_year: 'calendar_year_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, flex_claim_number: 'flex_claim_number_example', group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'})] # Array<ClaimFlex> | 

begin
  # Create or Update Batch ClaimFlex
  result = api_instance.update_batch_claim_flex(vbasoftware_database, claim_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->update_batch_claim_flex: #{e}"
end
```

#### Using the update_batch_claim_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_flex_with_http_info(vbasoftware_database, claim_flex)

```ruby
begin
  # Create or Update Batch ClaimFlex
  data, status_code, headers = api_instance.update_batch_claim_flex_with_http_info(vbasoftware_database, claim_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->update_batch_claim_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex** | [**Array&lt;ClaimFlex&gt;**](ClaimFlex.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_flex

> <ClaimFlexVBAResponse> update_claim_flex(vbasoftware_database, claim_flex_key, claim_flex)

Update ClaimFlex

Updates a specific ClaimFlex.

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

api_instance = Vba::FlexClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex = Vba::ClaimFlex.new({claim_flex_key: 37, auto_created: false, batch_number: 37, calendar_year: 'calendar_year_example', diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, flex_claim_number: 'flex_claim_number_example', group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'}) # ClaimFlex | 

begin
  # Update ClaimFlex
  result = api_instance.update_claim_flex(vbasoftware_database, claim_flex_key, claim_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->update_claim_flex: #{e}"
end
```

#### Using the update_claim_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexVBAResponse>, Integer, Hash)> update_claim_flex_with_http_info(vbasoftware_database, claim_flex_key, claim_flex)

```ruby
begin
  # Update ClaimFlex
  data, status_code, headers = api_instance.update_claim_flex_with_http_info(vbasoftware_database, claim_flex_key, claim_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimsApi->update_claim_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex** | [**ClaimFlex**](ClaimFlex.md) |  |  |

### Return type

[**ClaimFlexVBAResponse**](ClaimFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

