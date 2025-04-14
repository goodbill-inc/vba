# Vba::PayeesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payee**](PayeesApi.md#create_payee) | **POST** /payees | Create Payee |
| [**delete_payee**](PayeesApi.md#delete_payee) | **DELETE** /payees/{payeeID} | Delete Payee |
| [**get_payee**](PayeesApi.md#get_payee) | **GET** /payees/{payeeID} | Get Payee |
| [**list_payee**](PayeesApi.md#list_payee) | **GET** /payees | List Payee |
| [**update_batch_payee**](PayeesApi.md#update_batch_payee) | **PUT** /payees-batch | Create or Update Batch Payee |
| [**update_payee**](PayeesApi.md#update_payee) | **PUT** /payees/{payeeID} | Update Payee |


## create_payee

> <PayeeVBAResponse> create_payee(vbasoftware_database, payee)

Create Payee

Creates a new Payee

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee = Vba::Payee.new({inactive: false, virtual_office: false, void_checks: false, w9_received: false, wire_transfer: false}) # Payee | 

begin
  # Create Payee
  result = api_instance.create_payee(vbasoftware_database, payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->create_payee: #{e}"
end
```

#### Using the create_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeVBAResponse>, Integer, Hash)> create_payee_with_http_info(vbasoftware_database, payee)

```ruby
begin
  # Create Payee
  data, status_code, headers = api_instance.create_payee_with_http_info(vbasoftware_database, payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->create_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee** | [**Payee**](Payee.md) |  |  |

### Return type

[**PayeeVBAResponse**](PayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payee

> delete_payee(vbasoftware_database, payee_id)

Delete Payee

Deletes an Payee

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Delete Payee
  api_instance.delete_payee(vbasoftware_database, payee_id)
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->delete_payee: #{e}"
end
```

#### Using the delete_payee_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payee_with_http_info(vbasoftware_database, payee_id)

```ruby
begin
  # Delete Payee
  data, status_code, headers = api_instance.delete_payee_with_http_info(vbasoftware_database, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->delete_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payee

> <PayeeVBAResponse> get_payee(vbasoftware_database, payee_id)

Get Payee

Gets Payee

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Get Payee
  result = api_instance.get_payee(vbasoftware_database, payee_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->get_payee: #{e}"
end
```

#### Using the get_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeVBAResponse>, Integer, Hash)> get_payee_with_http_info(vbasoftware_database, payee_id)

```ruby
begin
  # Get Payee
  data, status_code, headers = api_instance.get_payee_with_http_info(vbasoftware_database, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->get_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

[**PayeeVBAResponse**](PayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payee

> <PayeeListVBAResponse> list_payee(vbasoftware_database, opts)

List Payee

Lists all Payee

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Payee
  result = api_instance.list_payee(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->list_payee: #{e}"
end
```

#### Using the list_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeListVBAResponse>, Integer, Hash)> list_payee_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Payee
  data, status_code, headers = api_instance.list_payee_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->list_payee_with_http_info: #{e}"
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

[**PayeeListVBAResponse**](PayeeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payee

> <MultiCodeResponseListVBAResponse> update_batch_payee(vbasoftware_database, payee)

Create or Update Batch Payee

Create or Update multiple Payee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee = [Vba::Payee.new({inactive: false, virtual_office: false, void_checks: false, w9_received: false, wire_transfer: false})] # Array<Payee> | 

begin
  # Create or Update Batch Payee
  result = api_instance.update_batch_payee(vbasoftware_database, payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->update_batch_payee: #{e}"
end
```

#### Using the update_batch_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payee_with_http_info(vbasoftware_database, payee)

```ruby
begin
  # Create or Update Batch Payee
  data, status_code, headers = api_instance.update_batch_payee_with_http_info(vbasoftware_database, payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->update_batch_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee** | [**Array&lt;Payee&gt;**](Payee.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payee

> <PayeeVBAResponse> update_payee(vbasoftware_database, payee_id, payee)

Update Payee

Updates a specific Payee.

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

api_instance = Vba::PayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payee_id = 'payee_id_example' # String | Payee ID
payee = Vba::Payee.new({inactive: false, virtual_office: false, void_checks: false, w9_received: false, wire_transfer: false}) # Payee | 

begin
  # Update Payee
  result = api_instance.update_payee(vbasoftware_database, payee_id, payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->update_payee: #{e}"
end
```

#### Using the update_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayeeVBAResponse>, Integer, Hash)> update_payee_with_http_info(vbasoftware_database, payee_id, payee)

```ruby
begin
  # Update Payee
  data, status_code, headers = api_instance.update_payee_with_http_info(vbasoftware_database, payee_id, payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayeesApi->update_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payee_id** | **String** | Payee ID |  |
| **payee** | [**Payee**](Payee.md) |  |  |

### Return type

[**PayeeVBAResponse**](PayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

