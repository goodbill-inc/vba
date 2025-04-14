# Vba::ClaimStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_status**](ClaimStatusesApi.md#create_claim_status) | **POST** /claim-statuses | Create ClaimStatus |
| [**delete_claim_status**](ClaimStatusesApi.md#delete_claim_status) | **DELETE** /claim-statuses/{claimStatus} | Delete ClaimStatus |
| [**get_claim_status**](ClaimStatusesApi.md#get_claim_status) | **GET** /claim-statuses/{claimStatus} | Get ClaimStatus |
| [**list_claim_status**](ClaimStatusesApi.md#list_claim_status) | **GET** /claim-statuses | List ClaimStatus |
| [**update_batch_claim_status**](ClaimStatusesApi.md#update_batch_claim_status) | **PUT** /claim-statuses-batch | Create or Update Batch ClaimStatus |
| [**update_claim_status**](ClaimStatusesApi.md#update_claim_status) | **PUT** /claim-statuses/{claimStatus} | Update ClaimStatus |


## create_claim_status

> <ClaimStatusVBAResponse> create_claim_status(vbasoftware_database, claim_status)

Create ClaimStatus

Creates a new ClaimStatus

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_status = Vba::ClaimStatus.new({claim_status: 'claim_status_example'}) # ClaimStatus | 

begin
  # Create ClaimStatus
  result = api_instance.create_claim_status(vbasoftware_database, claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->create_claim_status: #{e}"
end
```

#### Using the create_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimStatusVBAResponse>, Integer, Hash)> create_claim_status_with_http_info(vbasoftware_database, claim_status)

```ruby
begin
  # Create ClaimStatus
  data, status_code, headers = api_instance.create_claim_status_with_http_info(vbasoftware_database, claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->create_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_status** | [**ClaimStatus**](ClaimStatus.md) |  |  |

### Return type

[**ClaimStatusVBAResponse**](ClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_status

> delete_claim_status(vbasoftware_database, claim_status)

Delete ClaimStatus

Deletes an ClaimStatus

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_status = 'claim_status_example' # String | Claim Status

begin
  # Delete ClaimStatus
  api_instance.delete_claim_status(vbasoftware_database, claim_status)
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->delete_claim_status: #{e}"
end
```

#### Using the delete_claim_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_status_with_http_info(vbasoftware_database, claim_status)

```ruby
begin
  # Delete ClaimStatus
  data, status_code, headers = api_instance.delete_claim_status_with_http_info(vbasoftware_database, claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->delete_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_status** | **String** | Claim Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_status

> <ClaimStatusVBAResponse> get_claim_status(vbasoftware_database, claim_status)

Get ClaimStatus

Gets ClaimStatus

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_status = 'claim_status_example' # String | Claim Status

begin
  # Get ClaimStatus
  result = api_instance.get_claim_status(vbasoftware_database, claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->get_claim_status: #{e}"
end
```

#### Using the get_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimStatusVBAResponse>, Integer, Hash)> get_claim_status_with_http_info(vbasoftware_database, claim_status)

```ruby
begin
  # Get ClaimStatus
  data, status_code, headers = api_instance.get_claim_status_with_http_info(vbasoftware_database, claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->get_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_status** | **String** | Claim Status |  |

### Return type

[**ClaimStatusVBAResponse**](ClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_status

> <ClaimStatusListVBAResponse> list_claim_status(vbasoftware_database, opts)

List ClaimStatus

Lists all ClaimStatus

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimStatus
  result = api_instance.list_claim_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->list_claim_status: #{e}"
end
```

#### Using the list_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimStatusListVBAResponse>, Integer, Hash)> list_claim_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimStatus
  data, status_code, headers = api_instance.list_claim_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->list_claim_status_with_http_info: #{e}"
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

[**ClaimStatusListVBAResponse**](ClaimStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_status

> <MultiCodeResponseListVBAResponse> update_batch_claim_status(vbasoftware_database, claim_status)

Create or Update Batch ClaimStatus

Create or Update multiple ClaimStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_status = [Vba::ClaimStatus.new({claim_status: 'claim_status_example'})] # Array<ClaimStatus> | 

begin
  # Create or Update Batch ClaimStatus
  result = api_instance.update_batch_claim_status(vbasoftware_database, claim_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->update_batch_claim_status: #{e}"
end
```

#### Using the update_batch_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_status_with_http_info(vbasoftware_database, claim_status)

```ruby
begin
  # Create or Update Batch ClaimStatus
  data, status_code, headers = api_instance.update_batch_claim_status_with_http_info(vbasoftware_database, claim_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->update_batch_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_status** | [**Array&lt;ClaimStatus&gt;**](ClaimStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_status

> <ClaimStatusVBAResponse> update_claim_status(vbasoftware_database, claim_status, claim_status2)

Update ClaimStatus

Updates a specific ClaimStatus.

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

api_instance = Vba::ClaimStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_status = 'claim_status_example' # String | Claim Status
claim_status2 = Vba::ClaimStatus.new({claim_status: 'claim_status_example'}) # ClaimStatus | 

begin
  # Update ClaimStatus
  result = api_instance.update_claim_status(vbasoftware_database, claim_status, claim_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->update_claim_status: #{e}"
end
```

#### Using the update_claim_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimStatusVBAResponse>, Integer, Hash)> update_claim_status_with_http_info(vbasoftware_database, claim_status, claim_status2)

```ruby
begin
  # Update ClaimStatus
  data, status_code, headers = api_instance.update_claim_status_with_http_info(vbasoftware_database, claim_status, claim_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimStatusesApi->update_claim_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_status** | **String** | Claim Status |  |
| **claim_status2** | [**ClaimStatus**](ClaimStatus.md) |  |  |

### Return type

[**ClaimStatusVBAResponse**](ClaimStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

