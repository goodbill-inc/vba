# Vba::ProviderPayeesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_payee**](ProviderPayeesApi.md#create_provider_payee) | **POST** /providers/{providerID}/payees | Create ProviderPayee |
| [**delete_provider_payee**](ProviderPayeesApi.md#delete_provider_payee) | **DELETE** /providers/{providerID}/payees/{payeeID}/{effectiveDate} | Delete ProviderPayee |
| [**get_provider_payee**](ProviderPayeesApi.md#get_provider_payee) | **GET** /providers/{providerID}/payees/{payeeID}/{effectiveDate} | Get ProviderPayee |
| [**list_provider_payee**](ProviderPayeesApi.md#list_provider_payee) | **GET** /providers/{providerID}/payees | List ProviderPayee |
| [**update_batch_provider_payee**](ProviderPayeesApi.md#update_batch_provider_payee) | **PUT** /providers/{providerID}/payees-batch | Create or Update Batch ProviderPayee |
| [**update_provider_payee**](ProviderPayeesApi.md#update_provider_payee) | **PUT** /providers/{providerID}/payees/{payeeID}/{effectiveDate} | Update ProviderPayee |


## create_provider_payee

> <ProviderPayeeVBAResponse> create_provider_payee(vbasoftware_database, provider_id, provider_payee)

Create ProviderPayee

Creates a new ProviderPayee

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_payee = Vba::ProviderPayee.new({provider_id: 'provider_id_example', payee_id: 'payee_id_example', effective_date: Time.now}) # ProviderPayee | 

begin
  # Create ProviderPayee
  result = api_instance.create_provider_payee(vbasoftware_database, provider_id, provider_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->create_provider_payee: #{e}"
end
```

#### Using the create_provider_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPayeeVBAResponse>, Integer, Hash)> create_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee)

```ruby
begin
  # Create ProviderPayee
  data, status_code, headers = api_instance.create_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->create_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_payee** | [**ProviderPayee**](ProviderPayee.md) |  |  |

### Return type

[**ProviderPayeeVBAResponse**](ProviderPayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_payee

> delete_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date)

Delete ProviderPayee

Deletes an ProviderPayee

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
payee_id = 'payee_id_example' # String | Payee ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete ProviderPayee
  api_instance.delete_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->delete_provider_payee: #{e}"
end
```

#### Using the delete_provider_payee_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date)

```ruby
begin
  # Delete ProviderPayee
  data, status_code, headers = api_instance.delete_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->delete_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **payee_id** | **String** | Payee ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_payee

> <ProviderPayeeVBAResponse> get_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date)

Get ProviderPayee

Gets ProviderPayee

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
payee_id = 'payee_id_example' # String | Payee ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get ProviderPayee
  result = api_instance.get_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->get_provider_payee: #{e}"
end
```

#### Using the get_provider_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPayeeVBAResponse>, Integer, Hash)> get_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date)

```ruby
begin
  # Get ProviderPayee
  data, status_code, headers = api_instance.get_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->get_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **payee_id** | **String** | Payee ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**ProviderPayeeVBAResponse**](ProviderPayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_payee

> <ProviderPayeeListVBAResponse> list_provider_payee(vbasoftware_database, provider_id, opts)

List ProviderPayee

Lists all ProviderPayee for the given providerID

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderPayee
  result = api_instance.list_provider_payee(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->list_provider_payee: #{e}"
end
```

#### Using the list_provider_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPayeeListVBAResponse>, Integer, Hash)> list_provider_payee_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List ProviderPayee
  data, status_code, headers = api_instance.list_provider_payee_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPayeeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->list_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderPayeeListVBAResponse**](ProviderPayeeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_payee

> <MultiCodeResponseListVBAResponse> update_batch_provider_payee(vbasoftware_database, provider_id, provider_payee)

Create or Update Batch ProviderPayee

Create or Update multiple ProviderPayee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_payee = [Vba::ProviderPayee.new({provider_id: 'provider_id_example', payee_id: 'payee_id_example', effective_date: Time.now})] # Array<ProviderPayee> | 

begin
  # Create or Update Batch ProviderPayee
  result = api_instance.update_batch_provider_payee(vbasoftware_database, provider_id, provider_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->update_batch_provider_payee: #{e}"
end
```

#### Using the update_batch_provider_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee)

```ruby
begin
  # Create or Update Batch ProviderPayee
  data, status_code, headers = api_instance.update_batch_provider_payee_with_http_info(vbasoftware_database, provider_id, provider_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->update_batch_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_payee** | [**Array&lt;ProviderPayee&gt;**](ProviderPayee.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_payee

> <ProviderPayeeVBAResponse> update_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee)

Update ProviderPayee

Updates a specific ProviderPayee.

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

api_instance = Vba::ProviderPayeesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
payee_id = 'payee_id_example' # String | Payee ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
provider_payee = Vba::ProviderPayee.new({provider_id: 'provider_id_example', payee_id: 'payee_id_example', effective_date: Time.now}) # ProviderPayee | 

begin
  # Update ProviderPayee
  result = api_instance.update_provider_payee(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->update_provider_payee: #{e}"
end
```

#### Using the update_provider_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPayeeVBAResponse>, Integer, Hash)> update_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee)

```ruby
begin
  # Update ProviderPayee
  data, status_code, headers = api_instance.update_provider_payee_with_http_info(vbasoftware_database, provider_id, payee_id, effective_date, provider_payee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPayeeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPayeesApi->update_provider_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **payee_id** | **String** | Payee ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **provider_payee** | [**ProviderPayee**](ProviderPayee.md) |  |  |

### Return type

[**ProviderPayeeVBAResponse**](ProviderPayeeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

