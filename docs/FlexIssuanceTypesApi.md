# Vba::FlexIssuanceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flex_issuance_type**](FlexIssuanceTypesApi.md#create_flex_issuance_type) | **POST** /flex-vendors/{flexVendor}/issuance-types | Create FlexIssuanceType |
| [**delete_flex_issuance_type**](FlexIssuanceTypesApi.md#delete_flex_issuance_type) | **DELETE** /flex-vendors/{flexVendor}/issuance-types/{issuanceType} | Delete FlexIssuanceType |
| [**get_flex_issuance_type**](FlexIssuanceTypesApi.md#get_flex_issuance_type) | **GET** /flex-vendors/{flexVendor}/issuance-types/{issuanceType} | Get FlexIssuanceType |
| [**list_flex_issuance_type**](FlexIssuanceTypesApi.md#list_flex_issuance_type) | **GET** /flex-vendors/{flexVendor}/issuance-types | List FlexIssuanceType |
| [**update_batch_flex_issuance_type**](FlexIssuanceTypesApi.md#update_batch_flex_issuance_type) | **PUT** /flex-vendors/{flexVendor}/issuance-types-batch | Create or Update Batch FlexIssuanceType |
| [**update_flex_issuance_type**](FlexIssuanceTypesApi.md#update_flex_issuance_type) | **PUT** /flex-vendors/{flexVendor}/issuance-types/{issuanceType} | Update FlexIssuanceType |


## create_flex_issuance_type

> <FlexIssuanceTypeVBAResponse> create_flex_issuance_type(vbasoftware_database, flex_vendor, flex_issuance_type)

Create FlexIssuanceType

Creates a new FlexIssuanceType

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_issuance_type = Vba::FlexIssuanceType.new({flex_vendor: 'flex_vendor_example', issuance_type: 'issuance_type_example'}) # FlexIssuanceType | 

begin
  # Create FlexIssuanceType
  result = api_instance.create_flex_issuance_type(vbasoftware_database, flex_vendor, flex_issuance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->create_flex_issuance_type: #{e}"
end
```

#### Using the create_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexIssuanceTypeVBAResponse>, Integer, Hash)> create_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, flex_issuance_type)

```ruby
begin
  # Create FlexIssuanceType
  data, status_code, headers = api_instance.create_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, flex_issuance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexIssuanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->create_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_issuance_type** | [**FlexIssuanceType**](FlexIssuanceType.md) |  |  |

### Return type

[**FlexIssuanceTypeVBAResponse**](FlexIssuanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_flex_issuance_type

> delete_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type)

Delete FlexIssuanceType

Deletes an FlexIssuanceType

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
issuance_type = 'issuance_type_example' # String | Issuance Type

begin
  # Delete FlexIssuanceType
  api_instance.delete_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type)
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->delete_flex_issuance_type: #{e}"
end
```

#### Using the delete_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type)

```ruby
begin
  # Delete FlexIssuanceType
  data, status_code, headers = api_instance.delete_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->delete_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **issuance_type** | **String** | Issuance Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_flex_issuance_type

> <FlexIssuanceTypeVBAResponse> get_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type)

Get FlexIssuanceType

Gets FlexIssuanceType

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
issuance_type = 'issuance_type_example' # String | Issuance Type

begin
  # Get FlexIssuanceType
  result = api_instance.get_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->get_flex_issuance_type: #{e}"
end
```

#### Using the get_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexIssuanceTypeVBAResponse>, Integer, Hash)> get_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type)

```ruby
begin
  # Get FlexIssuanceType
  data, status_code, headers = api_instance.get_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexIssuanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->get_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **issuance_type** | **String** | Issuance Type |  |

### Return type

[**FlexIssuanceTypeVBAResponse**](FlexIssuanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_flex_issuance_type

> <FlexIssuanceTypeListVBAResponse> list_flex_issuance_type(vbasoftware_database, flex_vendor, opts)

List FlexIssuanceType

Lists all FlexIssuanceType for the given flexVendor

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FlexIssuanceType
  result = api_instance.list_flex_issuance_type(vbasoftware_database, flex_vendor, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->list_flex_issuance_type: #{e}"
end
```

#### Using the list_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexIssuanceTypeListVBAResponse>, Integer, Hash)> list_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, opts)

```ruby
begin
  # List FlexIssuanceType
  data, status_code, headers = api_instance.list_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexIssuanceTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->list_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FlexIssuanceTypeListVBAResponse**](FlexIssuanceTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_flex_issuance_type

> <MultiCodeResponseListVBAResponse> update_batch_flex_issuance_type(vbasoftware_database, flex_vendor, flex_issuance_type)

Create or Update Batch FlexIssuanceType

Create or Update multiple FlexIssuanceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_issuance_type = [Vba::FlexIssuanceType.new({flex_vendor: 'flex_vendor_example', issuance_type: 'issuance_type_example'})] # Array<FlexIssuanceType> | 

begin
  # Create or Update Batch FlexIssuanceType
  result = api_instance.update_batch_flex_issuance_type(vbasoftware_database, flex_vendor, flex_issuance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->update_batch_flex_issuance_type: #{e}"
end
```

#### Using the update_batch_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, flex_issuance_type)

```ruby
begin
  # Create or Update Batch FlexIssuanceType
  data, status_code, headers = api_instance.update_batch_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, flex_issuance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->update_batch_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_issuance_type** | [**Array&lt;FlexIssuanceType&gt;**](FlexIssuanceType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_flex_issuance_type

> <FlexIssuanceTypeVBAResponse> update_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type, flex_issuance_type)

Update FlexIssuanceType

Updates a specific FlexIssuanceType.

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

api_instance = Vba::FlexIssuanceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
issuance_type = 'issuance_type_example' # String | Issuance Type
flex_issuance_type = Vba::FlexIssuanceType.new({flex_vendor: 'flex_vendor_example', issuance_type: 'issuance_type_example'}) # FlexIssuanceType | 

begin
  # Update FlexIssuanceType
  result = api_instance.update_flex_issuance_type(vbasoftware_database, flex_vendor, issuance_type, flex_issuance_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->update_flex_issuance_type: #{e}"
end
```

#### Using the update_flex_issuance_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexIssuanceTypeVBAResponse>, Integer, Hash)> update_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type, flex_issuance_type)

```ruby
begin
  # Update FlexIssuanceType
  data, status_code, headers = api_instance.update_flex_issuance_type_with_http_info(vbasoftware_database, flex_vendor, issuance_type, flex_issuance_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexIssuanceTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexIssuanceTypesApi->update_flex_issuance_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **issuance_type** | **String** | Issuance Type |  |
| **flex_issuance_type** | [**FlexIssuanceType**](FlexIssuanceType.md) |  |  |

### Return type

[**FlexIssuanceTypeVBAResponse**](FlexIssuanceTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

