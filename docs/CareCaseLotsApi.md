# Vba::CareCaseLotsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_lot**](CareCaseLotsApi.md#create_care_case_lot) | **POST** /care-case-lots | Create CareCaseLot |
| [**delete_care_case_lot**](CareCaseLotsApi.md#delete_care_case_lot) | **DELETE** /care-case-lots/{careCaseLotKey} | Delete CareCaseLot |
| [**get_care_case_lot**](CareCaseLotsApi.md#get_care_case_lot) | **GET** /care-case-lots/{careCaseLotKey} | Get CareCaseLot |
| [**list_care_case_lot**](CareCaseLotsApi.md#list_care_case_lot) | **GET** /care-case-lots | List CareCaseLot |
| [**update_batch_care_case_lot**](CareCaseLotsApi.md#update_batch_care_case_lot) | **PUT** /care-case-lots-batch | Create or Update Batch CareCaseLot |
| [**update_care_case_lot**](CareCaseLotsApi.md#update_care_case_lot) | **PUT** /care-case-lots/{careCaseLotKey} | Update CareCaseLot |


## create_care_case_lot

> <CareCaseLotVBAResponse> create_care_case_lot(vbasoftware_database, care_case_lot)

Create CareCaseLot

Creates a new CareCaseLot

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_lot = Vba::CareCaseLot.new({care_case_lot_key: 37}) # CareCaseLot | 

begin
  # Create CareCaseLot
  result = api_instance.create_care_case_lot(vbasoftware_database, care_case_lot)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->create_care_case_lot: #{e}"
end
```

#### Using the create_care_case_lot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLotVBAResponse>, Integer, Hash)> create_care_case_lot_with_http_info(vbasoftware_database, care_case_lot)

```ruby
begin
  # Create CareCaseLot
  data, status_code, headers = api_instance.create_care_case_lot_with_http_info(vbasoftware_database, care_case_lot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLotVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->create_care_case_lot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_lot** | [**CareCaseLot**](CareCaseLot.md) |  |  |

### Return type

[**CareCaseLotVBAResponse**](CareCaseLotVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_lot

> delete_care_case_lot(vbasoftware_database, care_case_lot_key)

Delete CareCaseLot

Deletes an CareCaseLot

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_lot_key = 56 # Integer | CareCaseLot Key

begin
  # Delete CareCaseLot
  api_instance.delete_care_case_lot(vbasoftware_database, care_case_lot_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->delete_care_case_lot: #{e}"
end
```

#### Using the delete_care_case_lot_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key)

```ruby
begin
  # Delete CareCaseLot
  data, status_code, headers = api_instance.delete_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->delete_care_case_lot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_lot_key** | **Integer** | CareCaseLot Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_lot

> <CareCaseLotVBAResponse> get_care_case_lot(vbasoftware_database, care_case_lot_key)

Get CareCaseLot

Gets CareCaseLot

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_lot_key = 56 # Integer | CareCaseLot Key

begin
  # Get CareCaseLot
  result = api_instance.get_care_case_lot(vbasoftware_database, care_case_lot_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->get_care_case_lot: #{e}"
end
```

#### Using the get_care_case_lot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLotVBAResponse>, Integer, Hash)> get_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key)

```ruby
begin
  # Get CareCaseLot
  data, status_code, headers = api_instance.get_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLotVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->get_care_case_lot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_lot_key** | **Integer** | CareCaseLot Key |  |

### Return type

[**CareCaseLotVBAResponse**](CareCaseLotVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_lot

> <CareCaseLotListVBAResponse> list_care_case_lot(vbasoftware_database, opts)

List CareCaseLot

Lists all CareCaseLot

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseLot
  result = api_instance.list_care_case_lot(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->list_care_case_lot: #{e}"
end
```

#### Using the list_care_case_lot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLotListVBAResponse>, Integer, Hash)> list_care_case_lot_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseLot
  data, status_code, headers = api_instance.list_care_case_lot_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLotListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->list_care_case_lot_with_http_info: #{e}"
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

[**CareCaseLotListVBAResponse**](CareCaseLotListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_lot

> <MultiCodeResponseListVBAResponse> update_batch_care_case_lot(vbasoftware_database, care_case_lot)

Create or Update Batch CareCaseLot

Create or Update multiple CareCaseLot at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_lot = [Vba::CareCaseLot.new({care_case_lot_key: 37})] # Array<CareCaseLot> | 

begin
  # Create or Update Batch CareCaseLot
  result = api_instance.update_batch_care_case_lot(vbasoftware_database, care_case_lot)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->update_batch_care_case_lot: #{e}"
end
```

#### Using the update_batch_care_case_lot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_lot_with_http_info(vbasoftware_database, care_case_lot)

```ruby
begin
  # Create or Update Batch CareCaseLot
  data, status_code, headers = api_instance.update_batch_care_case_lot_with_http_info(vbasoftware_database, care_case_lot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->update_batch_care_case_lot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_lot** | [**Array&lt;CareCaseLot&gt;**](CareCaseLot.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_lot

> <CareCaseLotVBAResponse> update_care_case_lot(vbasoftware_database, care_case_lot_key, care_case_lot)

Update CareCaseLot

Updates a specific CareCaseLot.

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

api_instance = Vba::CareCaseLotsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_lot_key = 56 # Integer | CareCaseLot Key
care_case_lot = Vba::CareCaseLot.new({care_case_lot_key: 37}) # CareCaseLot | 

begin
  # Update CareCaseLot
  result = api_instance.update_care_case_lot(vbasoftware_database, care_case_lot_key, care_case_lot)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->update_care_case_lot: #{e}"
end
```

#### Using the update_care_case_lot_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseLotVBAResponse>, Integer, Hash)> update_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, care_case_lot)

```ruby
begin
  # Update CareCaseLot
  data, status_code, headers = api_instance.update_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, care_case_lot)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseLotVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseLotsApi->update_care_case_lot_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_lot_key** | **Integer** | CareCaseLot Key |  |
| **care_case_lot** | [**CareCaseLot**](CareCaseLot.md) |  |  |

### Return type

[**CareCaseLotVBAResponse**](CareCaseLotVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

