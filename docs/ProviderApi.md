# Vba::ProviderApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider**](ProviderApi.md#create_provider) | **POST** /providers | Create Provider |
| [**delete_provider**](ProviderApi.md#delete_provider) | **DELETE** /providers/{providerID} | Delete Provider |
| [**get_provider**](ProviderApi.md#get_provider) | **GET** /providers/{providerID} | Get Provider |
| [**list_provider**](ProviderApi.md#list_provider) | **GET** /providers | List Provider |
| [**update_batch_provider**](ProviderApi.md#update_batch_provider) | **PUT** /providers-batch | Create or Update Batch Provider |
| [**update_provider**](ProviderApi.md#update_provider) | **PUT** /providers/{providerID} | Update Provider |


## create_provider

> <ProviderVBAResponse> create_provider(vbasoftware_database, provider)

Create Provider

Creates a new Provider

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider = Vba::Provider.new({accepting_patients: false, accepts_capitation: false, accepts_plan_fees: false, accepts_withhold: false, active: false, advice_to_pay: false, fax_opt_out: false, handicap_access: false, nitrous_oxide: false, plan_provider: false, print_auth: false, sole_proprietor: false, use_procedure_code: false}) # Provider | 

begin
  # Create Provider
  result = api_instance.create_provider(vbasoftware_database, provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->create_provider: #{e}"
end
```

#### Using the create_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderVBAResponse>, Integer, Hash)> create_provider_with_http_info(vbasoftware_database, provider)

```ruby
begin
  # Create Provider
  data, status_code, headers = api_instance.create_provider_with_http_info(vbasoftware_database, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->create_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider** | [**Provider**](Provider.md) |  |  |

### Return type

[**ProviderVBAResponse**](ProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider

> delete_provider(vbasoftware_database, provider_id)

Delete Provider

Deletes an Provider

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # Delete Provider
  api_instance.delete_provider(vbasoftware_database, provider_id)
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->delete_provider: #{e}"
end
```

#### Using the delete_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # Delete Provider
  data, status_code, headers = api_instance.delete_provider_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->delete_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider

> <ProviderVBAResponse> get_provider(vbasoftware_database, provider_id)

Get Provider

Gets Provider

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # Get Provider
  result = api_instance.get_provider(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->get_provider: #{e}"
end
```

#### Using the get_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderVBAResponse>, Integer, Hash)> get_provider_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # Get Provider
  data, status_code, headers = api_instance.get_provider_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->get_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderVBAResponse**](ProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider

> <ProviderListVBAResponse> list_provider(vbasoftware_database, opts)

List Provider

Lists all Provider

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Provider
  result = api_instance.list_provider(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->list_provider: #{e}"
end
```

#### Using the list_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderListVBAResponse>, Integer, Hash)> list_provider_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Provider
  data, status_code, headers = api_instance.list_provider_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->list_provider_with_http_info: #{e}"
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

[**ProviderListVBAResponse**](ProviderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider

> <MultiCodeResponseListVBAResponse> update_batch_provider(vbasoftware_database, provider)

Create or Update Batch Provider

Create or Update multiple Provider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider = [Vba::Provider.new({accepting_patients: false, accepts_capitation: false, accepts_plan_fees: false, accepts_withhold: false, active: false, advice_to_pay: false, fax_opt_out: false, handicap_access: false, nitrous_oxide: false, plan_provider: false, print_auth: false, sole_proprietor: false, use_procedure_code: false})] # Array<Provider> | 

begin
  # Create or Update Batch Provider
  result = api_instance.update_batch_provider(vbasoftware_database, provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->update_batch_provider: #{e}"
end
```

#### Using the update_batch_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_with_http_info(vbasoftware_database, provider)

```ruby
begin
  # Create or Update Batch Provider
  data, status_code, headers = api_instance.update_batch_provider_with_http_info(vbasoftware_database, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->update_batch_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider** | [**Array&lt;Provider&gt;**](Provider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider

> <ProviderVBAResponse> update_provider(vbasoftware_database, provider_id, provider)

Update Provider

Updates a specific Provider.

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

api_instance = Vba::ProviderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider = Vba::Provider.new({accepting_patients: false, accepts_capitation: false, accepts_plan_fees: false, accepts_withhold: false, active: false, advice_to_pay: false, fax_opt_out: false, handicap_access: false, nitrous_oxide: false, plan_provider: false, print_auth: false, sole_proprietor: false, use_procedure_code: false}) # Provider | 

begin
  # Update Provider
  result = api_instance.update_provider(vbasoftware_database, provider_id, provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->update_provider: #{e}"
end
```

#### Using the update_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderVBAResponse>, Integer, Hash)> update_provider_with_http_info(vbasoftware_database, provider_id, provider)

```ruby
begin
  # Update Provider
  data, status_code, headers = api_instance.update_provider_with_http_info(vbasoftware_database, provider_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderApi->update_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider** | [**Provider**](Provider.md) |  |  |

### Return type

[**ProviderVBAResponse**](ProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

