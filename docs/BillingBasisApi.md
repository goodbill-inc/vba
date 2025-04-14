# Vba::BillingBasisApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billing_basis**](BillingBasisApi.md#create_billing_basis) | **POST** /billing-basis | Create BillingBasis |
| [**delete_billing_basis**](BillingBasisApi.md#delete_billing_basis) | **DELETE** /billing-basis/{billingBasis} | Delete BillingBasis |
| [**get_billing_basis**](BillingBasisApi.md#get_billing_basis) | **GET** /billing-basis/{billingBasis} | Get BillingBasis |
| [**list_billing_basis**](BillingBasisApi.md#list_billing_basis) | **GET** /billing-basis | List BillingBasis |
| [**update_batch_billing_basis**](BillingBasisApi.md#update_batch_billing_basis) | **PUT** /billing-basis-batch | Create or Update Batch BillingBasis |
| [**update_billing_basis**](BillingBasisApi.md#update_billing_basis) | **PUT** /billing-basis/{billingBasis} | Update BillingBasis |


## create_billing_basis

> <BillingBasisVBAResponse> create_billing_basis(vbasoftware_database, billing_basis)

Create BillingBasis

Creates a new BillingBasis

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_basis = Vba::BillingBasis.new({billing_basis: 'billing_basis_example'}) # BillingBasis | 

begin
  # Create BillingBasis
  result = api_instance.create_billing_basis(vbasoftware_database, billing_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->create_billing_basis: #{e}"
end
```

#### Using the create_billing_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingBasisVBAResponse>, Integer, Hash)> create_billing_basis_with_http_info(vbasoftware_database, billing_basis)

```ruby
begin
  # Create BillingBasis
  data, status_code, headers = api_instance.create_billing_basis_with_http_info(vbasoftware_database, billing_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->create_billing_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_basis** | [**BillingBasis**](BillingBasis.md) |  |  |

### Return type

[**BillingBasisVBAResponse**](BillingBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_billing_basis

> delete_billing_basis(vbasoftware_database, billing_basis)

Delete BillingBasis

Deletes an BillingBasis

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_basis = 'billing_basis_example' # String | Billing Basis

begin
  # Delete BillingBasis
  api_instance.delete_billing_basis(vbasoftware_database, billing_basis)
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->delete_billing_basis: #{e}"
end
```

#### Using the delete_billing_basis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_billing_basis_with_http_info(vbasoftware_database, billing_basis)

```ruby
begin
  # Delete BillingBasis
  data, status_code, headers = api_instance.delete_billing_basis_with_http_info(vbasoftware_database, billing_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->delete_billing_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_basis** | **String** | Billing Basis |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_billing_basis

> <BillingBasisVBAResponse> get_billing_basis(vbasoftware_database, billing_basis)

Get BillingBasis

Gets BillingBasis

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_basis = 'billing_basis_example' # String | Billing Basis

begin
  # Get BillingBasis
  result = api_instance.get_billing_basis(vbasoftware_database, billing_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->get_billing_basis: #{e}"
end
```

#### Using the get_billing_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingBasisVBAResponse>, Integer, Hash)> get_billing_basis_with_http_info(vbasoftware_database, billing_basis)

```ruby
begin
  # Get BillingBasis
  data, status_code, headers = api_instance.get_billing_basis_with_http_info(vbasoftware_database, billing_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->get_billing_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_basis** | **String** | Billing Basis |  |

### Return type

[**BillingBasisVBAResponse**](BillingBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_billing_basis

> <BillingBasisListVBAResponse> list_billing_basis(vbasoftware_database, opts)

List BillingBasis

Lists all BillingBasis

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List BillingBasis
  result = api_instance.list_billing_basis(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->list_billing_basis: #{e}"
end
```

#### Using the list_billing_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingBasisListVBAResponse>, Integer, Hash)> list_billing_basis_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List BillingBasis
  data, status_code, headers = api_instance.list_billing_basis_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingBasisListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->list_billing_basis_with_http_info: #{e}"
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

[**BillingBasisListVBAResponse**](BillingBasisListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_billing_basis

> <MultiCodeResponseListVBAResponse> update_batch_billing_basis(vbasoftware_database, billing_basis)

Create or Update Batch BillingBasis

Create or Update multiple BillingBasis at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_basis = [Vba::BillingBasis.new({billing_basis: 'billing_basis_example'})] # Array<BillingBasis> | 

begin
  # Create or Update Batch BillingBasis
  result = api_instance.update_batch_billing_basis(vbasoftware_database, billing_basis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->update_batch_billing_basis: #{e}"
end
```

#### Using the update_batch_billing_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_billing_basis_with_http_info(vbasoftware_database, billing_basis)

```ruby
begin
  # Create or Update Batch BillingBasis
  data, status_code, headers = api_instance.update_batch_billing_basis_with_http_info(vbasoftware_database, billing_basis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->update_batch_billing_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_basis** | [**Array&lt;BillingBasis&gt;**](BillingBasis.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_billing_basis

> <BillingBasisVBAResponse> update_billing_basis(vbasoftware_database, billing_basis, billing_basis2)

Update BillingBasis

Updates a specific BillingBasis.

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

api_instance = Vba::BillingBasisApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
billing_basis = 'billing_basis_example' # String | Billing Basis
billing_basis2 = Vba::BillingBasis.new({billing_basis: 'billing_basis_example'}) # BillingBasis | 

begin
  # Update BillingBasis
  result = api_instance.update_billing_basis(vbasoftware_database, billing_basis, billing_basis2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->update_billing_basis: #{e}"
end
```

#### Using the update_billing_basis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingBasisVBAResponse>, Integer, Hash)> update_billing_basis_with_http_info(vbasoftware_database, billing_basis, billing_basis2)

```ruby
begin
  # Update BillingBasis
  data, status_code, headers = api_instance.update_billing_basis_with_http_info(vbasoftware_database, billing_basis, billing_basis2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingBasisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillingBasisApi->update_billing_basis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **billing_basis** | **String** | Billing Basis |  |
| **billing_basis2** | [**BillingBasis**](BillingBasis.md) |  |  |

### Return type

[**BillingBasisVBAResponse**](BillingBasisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

