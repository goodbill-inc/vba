# Vba::FlexVendorPurseStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#create_flex_vendor_purse_status) | **POST** /flex-vendors/{flexVendor}/purse-statuses | Create FlexVendorPurseStatus |
| [**delete_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#delete_flex_vendor_purse_status) | **DELETE** /flex-vendors/{flexVendor}/purse-statuses/{purseStatus} | Delete FlexVendorPurseStatus |
| [**get_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#get_flex_vendor_purse_status) | **GET** /flex-vendors/{flexVendor}/purse-statuses/{purseStatus} | Get FlexVendorPurseStatus |
| [**list_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#list_flex_vendor_purse_status) | **GET** /flex-vendors/{flexVendor}/purse-statuses | List FlexVendorPurseStatus |
| [**update_batch_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#update_batch_flex_vendor_purse_status) | **PUT** /flex-vendors/{flexVendor}/purse-statuses-batch | Create or Update Batch FlexVendorPurseStatus |
| [**update_flex_vendor_purse_status**](FlexVendorPurseStatusApi.md#update_flex_vendor_purse_status) | **PUT** /flex-vendors/{flexVendor}/purse-statuses/{purseStatus} | Update FlexVendorPurseStatus |


## create_flex_vendor_purse_status

> <FlexVendorPurseStatusVBAResponse> create_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status)

Create FlexVendorPurseStatus

Creates a new FlexVendorPurseStatus

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_vendor_purse_status = Vba::FlexVendorPurseStatus.new({flex_vendor: 'flex_vendor_example', purse_status: 'purse_status_example'}) # FlexVendorPurseStatus | 

begin
  # Create FlexVendorPurseStatus
  result = api_instance.create_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->create_flex_vendor_purse_status: #{e}"
end
```

#### Using the create_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorPurseStatusVBAResponse>, Integer, Hash)> create_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status)

```ruby
begin
  # Create FlexVendorPurseStatus
  data, status_code, headers = api_instance.create_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorPurseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->create_flex_vendor_purse_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_vendor_purse_status** | [**FlexVendorPurseStatus**](FlexVendorPurseStatus.md) |  |  |

### Return type

[**FlexVendorPurseStatusVBAResponse**](FlexVendorPurseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_flex_vendor_purse_status

> delete_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status)

Delete FlexVendorPurseStatus

Deletes an FlexVendorPurseStatus

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
purse_status = 'purse_status_example' # String | Purse Status

begin
  # Delete FlexVendorPurseStatus
  api_instance.delete_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status)
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->delete_flex_vendor_purse_status: #{e}"
end
```

#### Using the delete_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status)

```ruby
begin
  # Delete FlexVendorPurseStatus
  data, status_code, headers = api_instance.delete_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->delete_flex_vendor_purse_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **purse_status** | **String** | Purse Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_flex_vendor_purse_status

> <FlexVendorPurseStatusVBAResponse> get_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status)

Get FlexVendorPurseStatus

Gets FlexVendorPurseStatus

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
purse_status = 'purse_status_example' # String | Purse Status

begin
  # Get FlexVendorPurseStatus
  result = api_instance.get_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->get_flex_vendor_purse_status: #{e}"
end
```

#### Using the get_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorPurseStatusVBAResponse>, Integer, Hash)> get_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status)

```ruby
begin
  # Get FlexVendorPurseStatus
  data, status_code, headers = api_instance.get_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorPurseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->get_flex_vendor_purse_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **purse_status** | **String** | Purse Status |  |

### Return type

[**FlexVendorPurseStatusVBAResponse**](FlexVendorPurseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_flex_vendor_purse_status

> <FlexVendorPurseStatusListVBAResponse> list_flex_vendor_purse_status(vbasoftware_database, flex_vendor, opts)

List FlexVendorPurseStatus

Lists all FlexVendorPurseStatus for the given flexVendor

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FlexVendorPurseStatus
  result = api_instance.list_flex_vendor_purse_status(vbasoftware_database, flex_vendor, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->list_flex_vendor_purse_status: #{e}"
end
```

#### Using the list_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorPurseStatusListVBAResponse>, Integer, Hash)> list_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, opts)

```ruby
begin
  # List FlexVendorPurseStatus
  data, status_code, headers = api_instance.list_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorPurseStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->list_flex_vendor_purse_status_with_http_info: #{e}"
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

[**FlexVendorPurseStatusListVBAResponse**](FlexVendorPurseStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_flex_vendor_purse_status

> <MultiCodeResponseListVBAResponse> update_batch_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status)

Create or Update Batch FlexVendorPurseStatus

Create or Update multiple FlexVendorPurseStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_vendor_purse_status = [Vba::FlexVendorPurseStatus.new({flex_vendor: 'flex_vendor_example', purse_status: 'purse_status_example'})] # Array<FlexVendorPurseStatus> | 

begin
  # Create or Update Batch FlexVendorPurseStatus
  result = api_instance.update_batch_flex_vendor_purse_status(vbasoftware_database, flex_vendor, flex_vendor_purse_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->update_batch_flex_vendor_purse_status: #{e}"
end
```

#### Using the update_batch_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status)

```ruby
begin
  # Create or Update Batch FlexVendorPurseStatus
  data, status_code, headers = api_instance.update_batch_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_purse_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->update_batch_flex_vendor_purse_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_vendor_purse_status** | [**Array&lt;FlexVendorPurseStatus&gt;**](FlexVendorPurseStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_flex_vendor_purse_status

> <FlexVendorPurseStatusVBAResponse> update_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status)

Update FlexVendorPurseStatus

Updates a specific FlexVendorPurseStatus.

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

api_instance = Vba::FlexVendorPurseStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
purse_status = 'purse_status_example' # String | Purse Status
flex_vendor_purse_status = Vba::FlexVendorPurseStatus.new({flex_vendor: 'flex_vendor_example', purse_status: 'purse_status_example'}) # FlexVendorPurseStatus | 

begin
  # Update FlexVendorPurseStatus
  result = api_instance.update_flex_vendor_purse_status(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->update_flex_vendor_purse_status: #{e}"
end
```

#### Using the update_flex_vendor_purse_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorPurseStatusVBAResponse>, Integer, Hash)> update_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status)

```ruby
begin
  # Update FlexVendorPurseStatus
  data, status_code, headers = api_instance.update_flex_vendor_purse_status_with_http_info(vbasoftware_database, flex_vendor, purse_status, flex_vendor_purse_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorPurseStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorPurseStatusApi->update_flex_vendor_purse_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **purse_status** | **String** | Purse Status |  |
| **flex_vendor_purse_status** | [**FlexVendorPurseStatus**](FlexVendorPurseStatus.md) |  |  |

### Return type

[**FlexVendorPurseStatusVBAResponse**](FlexVendorPurseStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

