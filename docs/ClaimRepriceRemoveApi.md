# Vba::ClaimRepriceRemoveApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_reprice_remove**](ClaimRepriceRemoveApi.md#create_claim_reprice_remove) | **POST** /claim-reprice-remove | Create ClaimRepriceRemove |
| [**delete_claim_reprice_remove**](ClaimRepriceRemoveApi.md#delete_claim_reprice_remove) | **DELETE** /claim-reprice-remove/{ClaimRepriceRemove_Key} | Delete ClaimRepriceRemove |
| [**get_claim_reprice_remove**](ClaimRepriceRemoveApi.md#get_claim_reprice_remove) | **GET** /claim-reprice-remove/{ClaimRepriceRemove_Key} | Get ClaimRepriceRemove |
| [**list_claim_reprice_remove**](ClaimRepriceRemoveApi.md#list_claim_reprice_remove) | **GET** /claim-reprice-remove | List ClaimRepriceRemove |
| [**update_batch_claim_reprice_remove**](ClaimRepriceRemoveApi.md#update_batch_claim_reprice_remove) | **PUT** /claim-reprice-remove-batch | Create or Update Batch ClaimRepriceRemove |
| [**update_claim_reprice_remove**](ClaimRepriceRemoveApi.md#update_claim_reprice_remove) | **PUT** /claim-reprice-remove/{ClaimRepriceRemove_Key} | Update ClaimRepriceRemove |


## create_claim_reprice_remove

> <ClaimRepriceRemoveVBAResponse> create_claim_reprice_remove(vbasoftware_database, claim_reprice_remove)

Create ClaimRepriceRemove

Creates a new ClaimRepriceRemove

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_reprice_remove = Vba::ClaimRepriceRemove.new({claim_reprice_remove_key: 37, remove_repriced_network_id: false}) # ClaimRepriceRemove | 

begin
  # Create ClaimRepriceRemove
  result = api_instance.create_claim_reprice_remove(vbasoftware_database, claim_reprice_remove)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->create_claim_reprice_remove: #{e}"
end
```

#### Using the create_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRepriceRemoveVBAResponse>, Integer, Hash)> create_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove)

```ruby
begin
  # Create ClaimRepriceRemove
  data, status_code, headers = api_instance.create_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRepriceRemoveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->create_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_reprice_remove** | [**ClaimRepriceRemove**](ClaimRepriceRemove.md) |  |  |

### Return type

[**ClaimRepriceRemoveVBAResponse**](ClaimRepriceRemoveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_reprice_remove

> delete_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key)

Delete ClaimRepriceRemove

Deletes an ClaimRepriceRemove

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_reprice_remove_key = 56 # Integer | ClaimRepriceRemove Key

begin
  # Delete ClaimRepriceRemove
  api_instance.delete_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->delete_claim_reprice_remove: #{e}"
end
```

#### Using the delete_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key)

```ruby
begin
  # Delete ClaimRepriceRemove
  data, status_code, headers = api_instance.delete_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->delete_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_reprice_remove_key** | **Integer** | ClaimRepriceRemove Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_reprice_remove

> <ClaimRepriceRemoveVBAResponse> get_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key)

Get ClaimRepriceRemove

Gets ClaimRepriceRemove

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_reprice_remove_key = 56 # Integer | ClaimRepriceRemove Key

begin
  # Get ClaimRepriceRemove
  result = api_instance.get_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->get_claim_reprice_remove: #{e}"
end
```

#### Using the get_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRepriceRemoveVBAResponse>, Integer, Hash)> get_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key)

```ruby
begin
  # Get ClaimRepriceRemove
  data, status_code, headers = api_instance.get_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRepriceRemoveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->get_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_reprice_remove_key** | **Integer** | ClaimRepriceRemove Key |  |

### Return type

[**ClaimRepriceRemoveVBAResponse**](ClaimRepriceRemoveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_reprice_remove

> <ClaimRepriceRemoveListVBAResponse> list_claim_reprice_remove(vbasoftware_database, opts)

List ClaimRepriceRemove

Lists all ClaimRepriceRemove

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimRepriceRemove
  result = api_instance.list_claim_reprice_remove(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->list_claim_reprice_remove: #{e}"
end
```

#### Using the list_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRepriceRemoveListVBAResponse>, Integer, Hash)> list_claim_reprice_remove_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimRepriceRemove
  data, status_code, headers = api_instance.list_claim_reprice_remove_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRepriceRemoveListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->list_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ClaimRepriceRemoveListVBAResponse**](ClaimRepriceRemoveListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_reprice_remove

> <MultiCodeResponseListVBAResponse> update_batch_claim_reprice_remove(vbasoftware_database, claim_reprice_remove)

Create or Update Batch ClaimRepriceRemove

Create or Update multiple ClaimRepriceRemove at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_reprice_remove = [Vba::ClaimRepriceRemove.new({claim_reprice_remove_key: 37, remove_repriced_network_id: false})] # Array<ClaimRepriceRemove> | 

begin
  # Create or Update Batch ClaimRepriceRemove
  result = api_instance.update_batch_claim_reprice_remove(vbasoftware_database, claim_reprice_remove)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->update_batch_claim_reprice_remove: #{e}"
end
```

#### Using the update_batch_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove)

```ruby
begin
  # Create or Update Batch ClaimRepriceRemove
  data, status_code, headers = api_instance.update_batch_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->update_batch_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_reprice_remove** | [**Array&lt;ClaimRepriceRemove&gt;**](ClaimRepriceRemove.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_reprice_remove

> <ClaimRepriceRemoveVBAResponse> update_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key, claim_reprice_remove)

Update ClaimRepriceRemove

Updates a specific ClaimRepriceRemove.

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

api_instance = Vba::ClaimRepriceRemoveApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_reprice_remove_key = 56 # Integer | ClaimRepriceRemove Key
claim_reprice_remove = Vba::ClaimRepriceRemove.new({claim_reprice_remove_key: 37, remove_repriced_network_id: false}) # ClaimRepriceRemove | 

begin
  # Update ClaimRepriceRemove
  result = api_instance.update_claim_reprice_remove(vbasoftware_database, claim_reprice_remove_key, claim_reprice_remove)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->update_claim_reprice_remove: #{e}"
end
```

#### Using the update_claim_reprice_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimRepriceRemoveVBAResponse>, Integer, Hash)> update_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key, claim_reprice_remove)

```ruby
begin
  # Update ClaimRepriceRemove
  data, status_code, headers = api_instance.update_claim_reprice_remove_with_http_info(vbasoftware_database, claim_reprice_remove_key, claim_reprice_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimRepriceRemoveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimRepriceRemoveApi->update_claim_reprice_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_reprice_remove_key** | **Integer** | ClaimRepriceRemove Key |  |
| **claim_reprice_remove** | [**ClaimRepriceRemove**](ClaimRepriceRemove.md) |  |  |

### Return type

[**ClaimRepriceRemoveVBAResponse**](ClaimRepriceRemoveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

