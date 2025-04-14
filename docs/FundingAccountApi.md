# Vba::FundingAccountApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_account**](FundingAccountApi.md#create_funding_account) | **POST** /funding-accounts | Create FundingAccount |
| [**delete_funding_account**](FundingAccountApi.md#delete_funding_account) | **DELETE** /funding-accounts/{accountKey} | Delete FundingAccount |
| [**get_funding_account**](FundingAccountApi.md#get_funding_account) | **GET** /funding-accounts/{accountKey} | Get FundingAccount |
| [**get_funding_account_balance**](FundingAccountApi.md#get_funding_account_balance) | **GET** /funding-accounts/{accountKey}/account-balance | Get FundingAccount Balance |
| [**list_funding_account**](FundingAccountApi.md#list_funding_account) | **GET** /funding-accounts | List FundingAccount |
| [**update_batch_funding_account**](FundingAccountApi.md#update_batch_funding_account) | **PUT** /funding-accounts-batch | Create or Update Batch FundingAccount |
| [**update_funding_account**](FundingAccountApi.md#update_funding_account) | **PUT** /funding-accounts/{accountKey} | Update FundingAccount |


## create_funding_account

> <FundingAccountVBAResponse> create_funding_account(vbasoftware_database, funding_account)

Create FundingAccount

Creates a new FundingAccount

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account = Vba::FundingAccount.new({account_key: 37, use_ach_numbering: false}) # FundingAccount | 

begin
  # Create FundingAccount
  result = api_instance.create_funding_account(vbasoftware_database, funding_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->create_funding_account: #{e}"
end
```

#### Using the create_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountVBAResponse>, Integer, Hash)> create_funding_account_with_http_info(vbasoftware_database, funding_account)

```ruby
begin
  # Create FundingAccount
  data, status_code, headers = api_instance.create_funding_account_with_http_info(vbasoftware_database, funding_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->create_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account** | [**FundingAccount**](FundingAccount.md) |  |  |

### Return type

[**FundingAccountVBAResponse**](FundingAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_account

> delete_funding_account(vbasoftware_database, account_key)

Delete FundingAccount

Deletes an FundingAccount

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key

begin
  # Delete FundingAccount
  api_instance.delete_funding_account(vbasoftware_database, account_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->delete_funding_account: #{e}"
end
```

#### Using the delete_funding_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_account_with_http_info(vbasoftware_database, account_key)

```ruby
begin
  # Delete FundingAccount
  data, status_code, headers = api_instance.delete_funding_account_with_http_info(vbasoftware_database, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->delete_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_account

> <FundingAccountVBAResponse> get_funding_account(vbasoftware_database, account_key)

Get FundingAccount

Gets FundingAccount

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key

begin
  # Get FundingAccount
  result = api_instance.get_funding_account(vbasoftware_database, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->get_funding_account: #{e}"
end
```

#### Using the get_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountVBAResponse>, Integer, Hash)> get_funding_account_with_http_info(vbasoftware_database, account_key)

```ruby
begin
  # Get FundingAccount
  data, status_code, headers = api_instance.get_funding_account_with_http_info(vbasoftware_database, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->get_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**FundingAccountVBAResponse**](FundingAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_funding_account_balance

> <FundingAccountBalanceVBAResponse> get_funding_account_balance(vbasoftware_database, account_key)

Get FundingAccount Balance

Gets FundingAccount balance details

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key

begin
  # Get FundingAccount Balance
  result = api_instance.get_funding_account_balance(vbasoftware_database, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->get_funding_account_balance: #{e}"
end
```

#### Using the get_funding_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountBalanceVBAResponse>, Integer, Hash)> get_funding_account_balance_with_http_info(vbasoftware_database, account_key)

```ruby
begin
  # Get FundingAccount Balance
  data, status_code, headers = api_instance.get_funding_account_balance_with_http_info(vbasoftware_database, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountBalanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->get_funding_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**FundingAccountBalanceVBAResponse**](FundingAccountBalanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_account

> <FundingAccountListVBAResponse> list_funding_account(vbasoftware_database, opts)

List FundingAccount

Lists all FundingAccount

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingAccount
  result = api_instance.list_funding_account(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->list_funding_account: #{e}"
end
```

#### Using the list_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountListVBAResponse>, Integer, Hash)> list_funding_account_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingAccount
  data, status_code, headers = api_instance.list_funding_account_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->list_funding_account_with_http_info: #{e}"
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

[**FundingAccountListVBAResponse**](FundingAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_account

> <MultiCodeResponseListVBAResponse> update_batch_funding_account(vbasoftware_database, funding_account)

Create or Update Batch FundingAccount

Create or Update multiple FundingAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account = [Vba::FundingAccount.new({account_key: 37, use_ach_numbering: false})] # Array<FundingAccount> | 

begin
  # Create or Update Batch FundingAccount
  result = api_instance.update_batch_funding_account(vbasoftware_database, funding_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->update_batch_funding_account: #{e}"
end
```

#### Using the update_batch_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_account_with_http_info(vbasoftware_database, funding_account)

```ruby
begin
  # Create or Update Batch FundingAccount
  data, status_code, headers = api_instance.update_batch_funding_account_with_http_info(vbasoftware_database, funding_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->update_batch_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account** | [**Array&lt;FundingAccount&gt;**](FundingAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_account

> <FundingAccountVBAResponse> update_funding_account(vbasoftware_database, account_key, funding_account)

Update FundingAccount

Updates a specific FundingAccount.

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

api_instance = Vba::FundingAccountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account = Vba::FundingAccount.new({account_key: 37, use_ach_numbering: false}) # FundingAccount | 

begin
  # Update FundingAccount
  result = api_instance.update_funding_account(vbasoftware_database, account_key, funding_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->update_funding_account: #{e}"
end
```

#### Using the update_funding_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountVBAResponse>, Integer, Hash)> update_funding_account_with_http_info(vbasoftware_database, account_key, funding_account)

```ruby
begin
  # Update FundingAccount
  data, status_code, headers = api_instance.update_funding_account_with_http_info(vbasoftware_database, account_key, funding_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountApi->update_funding_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account** | [**FundingAccount**](FundingAccount.md) |  |  |

### Return type

[**FundingAccountVBAResponse**](FundingAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

