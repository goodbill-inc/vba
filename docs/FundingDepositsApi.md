# Vba::FundingDepositsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_funding_deposit**](FundingDepositsApi.md#add_funding_deposit) | **POST** /funding-deposits/{depositKey}/add-funding | Add Funding to Deposit |
| [**create_funding_deposit**](FundingDepositsApi.md#create_funding_deposit) | **POST** /funding-deposits | Create FundingDeposit |
| [**delete_funding_deposit**](FundingDepositsApi.md#delete_funding_deposit) | **DELETE** /funding-deposits/{depositKey} | Delete FundingDeposit |
| [**get_funding_deposit**](FundingDepositsApi.md#get_funding_deposit) | **GET** /funding-deposits/{depositKey} | Get FundingDeposit |
| [**list_funding_deposit**](FundingDepositsApi.md#list_funding_deposit) | **GET** /funding-deposits | List FundingDeposit |
| [**update_batch_funding_deposit**](FundingDepositsApi.md#update_batch_funding_deposit) | **PUT** /funding-deposits-batch | Create or Update Batch FundingDeposit |
| [**update_funding_deposit**](FundingDepositsApi.md#update_funding_deposit) | **PUT** /funding-deposits/{depositKey} | Update FundingDeposit |
| [**void_funding_deposit**](FundingDepositsApi.md#void_funding_deposit) | **DELETE** /funding-deposits/{depositKey}/void-deposit | Void FundingDeposit |


## add_funding_deposit

> <FundingDepositVBAResponse> add_funding_deposit(vbasoftware_database, deposit_key, funding)

Add Funding to Deposit

Creates Funding items and attaches them to an existing Deposit.

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key
funding = [Vba::Funding.new({funding_key: 37})] # Array<Funding> | 

begin
  # Add Funding to Deposit
  result = api_instance.add_funding_deposit(vbasoftware_database, deposit_key, funding)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->add_funding_deposit: #{e}"
end
```

#### Using the add_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositVBAResponse>, Integer, Hash)> add_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding)

```ruby
begin
  # Add Funding to Deposit
  data, status_code, headers = api_instance.add_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->add_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |
| **funding** | [**Array&lt;Funding&gt;**](Funding.md) |  |  |

### Return type

[**FundingDepositVBAResponse**](FundingDepositVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_funding_deposit

> <FundingDepositVBAResponse> create_funding_deposit(vbasoftware_database, funding_deposit)

Create FundingDeposit

Creates a new FundingDeposit

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_deposit = Vba::FundingDeposit.new({deposit_key: 37}) # FundingDeposit | 

begin
  # Create FundingDeposit
  result = api_instance.create_funding_deposit(vbasoftware_database, funding_deposit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->create_funding_deposit: #{e}"
end
```

#### Using the create_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositVBAResponse>, Integer, Hash)> create_funding_deposit_with_http_info(vbasoftware_database, funding_deposit)

```ruby
begin
  # Create FundingDeposit
  data, status_code, headers = api_instance.create_funding_deposit_with_http_info(vbasoftware_database, funding_deposit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->create_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_deposit** | [**FundingDeposit**](FundingDeposit.md) |  |  |

### Return type

[**FundingDepositVBAResponse**](FundingDepositVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_deposit

> delete_funding_deposit(vbasoftware_database, deposit_key)

Delete FundingDeposit

Deletes an FundingDeposit

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key

begin
  # Delete FundingDeposit
  api_instance.delete_funding_deposit(vbasoftware_database, deposit_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->delete_funding_deposit: #{e}"
end
```

#### Using the delete_funding_deposit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_deposit_with_http_info(vbasoftware_database, deposit_key)

```ruby
begin
  # Delete FundingDeposit
  data, status_code, headers = api_instance.delete_funding_deposit_with_http_info(vbasoftware_database, deposit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->delete_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_deposit

> <FundingDepositVBAResponse> get_funding_deposit(vbasoftware_database, deposit_key)

Get FundingDeposit

Gets FundingDeposit

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key

begin
  # Get FundingDeposit
  result = api_instance.get_funding_deposit(vbasoftware_database, deposit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->get_funding_deposit: #{e}"
end
```

#### Using the get_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositVBAResponse>, Integer, Hash)> get_funding_deposit_with_http_info(vbasoftware_database, deposit_key)

```ruby
begin
  # Get FundingDeposit
  data, status_code, headers = api_instance.get_funding_deposit_with_http_info(vbasoftware_database, deposit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->get_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |

### Return type

[**FundingDepositVBAResponse**](FundingDepositVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_deposit

> <FundingDepositListVBAResponse> list_funding_deposit(vbasoftware_database, opts)

List FundingDeposit

Lists all FundingDeposit

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingDeposit
  result = api_instance.list_funding_deposit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->list_funding_deposit: #{e}"
end
```

#### Using the list_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositListVBAResponse>, Integer, Hash)> list_funding_deposit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingDeposit
  data, status_code, headers = api_instance.list_funding_deposit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->list_funding_deposit_with_http_info: #{e}"
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

[**FundingDepositListVBAResponse**](FundingDepositListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_deposit

> <MultiCodeResponseListVBAResponse> update_batch_funding_deposit(vbasoftware_database, funding_deposit)

Create or Update Batch FundingDeposit

Create or Update multiple FundingDeposit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_deposit = [Vba::FundingDeposit.new({deposit_key: 37})] # Array<FundingDeposit> | 

begin
  # Create or Update Batch FundingDeposit
  result = api_instance.update_batch_funding_deposit(vbasoftware_database, funding_deposit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->update_batch_funding_deposit: #{e}"
end
```

#### Using the update_batch_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_deposit_with_http_info(vbasoftware_database, funding_deposit)

```ruby
begin
  # Create or Update Batch FundingDeposit
  data, status_code, headers = api_instance.update_batch_funding_deposit_with_http_info(vbasoftware_database, funding_deposit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->update_batch_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_deposit** | [**Array&lt;FundingDeposit&gt;**](FundingDeposit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_deposit

> <FundingDepositVBAResponse> update_funding_deposit(vbasoftware_database, deposit_key, funding_deposit)

Update FundingDeposit

Updates a specific FundingDeposit.

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key
funding_deposit = Vba::FundingDeposit.new({deposit_key: 37}) # FundingDeposit | 

begin
  # Update FundingDeposit
  result = api_instance.update_funding_deposit(vbasoftware_database, deposit_key, funding_deposit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->update_funding_deposit: #{e}"
end
```

#### Using the update_funding_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingDepositVBAResponse>, Integer, Hash)> update_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding_deposit)

```ruby
begin
  # Update FundingDeposit
  data, status_code, headers = api_instance.update_funding_deposit_with_http_info(vbasoftware_database, deposit_key, funding_deposit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingDepositVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->update_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |
| **funding_deposit** | [**FundingDeposit**](FundingDeposit.md) |  |  |

### Return type

[**FundingDepositVBAResponse**](FundingDepositVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## void_funding_deposit

> void_funding_deposit(vbasoftware_database, deposit_key)

Void FundingDeposit

Deletes an FundingDeposit entry and changes the associated Funding items back to unassigned (not part of any deposit).

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

api_instance = Vba::FundingDepositsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
deposit_key = 56 # Integer | Deposit Key

begin
  # Void FundingDeposit
  api_instance.void_funding_deposit(vbasoftware_database, deposit_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->void_funding_deposit: #{e}"
end
```

#### Using the void_funding_deposit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> void_funding_deposit_with_http_info(vbasoftware_database, deposit_key)

```ruby
begin
  # Void FundingDeposit
  data, status_code, headers = api_instance.void_funding_deposit_with_http_info(vbasoftware_database, deposit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingDepositsApi->void_funding_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **deposit_key** | **Integer** | Deposit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

