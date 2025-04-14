# Vba::CareUnitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_unit**](CareUnitsApi.md#create_care_unit) | **POST** /care-units | Create CareUnit |
| [**delete_care_unit**](CareUnitsApi.md#delete_care_unit) | **DELETE** /care-units/{careUnitKey} | Delete CareUnit |
| [**get_care_unit**](CareUnitsApi.md#get_care_unit) | **GET** /care-units/{careUnitKey} | Get CareUnit |
| [**list_care_unit**](CareUnitsApi.md#list_care_unit) | **GET** /care-units | List CareUnit |
| [**update_batch_care_unit**](CareUnitsApi.md#update_batch_care_unit) | **PUT** /care-units-batch | Create or Update Batch CareUnit |
| [**update_care_unit**](CareUnitsApi.md#update_care_unit) | **PUT** /care-units/{careUnitKey} | Update CareUnit |


## create_care_unit

> <CareUnitVBAResponse> create_care_unit(vbasoftware_database, care_unit)

Create CareUnit

Creates a new CareUnit

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_unit = Vba::CareUnit.new({care_unit_key: 37}) # CareUnit | 

begin
  # Create CareUnit
  result = api_instance.create_care_unit(vbasoftware_database, care_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->create_care_unit: #{e}"
end
```

#### Using the create_care_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareUnitVBAResponse>, Integer, Hash)> create_care_unit_with_http_info(vbasoftware_database, care_unit)

```ruby
begin
  # Create CareUnit
  data, status_code, headers = api_instance.create_care_unit_with_http_info(vbasoftware_database, care_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->create_care_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_unit** | [**CareUnit**](CareUnit.md) |  |  |

### Return type

[**CareUnitVBAResponse**](CareUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_unit

> delete_care_unit(vbasoftware_database, care_unit_key)

Delete CareUnit

Deletes an CareUnit

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_unit_key = 56 # Integer | CareUnit Key

begin
  # Delete CareUnit
  api_instance.delete_care_unit(vbasoftware_database, care_unit_key)
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->delete_care_unit: #{e}"
end
```

#### Using the delete_care_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_unit_with_http_info(vbasoftware_database, care_unit_key)

```ruby
begin
  # Delete CareUnit
  data, status_code, headers = api_instance.delete_care_unit_with_http_info(vbasoftware_database, care_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->delete_care_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_unit_key** | **Integer** | CareUnit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_unit

> <CareUnitVBAResponse> get_care_unit(vbasoftware_database, care_unit_key)

Get CareUnit

Gets CareUnit

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_unit_key = 56 # Integer | CareUnit Key

begin
  # Get CareUnit
  result = api_instance.get_care_unit(vbasoftware_database, care_unit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->get_care_unit: #{e}"
end
```

#### Using the get_care_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareUnitVBAResponse>, Integer, Hash)> get_care_unit_with_http_info(vbasoftware_database, care_unit_key)

```ruby
begin
  # Get CareUnit
  data, status_code, headers = api_instance.get_care_unit_with_http_info(vbasoftware_database, care_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->get_care_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_unit_key** | **Integer** | CareUnit Key |  |

### Return type

[**CareUnitVBAResponse**](CareUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_unit

> <CareUnitListVBAResponse> list_care_unit(vbasoftware_database, opts)

List CareUnit

Lists all CareUnit

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareUnit
  result = api_instance.list_care_unit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->list_care_unit: #{e}"
end
```

#### Using the list_care_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareUnitListVBAResponse>, Integer, Hash)> list_care_unit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareUnit
  data, status_code, headers = api_instance.list_care_unit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareUnitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->list_care_unit_with_http_info: #{e}"
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

[**CareUnitListVBAResponse**](CareUnitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_unit

> <MultiCodeResponseListVBAResponse> update_batch_care_unit(vbasoftware_database, care_unit)

Create or Update Batch CareUnit

Create or Update multiple CareUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_unit = [Vba::CareUnit.new({care_unit_key: 37})] # Array<CareUnit> | 

begin
  # Create or Update Batch CareUnit
  result = api_instance.update_batch_care_unit(vbasoftware_database, care_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->update_batch_care_unit: #{e}"
end
```

#### Using the update_batch_care_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_unit_with_http_info(vbasoftware_database, care_unit)

```ruby
begin
  # Create or Update Batch CareUnit
  data, status_code, headers = api_instance.update_batch_care_unit_with_http_info(vbasoftware_database, care_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->update_batch_care_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_unit** | [**Array&lt;CareUnit&gt;**](CareUnit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_unit

> <CareUnitVBAResponse> update_care_unit(vbasoftware_database, care_unit_key, care_unit)

Update CareUnit

Updates a specific CareUnit.

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

api_instance = Vba::CareUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_unit_key = 56 # Integer | CareUnit Key
care_unit = Vba::CareUnit.new({care_unit_key: 37}) # CareUnit | 

begin
  # Update CareUnit
  result = api_instance.update_care_unit(vbasoftware_database, care_unit_key, care_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->update_care_unit: #{e}"
end
```

#### Using the update_care_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareUnitVBAResponse>, Integer, Hash)> update_care_unit_with_http_info(vbasoftware_database, care_unit_key, care_unit)

```ruby
begin
  # Update CareUnit
  data, status_code, headers = api_instance.update_care_unit_with_http_info(vbasoftware_database, care_unit_key, care_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareUnitsApi->update_care_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_unit_key** | **Integer** | CareUnit Key |  |
| **care_unit** | [**CareUnit**](CareUnit.md) |  |  |

### Return type

[**CareUnitVBAResponse**](CareUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

