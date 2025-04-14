# Vba::FlexVendorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flex_vendor**](FlexVendorsApi.md#create_flex_vendor) | **POST** /flex-vendors | Create FlexVendor |
| [**delete_flex_vendor**](FlexVendorsApi.md#delete_flex_vendor) | **DELETE** /flex-vendors/{flexVendor} | Delete FlexVendor |
| [**get_flex_vendor**](FlexVendorsApi.md#get_flex_vendor) | **GET** /flex-vendors/{flexVendor} | Get FlexVendor |
| [**list_flex_vendor**](FlexVendorsApi.md#list_flex_vendor) | **GET** /flex-vendors | List FlexVendor |
| [**update_batch_flex_vendor**](FlexVendorsApi.md#update_batch_flex_vendor) | **PUT** /flex-vendors-batch | Create or Update Batch FlexVendor |
| [**update_flex_vendor**](FlexVendorsApi.md#update_flex_vendor) | **PUT** /flex-vendors/{flexVendor} | Update FlexVendor |


## create_flex_vendor

> <FlexVendorVBAResponse> create_flex_vendor(vbasoftware_database, flex_vendor)

Create FlexVendor

Creates a new FlexVendor

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = Vba::FlexVendor.new({flex_vendor: 'flex_vendor_example'}) # FlexVendor | 

begin
  # Create FlexVendor
  result = api_instance.create_flex_vendor(vbasoftware_database, flex_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->create_flex_vendor: #{e}"
end
```

#### Using the create_flex_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorVBAResponse>, Integer, Hash)> create_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)

```ruby
begin
  # Create FlexVendor
  data, status_code, headers = api_instance.create_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->create_flex_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | [**FlexVendor**](FlexVendor.md) |  |  |

### Return type

[**FlexVendorVBAResponse**](FlexVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_flex_vendor

> delete_flex_vendor(vbasoftware_database, flex_vendor)

Delete FlexVendor

Deletes an FlexVendor

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor

begin
  # Delete FlexVendor
  api_instance.delete_flex_vendor(vbasoftware_database, flex_vendor)
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->delete_flex_vendor: #{e}"
end
```

#### Using the delete_flex_vendor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)

```ruby
begin
  # Delete FlexVendor
  data, status_code, headers = api_instance.delete_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->delete_flex_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_flex_vendor

> <FlexVendorVBAResponse> get_flex_vendor(vbasoftware_database, flex_vendor)

Get FlexVendor

Gets FlexVendor

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor

begin
  # Get FlexVendor
  result = api_instance.get_flex_vendor(vbasoftware_database, flex_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->get_flex_vendor: #{e}"
end
```

#### Using the get_flex_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorVBAResponse>, Integer, Hash)> get_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)

```ruby
begin
  # Get FlexVendor
  data, status_code, headers = api_instance.get_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->get_flex_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |

### Return type

[**FlexVendorVBAResponse**](FlexVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_flex_vendor

> <FlexVendorListVBAResponse> list_flex_vendor(vbasoftware_database, opts)

List FlexVendor

Lists all FlexVendor

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FlexVendor
  result = api_instance.list_flex_vendor(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->list_flex_vendor: #{e}"
end
```

#### Using the list_flex_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorListVBAResponse>, Integer, Hash)> list_flex_vendor_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FlexVendor
  data, status_code, headers = api_instance.list_flex_vendor_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->list_flex_vendor_with_http_info: #{e}"
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

[**FlexVendorListVBAResponse**](FlexVendorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_flex_vendor

> <MultiCodeResponseListVBAResponse> update_batch_flex_vendor(vbasoftware_database, flex_vendor)

Create or Update Batch FlexVendor

Create or Update multiple FlexVendor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = [Vba::FlexVendor.new({flex_vendor: 'flex_vendor_example'})] # Array<FlexVendor> | 

begin
  # Create or Update Batch FlexVendor
  result = api_instance.update_batch_flex_vendor(vbasoftware_database, flex_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->update_batch_flex_vendor: #{e}"
end
```

#### Using the update_batch_flex_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)

```ruby
begin
  # Create or Update Batch FlexVendor
  data, status_code, headers = api_instance.update_batch_flex_vendor_with_http_info(vbasoftware_database, flex_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->update_batch_flex_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | [**Array&lt;FlexVendor&gt;**](FlexVendor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_flex_vendor

> <FlexVendorVBAResponse> update_flex_vendor(vbasoftware_database, flex_vendor, flex_vendor2)

Update FlexVendor

Updates a specific FlexVendor.

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

api_instance = Vba::FlexVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_vendor2 = Vba::FlexVendor.new({flex_vendor: 'flex_vendor_example'}) # FlexVendor | 

begin
  # Update FlexVendor
  result = api_instance.update_flex_vendor(vbasoftware_database, flex_vendor, flex_vendor2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->update_flex_vendor: #{e}"
end
```

#### Using the update_flex_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorVBAResponse>, Integer, Hash)> update_flex_vendor_with_http_info(vbasoftware_database, flex_vendor, flex_vendor2)

```ruby
begin
  # Update FlexVendor
  data, status_code, headers = api_instance.update_flex_vendor_with_http_info(vbasoftware_database, flex_vendor, flex_vendor2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorsApi->update_flex_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_vendor2** | [**FlexVendor**](FlexVendor.md) |  |  |

### Return type

[**FlexVendorVBAResponse**](FlexVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

