# Vba::PremiumRateBasisApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_basis**](PremiumRateBasisApi.md#create_prem_rate_basis) | **POST** /premium-rate-bases | Create PremRateBasis |
| [**delete_prem_rate_basis**](PremiumRateBasisApi.md#delete_prem_rate_basis) | **DELETE** /premium-rate-bases/{premRateBasis} | Delete PremRateBasis |
| [**get_prem_rate_basis**](PremiumRateBasisApi.md#get_prem_rate_basis) | **GET** /premium-rate-bases/{premRateBasis} | Get PremRateBasis |
| [**list_prem_rate_basis**](PremiumRateBasisApi.md#list_prem_rate_basis) | **GET** /premium-rate-bases | List PremRateBasis |
| [**update_batch_prem_rate_basis**](PremiumRateBasisApi.md#update_batch_prem_rate_basis) | **PUT** /premium-rate-bases-batch | Create or Update Batch PremRateBasis |
| [**update_prem_rate_basis**](PremiumRateBasisApi.md#update_prem_rate_basis) | **PUT** /premium-rate-bases/{premRateBasis} | Update PremRateBasis |


## create_prem_rate_basis

> <PremRateBasisVBAResponse> create_prem_rate_basis(vbasoftware_database, prem_rate_basis)

Create PremRateBasis

Creates a new PremRateBasis

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_basis = Vba::PremRateBasis.new({prem_rate_basis: 'prem_rate_basis_example'}) # PremRateBasis | 

begin
  # Create PremRateBasis
  result = api_instance.create_prem_rate_basis(vbasoftware_database, prem_rate_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->create_prem_rate_basis: #{e}"
end
```

#### Using the create_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateBasisVBAResponse>, Integer, Hash)> create_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)

```ruby
begin
  # Create PremRateBasis
  data, status_code, headers = api_instance.create_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->create_prem_rate_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_basis** | [**PremRateBasis**](PremRateBasis.md) |  |  |

### Return type

[**PremRateBasisVBAResponse**](PremRateBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_basis

> delete_prem_rate_basis(vbasoftware_database, prem_rate_basis)

Delete PremRateBasis

Deletes an PremRateBasis

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_basis = 'prem_rate_basis_example' # String | PremRate Basis

begin
  # Delete PremRateBasis
  api_instance.delete_prem_rate_basis(vbasoftware_database, prem_rate_basis)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->delete_prem_rate_basis: #{e}"
end
```

#### Using the delete_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)

```ruby
begin
  # Delete PremRateBasis
  data, status_code, headers = api_instance.delete_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->delete_prem_rate_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_basis** | **String** | PremRate Basis |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_basis

> <PremRateBasisVBAResponse> get_prem_rate_basis(vbasoftware_database, prem_rate_basis)

Get PremRateBasis

Gets PremRateBasis

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_basis = 'prem_rate_basis_example' # String | PremRate Basis

begin
  # Get PremRateBasis
  result = api_instance.get_prem_rate_basis(vbasoftware_database, prem_rate_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->get_prem_rate_basis: #{e}"
end
```

#### Using the get_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateBasisVBAResponse>, Integer, Hash)> get_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)

```ruby
begin
  # Get PremRateBasis
  data, status_code, headers = api_instance.get_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->get_prem_rate_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_basis** | **String** | PremRate Basis |  |

### Return type

[**PremRateBasisVBAResponse**](PremRateBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_basis

> <PremRateBasisListVBAResponse> list_prem_rate_basis(vbasoftware_database, opts)

List PremRateBasis

Lists all PremRateBasis

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateBasis
  result = api_instance.list_prem_rate_basis(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->list_prem_rate_basis: #{e}"
end
```

#### Using the list_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateBasisListVBAResponse>, Integer, Hash)> list_prem_rate_basis_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRateBasis
  data, status_code, headers = api_instance.list_prem_rate_basis_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateBasisListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->list_prem_rate_basis_with_http_info: #{e}"
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

[**PremRateBasisListVBAResponse**](PremRateBasisListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_basis

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_basis(vbasoftware_database, prem_rate_basis)

Create or Update Batch PremRateBasis

Create or Update multiple PremRateBasis at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_basis = [Vba::PremRateBasis.new({prem_rate_basis: 'prem_rate_basis_example'})] # Array<PremRateBasis> | 

begin
  # Create or Update Batch PremRateBasis
  result = api_instance.update_batch_prem_rate_basis(vbasoftware_database, prem_rate_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->update_batch_prem_rate_basis: #{e}"
end
```

#### Using the update_batch_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)

```ruby
begin
  # Create or Update Batch PremRateBasis
  data, status_code, headers = api_instance.update_batch_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->update_batch_prem_rate_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_basis** | [**Array&lt;PremRateBasis&gt;**](PremRateBasis.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_basis

> <PremRateBasisVBAResponse> update_prem_rate_basis(vbasoftware_database, prem_rate_basis, prem_rate_basis2)

Update PremRateBasis

Updates a specific PremRateBasis.

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

api_instance = Vba::PremiumRateBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_basis = 'prem_rate_basis_example' # String | PremRate Basis
prem_rate_basis2 = Vba::PremRateBasis.new({prem_rate_basis: 'prem_rate_basis_example'}) # PremRateBasis | 

begin
  # Update PremRateBasis
  result = api_instance.update_prem_rate_basis(vbasoftware_database, prem_rate_basis, prem_rate_basis2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->update_prem_rate_basis: #{e}"
end
```

#### Using the update_prem_rate_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateBasisVBAResponse>, Integer, Hash)> update_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis, prem_rate_basis2)

```ruby
begin
  # Update PremRateBasis
  data, status_code, headers = api_instance.update_prem_rate_basis_with_http_info(vbasoftware_database, prem_rate_basis, prem_rate_basis2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateBasisApi->update_prem_rate_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_basis** | **String** | PremRate Basis |  |
| **prem_rate_basis2** | [**PremRateBasis**](PremRateBasis.md) |  |  |

### Return type

[**PremRateBasisVBAResponse**](PremRateBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

