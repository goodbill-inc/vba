# Vba::SuspenseClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_suspense_claim**](SuspenseClaimsApi.md#create_suspense_claim) | **POST** /suspense-claims | Create SuspenseClaim |
| [**delete_suspense_claim**](SuspenseClaimsApi.md#delete_suspense_claim) | **DELETE** /suspense-claims/{suspenseClaimKey} | Delete SuspenseClaim |
| [**get_suspense_claim**](SuspenseClaimsApi.md#get_suspense_claim) | **GET** /suspense-claims/{suspenseClaimKey} | Get SuspenseClaim |
| [**list_suspense_claim**](SuspenseClaimsApi.md#list_suspense_claim) | **GET** /suspense-claims | List SuspenseClaim |
| [**update_batch_suspense_claim**](SuspenseClaimsApi.md#update_batch_suspense_claim) | **PUT** /suspense-claims-batch | Create or Update Batch SuspenseClaim |
| [**update_suspense_claim**](SuspenseClaimsApi.md#update_suspense_claim) | **PUT** /suspense-claims/{suspenseClaimKey} | Update SuspenseClaim |


## create_suspense_claim

> <SuspenseClaimVBAResponse> create_suspense_claim(vbasoftware_database, suspense_claim)

Create SuspenseClaim

Creates a new SuspenseClaim

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim = Vba::SuspenseClaim.new({suspense_claim_key: 37, claim_number: 37, suspense_criteria_key: 37}) # SuspenseClaim | 

begin
  # Create SuspenseClaim
  result = api_instance.create_suspense_claim(vbasoftware_database, suspense_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->create_suspense_claim: #{e}"
end
```

#### Using the create_suspense_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseClaimVBAResponse>, Integer, Hash)> create_suspense_claim_with_http_info(vbasoftware_database, suspense_claim)

```ruby
begin
  # Create SuspenseClaim
  data, status_code, headers = api_instance.create_suspense_claim_with_http_info(vbasoftware_database, suspense_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->create_suspense_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim** | [**SuspenseClaim**](SuspenseClaim.md) |  |  |

### Return type

[**SuspenseClaimVBAResponse**](SuspenseClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_suspense_claim

> delete_suspense_claim(vbasoftware_database, suspense_claim_key)

Delete SuspenseClaim

Deletes an SuspenseClaim

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim_key = 56 # Integer | SuspenseClaim Key

begin
  # Delete SuspenseClaim
  api_instance.delete_suspense_claim(vbasoftware_database, suspense_claim_key)
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->delete_suspense_claim: #{e}"
end
```

#### Using the delete_suspense_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key)

```ruby
begin
  # Delete SuspenseClaim
  data, status_code, headers = api_instance.delete_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->delete_suspense_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim_key** | **Integer** | SuspenseClaim Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_suspense_claim

> <SuspenseClaimVBAResponse> get_suspense_claim(vbasoftware_database, suspense_claim_key)

Get SuspenseClaim

Gets SuspenseClaim

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim_key = 56 # Integer | SuspenseClaim Key

begin
  # Get SuspenseClaim
  result = api_instance.get_suspense_claim(vbasoftware_database, suspense_claim_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->get_suspense_claim: #{e}"
end
```

#### Using the get_suspense_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseClaimVBAResponse>, Integer, Hash)> get_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key)

```ruby
begin
  # Get SuspenseClaim
  data, status_code, headers = api_instance.get_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->get_suspense_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim_key** | **Integer** | SuspenseClaim Key |  |

### Return type

[**SuspenseClaimVBAResponse**](SuspenseClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_suspense_claim

> <SuspenseClaimListVBAResponse> list_suspense_claim(vbasoftware_database, opts)

List SuspenseClaim

Lists all SuspenseClaim

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SuspenseClaim
  result = api_instance.list_suspense_claim(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->list_suspense_claim: #{e}"
end
```

#### Using the list_suspense_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseClaimListVBAResponse>, Integer, Hash)> list_suspense_claim_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SuspenseClaim
  data, status_code, headers = api_instance.list_suspense_claim_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseClaimListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->list_suspense_claim_with_http_info: #{e}"
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

[**SuspenseClaimListVBAResponse**](SuspenseClaimListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_suspense_claim

> <MultiCodeResponseListVBAResponse> update_batch_suspense_claim(vbasoftware_database, suspense_claim)

Create or Update Batch SuspenseClaim

Create or Update multiple SuspenseClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim = [Vba::SuspenseClaim.new({suspense_claim_key: 37, claim_number: 37, suspense_criteria_key: 37})] # Array<SuspenseClaim> | 

begin
  # Create or Update Batch SuspenseClaim
  result = api_instance.update_batch_suspense_claim(vbasoftware_database, suspense_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->update_batch_suspense_claim: #{e}"
end
```

#### Using the update_batch_suspense_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_suspense_claim_with_http_info(vbasoftware_database, suspense_claim)

```ruby
begin
  # Create or Update Batch SuspenseClaim
  data, status_code, headers = api_instance.update_batch_suspense_claim_with_http_info(vbasoftware_database, suspense_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->update_batch_suspense_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim** | [**Array&lt;SuspenseClaim&gt;**](SuspenseClaim.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_suspense_claim

> <SuspenseClaimVBAResponse> update_suspense_claim(vbasoftware_database, suspense_claim_key, suspense_claim)

Update SuspenseClaim

Updates a specific SuspenseClaim.

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

api_instance = Vba::SuspenseClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_claim_key = 56 # Integer | SuspenseClaim Key
suspense_claim = Vba::SuspenseClaim.new({suspense_claim_key: 37, claim_number: 37, suspense_criteria_key: 37}) # SuspenseClaim | 

begin
  # Update SuspenseClaim
  result = api_instance.update_suspense_claim(vbasoftware_database, suspense_claim_key, suspense_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->update_suspense_claim: #{e}"
end
```

#### Using the update_suspense_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseClaimVBAResponse>, Integer, Hash)> update_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key, suspense_claim)

```ruby
begin
  # Update SuspenseClaim
  data, status_code, headers = api_instance.update_suspense_claim_with_http_info(vbasoftware_database, suspense_claim_key, suspense_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseClaimsApi->update_suspense_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_claim_key** | **Integer** | SuspenseClaim Key |  |
| **suspense_claim** | [**SuspenseClaim**](SuspenseClaim.md) |  |  |

### Return type

[**SuspenseClaimVBAResponse**](SuspenseClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

