# Vba::FundingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding**](FundingApi.md#create_funding) | **POST** /funding | Create Funding |
| [**delete_funding**](FundingApi.md#delete_funding) | **DELETE** /funding/{fundingKey} | Delete Funding |
| [**get_funding**](FundingApi.md#get_funding) | **GET** /funding/{fundingKey} | Get Funding |
| [**hold_funds**](FundingApi.md#hold_funds) | **POST** /funding/{fundingKey}/hold | Hold Funds |
| [**list_funding**](FundingApi.md#list_funding) | **GET** /funding | List Funding |
| [**reallocate_funds**](FundingApi.md#reallocate_funds) | **PUT** /funding/{fundingKey}/payors/{payorId}/accounts/{accountKey}/reallocate | Reacllocate Funds |
| [**transfer_funds**](FundingApi.md#transfer_funds) | **PUT** /funding/{fundingKey}/transfer | Transfer Funds |
| [**update_batch_funding**](FundingApi.md#update_batch_funding) | **PUT** /funding-batch | Create or Update Batch Funding |
| [**update_funding**](FundingApi.md#update_funding) | **PUT** /funding/{fundingKey} | Update Funding |
| [**void_funds**](FundingApi.md#void_funds) | **PUT** /funding/{fundingKey}/void | Void Funds |


## create_funding

> <FundingVBAResponse> create_funding(vbasoftware_database, funding)

Create Funding

Creates a new Funding

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding = Vba::Funding.new({funding_key: 37}) # Funding | 

begin
  # Create Funding
  result = api_instance.create_funding(vbasoftware_database, funding)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->create_funding: #{e}"
end
```

#### Using the create_funding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> create_funding_with_http_info(vbasoftware_database, funding)

```ruby
begin
  # Create Funding
  data, status_code, headers = api_instance.create_funding_with_http_info(vbasoftware_database, funding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->create_funding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding** | [**Funding**](Funding.md) |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding

> delete_funding(vbasoftware_database, funding_key)

Delete Funding

Deletes an Funding

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key

begin
  # Delete Funding
  api_instance.delete_funding(vbasoftware_database, funding_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->delete_funding: #{e}"
end
```

#### Using the delete_funding_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_with_http_info(vbasoftware_database, funding_key)

```ruby
begin
  # Delete Funding
  data, status_code, headers = api_instance.delete_funding_with_http_info(vbasoftware_database, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->delete_funding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding

> <FundingVBAResponse> get_funding(vbasoftware_database, funding_key)

Get Funding

Gets Funding

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key

begin
  # Get Funding
  result = api_instance.get_funding(vbasoftware_database, funding_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->get_funding: #{e}"
end
```

#### Using the get_funding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> get_funding_with_http_info(vbasoftware_database, funding_key)

```ruby
begin
  # Get Funding
  data, status_code, headers = api_instance.get_funding_with_http_info(vbasoftware_database, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->get_funding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## hold_funds

> <FundingVBAResponse> hold_funds(vbasoftware_database, funding_key, hold_amount)

Hold Funds

Lower the existing funding item by the hold amount and create a new funding for the hold amount.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
hold_amount = 1.2 # Float | 

begin
  # Hold Funds
  result = api_instance.hold_funds(vbasoftware_database, funding_key, hold_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->hold_funds: #{e}"
end
```

#### Using the hold_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> hold_funds_with_http_info(vbasoftware_database, funding_key, hold_amount)

```ruby
begin
  # Hold Funds
  data, status_code, headers = api_instance.hold_funds_with_http_info(vbasoftware_database, funding_key, hold_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->hold_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **hold_amount** | **Float** |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: text/plain, application/json, text/json


## list_funding

> <FundingListVBAResponse> list_funding(vbasoftware_database, opts)

List Funding

Lists all Funding

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Funding
  result = api_instance.list_funding(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->list_funding: #{e}"
end
```

#### Using the list_funding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingListVBAResponse>, Integer, Hash)> list_funding_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Funding
  data, status_code, headers = api_instance.list_funding_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->list_funding_with_http_info: #{e}"
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

[**FundingListVBAResponse**](FundingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## reallocate_funds

> <FundingVBAResponse> reallocate_funds(vbasoftware_database, funding_key, payor_id, account_key)

Reacllocate Funds

Change the Payor ID and Account Key of an existing funding item.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
payor_id = 'payor_id_example' # String | Payor ID
account_key = 56 # Integer | Account Key

begin
  # Reacllocate Funds
  result = api_instance.reallocate_funds(vbasoftware_database, funding_key, payor_id, account_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->reallocate_funds: #{e}"
end
```

#### Using the reallocate_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> reallocate_funds_with_http_info(vbasoftware_database, funding_key, payor_id, account_key)

```ruby
begin
  # Reacllocate Funds
  data, status_code, headers = api_instance.reallocate_funds_with_http_info(vbasoftware_database, funding_key, payor_id, account_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->reallocate_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **payor_id** | **String** | Payor ID |  |
| **account_key** | **Integer** | Account Key |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## transfer_funds

> <FundingVBAResponse> transfer_funds(vbasoftware_database, funding_key, funding_transfer_funds)

Transfer Funds

Transfer funds from one account to another.  Additionally, can auto-create a premium distribution if a Funding_Key of 0 is sent.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
funding_transfer_funds = Vba::FundingTransferFunds.new # FundingTransferFunds | 

begin
  # Transfer Funds
  result = api_instance.transfer_funds(vbasoftware_database, funding_key, funding_transfer_funds)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->transfer_funds: #{e}"
end
```

#### Using the transfer_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> transfer_funds_with_http_info(vbasoftware_database, funding_key, funding_transfer_funds)

```ruby
begin
  # Transfer Funds
  data, status_code, headers = api_instance.transfer_funds_with_http_info(vbasoftware_database, funding_key, funding_transfer_funds)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->transfer_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **funding_transfer_funds** | [**FundingTransferFunds**](FundingTransferFunds.md) |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_funding

> <MultiCodeResponseListVBAResponse> update_batch_funding(vbasoftware_database, funding)

Create or Update Batch Funding

Create or Update multiple Funding at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding = [Vba::Funding.new({funding_key: 37})] # Array<Funding> | 

begin
  # Create or Update Batch Funding
  result = api_instance.update_batch_funding(vbasoftware_database, funding)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->update_batch_funding: #{e}"
end
```

#### Using the update_batch_funding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_with_http_info(vbasoftware_database, funding)

```ruby
begin
  # Create or Update Batch Funding
  data, status_code, headers = api_instance.update_batch_funding_with_http_info(vbasoftware_database, funding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->update_batch_funding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding** | [**Array&lt;Funding&gt;**](Funding.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding

> <FundingVBAResponse> update_funding(vbasoftware_database, funding_key, funding)

Update Funding

Updates a specific Funding.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key
funding = Vba::Funding.new({funding_key: 37}) # Funding | 

begin
  # Update Funding
  result = api_instance.update_funding(vbasoftware_database, funding_key, funding)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->update_funding: #{e}"
end
```

#### Using the update_funding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> update_funding_with_http_info(vbasoftware_database, funding_key, funding)

```ruby
begin
  # Update Funding
  data, status_code, headers = api_instance.update_funding_with_http_info(vbasoftware_database, funding_key, funding)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->update_funding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |
| **funding** | [**Funding**](Funding.md) |  |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## void_funds

> <FundingVBAResponse> void_funds(vbasoftware_database, funding_key)

Void Funds

Void an existing funding item.

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

api_instance = Vba::FundingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_key = 56 # Integer | Funding Key

begin
  # Void Funds
  result = api_instance.void_funds(vbasoftware_database, funding_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->void_funds: #{e}"
end
```

#### Using the void_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingVBAResponse>, Integer, Hash)> void_funds_with_http_info(vbasoftware_database, funding_key)

```ruby
begin
  # Void Funds
  data, status_code, headers = api_instance.void_funds_with_http_info(vbasoftware_database, funding_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingApi->void_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_key** | **Integer** | Funding Key |  |

### Return type

[**FundingVBAResponse**](FundingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

