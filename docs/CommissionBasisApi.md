# Vba::CommissionBasisApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_basis**](CommissionBasisApi.md#create_commission_basis) | **POST** /commission-basis | Create CommissionBasis |
| [**delete_commission_basis**](CommissionBasisApi.md#delete_commission_basis) | **DELETE** /commission-basis/{commBasis} | Delete CommissionBasis |
| [**get_commission_basis**](CommissionBasisApi.md#get_commission_basis) | **GET** /commission-basis/{commBasis} | Get CommissionBasis |
| [**list_commission_basis**](CommissionBasisApi.md#list_commission_basis) | **GET** /commission-basis | List CommissionBasis |
| [**update_batch_commission_basis**](CommissionBasisApi.md#update_batch_commission_basis) | **PUT** /commission-basis-batch | Create or Update Batch CommissionBasis |
| [**update_commission_basis**](CommissionBasisApi.md#update_commission_basis) | **PUT** /commission-basis/{commBasis} | Update CommissionBasis |


## create_commission_basis

> <CommissionBasisVBAResponse> create_commission_basis(vbasoftware_database, commission_basis)

Create CommissionBasis

Creates a new CommissionBasis

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_basis = Vba::CommissionBasis.new({commission_basis: 'commission_basis_example'}) # CommissionBasis | 

begin
  # Create CommissionBasis
  result = api_instance.create_commission_basis(vbasoftware_database, commission_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->create_commission_basis: #{e}"
end
```

#### Using the create_commission_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionBasisVBAResponse>, Integer, Hash)> create_commission_basis_with_http_info(vbasoftware_database, commission_basis)

```ruby
begin
  # Create CommissionBasis
  data, status_code, headers = api_instance.create_commission_basis_with_http_info(vbasoftware_database, commission_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->create_commission_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_basis** | [**CommissionBasis**](CommissionBasis.md) |  |  |

### Return type

[**CommissionBasisVBAResponse**](CommissionBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_basis

> delete_commission_basis(vbasoftware_database, comm_basis)

Delete CommissionBasis

Deletes an CommissionBasis

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_basis = 'comm_basis_example' # String | Commission Basis

begin
  # Delete CommissionBasis
  api_instance.delete_commission_basis(vbasoftware_database, comm_basis)
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->delete_commission_basis: #{e}"
end
```

#### Using the delete_commission_basis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_basis_with_http_info(vbasoftware_database, comm_basis)

```ruby
begin
  # Delete CommissionBasis
  data, status_code, headers = api_instance.delete_commission_basis_with_http_info(vbasoftware_database, comm_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->delete_commission_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_basis** | **String** | Commission Basis |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_basis

> <CommissionBasisVBAResponse> get_commission_basis(vbasoftware_database, comm_basis)

Get CommissionBasis

Gets CommissionBasis

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_basis = 'comm_basis_example' # String | Commission Basis

begin
  # Get CommissionBasis
  result = api_instance.get_commission_basis(vbasoftware_database, comm_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->get_commission_basis: #{e}"
end
```

#### Using the get_commission_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionBasisVBAResponse>, Integer, Hash)> get_commission_basis_with_http_info(vbasoftware_database, comm_basis)

```ruby
begin
  # Get CommissionBasis
  data, status_code, headers = api_instance.get_commission_basis_with_http_info(vbasoftware_database, comm_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->get_commission_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_basis** | **String** | Commission Basis |  |

### Return type

[**CommissionBasisVBAResponse**](CommissionBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_basis

> <CommissionBasisListVBAResponse> list_commission_basis(vbasoftware_database, opts)

List CommissionBasis

Lists all CommissionBasis

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionBasis
  result = api_instance.list_commission_basis(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->list_commission_basis: #{e}"
end
```

#### Using the list_commission_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionBasisListVBAResponse>, Integer, Hash)> list_commission_basis_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionBasis
  data, status_code, headers = api_instance.list_commission_basis_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionBasisListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->list_commission_basis_with_http_info: #{e}"
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

[**CommissionBasisListVBAResponse**](CommissionBasisListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_basis

> <MultiCodeResponseListVBAResponse> update_batch_commission_basis(vbasoftware_database, commission_basis)

Create or Update Batch CommissionBasis

Create or Update multiple CommissionBasis at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_basis = [Vba::CommissionBasis.new({commission_basis: 'commission_basis_example'})] # Array<CommissionBasis> | 

begin
  # Create or Update Batch CommissionBasis
  result = api_instance.update_batch_commission_basis(vbasoftware_database, commission_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->update_batch_commission_basis: #{e}"
end
```

#### Using the update_batch_commission_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_basis_with_http_info(vbasoftware_database, commission_basis)

```ruby
begin
  # Create or Update Batch CommissionBasis
  data, status_code, headers = api_instance.update_batch_commission_basis_with_http_info(vbasoftware_database, commission_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->update_batch_commission_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_basis** | [**Array&lt;CommissionBasis&gt;**](CommissionBasis.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_basis

> <CommissionBasisVBAResponse> update_commission_basis(vbasoftware_database, comm_basis, commission_basis)

Update CommissionBasis

Updates a specific CommissionBasis.

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

api_instance = Vba::CommissionBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_basis = 'comm_basis_example' # String | Commission Basis
commission_basis = Vba::CommissionBasis.new({commission_basis: 'commission_basis_example'}) # CommissionBasis | 

begin
  # Update CommissionBasis
  result = api_instance.update_commission_basis(vbasoftware_database, comm_basis, commission_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->update_commission_basis: #{e}"
end
```

#### Using the update_commission_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionBasisVBAResponse>, Integer, Hash)> update_commission_basis_with_http_info(vbasoftware_database, comm_basis, commission_basis)

```ruby
begin
  # Update CommissionBasis
  data, status_code, headers = api_instance.update_commission_basis_with_http_info(vbasoftware_database, comm_basis, commission_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionBasisApi->update_commission_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_basis** | **String** | Commission Basis |  |
| **commission_basis** | [**CommissionBasis**](CommissionBasis.md) |  |  |

### Return type

[**CommissionBasisVBAResponse**](CommissionBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

