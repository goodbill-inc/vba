# Vba::FlexClaimServicesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_flex_service**](FlexClaimServicesApi.md#create_claim_flex_service) | **POST** /flex-claims/{claimFlexKey}/services | Create ClaimFlexService |
| [**delete_claim_flex_service**](FlexClaimServicesApi.md#delete_claim_flex_service) | **DELETE** /flex-claims/{claimFlexKey}/services/{claimFlexServiceKey} | Delete ClaimFlexService |
| [**get_claim_flex_service**](FlexClaimServicesApi.md#get_claim_flex_service) | **GET** /flex-claims/{claimFlexKey}/services/{claimFlexServiceKey} | Get ClaimFlexService |
| [**list_claim_flex_service**](FlexClaimServicesApi.md#list_claim_flex_service) | **GET** /flex-claims/{claimFlexKey}/services | List ClaimFlexService |
| [**update_batch_claim_flex_service**](FlexClaimServicesApi.md#update_batch_claim_flex_service) | **PUT** /flex-claims/{claimFlexKey}/services-batch | Create or Update Batch ClaimFlexService |
| [**update_claim_flex_service**](FlexClaimServicesApi.md#update_claim_flex_service) | **PUT** /flex-claims/{claimFlexKey}/services/{claimFlexServiceKey} | Update ClaimFlexService |


## create_claim_flex_service

> <ClaimFlexServiceVBAResponse> create_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service)

Create ClaimFlexService

Creates a new ClaimFlexService

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_service = Vba::ClaimFlexService.new({claim_flex_service_key: 37, claim_flex_key: 37}) # ClaimFlexService | 

begin
  # Create ClaimFlexService
  result = api_instance.create_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->create_claim_flex_service: #{e}"
end
```

#### Using the create_claim_flex_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexServiceVBAResponse>, Integer, Hash)> create_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service)

```ruby
begin
  # Create ClaimFlexService
  data, status_code, headers = api_instance.create_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->create_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_service** | [**ClaimFlexService**](ClaimFlexService.md) |  |  |

### Return type

[**ClaimFlexServiceVBAResponse**](ClaimFlexServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_flex_service

> delete_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key)

Delete ClaimFlexService

Deletes an ClaimFlexService

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_service_key = 56 # Integer | ClaimFlexService Key

begin
  # Delete ClaimFlexService
  api_instance.delete_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key)
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->delete_claim_flex_service: #{e}"
end
```

#### Using the delete_claim_flex_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key)

```ruby
begin
  # Delete ClaimFlexService
  data, status_code, headers = api_instance.delete_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->delete_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_service_key** | **Integer** | ClaimFlexService Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_flex_service

> <ClaimFlexServiceVBAResponse> get_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key)

Get ClaimFlexService

Gets ClaimFlexService

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_service_key = 56 # Integer | ClaimFlexService Key

begin
  # Get ClaimFlexService
  result = api_instance.get_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->get_claim_flex_service: #{e}"
end
```

#### Using the get_claim_flex_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexServiceVBAResponse>, Integer, Hash)> get_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key)

```ruby
begin
  # Get ClaimFlexService
  data, status_code, headers = api_instance.get_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->get_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_service_key** | **Integer** | ClaimFlexService Key |  |

### Return type

[**ClaimFlexServiceVBAResponse**](ClaimFlexServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_flex_service

> <ClaimFlexServiceListVBAResponse> list_claim_flex_service(vbasoftware_database, claim_flex_key, opts)

List ClaimFlexService

Lists all ClaimFlexService for the given claimFlexKey

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimFlexService
  result = api_instance.list_claim_flex_service(vbasoftware_database, claim_flex_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->list_claim_flex_service: #{e}"
end
```

#### Using the list_claim_flex_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexServiceListVBAResponse>, Integer, Hash)> list_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, opts)

```ruby
begin
  # List ClaimFlexService
  data, status_code, headers = api_instance.list_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexServiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->list_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimFlexServiceListVBAResponse**](ClaimFlexServiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_flex_service

> <MultiCodeResponseListVBAResponse> update_batch_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service)

Create or Update Batch ClaimFlexService

Create or Update multiple ClaimFlexService at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_service = [Vba::ClaimFlexService.new({claim_flex_service_key: 37, claim_flex_key: 37})] # Array<ClaimFlexService> | 

begin
  # Create or Update Batch ClaimFlexService
  result = api_instance.update_batch_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->update_batch_claim_flex_service: #{e}"
end
```

#### Using the update_batch_claim_flex_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service)

```ruby
begin
  # Create or Update Batch ClaimFlexService
  data, status_code, headers = api_instance.update_batch_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->update_batch_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_service** | [**Array&lt;ClaimFlexService&gt;**](ClaimFlexService.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_flex_service

> <ClaimFlexServiceVBAResponse> update_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key, claim_flex_service)

Update ClaimFlexService

Updates a specific ClaimFlexService.

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

api_instance = Vba::FlexClaimServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_flex_key = 56 # Integer | ClaimFlex Key
claim_flex_service_key = 56 # Integer | ClaimFlexService Key
claim_flex_service = Vba::ClaimFlexService.new({claim_flex_service_key: 37, claim_flex_key: 37}) # ClaimFlexService | 

begin
  # Update ClaimFlexService
  result = api_instance.update_claim_flex_service(vbasoftware_database, claim_flex_key, claim_flex_service_key, claim_flex_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->update_claim_flex_service: #{e}"
end
```

#### Using the update_claim_flex_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFlexServiceVBAResponse>, Integer, Hash)> update_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key, claim_flex_service)

```ruby
begin
  # Update ClaimFlexService
  data, status_code, headers = api_instance.update_claim_flex_service_with_http_info(vbasoftware_database, claim_flex_key, claim_flex_service_key, claim_flex_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFlexServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexClaimServicesApi->update_claim_flex_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_flex_key** | **Integer** | ClaimFlex Key |  |
| **claim_flex_service_key** | **Integer** | ClaimFlexService Key |  |
| **claim_flex_service** | [**ClaimFlexService**](ClaimFlexService.md) |  |  |

### Return type

[**ClaimFlexServiceVBAResponse**](ClaimFlexServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

