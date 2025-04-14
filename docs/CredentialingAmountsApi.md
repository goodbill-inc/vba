# Vba::CredentialingAmountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_amount**](CredentialingAmountsApi.md#create_cred_amount) | **POST** /credentialing-amounts | Create CredAmount |
| [**delete_cred_amount**](CredentialingAmountsApi.md#delete_cred_amount) | **DELETE** /credentialing-amounts/{credAmountKey} | Delete CredAmount |
| [**get_cred_amount**](CredentialingAmountsApi.md#get_cred_amount) | **GET** /credentialing-amounts/{credAmountKey} | Get CredAmount |
| [**list_cred_amount**](CredentialingAmountsApi.md#list_cred_amount) | **GET** /credentialing-amounts | List CredAmount |
| [**update_batch_cred_amount**](CredentialingAmountsApi.md#update_batch_cred_amount) | **PUT** /credentialing-amounts-batch | Create or Update Batch CredAmount |
| [**update_cred_amount**](CredentialingAmountsApi.md#update_cred_amount) | **PUT** /credentialing-amounts/{credAmountKey} | Update CredAmount |


## create_cred_amount

> <CredAmountVBAResponse> create_cred_amount(vbasoftware_database, cred_amount)

Create CredAmount

Creates a new CredAmount

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_amount = Vba::CredAmount.new({cred_amount_key: 37}) # CredAmount | 

begin
  # Create CredAmount
  result = api_instance.create_cred_amount(vbasoftware_database, cred_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->create_cred_amount: #{e}"
end
```

#### Using the create_cred_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAmountVBAResponse>, Integer, Hash)> create_cred_amount_with_http_info(vbasoftware_database, cred_amount)

```ruby
begin
  # Create CredAmount
  data, status_code, headers = api_instance.create_cred_amount_with_http_info(vbasoftware_database, cred_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->create_cred_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_amount** | [**CredAmount**](CredAmount.md) |  |  |

### Return type

[**CredAmountVBAResponse**](CredAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_amount

> delete_cred_amount(vbasoftware_database, cred_amount_key)

Delete CredAmount

Deletes an CredAmount

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_amount_key = 56 # Integer | CredAmount Key

begin
  # Delete CredAmount
  api_instance.delete_cred_amount(vbasoftware_database, cred_amount_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->delete_cred_amount: #{e}"
end
```

#### Using the delete_cred_amount_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_amount_with_http_info(vbasoftware_database, cred_amount_key)

```ruby
begin
  # Delete CredAmount
  data, status_code, headers = api_instance.delete_cred_amount_with_http_info(vbasoftware_database, cred_amount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->delete_cred_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_amount_key** | **Integer** | CredAmount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_amount

> <CredAmountVBAResponse> get_cred_amount(vbasoftware_database, cred_amount_key)

Get CredAmount

Gets CredAmount

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_amount_key = 56 # Integer | CredAmount Key

begin
  # Get CredAmount
  result = api_instance.get_cred_amount(vbasoftware_database, cred_amount_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->get_cred_amount: #{e}"
end
```

#### Using the get_cred_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAmountVBAResponse>, Integer, Hash)> get_cred_amount_with_http_info(vbasoftware_database, cred_amount_key)

```ruby
begin
  # Get CredAmount
  data, status_code, headers = api_instance.get_cred_amount_with_http_info(vbasoftware_database, cred_amount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->get_cred_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_amount_key** | **Integer** | CredAmount Key |  |

### Return type

[**CredAmountVBAResponse**](CredAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_amount

> <CredAmountListVBAResponse> list_cred_amount(vbasoftware_database, opts)

List CredAmount

Lists all CredAmount

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredAmount
  result = api_instance.list_cred_amount(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->list_cred_amount: #{e}"
end
```

#### Using the list_cred_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAmountListVBAResponse>, Integer, Hash)> list_cred_amount_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredAmount
  data, status_code, headers = api_instance.list_cred_amount_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAmountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->list_cred_amount_with_http_info: #{e}"
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

[**CredAmountListVBAResponse**](CredAmountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_amount

> <MultiCodeResponseListVBAResponse> update_batch_cred_amount(vbasoftware_database, cred_amount)

Create or Update Batch CredAmount

Create or Update multiple CredAmount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_amount = [Vba::CredAmount.new({cred_amount_key: 37})] # Array<CredAmount> | 

begin
  # Create or Update Batch CredAmount
  result = api_instance.update_batch_cred_amount(vbasoftware_database, cred_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->update_batch_cred_amount: #{e}"
end
```

#### Using the update_batch_cred_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_amount_with_http_info(vbasoftware_database, cred_amount)

```ruby
begin
  # Create or Update Batch CredAmount
  data, status_code, headers = api_instance.update_batch_cred_amount_with_http_info(vbasoftware_database, cred_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->update_batch_cred_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_amount** | [**Array&lt;CredAmount&gt;**](CredAmount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_amount

> <CredAmountVBAResponse> update_cred_amount(vbasoftware_database, cred_amount_key, cred_amount)

Update CredAmount

Updates a specific CredAmount.

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

api_instance = Vba::CredentialingAmountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_amount_key = 56 # Integer | CredAmount Key
cred_amount = Vba::CredAmount.new({cred_amount_key: 37}) # CredAmount | 

begin
  # Update CredAmount
  result = api_instance.update_cred_amount(vbasoftware_database, cred_amount_key, cred_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->update_cred_amount: #{e}"
end
```

#### Using the update_cred_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAmountVBAResponse>, Integer, Hash)> update_cred_amount_with_http_info(vbasoftware_database, cred_amount_key, cred_amount)

```ruby
begin
  # Update CredAmount
  data, status_code, headers = api_instance.update_cred_amount_with_http_info(vbasoftware_database, cred_amount_key, cred_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAmountsApi->update_cred_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_amount_key** | **Integer** | CredAmount Key |  |
| **cred_amount** | [**CredAmount**](CredAmount.md) |  |  |

### Return type

[**CredAmountVBAResponse**](CredAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

