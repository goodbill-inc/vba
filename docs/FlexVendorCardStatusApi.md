# Vba::FlexVendorCardStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_flex_vendor_card_status**](FlexVendorCardStatusApi.md#create_flex_vendor_card_status) | **POST** /flex-vendors/{flexVendor}/card-statuses | Create FlexVendorCardStatus |
| [**delete_flex_vendor_card_status**](FlexVendorCardStatusApi.md#delete_flex_vendor_card_status) | **DELETE** /flex-vendors/{flexVendor}/card-statuses/{cardStatus} | Delete FlexVendorCardStatus |
| [**get_flex_vendor_card_status**](FlexVendorCardStatusApi.md#get_flex_vendor_card_status) | **GET** /flex-vendors/{flexVendor}/card-statuses/{cardStatus} | Get FlexVendorCardStatus |
| [**list_flex_vendor_card_status**](FlexVendorCardStatusApi.md#list_flex_vendor_card_status) | **GET** /flex-vendors/{flexVendor}/card-statuses | List FlexVendorCardStatus |
| [**update_batch_flex_vendor_card_status**](FlexVendorCardStatusApi.md#update_batch_flex_vendor_card_status) | **PUT** /flex-vendors/{flexVendor}/card-statuses-batch | Create or Update Batch FlexVendorCardStatus |
| [**update_flex_vendor_card_status**](FlexVendorCardStatusApi.md#update_flex_vendor_card_status) | **PUT** /flex-vendors/{flexVendor}/card-statuses/{cardStatus} | Update FlexVendorCardStatus |


## create_flex_vendor_card_status

> <FlexVendorCardStatusVBAResponse> create_flex_vendor_card_status(vbasoftware_database, flex_vendor, flex_vendor_card_status)

Create FlexVendorCardStatus

Creates a new FlexVendorCardStatus

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_vendor_card_status = Vba::FlexVendorCardStatus.new({flex_vendor: 'flex_vendor_example', card_status: 'card_status_example'}) # FlexVendorCardStatus | 

begin
  # Create FlexVendorCardStatus
  result = api_instance.create_flex_vendor_card_status(vbasoftware_database, flex_vendor, flex_vendor_card_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->create_flex_vendor_card_status: #{e}"
end
```

#### Using the create_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorCardStatusVBAResponse>, Integer, Hash)> create_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_card_status)

```ruby
begin
  # Create FlexVendorCardStatus
  data, status_code, headers = api_instance.create_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorCardStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->create_flex_vendor_card_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_vendor_card_status** | [**FlexVendorCardStatus**](FlexVendorCardStatus.md) |  |  |

### Return type

[**FlexVendorCardStatusVBAResponse**](FlexVendorCardStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_flex_vendor_card_status

> delete_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status)

Delete FlexVendorCardStatus

Deletes an FlexVendorCardStatus

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
card_status = 'card_status_example' # String | Card Status

begin
  # Delete FlexVendorCardStatus
  api_instance.delete_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status)
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->delete_flex_vendor_card_status: #{e}"
end
```

#### Using the delete_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status)

```ruby
begin
  # Delete FlexVendorCardStatus
  data, status_code, headers = api_instance.delete_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->delete_flex_vendor_card_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **card_status** | **String** | Card Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_flex_vendor_card_status

> <FlexVendorCardStatusVBAResponse> get_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status)

Get FlexVendorCardStatus

Gets FlexVendorCardStatus

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
card_status = 'card_status_example' # String | Card Status

begin
  # Get FlexVendorCardStatus
  result = api_instance.get_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->get_flex_vendor_card_status: #{e}"
end
```

#### Using the get_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorCardStatusVBAResponse>, Integer, Hash)> get_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status)

```ruby
begin
  # Get FlexVendorCardStatus
  data, status_code, headers = api_instance.get_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorCardStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->get_flex_vendor_card_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **card_status** | **String** | Card Status |  |

### Return type

[**FlexVendorCardStatusVBAResponse**](FlexVendorCardStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_flex_vendor_card_status

> <FlexVendorCardStatusListVBAResponse> list_flex_vendor_card_status(vbasoftware_database, flex_vendor, opts)

List FlexVendorCardStatus

Lists all FlexVendorCardStatus for the given flexVendor

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FlexVendorCardStatus
  result = api_instance.list_flex_vendor_card_status(vbasoftware_database, flex_vendor, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->list_flex_vendor_card_status: #{e}"
end
```

#### Using the list_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorCardStatusListVBAResponse>, Integer, Hash)> list_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, opts)

```ruby
begin
  # List FlexVendorCardStatus
  data, status_code, headers = api_instance.list_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorCardStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->list_flex_vendor_card_status_with_http_info: #{e}"
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

[**FlexVendorCardStatusListVBAResponse**](FlexVendorCardStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_flex_vendor_card_status

> <MultiCodeResponseListVBAResponse> update_batch_flex_vendor_card_status(vbasoftware_database, flex_vendor, flex_vendor_card_status)

Create or Update Batch FlexVendorCardStatus

Create or Update multiple FlexVendorCardStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
flex_vendor_card_status = [Vba::FlexVendorCardStatus.new({flex_vendor: 'flex_vendor_example', card_status: 'card_status_example'})] # Array<FlexVendorCardStatus> | 

begin
  # Create or Update Batch FlexVendorCardStatus
  result = api_instance.update_batch_flex_vendor_card_status(vbasoftware_database, flex_vendor, flex_vendor_card_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->update_batch_flex_vendor_card_status: #{e}"
end
```

#### Using the update_batch_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_card_status)

```ruby
begin
  # Create or Update Batch FlexVendorCardStatus
  data, status_code, headers = api_instance.update_batch_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, flex_vendor_card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->update_batch_flex_vendor_card_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **flex_vendor_card_status** | [**Array&lt;FlexVendorCardStatus&gt;**](FlexVendorCardStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_flex_vendor_card_status

> <FlexVendorCardStatusVBAResponse> update_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status, flex_vendor_card_status)

Update FlexVendorCardStatus

Updates a specific FlexVendorCardStatus.

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

api_instance = Vba::FlexVendorCardStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
flex_vendor = 'flex_vendor_example' # String | Flex Vendor
card_status = 'card_status_example' # String | Card Status
flex_vendor_card_status = Vba::FlexVendorCardStatus.new({flex_vendor: 'flex_vendor_example', card_status: 'card_status_example'}) # FlexVendorCardStatus | 

begin
  # Update FlexVendorCardStatus
  result = api_instance.update_flex_vendor_card_status(vbasoftware_database, flex_vendor, card_status, flex_vendor_card_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->update_flex_vendor_card_status: #{e}"
end
```

#### Using the update_flex_vendor_card_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlexVendorCardStatusVBAResponse>, Integer, Hash)> update_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status, flex_vendor_card_status)

```ruby
begin
  # Update FlexVendorCardStatus
  data, status_code, headers = api_instance.update_flex_vendor_card_status_with_http_info(vbasoftware_database, flex_vendor, card_status, flex_vendor_card_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlexVendorCardStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FlexVendorCardStatusApi->update_flex_vendor_card_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **flex_vendor** | **String** | Flex Vendor |  |
| **card_status** | **String** | Card Status |  |
| **flex_vendor_card_status** | [**FlexVendorCardStatus**](FlexVendorCardStatus.md) |  |  |

### Return type

[**FlexVendorCardStatusVBAResponse**](FlexVendorCardStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

