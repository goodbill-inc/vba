# Vba::ProviderAccountApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_account**](ProviderAccountApi.md#create_provider_account) | **POST** /providers/{providerID}/accounts | Create Provider Account |
| [**delete_provider_account**](ProviderAccountApi.md#delete_provider_account) | **DELETE** /providers/{providerID}/accounts/{providerAccountKey} | Delete Provider Account |
| [**get_provider_account**](ProviderAccountApi.md#get_provider_account) | **GET** /providers/{providerID}/accounts/{providerAccountKey} | Get Provider Account |
| [**list_provider_account**](ProviderAccountApi.md#list_provider_account) | **GET** /providers/{providerID}/accounts | List Provider Accounts |
| [**update_batch_provider_account**](ProviderAccountApi.md#update_batch_provider_account) | **PUT** /providers/{providerID}/accounts-batch | Create or Update Batch Provider Account |
| [**update_provider_account**](ProviderAccountApi.md#update_provider_account) | **PUT** /providers/{providerID}/accounts/{providerAccountKey} | Update Provider Account |


## create_provider_account

> <ProviderAccountVBAResponse> create_provider_account(vbasoftware_database, provider_id, provider_account)

Create Provider Account

Creates a new Provider Account

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_account = Vba::ProviderAccount.new({provider_account_key: 37, account_key: 37, provider_id: 'provider_id_example', wire_transfer: false}) # ProviderAccount | 

begin
  # Create Provider Account
  result = api_instance.create_provider_account(vbasoftware_database, provider_id, provider_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->create_provider_account: #{e}"
end
```

#### Using the create_provider_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAccountVBAResponse>, Integer, Hash)> create_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account)

```ruby
begin
  # Create Provider Account
  data, status_code, headers = api_instance.create_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->create_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_account** | [**ProviderAccount**](ProviderAccount.md) |  |  |

### Return type

[**ProviderAccountVBAResponse**](ProviderAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_account

> delete_provider_account(vbasoftware_database, provider_id, provider_account_key)

Delete Provider Account

Deletes a Provider Account

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_account_key = 56 # Integer | ProviderAccount Key

begin
  # Delete Provider Account
  api_instance.delete_provider_account(vbasoftware_database, provider_id, provider_account_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->delete_provider_account: #{e}"
end
```

#### Using the delete_provider_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key)

```ruby
begin
  # Delete Provider Account
  data, status_code, headers = api_instance.delete_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->delete_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_account_key** | **Integer** | ProviderAccount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_account

> <ProviderAccountVBAResponse> get_provider_account(vbasoftware_database, provider_id, provider_account_key)

Get Provider Account

Gets Provider Account

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_account_key = 56 # Integer | ProviderAccount Key

begin
  # Get Provider Account
  result = api_instance.get_provider_account(vbasoftware_database, provider_id, provider_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->get_provider_account: #{e}"
end
```

#### Using the get_provider_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAccountVBAResponse>, Integer, Hash)> get_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key)

```ruby
begin
  # Get Provider Account
  data, status_code, headers = api_instance.get_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->get_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_account_key** | **Integer** | ProviderAccount Key |  |

### Return type

[**ProviderAccountVBAResponse**](ProviderAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_account

> <ProviderAccountListVBAResponse> list_provider_account(vbasoftware_database, provider_id)

List Provider Accounts

List Provider Accounts for a specific Provider ID.

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List Provider Accounts
  result = api_instance.list_provider_account(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->list_provider_account: #{e}"
end
```

#### Using the list_provider_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAccountListVBAResponse>, Integer, Hash)> list_provider_account_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List Provider Accounts
  data, status_code, headers = api_instance.list_provider_account_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->list_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderAccountListVBAResponse**](ProviderAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_account

> <MultiCodeResponseListVBAResponse> update_batch_provider_account(vbasoftware_database, provider_id, provider_account)

Create or Update Batch Provider Account

Create or Update multiple Provider Accounts at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_account = [Vba::ProviderAccount.new({provider_account_key: 37, account_key: 37, provider_id: 'provider_id_example', wire_transfer: false})] # Array<ProviderAccount> | 

begin
  # Create or Update Batch Provider Account
  result = api_instance.update_batch_provider_account(vbasoftware_database, provider_id, provider_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->update_batch_provider_account: #{e}"
end
```

#### Using the update_batch_provider_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account)

```ruby
begin
  # Create or Update Batch Provider Account
  data, status_code, headers = api_instance.update_batch_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->update_batch_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_account** | [**Array&lt;ProviderAccount&gt;**](ProviderAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_account

> <ProviderAccountVBAResponse> update_provider_account(vbasoftware_database, provider_id, provider_account_key, provider_account)

Update Provider Account

Updates a specific Provider Account.

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

api_instance = Vba::ProviderAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_account_key = 56 # Integer | ProviderAccount Key
provider_account = Vba::ProviderAccount.new({provider_account_key: 37, account_key: 37, provider_id: 'provider_id_example', wire_transfer: false}) # ProviderAccount | 

begin
  # Update Provider Account
  result = api_instance.update_provider_account(vbasoftware_database, provider_id, provider_account_key, provider_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->update_provider_account: #{e}"
end
```

#### Using the update_provider_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAccountVBAResponse>, Integer, Hash)> update_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, provider_account)

```ruby
begin
  # Update Provider Account
  data, status_code, headers = api_instance.update_provider_account_with_http_info(vbasoftware_database, provider_id, provider_account_key, provider_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAccountApi->update_provider_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_account_key** | **Integer** | ProviderAccount Key |  |
| **provider_account** | [**ProviderAccount**](ProviderAccount.md) |  |  |

### Return type

[**ProviderAccountVBAResponse**](ProviderAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

