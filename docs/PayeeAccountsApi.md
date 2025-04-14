# Vba::PayeeAccountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payee_account**](PayeeAccountsApi.md#create_payee_account) | **POST** /payees/{payeeID}/accounts | Create PayeeAccount |
| [**delete_payee_account**](PayeeAccountsApi.md#delete_payee_account) | **DELETE** /payees/{payeeID}/accounts/{payeeAccountKey} | Delete PayeeAccount |
| [**get_payee_account**](PayeeAccountsApi.md#get_payee_account) | **GET** /payees/{payeeID}/accounts/{payeeAccountKey} | Get PayeeAccount |
| [**list_payee_account**](PayeeAccountsApi.md#list_payee_account) | **GET** /payees/{payeeID}/accounts | List PayeeAccount |
| [**update_batch_payee_account**](PayeeAccountsApi.md#update_batch_payee_account) | **PUT** /payees/{payeeID}/accounts-batch | Create or Update Batch PayeeAccount |
| [**update_payee_account**](PayeeAccountsApi.md#update_payee_account) | **PUT** /payees/{payeeID}/accounts/{payeeAccountKey} | Update PayeeAccount |


## create_payee_account

> <PayeeAccountVBAResponse> create_payee_account(vbasoftware_database, payee_id, payee_account)

Create PayeeAccount

Creates a new PayeeAccount

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee_account = Vba::PayeeAccount.new({payee_account_key: 37, account_key: 37, payee_id: 'payee_id_example', wire_transfer: false}) # PayeeAccount | 

begin
  # Create PayeeAccount
  result = api_instance.create_payee_account(vbasoftware_database, payee_id, payee_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->create_payee_account: #{e}"
end
```

#### Using the create_payee_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeAccountVBAResponse>, Integer, Hash)> create_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account)

```ruby
begin
  # Create PayeeAccount
  data, status_code, headers = api_instance.create_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->create_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee_account** | [**PayeeAccount**](PayeeAccount.md) |  |  |

### Return type

[**PayeeAccountVBAResponse**](PayeeAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payee_account

> delete_payee_account(vbasoftware_database, payee_id, payee_account_key)

Delete PayeeAccount

Deletes an PayeeAccount

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee_account_key = 56 # Integer | PayeeAccount Key

begin
  # Delete PayeeAccount
  api_instance.delete_payee_account(vbasoftware_database, payee_id, payee_account_key)
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->delete_payee_account: #{e}"
end
```

#### Using the delete_payee_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key)

```ruby
begin
  # Delete PayeeAccount
  data, status_code, headers = api_instance.delete_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->delete_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee_account_key** | **Integer** | PayeeAccount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payee_account

> <PayeeAccountVBAResponse> get_payee_account(vbasoftware_database, payee_id, payee_account_key)

Get PayeeAccount

Gets PayeeAccount

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee_account_key = 56 # Integer | PayeeAccount Key

begin
  # Get PayeeAccount
  result = api_instance.get_payee_account(vbasoftware_database, payee_id, payee_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->get_payee_account: #{e}"
end
```

#### Using the get_payee_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeAccountVBAResponse>, Integer, Hash)> get_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key)

```ruby
begin
  # Get PayeeAccount
  data, status_code, headers = api_instance.get_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->get_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee_account_key** | **Integer** | PayeeAccount Key |  |

### Return type

[**PayeeAccountVBAResponse**](PayeeAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payee_account

> <PayeeAccountListVBAResponse> list_payee_account(vbasoftware_database, payee_id, opts)

List PayeeAccount

Lists all PayeeAccount for the given payeeID

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayeeAccount
  result = api_instance.list_payee_account(vbasoftware_database, payee_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->list_payee_account: #{e}"
end
```

#### Using the list_payee_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeAccountListVBAResponse>, Integer, Hash)> list_payee_account_with_http_info(vbasoftware_database, payee_id, opts)

```ruby
begin
  # List PayeeAccount
  data, status_code, headers = api_instance.list_payee_account_with_http_info(vbasoftware_database, payee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->list_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PayeeAccountListVBAResponse**](PayeeAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payee_account

> <MultiCodeResponseListVBAResponse> update_batch_payee_account(vbasoftware_database, payee_id, payee_account)

Create or Update Batch PayeeAccount

Create or Update multiple PayeeAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee_account = [Vba::PayeeAccount.new({payee_account_key: 37, account_key: 37, payee_id: 'payee_id_example', wire_transfer: false})] # Array<PayeeAccount> | 

begin
  # Create or Update Batch PayeeAccount
  result = api_instance.update_batch_payee_account(vbasoftware_database, payee_id, payee_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->update_batch_payee_account: #{e}"
end
```

#### Using the update_batch_payee_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account)

```ruby
begin
  # Create or Update Batch PayeeAccount
  data, status_code, headers = api_instance.update_batch_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->update_batch_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee_account** | [**Array&lt;PayeeAccount&gt;**](PayeeAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payee_account

> <PayeeAccountVBAResponse> update_payee_account(vbasoftware_database, payee_id, payee_account_key, payee_account)

Update PayeeAccount

Updates a specific PayeeAccount.

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

api_instance = Vba::PayeeAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee_account_key = 56 # Integer | PayeeAccount Key
payee_account = Vba::PayeeAccount.new({payee_account_key: 37, account_key: 37, payee_id: 'payee_id_example', wire_transfer: false}) # PayeeAccount | 

begin
  # Update PayeeAccount
  result = api_instance.update_payee_account(vbasoftware_database, payee_id, payee_account_key, payee_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->update_payee_account: #{e}"
end
```

#### Using the update_payee_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeAccountVBAResponse>, Integer, Hash)> update_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key, payee_account)

```ruby
begin
  # Update PayeeAccount
  data, status_code, headers = api_instance.update_payee_account_with_http_info(vbasoftware_database, payee_id, payee_account_key, payee_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeeAccountsApi->update_payee_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee_account_key** | **Integer** | PayeeAccount Key |  |
| **payee_account** | [**PayeeAccount**](PayeeAccount.md) |  |  |

### Return type

[**PayeeAccountVBAResponse**](PayeeAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

