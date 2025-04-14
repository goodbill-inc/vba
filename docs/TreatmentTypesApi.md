# Vba::TreatmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_treatment_type**](TreatmentTypesApi.md#create_treatment_type) | **POST** /treatment-types | Create TreatmentType |
| [**delete_treatment_type**](TreatmentTypesApi.md#delete_treatment_type) | **DELETE** /treatment-types/{treatmentType} | Delete TreatmentType |
| [**get_treatment_type**](TreatmentTypesApi.md#get_treatment_type) | **GET** /treatment-types/{treatmentType} | Get TreatmentType |
| [**list_treatment_type**](TreatmentTypesApi.md#list_treatment_type) | **GET** /treatment-types | List TreatmentType |
| [**update_batch_treatment_type**](TreatmentTypesApi.md#update_batch_treatment_type) | **PUT** /treatment-types-batch | Create or Update Batch TreatmentType |
| [**update_treatment_type**](TreatmentTypesApi.md#update_treatment_type) | **PUT** /treatment-types/{treatmentType} | Update TreatmentType |


## create_treatment_type

> <TreatmentTypeVBAResponse> create_treatment_type(vbasoftware_database, treatment_type)

Create TreatmentType

Creates a new TreatmentType

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = Vba::TreatmentType.new({treatment_type: 'treatment_type_example'}) # TreatmentType | 

begin
  # Create TreatmentType
  result = api_instance.create_treatment_type(vbasoftware_database, treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->create_treatment_type: #{e}"
end
```

#### Using the create_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreatmentTypeVBAResponse>, Integer, Hash)> create_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Create TreatmentType
  data, status_code, headers = api_instance.create_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->create_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | [**TreatmentType**](TreatmentType.md) |  |  |

### Return type

[**TreatmentTypeVBAResponse**](TreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_treatment_type

> delete_treatment_type(vbasoftware_database, treatment_type)

Delete TreatmentType

Deletes an TreatmentType

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type

begin
  # Delete TreatmentType
  api_instance.delete_treatment_type(vbasoftware_database, treatment_type)
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->delete_treatment_type: #{e}"
end
```

#### Using the delete_treatment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Delete TreatmentType
  data, status_code, headers = api_instance.delete_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->delete_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | **String** | Treatment Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_treatment_type

> <TreatmentTypeVBAResponse> get_treatment_type(vbasoftware_database, treatment_type)

Get TreatmentType

Gets TreatmentType

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type

begin
  # Get TreatmentType
  result = api_instance.get_treatment_type(vbasoftware_database, treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->get_treatment_type: #{e}"
end
```

#### Using the get_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreatmentTypeVBAResponse>, Integer, Hash)> get_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Get TreatmentType
  data, status_code, headers = api_instance.get_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->get_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | **String** | Treatment Type |  |

### Return type

[**TreatmentTypeVBAResponse**](TreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_treatment_type

> <TreatmentTypeListVBAResponse> list_treatment_type(vbasoftware_database, opts)

List TreatmentType

Lists all TreatmentType

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List TreatmentType
  result = api_instance.list_treatment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->list_treatment_type: #{e}"
end
```

#### Using the list_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreatmentTypeListVBAResponse>, Integer, Hash)> list_treatment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List TreatmentType
  data, status_code, headers = api_instance.list_treatment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreatmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->list_treatment_type_with_http_info: #{e}"
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

[**TreatmentTypeListVBAResponse**](TreatmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_treatment_type

> <MultiCodeResponseListVBAResponse> update_batch_treatment_type(vbasoftware_database, treatment_type)

Create or Update Batch TreatmentType

Create or Update multiple TreatmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = [Vba::TreatmentType.new({treatment_type: 'treatment_type_example'})] # Array<TreatmentType> | 

begin
  # Create or Update Batch TreatmentType
  result = api_instance.update_batch_treatment_type(vbasoftware_database, treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->update_batch_treatment_type: #{e}"
end
```

#### Using the update_batch_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Create or Update Batch TreatmentType
  data, status_code, headers = api_instance.update_batch_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->update_batch_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | [**Array&lt;TreatmentType&gt;**](TreatmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_treatment_type

> <TreatmentTypeVBAResponse> update_treatment_type(vbasoftware_database, treatment_type, treatment_type2)

Update TreatmentType

Updates a specific TreatmentType.

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

api_instance = Vba::TreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type
treatment_type2 = Vba::TreatmentType.new({treatment_type: 'treatment_type_example'}) # TreatmentType | 

begin
  # Update TreatmentType
  result = api_instance.update_treatment_type(vbasoftware_database, treatment_type, treatment_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->update_treatment_type: #{e}"
end
```

#### Using the update_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreatmentTypeVBAResponse>, Integer, Hash)> update_treatment_type_with_http_info(vbasoftware_database, treatment_type, treatment_type2)

```ruby
begin
  # Update TreatmentType
  data, status_code, headers = api_instance.update_treatment_type_with_http_info(vbasoftware_database, treatment_type, treatment_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TreatmentTypesApi->update_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | **String** | Treatment Type |  |
| **treatment_type2** | [**TreatmentType**](TreatmentType.md) |  |  |

### Return type

[**TreatmentTypeVBAResponse**](TreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

