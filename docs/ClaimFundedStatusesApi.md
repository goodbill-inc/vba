# Vba::ClaimFundedStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_funded_status**](ClaimFundedStatusesApi.md#create_claim_funded_status) | **POST** /claim-funded-statuses | Create ClaimFundedStatus |
| [**delete_claim_funded_status**](ClaimFundedStatusesApi.md#delete_claim_funded_status) | **DELETE** /claim-funded-statuses/{claimFundedStatus} | Delete ClaimFundedStatus |
| [**get_claim_funded_status**](ClaimFundedStatusesApi.md#get_claim_funded_status) | **GET** /claim-funded-statuses/{claimFundedStatus} | Get ClaimFundedStatus |
| [**list_claim_funded_status**](ClaimFundedStatusesApi.md#list_claim_funded_status) | **GET** /claim-funded-statuses | List ClaimFundedStatus |
| [**update_batch_claim_funded_status**](ClaimFundedStatusesApi.md#update_batch_claim_funded_status) | **PUT** /claim-funded-statuses-batch | Create or Update Batch ClaimFundedStatus |
| [**update_claim_funded_status**](ClaimFundedStatusesApi.md#update_claim_funded_status) | **PUT** /claim-funded-statuses/{claimFundedStatus} | Update ClaimFundedStatus |


## create_claim_funded_status

> <ClaimFundedStatusVBAResponse> create_claim_funded_status(vbasoftware_database, claim_funded_status)

Create ClaimFundedStatus

Creates a new ClaimFundedStatus

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_funded_status = Vba::ClaimFundedStatus.new({claim_funded_status: 'claim_funded_status_example'}) # ClaimFundedStatus | 

begin
  # Create ClaimFundedStatus
  result = api_instance.create_claim_funded_status(vbasoftware_database, claim_funded_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->create_claim_funded_status: #{e}"
end
```

#### Using the create_claim_funded_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFundedStatusVBAResponse>, Integer, Hash)> create_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)

```ruby
begin
  # Create ClaimFundedStatus
  data, status_code, headers = api_instance.create_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFundedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->create_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_funded_status** | [**ClaimFundedStatus**](ClaimFundedStatus.md) |  |  |

### Return type

[**ClaimFundedStatusVBAResponse**](ClaimFundedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_funded_status

> delete_claim_funded_status(vbasoftware_database, claim_funded_status)

Delete ClaimFundedStatus

Deletes an ClaimFundedStatus

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_funded_status = 'claim_funded_status_example' # String | Claim Funded Status

begin
  # Delete ClaimFundedStatus
  api_instance.delete_claim_funded_status(vbasoftware_database, claim_funded_status)
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->delete_claim_funded_status: #{e}"
end
```

#### Using the delete_claim_funded_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)

```ruby
begin
  # Delete ClaimFundedStatus
  data, status_code, headers = api_instance.delete_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->delete_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_funded_status** | **String** | Claim Funded Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_funded_status

> <ClaimFundedStatusVBAResponse> get_claim_funded_status(vbasoftware_database, claim_funded_status)

Get ClaimFundedStatus

Gets ClaimFundedStatus

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_funded_status = 'claim_funded_status_example' # String | Claim Funded Status

begin
  # Get ClaimFundedStatus
  result = api_instance.get_claim_funded_status(vbasoftware_database, claim_funded_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->get_claim_funded_status: #{e}"
end
```

#### Using the get_claim_funded_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFundedStatusVBAResponse>, Integer, Hash)> get_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)

```ruby
begin
  # Get ClaimFundedStatus
  data, status_code, headers = api_instance.get_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFundedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->get_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_funded_status** | **String** | Claim Funded Status |  |

### Return type

[**ClaimFundedStatusVBAResponse**](ClaimFundedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_funded_status

> <ClaimFundedStatusListVBAResponse> list_claim_funded_status(vbasoftware_database, opts)

List ClaimFundedStatus

Lists all ClaimFundedStatus

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimFundedStatus
  result = api_instance.list_claim_funded_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->list_claim_funded_status: #{e}"
end
```

#### Using the list_claim_funded_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFundedStatusListVBAResponse>, Integer, Hash)> list_claim_funded_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimFundedStatus
  data, status_code, headers = api_instance.list_claim_funded_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFundedStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->list_claim_funded_status_with_http_info: #{e}"
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

[**ClaimFundedStatusListVBAResponse**](ClaimFundedStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_funded_status

> <MultiCodeResponseListVBAResponse> update_batch_claim_funded_status(vbasoftware_database, claim_funded_status)

Create or Update Batch ClaimFundedStatus

Create or Update multiple ClaimFundedStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_funded_status = [Vba::ClaimFundedStatus.new({claim_funded_status: 'claim_funded_status_example'})] # Array<ClaimFundedStatus> | 

begin
  # Create or Update Batch ClaimFundedStatus
  result = api_instance.update_batch_claim_funded_status(vbasoftware_database, claim_funded_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->update_batch_claim_funded_status: #{e}"
end
```

#### Using the update_batch_claim_funded_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)

```ruby
begin
  # Create or Update Batch ClaimFundedStatus
  data, status_code, headers = api_instance.update_batch_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->update_batch_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_funded_status** | [**Array&lt;ClaimFundedStatus&gt;**](ClaimFundedStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_funded_status

> <ClaimFundedStatusVBAResponse> update_claim_funded_status(vbasoftware_database, claim_funded_status, claim_funded_status2)

Update ClaimFundedStatus

Updates a specific ClaimFundedStatus.

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

api_instance = Vba::ClaimFundedStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_funded_status = 'claim_funded_status_example' # String | Claim Funded Status
claim_funded_status2 = Vba::ClaimFundedStatus.new({claim_funded_status: 'claim_funded_status_example'}) # ClaimFundedStatus | 

begin
  # Update ClaimFundedStatus
  result = api_instance.update_claim_funded_status(vbasoftware_database, claim_funded_status, claim_funded_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->update_claim_funded_status: #{e}"
end
```

#### Using the update_claim_funded_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimFundedStatusVBAResponse>, Integer, Hash)> update_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status, claim_funded_status2)

```ruby
begin
  # Update ClaimFundedStatus
  data, status_code, headers = api_instance.update_claim_funded_status_with_http_info(vbasoftware_database, claim_funded_status, claim_funded_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimFundedStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimFundedStatusesApi->update_claim_funded_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_funded_status** | **String** | Claim Funded Status |  |
| **claim_funded_status2** | [**ClaimFundedStatus**](ClaimFundedStatus.md) |  |  |

### Return type

[**ClaimFundedStatusVBAResponse**](ClaimFundedStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

