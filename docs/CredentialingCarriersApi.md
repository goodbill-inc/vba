# Vba::CredentialingCarriersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_carrier**](CredentialingCarriersApi.md#create_cred_carrier) | **POST** /credentialing-carriers | Create CredCarrier |
| [**delete_cred_carrier**](CredentialingCarriersApi.md#delete_cred_carrier) | **DELETE** /credentialing-carriers/{credCarrierKey} | Delete CredCarrier |
| [**get_cred_carrier**](CredentialingCarriersApi.md#get_cred_carrier) | **GET** /credentialing-carriers/{credCarrierKey} | Get CredCarrier |
| [**list_cred_carrier**](CredentialingCarriersApi.md#list_cred_carrier) | **GET** /credentialing-carriers | List CredCarrier |
| [**update_batch_cred_carrier**](CredentialingCarriersApi.md#update_batch_cred_carrier) | **PUT** /credentialing-carriers-batch | Create or Update Batch CredCarrier |
| [**update_cred_carrier**](CredentialingCarriersApi.md#update_cred_carrier) | **PUT** /credentialing-carriers/{credCarrierKey} | Update CredCarrier |


## create_cred_carrier

> <CredCarrierVBAResponse> create_cred_carrier(vbasoftware_database, cred_carrier)

Create CredCarrier

Creates a new CredCarrier

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_carrier = Vba::CredCarrier.new({cred_carrier_key: 37}) # CredCarrier | 

begin
  # Create CredCarrier
  result = api_instance.create_cred_carrier(vbasoftware_database, cred_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->create_cred_carrier: #{e}"
end
```

#### Using the create_cred_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCarrierVBAResponse>, Integer, Hash)> create_cred_carrier_with_http_info(vbasoftware_database, cred_carrier)

```ruby
begin
  # Create CredCarrier
  data, status_code, headers = api_instance.create_cred_carrier_with_http_info(vbasoftware_database, cred_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->create_cred_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_carrier** | [**CredCarrier**](CredCarrier.md) |  |  |

### Return type

[**CredCarrierVBAResponse**](CredCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_carrier

> delete_cred_carrier(vbasoftware_database, cred_carrier_key)

Delete CredCarrier

Deletes an CredCarrier

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_carrier_key = 56 # Integer | CredCarrier Key

begin
  # Delete CredCarrier
  api_instance.delete_cred_carrier(vbasoftware_database, cred_carrier_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->delete_cred_carrier: #{e}"
end
```

#### Using the delete_cred_carrier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key)

```ruby
begin
  # Delete CredCarrier
  data, status_code, headers = api_instance.delete_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->delete_cred_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_carrier

> <CredCarrierVBAResponse> get_cred_carrier(vbasoftware_database, cred_carrier_key)

Get CredCarrier

Gets CredCarrier

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_carrier_key = 56 # Integer | CredCarrier Key

begin
  # Get CredCarrier
  result = api_instance.get_cred_carrier(vbasoftware_database, cred_carrier_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->get_cred_carrier: #{e}"
end
```

#### Using the get_cred_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCarrierVBAResponse>, Integer, Hash)> get_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key)

```ruby
begin
  # Get CredCarrier
  data, status_code, headers = api_instance.get_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->get_cred_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |

### Return type

[**CredCarrierVBAResponse**](CredCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_carrier

> <CredCarrierListVBAResponse> list_cred_carrier(vbasoftware_database, opts)

List CredCarrier

Lists all CredCarrier

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredCarrier
  result = api_instance.list_cred_carrier(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->list_cred_carrier: #{e}"
end
```

#### Using the list_cred_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCarrierListVBAResponse>, Integer, Hash)> list_cred_carrier_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredCarrier
  data, status_code, headers = api_instance.list_cred_carrier_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCarrierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->list_cred_carrier_with_http_info: #{e}"
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

[**CredCarrierListVBAResponse**](CredCarrierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_carrier

> <MultiCodeResponseListVBAResponse> update_batch_cred_carrier(vbasoftware_database, cred_carrier)

Create or Update Batch CredCarrier

Create or Update multiple CredCarrier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_carrier = [Vba::CredCarrier.new({cred_carrier_key: 37})] # Array<CredCarrier> | 

begin
  # Create or Update Batch CredCarrier
  result = api_instance.update_batch_cred_carrier(vbasoftware_database, cred_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->update_batch_cred_carrier: #{e}"
end
```

#### Using the update_batch_cred_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_carrier_with_http_info(vbasoftware_database, cred_carrier)

```ruby
begin
  # Create or Update Batch CredCarrier
  data, status_code, headers = api_instance.update_batch_cred_carrier_with_http_info(vbasoftware_database, cred_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->update_batch_cred_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_carrier** | [**Array&lt;CredCarrier&gt;**](CredCarrier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_carrier

> <CredCarrierVBAResponse> update_cred_carrier(vbasoftware_database, cred_carrier_key, cred_carrier)

Update CredCarrier

Updates a specific CredCarrier.

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

api_instance = Vba::CredentialingCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_carrier_key = 56 # Integer | CredCarrier Key
cred_carrier = Vba::CredCarrier.new({cred_carrier_key: 37}) # CredCarrier | 

begin
  # Update CredCarrier
  result = api_instance.update_cred_carrier(vbasoftware_database, cred_carrier_key, cred_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->update_cred_carrier: #{e}"
end
```

#### Using the update_cred_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredCarrierVBAResponse>, Integer, Hash)> update_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key, cred_carrier)

```ruby
begin
  # Update CredCarrier
  data, status_code, headers = api_instance.update_cred_carrier_with_http_info(vbasoftware_database, cred_carrier_key, cred_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingCarriersApi->update_cred_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_carrier_key** | **Integer** | CredCarrier Key |  |
| **cred_carrier** | [**CredCarrier**](CredCarrier.md) |  |  |

### Return type

[**CredCarrierVBAResponse**](CredCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

