# Vba::CurrencyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_currency**](CurrencyApi.md#create_currency) | **POST** /currencies | Create Currency |
| [**delete_currency**](CurrencyApi.md#delete_currency) | **DELETE** /currencies/{currencyID} | Delete Currency |
| [**get_currency**](CurrencyApi.md#get_currency) | **GET** /currencies/{currencyID} | Get Currency |
| [**list_currency**](CurrencyApi.md#list_currency) | **GET** /currencies | List Currency |
| [**update_batch_currency**](CurrencyApi.md#update_batch_currency) | **PUT** /currencies-batch | Create or Update Batch Currency |
| [**update_currency**](CurrencyApi.md#update_currency) | **PUT** /currencies/{currencyID} | Update Currency |


## create_currency

> <CurrencyVBAResponse> create_currency(vbasoftware_database, currency)

Create Currency

Creates a new Currency

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
currency = Vba::Currency.new({currency_id: 'currency_id_example'}) # Currency | 

begin
  # Create Currency
  result = api_instance.create_currency(vbasoftware_database, currency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->create_currency: #{e}"
end
```

#### Using the create_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyVBAResponse>, Integer, Hash)> create_currency_with_http_info(vbasoftware_database, currency)

```ruby
begin
  # Create Currency
  data, status_code, headers = api_instance.create_currency_with_http_info(vbasoftware_database, currency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->create_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **currency** | [**Currency**](Currency.md) |  |  |

### Return type

[**CurrencyVBAResponse**](CurrencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_currency

> delete_currency(vbasoftware_database, currency_id)

Delete Currency

Deletes an Currency

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
currency_id = 'currency_id_example' # String | Currency ID

begin
  # Delete Currency
  api_instance.delete_currency(vbasoftware_database, currency_id)
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->delete_currency: #{e}"
end
```

#### Using the delete_currency_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_currency_with_http_info(vbasoftware_database, currency_id)

```ruby
begin
  # Delete Currency
  data, status_code, headers = api_instance.delete_currency_with_http_info(vbasoftware_database, currency_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->delete_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **currency_id** | **String** | Currency ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_currency

> <CurrencyVBAResponse> get_currency(vbasoftware_database, currency_id)

Get Currency

Gets Currency

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
currency_id = 'currency_id_example' # String | Currency ID

begin
  # Get Currency
  result = api_instance.get_currency(vbasoftware_database, currency_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->get_currency: #{e}"
end
```

#### Using the get_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyVBAResponse>, Integer, Hash)> get_currency_with_http_info(vbasoftware_database, currency_id)

```ruby
begin
  # Get Currency
  data, status_code, headers = api_instance.get_currency_with_http_info(vbasoftware_database, currency_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->get_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **currency_id** | **String** | Currency ID |  |

### Return type

[**CurrencyVBAResponse**](CurrencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_currency

> <CurrencyListVBAResponse> list_currency(vbasoftware_database)

List Currency

Lists all Currency 

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Currency
  result = api_instance.list_currency(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->list_currency: #{e}"
end
```

#### Using the list_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyListVBAResponse>, Integer, Hash)> list_currency_with_http_info(vbasoftware_database)

```ruby
begin
  # List Currency
  data, status_code, headers = api_instance.list_currency_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->list_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**CurrencyListVBAResponse**](CurrencyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_currency

> <MultiCodeResponseListVBAResponse> update_batch_currency(vbasoftware_database, currency)

Create or Update Batch Currency

Create or Update multiple Currency at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
currency = [Vba::Currency.new({currency_id: 'currency_id_example'})] # Array<Currency> | 

begin
  # Create or Update Batch Currency
  result = api_instance.update_batch_currency(vbasoftware_database, currency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->update_batch_currency: #{e}"
end
```

#### Using the update_batch_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_currency_with_http_info(vbasoftware_database, currency)

```ruby
begin
  # Create or Update Batch Currency
  data, status_code, headers = api_instance.update_batch_currency_with_http_info(vbasoftware_database, currency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->update_batch_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **currency** | [**Array&lt;Currency&gt;**](Currency.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_currency

> <CurrencyVBAResponse> update_currency(vbasoftware_database, currency_id, currency)

Update Currency

Updates a specific Currency.

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

api_instance = Vba::CurrencyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
currency_id = 'currency_id_example' # String | Currency ID
currency = Vba::Currency.new({currency_id: 'currency_id_example'}) # Currency | 

begin
  # Update Currency
  result = api_instance.update_currency(vbasoftware_database, currency_id, currency)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->update_currency: #{e}"
end
```

#### Using the update_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrencyVBAResponse>, Integer, Hash)> update_currency_with_http_info(vbasoftware_database, currency_id, currency)

```ruby
begin
  # Update Currency
  data, status_code, headers = api_instance.update_currency_with_http_info(vbasoftware_database, currency_id, currency)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrencyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CurrencyApi->update_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **currency_id** | **String** | Currency ID |  |
| **currency** | [**Currency**](Currency.md) |  |  |

### Return type

[**CurrencyVBAResponse**](CurrencyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

