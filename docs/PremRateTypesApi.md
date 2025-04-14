# Vba::PremRateTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_type**](PremRateTypesApi.md#create_prem_rate_type) | **POST** /prem-rate-types | Create PremRateType |
| [**delete_prem_rate_type**](PremRateTypesApi.md#delete_prem_rate_type) | **DELETE** /prem-rate-types/{rateType} | Delete PremRateType |
| [**get_prem_rate_type**](PremRateTypesApi.md#get_prem_rate_type) | **GET** /prem-rate-types/{rateType} | Get PremRateType |
| [**list_prem_rate_type**](PremRateTypesApi.md#list_prem_rate_type) | **GET** /prem-rate-types | List PremRateType |
| [**update_batch_prem_rate_type**](PremRateTypesApi.md#update_batch_prem_rate_type) | **PUT** /prem-rate-types-batch | Create or Update Batch PremRateType |
| [**update_prem_rate_type**](PremRateTypesApi.md#update_prem_rate_type) | **PUT** /prem-rate-types/{rateType} | Update PremRateType |


## create_prem_rate_type

> <PremRateTypeVBAResponse> create_prem_rate_type(vbasoftware_database, prem_rate_type)

Create PremRateType

Creates a new PremRateType

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_type = Vba::PremRateType.new({rate_type: 'rate_type_example', add_on_type: false, adjustment_type: false, premium_type: false}) # PremRateType | 

begin
  # Create PremRateType
  result = api_instance.create_prem_rate_type(vbasoftware_database, prem_rate_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->create_prem_rate_type: #{e}"
end
```

#### Using the create_prem_rate_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateTypeVBAResponse>, Integer, Hash)> create_prem_rate_type_with_http_info(vbasoftware_database, prem_rate_type)

```ruby
begin
  # Create PremRateType
  data, status_code, headers = api_instance.create_prem_rate_type_with_http_info(vbasoftware_database, prem_rate_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->create_prem_rate_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_type** | [**PremRateType**](PremRateType.md) |  |  |

### Return type

[**PremRateTypeVBAResponse**](PremRateTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_type

> delete_prem_rate_type(vbasoftware_database, rate_type)

Delete PremRateType

Deletes an PremRateType

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_type = 'rate_type_example' # String | Rate Type

begin
  # Delete PremRateType
  api_instance.delete_prem_rate_type(vbasoftware_database, rate_type)
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->delete_prem_rate_type: #{e}"
end
```

#### Using the delete_prem_rate_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_type_with_http_info(vbasoftware_database, rate_type)

```ruby
begin
  # Delete PremRateType
  data, status_code, headers = api_instance.delete_prem_rate_type_with_http_info(vbasoftware_database, rate_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->delete_prem_rate_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_type** | **String** | Rate Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_type

> <PremRateTypeVBAResponse> get_prem_rate_type(vbasoftware_database, rate_type)

Get PremRateType

Gets PremRateType

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_type = 'rate_type_example' # String | Rate Type

begin
  # Get PremRateType
  result = api_instance.get_prem_rate_type(vbasoftware_database, rate_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->get_prem_rate_type: #{e}"
end
```

#### Using the get_prem_rate_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateTypeVBAResponse>, Integer, Hash)> get_prem_rate_type_with_http_info(vbasoftware_database, rate_type)

```ruby
begin
  # Get PremRateType
  data, status_code, headers = api_instance.get_prem_rate_type_with_http_info(vbasoftware_database, rate_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->get_prem_rate_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_type** | **String** | Rate Type |  |

### Return type

[**PremRateTypeVBAResponse**](PremRateTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_type

> <PremRateTypeListVBAResponse> list_prem_rate_type(vbasoftware_database, opts)

List PremRateType

Lists all PremRateType

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateType
  result = api_instance.list_prem_rate_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->list_prem_rate_type: #{e}"
end
```

#### Using the list_prem_rate_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateTypeListVBAResponse>, Integer, Hash)> list_prem_rate_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRateType
  data, status_code, headers = api_instance.list_prem_rate_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->list_prem_rate_type_with_http_info: #{e}"
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

[**PremRateTypeListVBAResponse**](PremRateTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_type

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_type(vbasoftware_database, prem_rate_type)

Create or Update Batch PremRateType

Create or Update multiple PremRateType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_type = [Vba::PremRateType.new({rate_type: 'rate_type_example', add_on_type: false, adjustment_type: false, premium_type: false})] # Array<PremRateType> | 

begin
  # Create or Update Batch PremRateType
  result = api_instance.update_batch_prem_rate_type(vbasoftware_database, prem_rate_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->update_batch_prem_rate_type: #{e}"
end
```

#### Using the update_batch_prem_rate_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_type_with_http_info(vbasoftware_database, prem_rate_type)

```ruby
begin
  # Create or Update Batch PremRateType
  data, status_code, headers = api_instance.update_batch_prem_rate_type_with_http_info(vbasoftware_database, prem_rate_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->update_batch_prem_rate_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_type** | [**Array&lt;PremRateType&gt;**](PremRateType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_type

> <PremRateTypeVBAResponse> update_prem_rate_type(vbasoftware_database, rate_type, prem_rate_type)

Update PremRateType

Updates a specific PremRateType.

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

api_instance = Vba::PremRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_type = 'rate_type_example' # String | Rate Type
prem_rate_type = Vba::PremRateType.new({rate_type: 'rate_type_example', add_on_type: false, adjustment_type: false, premium_type: false}) # PremRateType | 

begin
  # Update PremRateType
  result = api_instance.update_prem_rate_type(vbasoftware_database, rate_type, prem_rate_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->update_prem_rate_type: #{e}"
end
```

#### Using the update_prem_rate_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateTypeVBAResponse>, Integer, Hash)> update_prem_rate_type_with_http_info(vbasoftware_database, rate_type, prem_rate_type)

```ruby
begin
  # Update PremRateType
  data, status_code, headers = api_instance.update_prem_rate_type_with_http_info(vbasoftware_database, rate_type, prem_rate_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremRateTypesApi->update_prem_rate_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_type** | **String** | Rate Type |  |
| **prem_rate_type** | [**PremRateType**](PremRateType.md) |  |  |

### Return type

[**PremRateTypeVBAResponse**](PremRateTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

