# Vba::CommissionLicenseTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_license_type**](CommissionLicenseTypesApi.md#create_commission_license_type) | **POST** /commission-license-types | Create CommissionLicenseType |
| [**delete_commission_license_type**](CommissionLicenseTypesApi.md#delete_commission_license_type) | **DELETE** /commission-license-types/{licenseType} | Delete CommissionLicenseType |
| [**get_commission_license_type**](CommissionLicenseTypesApi.md#get_commission_license_type) | **GET** /commission-license-types/{licenseType} | Get CommissionLicenseType |
| [**list_commission_license_type**](CommissionLicenseTypesApi.md#list_commission_license_type) | **GET** /commission-license-types | List CommissionLicenseType |
| [**update_batch_commission_license_type**](CommissionLicenseTypesApi.md#update_batch_commission_license_type) | **PUT** /commission-license-types-batch | Create or Update Batch CommissionLicenseType |
| [**update_commission_license_type**](CommissionLicenseTypesApi.md#update_commission_license_type) | **PUT** /commission-license-types/{licenseType} | Update CommissionLicenseType |


## create_commission_license_type

> <CommissionLicenseTypeVBAResponse> create_commission_license_type(vbasoftware_database, commission_license_type)

Create CommissionLicenseType

Creates a new CommissionLicenseType

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_license_type = Vba::CommissionLicenseType.new({license_type: 'license_type_example'}) # CommissionLicenseType | 

begin
  # Create CommissionLicenseType
  result = api_instance.create_commission_license_type(vbasoftware_database, commission_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->create_commission_license_type: #{e}"
end
```

#### Using the create_commission_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionLicenseTypeVBAResponse>, Integer, Hash)> create_commission_license_type_with_http_info(vbasoftware_database, commission_license_type)

```ruby
begin
  # Create CommissionLicenseType
  data, status_code, headers = api_instance.create_commission_license_type_with_http_info(vbasoftware_database, commission_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->create_commission_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_license_type** | [**CommissionLicenseType**](CommissionLicenseType.md) |  |  |

### Return type

[**CommissionLicenseTypeVBAResponse**](CommissionLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_license_type

> delete_commission_license_type(vbasoftware_database, license_type)

Delete CommissionLicenseType

Deletes an CommissionLicenseType

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
license_type = 'license_type_example' # String | License Type

begin
  # Delete CommissionLicenseType
  api_instance.delete_commission_license_type(vbasoftware_database, license_type)
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->delete_commission_license_type: #{e}"
end
```

#### Using the delete_commission_license_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_license_type_with_http_info(vbasoftware_database, license_type)

```ruby
begin
  # Delete CommissionLicenseType
  data, status_code, headers = api_instance.delete_commission_license_type_with_http_info(vbasoftware_database, license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->delete_commission_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **license_type** | **String** | License Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_license_type

> <CommissionLicenseTypeVBAResponse> get_commission_license_type(vbasoftware_database, license_type)

Get CommissionLicenseType

Gets CommissionLicenseType

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
license_type = 'license_type_example' # String | License Type

begin
  # Get CommissionLicenseType
  result = api_instance.get_commission_license_type(vbasoftware_database, license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->get_commission_license_type: #{e}"
end
```

#### Using the get_commission_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionLicenseTypeVBAResponse>, Integer, Hash)> get_commission_license_type_with_http_info(vbasoftware_database, license_type)

```ruby
begin
  # Get CommissionLicenseType
  data, status_code, headers = api_instance.get_commission_license_type_with_http_info(vbasoftware_database, license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->get_commission_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **license_type** | **String** | License Type |  |

### Return type

[**CommissionLicenseTypeVBAResponse**](CommissionLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_license_type

> <CommissionLicenseTypeListVBAResponse> list_commission_license_type(vbasoftware_database, opts)

List CommissionLicenseType

Lists all CommissionLicenseType

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionLicenseType
  result = api_instance.list_commission_license_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->list_commission_license_type: #{e}"
end
```

#### Using the list_commission_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionLicenseTypeListVBAResponse>, Integer, Hash)> list_commission_license_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionLicenseType
  data, status_code, headers = api_instance.list_commission_license_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionLicenseTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->list_commission_license_type_with_http_info: #{e}"
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

[**CommissionLicenseTypeListVBAResponse**](CommissionLicenseTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_license_type

> <MultiCodeResponseListVBAResponse> update_batch_commission_license_type(vbasoftware_database, commission_license_type)

Create or Update Batch CommissionLicenseType

Create or Update multiple CommissionLicenseType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_license_type = [Vba::CommissionLicenseType.new({license_type: 'license_type_example'})] # Array<CommissionLicenseType> | 

begin
  # Create or Update Batch CommissionLicenseType
  result = api_instance.update_batch_commission_license_type(vbasoftware_database, commission_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->update_batch_commission_license_type: #{e}"
end
```

#### Using the update_batch_commission_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_license_type_with_http_info(vbasoftware_database, commission_license_type)

```ruby
begin
  # Create or Update Batch CommissionLicenseType
  data, status_code, headers = api_instance.update_batch_commission_license_type_with_http_info(vbasoftware_database, commission_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->update_batch_commission_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_license_type** | [**Array&lt;CommissionLicenseType&gt;**](CommissionLicenseType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_license_type

> <CommissionLicenseTypeVBAResponse> update_commission_license_type(vbasoftware_database, license_type, commission_license_type)

Update CommissionLicenseType

Updates a specific CommissionLicenseType.

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

api_instance = Vba::CommissionLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
license_type = 'license_type_example' # String | License Type
commission_license_type = Vba::CommissionLicenseType.new({license_type: 'license_type_example'}) # CommissionLicenseType | 

begin
  # Update CommissionLicenseType
  result = api_instance.update_commission_license_type(vbasoftware_database, license_type, commission_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->update_commission_license_type: #{e}"
end
```

#### Using the update_commission_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionLicenseTypeVBAResponse>, Integer, Hash)> update_commission_license_type_with_http_info(vbasoftware_database, license_type, commission_license_type)

```ruby
begin
  # Update CommissionLicenseType
  data, status_code, headers = api_instance.update_commission_license_type_with_http_info(vbasoftware_database, license_type, commission_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionLicenseTypesApi->update_commission_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **license_type** | **String** | License Type |  |
| **commission_license_type** | [**CommissionLicenseType**](CommissionLicenseType.md) |  |  |

### Return type

[**CommissionLicenseTypeVBAResponse**](CommissionLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

