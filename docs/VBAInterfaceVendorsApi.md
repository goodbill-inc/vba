# Vba::VBAInterfaceVendorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface_vendor**](VBAInterfaceVendorsApi.md#create_vba_interface_vendor) | **POST** /vba-interface-vendors | Create VBAInterfaceVendor |
| [**delete_vba_interface_vendor**](VBAInterfaceVendorsApi.md#delete_vba_interface_vendor) | **DELETE** /vba-interface-vendors/{vBAInterfaceVendor} | Delete VBAInterfaceVendor |
| [**get_vba_interface_vendor**](VBAInterfaceVendorsApi.md#get_vba_interface_vendor) | **GET** /vba-interface-vendors/{vBAInterfaceVendor} | Get VBAInterfaceVendor |
| [**list_vba_interface_vendor**](VBAInterfaceVendorsApi.md#list_vba_interface_vendor) | **GET** /vba-interface-vendors | List VBAInterfaceVendor |
| [**update_batch_vba_interface_vendor**](VBAInterfaceVendorsApi.md#update_batch_vba_interface_vendor) | **PUT** /vba-interface-vendors-batch | Create or Update Batch VBAInterfaceVendor |
| [**update_vba_interface_vendor**](VBAInterfaceVendorsApi.md#update_vba_interface_vendor) | **PUT** /vba-interface-vendors/{vBAInterfaceVendor} | Update VBAInterfaceVendor |


## create_vba_interface_vendor

> <VBAInterfaceVendorVBAResponse> create_vba_interface_vendor(vbasoftware_database, vba_interface_vendor)

Create VBAInterfaceVendor

Creates a new VBAInterfaceVendor

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_vendor = Vba::VBAInterfaceVendor.new({vba_interface_vendor: 'vba_interface_vendor_example'}) # VBAInterfaceVendor | 

begin
  # Create VBAInterfaceVendor
  result = api_instance.create_vba_interface_vendor(vbasoftware_database, vba_interface_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->create_vba_interface_vendor: #{e}"
end
```

#### Using the create_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVendorVBAResponse>, Integer, Hash)> create_vba_interface_vendor_with_http_info(vbasoftware_database, vba_interface_vendor)

```ruby
begin
  # Create VBAInterfaceVendor
  data, status_code, headers = api_instance.create_vba_interface_vendor_with_http_info(vbasoftware_database, vba_interface_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->create_vba_interface_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_vendor** | [**VBAInterfaceVendor**](VBAInterfaceVendor.md) |  |  |

### Return type

[**VBAInterfaceVendorVBAResponse**](VBAInterfaceVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface_vendor

> delete_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor)

Delete VBAInterfaceVendor

Deletes an VBAInterfaceVendor

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_vendor = 'v_ba_interface_vendor_example' # String | VBAInterface Vendor

begin
  # Delete VBAInterfaceVendor
  api_instance.delete_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->delete_vba_interface_vendor: #{e}"
end
```

#### Using the delete_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor)

```ruby
begin
  # Delete VBAInterfaceVendor
  data, status_code, headers = api_instance.delete_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->delete_vba_interface_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_vendor** | **String** | VBAInterface Vendor |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface_vendor

> <VBAInterfaceVendorVBAResponse> get_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor)

Get VBAInterfaceVendor

Gets VBAInterfaceVendor

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_vendor = 'v_ba_interface_vendor_example' # String | VBAInterface Vendor

begin
  # Get VBAInterfaceVendor
  result = api_instance.get_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->get_vba_interface_vendor: #{e}"
end
```

#### Using the get_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVendorVBAResponse>, Integer, Hash)> get_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor)

```ruby
begin
  # Get VBAInterfaceVendor
  data, status_code, headers = api_instance.get_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->get_vba_interface_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_vendor** | **String** | VBAInterface Vendor |  |

### Return type

[**VBAInterfaceVendorVBAResponse**](VBAInterfaceVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_vendor

> <VBAInterfaceVendorListVBAResponse> list_vba_interface_vendor(vbasoftware_database, opts)

List VBAInterfaceVendor

Lists all VBAInterfaceVendor

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterfaceVendor
  result = api_instance.list_vba_interface_vendor(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->list_vba_interface_vendor: #{e}"
end
```

#### Using the list_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVendorListVBAResponse>, Integer, Hash)> list_vba_interface_vendor_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAInterfaceVendor
  data, status_code, headers = api_instance.list_vba_interface_vendor_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVendorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->list_vba_interface_vendor_with_http_info: #{e}"
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

[**VBAInterfaceVendorListVBAResponse**](VBAInterfaceVendorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface_vendor

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface_vendor(vbasoftware_database, vba_interface_vendor)

Create or Update Batch VBAInterfaceVendor

Create or Update multiple VBAInterfaceVendor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_vendor = [Vba::VBAInterfaceVendor.new({vba_interface_vendor: 'vba_interface_vendor_example'})] # Array<VBAInterfaceVendor> | 

begin
  # Create or Update Batch VBAInterfaceVendor
  result = api_instance.update_batch_vba_interface_vendor(vbasoftware_database, vba_interface_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->update_batch_vba_interface_vendor: #{e}"
end
```

#### Using the update_batch_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_vendor_with_http_info(vbasoftware_database, vba_interface_vendor)

```ruby
begin
  # Create or Update Batch VBAInterfaceVendor
  data, status_code, headers = api_instance.update_batch_vba_interface_vendor_with_http_info(vbasoftware_database, vba_interface_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->update_batch_vba_interface_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_vendor** | [**Array&lt;VBAInterfaceVendor&gt;**](VBAInterfaceVendor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface_vendor

> <VBAInterfaceVendorVBAResponse> update_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor, vba_interface_vendor)

Update VBAInterfaceVendor

Updates a specific VBAInterfaceVendor.

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

api_instance = Vba::VBAInterfaceVendorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_vendor = 'v_ba_interface_vendor_example' # String | VBAInterface Vendor
vba_interface_vendor = Vba::VBAInterfaceVendor.new({vba_interface_vendor: 'vba_interface_vendor_example'}) # VBAInterfaceVendor | 

begin
  # Update VBAInterfaceVendor
  result = api_instance.update_vba_interface_vendor(vbasoftware_database, v_ba_interface_vendor, vba_interface_vendor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->update_vba_interface_vendor: #{e}"
end
```

#### Using the update_vba_interface_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceVendorVBAResponse>, Integer, Hash)> update_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor, vba_interface_vendor)

```ruby
begin
  # Update VBAInterfaceVendor
  data, status_code, headers = api_instance.update_vba_interface_vendor_with_http_info(vbasoftware_database, v_ba_interface_vendor, vba_interface_vendor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceVendorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceVendorsApi->update_vba_interface_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_vendor** | **String** | VBAInterface Vendor |  |
| **vba_interface_vendor** | [**VBAInterfaceVendor**](VBAInterfaceVendor.md) |  |  |

### Return type

[**VBAInterfaceVendorVBAResponse**](VBAInterfaceVendorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

