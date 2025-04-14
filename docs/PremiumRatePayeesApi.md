# Vba::PremiumRatePayeesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_payee**](PremiumRatePayeesApi.md#create_prem_rate_payee) | **POST** /premium-rates/{premRateKey}/payees | Create PremRatePayee |
| [**delete_prem_rate_payee**](PremiumRatePayeesApi.md#delete_prem_rate_payee) | **DELETE** /premium-rates/{premRateKey}/payees/{payeeID} | Delete PremRatePayee |
| [**get_prem_rate_payee**](PremiumRatePayeesApi.md#get_prem_rate_payee) | **GET** /premium-rates/{premRateKey}/payees/{payeeID} | Get PremRatePayee |
| [**list_prem_rate_payee**](PremiumRatePayeesApi.md#list_prem_rate_payee) | **GET** /premium-rates/{premRateKey}/payees | List PremRatePayee |
| [**update_batch_prem_rate_payee**](PremiumRatePayeesApi.md#update_batch_prem_rate_payee) | **PUT** /premium-rates/{premRateKey}/payees-batch | Create or Update Batch PremRatePayee |
| [**update_prem_rate_payee**](PremiumRatePayeesApi.md#update_prem_rate_payee) | **PUT** /premium-rates/{premRateKey}/payees/{payeeID} | Update PremRatePayee |


## create_prem_rate_payee

> <PremRatePayeeVBAResponse> create_prem_rate_payee(vbasoftware_database, prem_rate_key, prem_rate_payee)

Create PremRatePayee

Creates a new PremRatePayee

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_payee = Vba::PremRatePayee.new({prem_rate_key: 37, payee_id: 'payee_id_example', amount_pct: false}) # PremRatePayee | 

begin
  # Create PremRatePayee
  result = api_instance.create_prem_rate_payee(vbasoftware_database, prem_rate_key, prem_rate_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->create_prem_rate_payee: #{e}"
end
```

#### Using the create_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePayeeVBAResponse>, Integer, Hash)> create_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_payee)

```ruby
begin
  # Create PremRatePayee
  data, status_code, headers = api_instance.create_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->create_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_payee** | [**PremRatePayee**](PremRatePayee.md) |  |  |

### Return type

[**PremRatePayeeVBAResponse**](PremRatePayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_payee

> delete_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id)

Delete PremRatePayee

Deletes an PremRatePayee

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Delete PremRatePayee
  api_instance.delete_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->delete_prem_rate_payee: #{e}"
end
```

#### Using the delete_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id)

```ruby
begin
  # Delete PremRatePayee
  data, status_code, headers = api_instance.delete_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->delete_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_payee

> <PremRatePayeeVBAResponse> get_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id)

Get PremRatePayee

Gets PremRatePayee

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Get PremRatePayee
  result = api_instance.get_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->get_prem_rate_payee: #{e}"
end
```

#### Using the get_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePayeeVBAResponse>, Integer, Hash)> get_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id)

```ruby
begin
  # Get PremRatePayee
  data, status_code, headers = api_instance.get_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->get_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

[**PremRatePayeeVBAResponse**](PremRatePayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_payee

> <PremRatePayeeListVBAResponse> list_prem_rate_payee(vbasoftware_database, prem_rate_key, opts)

List PremRatePayee

Lists all PremRatePayee for the given premRateKey

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRatePayee
  result = api_instance.list_prem_rate_payee(vbasoftware_database, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->list_prem_rate_payee: #{e}"
end
```

#### Using the list_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePayeeListVBAResponse>, Integer, Hash)> list_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, opts)

```ruby
begin
  # List PremRatePayee
  data, status_code, headers = api_instance.list_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePayeeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->list_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRatePayeeListVBAResponse**](PremRatePayeeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_payee

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_payee(vbasoftware_database, prem_rate_key, prem_rate_payee)

Create or Update Batch PremRatePayee

Create or Update multiple PremRatePayee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_payee = [Vba::PremRatePayee.new({prem_rate_key: 37, payee_id: 'payee_id_example', amount_pct: false})] # Array<PremRatePayee> | 

begin
  # Create or Update Batch PremRatePayee
  result = api_instance.update_batch_prem_rate_payee(vbasoftware_database, prem_rate_key, prem_rate_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->update_batch_prem_rate_payee: #{e}"
end
```

#### Using the update_batch_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_payee)

```ruby
begin
  # Create or Update Batch PremRatePayee
  data, status_code, headers = api_instance.update_batch_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->update_batch_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_payee** | [**Array&lt;PremRatePayee&gt;**](PremRatePayee.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_payee

> <PremRatePayeeVBAResponse> update_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id, prem_rate_payee)

Update PremRatePayee

Updates a specific PremRatePayee.

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

api_instance = Vba::PremiumRatePayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
payee_id = 'payee_id_example' # String | Payee ID
prem_rate_payee = Vba::PremRatePayee.new({prem_rate_key: 37, payee_id: 'payee_id_example', amount_pct: false}) # PremRatePayee | 

begin
  # Update PremRatePayee
  result = api_instance.update_prem_rate_payee(vbasoftware_database, prem_rate_key, payee_id, prem_rate_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->update_prem_rate_payee: #{e}"
end
```

#### Using the update_prem_rate_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePayeeVBAResponse>, Integer, Hash)> update_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id, prem_rate_payee)

```ruby
begin
  # Update PremRatePayee
  data, status_code, headers = api_instance.update_prem_rate_payee_with_http_info(vbasoftware_database, prem_rate_key, payee_id, prem_rate_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePayeesApi->update_prem_rate_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **payee_id** | **String** | Payee ID |  |
| **prem_rate_payee** | [**PremRatePayee**](PremRatePayee.md) |  |  |

### Return type

[**PremRatePayeeVBAResponse**](PremRatePayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

