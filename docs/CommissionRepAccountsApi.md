# Vba::CommissionRepAccountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_account**](CommissionRepAccountsApi.md#create_commission_rep_account) | **POST** /commission-reps/{commRepKey}/commission-rep-accounts | Create CommissionRepAccount |
| [**delete_commission_rep_account**](CommissionRepAccountsApi.md#delete_commission_rep_account) | **DELETE** /commission-reps/{commRepKey}/commission-rep-accounts/{commRepAccountKey} | Delete CommissionRepAccount |
| [**get_commission_rep_account**](CommissionRepAccountsApi.md#get_commission_rep_account) | **GET** /commission-reps/{commRepKey}/commission-rep-accounts/{commRepAccountKey} | Get CommissionRepAccount |
| [**list_commission_rep_account**](CommissionRepAccountsApi.md#list_commission_rep_account) | **GET** /commission-reps/{commRepKey}/commission-rep-accounts | List CommissionRepAccount |
| [**update_batch_commission_rep_account**](CommissionRepAccountsApi.md#update_batch_commission_rep_account) | **PUT** /commission-reps/{commRepKey}/commission-rep-accounts-batch | Create or Update Batch CommissionRepAccount |
| [**update_commission_rep_account**](CommissionRepAccountsApi.md#update_commission_rep_account) | **PUT** /commission-reps/{commRepKey}/commission-rep-accounts/{commRepAccountKey} | Update CommissionRepAccount |


## create_commission_rep_account

> <CommissionRepAccountVBAResponse> create_commission_rep_account(vbasoftware_database, comm_rep_key, commission_rep_account)

Create CommissionRepAccount

Creates a new CommissionRepAccount

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_account = Vba::CommissionRepAccount.new({commission_rep_account_key: 37, account_key: 37, commission_rep_key: 37}) # CommissionRepAccount | 

begin
  # Create CommissionRepAccount
  result = api_instance.create_commission_rep_account(vbasoftware_database, comm_rep_key, commission_rep_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->create_commission_rep_account: #{e}"
end
```

#### Using the create_commission_rep_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAccountVBAResponse>, Integer, Hash)> create_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_account)

```ruby
begin
  # Create CommissionRepAccount
  data, status_code, headers = api_instance.create_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->create_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_account** | [**CommissionRepAccount**](CommissionRepAccount.md) |  |  |

### Return type

[**CommissionRepAccountVBAResponse**](CommissionRepAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_account

> delete_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key)

Delete CommissionRepAccount

Deletes an CommissionRepAccount

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_account_key = 56 # Integer | CommissionRepAccount Key

begin
  # Delete CommissionRepAccount
  api_instance.delete_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->delete_commission_rep_account: #{e}"
end
```

#### Using the delete_commission_rep_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key)

```ruby
begin
  # Delete CommissionRepAccount
  data, status_code, headers = api_instance.delete_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->delete_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_account_key** | **Integer** | CommissionRepAccount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_account

> <CommissionRepAccountVBAResponse> get_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key)

Get CommissionRepAccount

Gets CommissionRepAccount

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_account_key = 56 # Integer | CommissionRepAccount Key

begin
  # Get CommissionRepAccount
  result = api_instance.get_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->get_commission_rep_account: #{e}"
end
```

#### Using the get_commission_rep_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAccountVBAResponse>, Integer, Hash)> get_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key)

```ruby
begin
  # Get CommissionRepAccount
  data, status_code, headers = api_instance.get_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->get_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_account_key** | **Integer** | CommissionRepAccount Key |  |

### Return type

[**CommissionRepAccountVBAResponse**](CommissionRepAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_account

> <CommissionRepAccountListVBAResponse> list_commission_rep_account(vbasoftware_database, comm_rep_key, opts)

List CommissionRepAccount

Lists all CommissionRepAccount for the given commRepKey

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepAccount
  result = api_instance.list_commission_rep_account(vbasoftware_database, comm_rep_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->list_commission_rep_account: #{e}"
end
```

#### Using the list_commission_rep_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAccountListVBAResponse>, Integer, Hash)> list_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, opts)

```ruby
begin
  # List CommissionRepAccount
  data, status_code, headers = api_instance.list_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAccountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->list_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRepAccountListVBAResponse**](CommissionRepAccountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_account

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_account(vbasoftware_database, comm_rep_key, commission_rep_account)

Create or Update Batch CommissionRepAccount

Create or Update multiple CommissionRepAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_account = [Vba::CommissionRepAccount.new({commission_rep_account_key: 37, account_key: 37, commission_rep_key: 37})] # Array<CommissionRepAccount> | 

begin
  # Create or Update Batch CommissionRepAccount
  result = api_instance.update_batch_commission_rep_account(vbasoftware_database, comm_rep_key, commission_rep_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->update_batch_commission_rep_account: #{e}"
end
```

#### Using the update_batch_commission_rep_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_account)

```ruby
begin
  # Create or Update Batch CommissionRepAccount
  data, status_code, headers = api_instance.update_batch_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->update_batch_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_account** | [**Array&lt;CommissionRepAccount&gt;**](CommissionRepAccount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_account

> <CommissionRepAccountVBAResponse> update_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key, commission_rep_account)

Update CommissionRepAccount

Updates a specific CommissionRepAccount.

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

api_instance = Vba::CommissionRepAccountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_account_key = 56 # Integer | CommissionRepAccount Key
commission_rep_account = Vba::CommissionRepAccount.new({commission_rep_account_key: 37, account_key: 37, commission_rep_key: 37}) # CommissionRepAccount | 

begin
  # Update CommissionRepAccount
  result = api_instance.update_commission_rep_account(vbasoftware_database, comm_rep_key, comm_rep_account_key, commission_rep_account)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->update_commission_rep_account: #{e}"
end
```

#### Using the update_commission_rep_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepAccountVBAResponse>, Integer, Hash)> update_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key, commission_rep_account)

```ruby
begin
  # Update CommissionRepAccount
  data, status_code, headers = api_instance.update_commission_rep_account_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_account_key, commission_rep_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepAccountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepAccountsApi->update_commission_rep_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_account_key** | **Integer** | CommissionRepAccount Key |  |
| **commission_rep_account** | [**CommissionRepAccount**](CommissionRepAccount.md) |  |  |

### Return type

[**CommissionRepAccountVBAResponse**](CommissionRepAccountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

