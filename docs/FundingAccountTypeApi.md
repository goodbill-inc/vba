# Vba::FundingAccountTypeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_account_type**](FundingAccountTypeApi.md#create_funding_account_type) | **POST** /funding-account-types | Create FundingAccountType |
| [**delete_funding_account_type**](FundingAccountTypeApi.md#delete_funding_account_type) | **DELETE** /funding-account-types/{accountType} | Delete FundingAccountType |
| [**get_funding_account_type**](FundingAccountTypeApi.md#get_funding_account_type) | **GET** /funding-account-types/{accountType} | Get FundingAccountType |
| [**list_funding_account_type**](FundingAccountTypeApi.md#list_funding_account_type) | **GET** /funding-account-types | List FundingAccountType |
| [**update_batch_funding_account_type**](FundingAccountTypeApi.md#update_batch_funding_account_type) | **PUT** /funding-account-types-batch | Create or Update Batch FundingAccountType |
| [**update_funding_account_type**](FundingAccountTypeApi.md#update_funding_account_type) | **PUT** /funding-account-types/{accountType} | Update FundingAccountType |


## create_funding_account_type

> <FundingAccountTypeVBAResponse> create_funding_account_type(vbasoftware_database, funding_account_type)

Create FundingAccountType

Creates a new FundingAccountType

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account_type = Vba::FundingAccountType.new({account_type: 'account_type_example'}) # FundingAccountType | 

begin
  # Create FundingAccountType
  result = api_instance.create_funding_account_type(vbasoftware_database, funding_account_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->create_funding_account_type: #{e}"
end
```

#### Using the create_funding_account_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountTypeVBAResponse>, Integer, Hash)> create_funding_account_type_with_http_info(vbasoftware_database, funding_account_type)

```ruby
begin
  # Create FundingAccountType
  data, status_code, headers = api_instance.create_funding_account_type_with_http_info(vbasoftware_database, funding_account_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->create_funding_account_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account_type** | [**FundingAccountType**](FundingAccountType.md) |  |  |

### Return type

[**FundingAccountTypeVBAResponse**](FundingAccountTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_account_type

> delete_funding_account_type(vbasoftware_database, account_type)

Delete FundingAccountType

Deletes an FundingAccountType

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_type = 'account_type_example' # String | Account Type

begin
  # Delete FundingAccountType
  api_instance.delete_funding_account_type(vbasoftware_database, account_type)
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->delete_funding_account_type: #{e}"
end
```

#### Using the delete_funding_account_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_account_type_with_http_info(vbasoftware_database, account_type)

```ruby
begin
  # Delete FundingAccountType
  data, status_code, headers = api_instance.delete_funding_account_type_with_http_info(vbasoftware_database, account_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->delete_funding_account_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_type** | **String** | Account Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_account_type

> <FundingAccountTypeVBAResponse> get_funding_account_type(vbasoftware_database, account_type)

Get FundingAccountType

Gets FundingAccountType

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_type = 'account_type_example' # String | Account Type

begin
  # Get FundingAccountType
  result = api_instance.get_funding_account_type(vbasoftware_database, account_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->get_funding_account_type: #{e}"
end
```

#### Using the get_funding_account_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountTypeVBAResponse>, Integer, Hash)> get_funding_account_type_with_http_info(vbasoftware_database, account_type)

```ruby
begin
  # Get FundingAccountType
  data, status_code, headers = api_instance.get_funding_account_type_with_http_info(vbasoftware_database, account_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->get_funding_account_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_type** | **String** | Account Type |  |

### Return type

[**FundingAccountTypeVBAResponse**](FundingAccountTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_account_type

> <FundingAccountTypeListVBAResponse> list_funding_account_type(vbasoftware_database, opts)

List FundingAccountType

Lists all FundingAccountType

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingAccountType
  result = api_instance.list_funding_account_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->list_funding_account_type: #{e}"
end
```

#### Using the list_funding_account_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountTypeListVBAResponse>, Integer, Hash)> list_funding_account_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingAccountType
  data, status_code, headers = api_instance.list_funding_account_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->list_funding_account_type_with_http_info: #{e}"
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

[**FundingAccountTypeListVBAResponse**](FundingAccountTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_account_type

> <MultiCodeResponseListVBAResponse> update_batch_funding_account_type(vbasoftware_database, funding_account_type)

Create or Update Batch FundingAccountType

Create or Update multiple FundingAccountType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account_type = [Vba::FundingAccountType.new({account_type: 'account_type_example'})] # Array<FundingAccountType> | 

begin
  # Create or Update Batch FundingAccountType
  result = api_instance.update_batch_funding_account_type(vbasoftware_database, funding_account_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->update_batch_funding_account_type: #{e}"
end
```

#### Using the update_batch_funding_account_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_account_type_with_http_info(vbasoftware_database, funding_account_type)

```ruby
begin
  # Create or Update Batch FundingAccountType
  data, status_code, headers = api_instance.update_batch_funding_account_type_with_http_info(vbasoftware_database, funding_account_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->update_batch_funding_account_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account_type** | [**Array&lt;FundingAccountType&gt;**](FundingAccountType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_account_type

> <FundingAccountTypeVBAResponse> update_funding_account_type(vbasoftware_database, account_type, funding_account_type)

Update FundingAccountType

Updates a specific FundingAccountType.

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

api_instance = Vba::FundingAccountTypeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_type = 'account_type_example' # String | Account Type
funding_account_type = Vba::FundingAccountType.new({account_type: 'account_type_example'}) # FundingAccountType | 

begin
  # Update FundingAccountType
  result = api_instance.update_funding_account_type(vbasoftware_database, account_type, funding_account_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->update_funding_account_type: #{e}"
end
```

#### Using the update_funding_account_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountTypeVBAResponse>, Integer, Hash)> update_funding_account_type_with_http_info(vbasoftware_database, account_type, funding_account_type)

```ruby
begin
  # Update FundingAccountType
  data, status_code, headers = api_instance.update_funding_account_type_with_http_info(vbasoftware_database, account_type, funding_account_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountTypeApi->update_funding_account_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_type** | **String** | Account Type |  |
| **funding_account_type** | [**FundingAccountType**](FundingAccountType.md) |  |  |

### Return type

[**FundingAccountTypeVBAResponse**](FundingAccountTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

