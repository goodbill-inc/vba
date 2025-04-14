# Vba::InsuranceCarrierTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_insurance_carrier_type**](InsuranceCarrierTypesApi.md#create_insurance_carrier_type) | **POST** /insurance-carrier-types | Create InsuranceCarrierType |
| [**delete_insurance_carrier_type**](InsuranceCarrierTypesApi.md#delete_insurance_carrier_type) | **DELETE** /insurance-carrier-types/{carrierType} | Delete InsuranceCarrierType |
| [**get_insurance_carrier_type**](InsuranceCarrierTypesApi.md#get_insurance_carrier_type) | **GET** /insurance-carrier-types/{carrierType} | Get InsuranceCarrierType |
| [**list_insurance_carrier_type**](InsuranceCarrierTypesApi.md#list_insurance_carrier_type) | **GET** /insurance-carrier-types | List InsuranceCarrierType |
| [**update_batch_insurance_carrier_type**](InsuranceCarrierTypesApi.md#update_batch_insurance_carrier_type) | **PUT** /insurance-carrier-types-batch | Create or Update Batch InsuranceCarrierType |
| [**update_insurance_carrier_type**](InsuranceCarrierTypesApi.md#update_insurance_carrier_type) | **PUT** /insurance-carrier-types/{carrierType} | Update InsuranceCarrierType |


## create_insurance_carrier_type

> <InsuranceCarrierTypeVBAResponse> create_insurance_carrier_type(vbasoftware_database, insurance_carrier_type)

Create InsuranceCarrierType

Creates a new InsuranceCarrierType

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_carrier_type = Vba::InsuranceCarrierType.new({carrier_type: 'carrier_type_example'}) # InsuranceCarrierType | 

begin
  # Create InsuranceCarrierType
  result = api_instance.create_insurance_carrier_type(vbasoftware_database, insurance_carrier_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->create_insurance_carrier_type: #{e}"
end
```

#### Using the create_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierTypeVBAResponse>, Integer, Hash)> create_insurance_carrier_type_with_http_info(vbasoftware_database, insurance_carrier_type)

```ruby
begin
  # Create InsuranceCarrierType
  data, status_code, headers = api_instance.create_insurance_carrier_type_with_http_info(vbasoftware_database, insurance_carrier_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->create_insurance_carrier_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_carrier_type** | [**InsuranceCarrierType**](InsuranceCarrierType.md) |  |  |

### Return type

[**InsuranceCarrierTypeVBAResponse**](InsuranceCarrierTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_insurance_carrier_type

> delete_insurance_carrier_type(vbasoftware_database, carrier_type)

Delete InsuranceCarrierType

Deletes an InsuranceCarrierType

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_type = 'carrier_type_example' # String | Carrier Type

begin
  # Delete InsuranceCarrierType
  api_instance.delete_insurance_carrier_type(vbasoftware_database, carrier_type)
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->delete_insurance_carrier_type: #{e}"
end
```

#### Using the delete_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type)

```ruby
begin
  # Delete InsuranceCarrierType
  data, status_code, headers = api_instance.delete_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->delete_insurance_carrier_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_type** | **String** | Carrier Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_insurance_carrier_type

> <InsuranceCarrierTypeVBAResponse> get_insurance_carrier_type(vbasoftware_database, carrier_type)

Get InsuranceCarrierType

Gets InsuranceCarrierType

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_type = 'carrier_type_example' # String | Carrier Type

begin
  # Get InsuranceCarrierType
  result = api_instance.get_insurance_carrier_type(vbasoftware_database, carrier_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->get_insurance_carrier_type: #{e}"
end
```

#### Using the get_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierTypeVBAResponse>, Integer, Hash)> get_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type)

```ruby
begin
  # Get InsuranceCarrierType
  data, status_code, headers = api_instance.get_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->get_insurance_carrier_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_type** | **String** | Carrier Type |  |

### Return type

[**InsuranceCarrierTypeVBAResponse**](InsuranceCarrierTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_insurance_carrier_type

> <InsuranceCarrierTypeListVBAResponse> list_insurance_carrier_type(vbasoftware_database, opts)

List InsuranceCarrierType

Lists all InsuranceCarrierType

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List InsuranceCarrierType
  result = api_instance.list_insurance_carrier_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->list_insurance_carrier_type: #{e}"
end
```

#### Using the list_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierTypeListVBAResponse>, Integer, Hash)> list_insurance_carrier_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List InsuranceCarrierType
  data, status_code, headers = api_instance.list_insurance_carrier_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->list_insurance_carrier_type_with_http_info: #{e}"
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

[**InsuranceCarrierTypeListVBAResponse**](InsuranceCarrierTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_insurance_carrier_type

> <MultiCodeResponseListVBAResponse> update_batch_insurance_carrier_type(vbasoftware_database, insurance_carrier_type)

Create or Update Batch InsuranceCarrierType

Create or Update multiple InsuranceCarrierType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_carrier_type = [Vba::InsuranceCarrierType.new({carrier_type: 'carrier_type_example'})] # Array<InsuranceCarrierType> | 

begin
  # Create or Update Batch InsuranceCarrierType
  result = api_instance.update_batch_insurance_carrier_type(vbasoftware_database, insurance_carrier_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->update_batch_insurance_carrier_type: #{e}"
end
```

#### Using the update_batch_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_insurance_carrier_type_with_http_info(vbasoftware_database, insurance_carrier_type)

```ruby
begin
  # Create or Update Batch InsuranceCarrierType
  data, status_code, headers = api_instance.update_batch_insurance_carrier_type_with_http_info(vbasoftware_database, insurance_carrier_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->update_batch_insurance_carrier_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_carrier_type** | [**Array&lt;InsuranceCarrierType&gt;**](InsuranceCarrierType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_insurance_carrier_type

> <InsuranceCarrierTypeVBAResponse> update_insurance_carrier_type(vbasoftware_database, carrier_type, insurance_carrier_type)

Update InsuranceCarrierType

Updates a specific InsuranceCarrierType.

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

api_instance = Vba::InsuranceCarrierTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_type = 'carrier_type_example' # String | Carrier Type
insurance_carrier_type = Vba::InsuranceCarrierType.new({carrier_type: 'carrier_type_example'}) # InsuranceCarrierType | 

begin
  # Update InsuranceCarrierType
  result = api_instance.update_insurance_carrier_type(vbasoftware_database, carrier_type, insurance_carrier_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->update_insurance_carrier_type: #{e}"
end
```

#### Using the update_insurance_carrier_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierTypeVBAResponse>, Integer, Hash)> update_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type, insurance_carrier_type)

```ruby
begin
  # Update InsuranceCarrierType
  data, status_code, headers = api_instance.update_insurance_carrier_type_with_http_info(vbasoftware_database, carrier_type, insurance_carrier_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarrierTypesApi->update_insurance_carrier_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_type** | **String** | Carrier Type |  |
| **insurance_carrier_type** | [**InsuranceCarrierType**](InsuranceCarrierType.md) |  |  |

### Return type

[**InsuranceCarrierTypeVBAResponse**](InsuranceCarrierTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

