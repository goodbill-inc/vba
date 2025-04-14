# Vba::ProviderAuthExemptProceduresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#create_provider_auth_exempt_procedure) | **POST** /providers/{providerID}/auth-exempt-procedures | Create ProviderAuthExemptProcedure |
| [**delete_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#delete_provider_auth_exempt_procedure) | **DELETE** /providers/{providerID}/auth-exempt-procedures/{providerAuthExemptProcedureKey} | Delete ProviderAuthExemptProcedure |
| [**get_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#get_provider_auth_exempt_procedure) | **GET** /providers/{providerID}/auth-exempt-procedures/{providerAuthExemptProcedureKey} | Get ProviderAuthExemptProcedure |
| [**list_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#list_provider_auth_exempt_procedure) | **GET** /providers/{providerID}/auth-exempt-procedures | List ProviderAuthExemptProcedure |
| [**update_batch_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#update_batch_provider_auth_exempt_procedure) | **PUT** /providers/{providerID}/auth-exempt-procedures-batch | Create or Update Batch ProviderAuthExemptProcedure |
| [**update_provider_auth_exempt_procedure**](ProviderAuthExemptProceduresApi.md#update_provider_auth_exempt_procedure) | **PUT** /providers/{providerID}/auth-exempt-procedures/{providerAuthExemptProcedureKey} | Update ProviderAuthExemptProcedure |


## create_provider_auth_exempt_procedure

> <ProviderAuthExemptProcedureVBAResponse> create_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure)

Create ProviderAuthExemptProcedure

Creates a new ProviderAuthExemptProcedure

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_auth_exempt_procedure = Vba::ProviderAuthExemptProcedure.new({provider_auth_exempt_procedure_key: 37, from_procedure: 'from_procedure_example', provider_id: 'provider_id_example'}) # ProviderAuthExemptProcedure | 

begin
  # Create ProviderAuthExemptProcedure
  result = api_instance.create_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->create_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the create_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAuthExemptProcedureVBAResponse>, Integer, Hash)> create_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure)

```ruby
begin
  # Create ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.create_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAuthExemptProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->create_provider_auth_exempt_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_auth_exempt_procedure** | [**ProviderAuthExemptProcedure**](ProviderAuthExemptProcedure.md) |  |  |

### Return type

[**ProviderAuthExemptProcedureVBAResponse**](ProviderAuthExemptProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_auth_exempt_procedure

> delete_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)

Delete ProviderAuthExemptProcedure

Deletes an ProviderAuthExemptProcedure

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_auth_exempt_procedure_key = 56 # Integer | ProviderAuthExemptProcedure Key

begin
  # Delete ProviderAuthExemptProcedure
  api_instance.delete_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->delete_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the delete_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)

```ruby
begin
  # Delete ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.delete_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->delete_provider_auth_exempt_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_auth_exempt_procedure_key** | **Integer** | ProviderAuthExemptProcedure Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_auth_exempt_procedure

> <ProviderAuthExemptProcedureVBAResponse> get_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)

Get ProviderAuthExemptProcedure

Gets ProviderAuthExemptProcedure

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_auth_exempt_procedure_key = 56 # Integer | ProviderAuthExemptProcedure Key

begin
  # Get ProviderAuthExemptProcedure
  result = api_instance.get_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->get_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the get_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAuthExemptProcedureVBAResponse>, Integer, Hash)> get_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)

```ruby
begin
  # Get ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.get_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAuthExemptProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->get_provider_auth_exempt_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_auth_exempt_procedure_key** | **Integer** | ProviderAuthExemptProcedure Key |  |

### Return type

[**ProviderAuthExemptProcedureVBAResponse**](ProviderAuthExemptProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_auth_exempt_procedure

> <ProviderAuthExemptProcedureListVBAResponse> list_provider_auth_exempt_procedure(vbasoftware_database, provider_id, opts)

List ProviderAuthExemptProcedure

Lists all ProviderAuthExemptProcedure for the given providerID

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderAuthExemptProcedure
  result = api_instance.list_provider_auth_exempt_procedure(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->list_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the list_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAuthExemptProcedureListVBAResponse>, Integer, Hash)> list_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.list_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAuthExemptProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->list_provider_auth_exempt_procedure_with_http_info: #{e}"
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

[**ProviderAuthExemptProcedureListVBAResponse**](ProviderAuthExemptProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_auth_exempt_procedure

> <MultiCodeResponseListVBAResponse> update_batch_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure)

Create or Update Batch ProviderAuthExemptProcedure

Create or Update multiple ProviderAuthExemptProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_auth_exempt_procedure = [Vba::ProviderAuthExemptProcedure.new({provider_auth_exempt_procedure_key: 37, from_procedure: 'from_procedure_example', provider_id: 'provider_id_example'})] # Array<ProviderAuthExemptProcedure> | 

begin
  # Create or Update Batch ProviderAuthExemptProcedure
  result = api_instance.update_batch_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->update_batch_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the update_batch_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure)

```ruby
begin
  # Create or Update Batch ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.update_batch_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->update_batch_provider_auth_exempt_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_auth_exempt_procedure** | [**Array&lt;ProviderAuthExemptProcedure&gt;**](ProviderAuthExemptProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_auth_exempt_procedure

> <ProviderAuthExemptProcedureVBAResponse> update_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key, provider_auth_exempt_procedure)

Update ProviderAuthExemptProcedure

Updates a specific ProviderAuthExemptProcedure.

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

api_instance = Vba::ProviderAuthExemptProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_auth_exempt_procedure_key = 56 # Integer | ProviderAuthExemptProcedure Key
provider_auth_exempt_procedure = Vba::ProviderAuthExemptProcedure.new({provider_auth_exempt_procedure_key: 37, from_procedure: 'from_procedure_example', provider_id: 'provider_id_example'}) # ProviderAuthExemptProcedure | 

begin
  # Update ProviderAuthExemptProcedure
  result = api_instance.update_provider_auth_exempt_procedure(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key, provider_auth_exempt_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->update_provider_auth_exempt_procedure: #{e}"
end
```

#### Using the update_provider_auth_exempt_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAuthExemptProcedureVBAResponse>, Integer, Hash)> update_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key, provider_auth_exempt_procedure)

```ruby
begin
  # Update ProviderAuthExemptProcedure
  data, status_code, headers = api_instance.update_provider_auth_exempt_procedure_with_http_info(vbasoftware_database, provider_id, provider_auth_exempt_procedure_key, provider_auth_exempt_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAuthExemptProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAuthExemptProceduresApi->update_provider_auth_exempt_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_auth_exempt_procedure_key** | **Integer** | ProviderAuthExemptProcedure Key |  |
| **provider_auth_exempt_procedure** | [**ProviderAuthExemptProcedure**](ProviderAuthExemptProcedure.md) |  |  |

### Return type

[**ProviderAuthExemptProcedureVBAResponse**](ProviderAuthExemptProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

