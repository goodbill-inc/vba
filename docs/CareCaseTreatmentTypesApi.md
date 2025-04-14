# Vba::CareCaseTreatmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#create_care_case_treatment_type) | **POST** /care-case-treatment-types | Create CareCaseTreatmentType |
| [**delete_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#delete_care_case_treatment_type) | **DELETE** /care-case-treatment-types/{treatmentType} | Delete CareCaseTreatmentType |
| [**get_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#get_care_case_treatment_type) | **GET** /care-case-treatment-types/{treatmentType} | Get CareCaseTreatmentType |
| [**list_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#list_care_case_treatment_type) | **GET** /care-case-treatment-types | List CareCaseTreatmentType |
| [**update_batch_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#update_batch_care_case_treatment_type) | **PUT** /care-case-treatment-types-batch | Create or Update Batch CareCaseTreatmentType |
| [**update_care_case_treatment_type**](CareCaseTreatmentTypesApi.md#update_care_case_treatment_type) | **PUT** /care-case-treatment-types/{treatmentType} | Update CareCaseTreatmentType |


## create_care_case_treatment_type

> <CareCaseTreatmentTypeVBAResponse> create_care_case_treatment_type(vbasoftware_database, care_case_treatment_type)

Create CareCaseTreatmentType

Creates a new CareCaseTreatmentType

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_treatment_type = Vba::CareCaseTreatmentType.new({treatment_type: 'treatment_type_example'}) # CareCaseTreatmentType | 

begin
  # Create CareCaseTreatmentType
  result = api_instance.create_care_case_treatment_type(vbasoftware_database, care_case_treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->create_care_case_treatment_type: #{e}"
end
```

#### Using the create_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentTypeVBAResponse>, Integer, Hash)> create_care_case_treatment_type_with_http_info(vbasoftware_database, care_case_treatment_type)

```ruby
begin
  # Create CareCaseTreatmentType
  data, status_code, headers = api_instance.create_care_case_treatment_type_with_http_info(vbasoftware_database, care_case_treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->create_care_case_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_treatment_type** | [**CareCaseTreatmentType**](CareCaseTreatmentType.md) |  |  |

### Return type

[**CareCaseTreatmentTypeVBAResponse**](CareCaseTreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_treatment_type

> delete_care_case_treatment_type(vbasoftware_database, treatment_type)

Delete CareCaseTreatmentType

Deletes an CareCaseTreatmentType

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type

begin
  # Delete CareCaseTreatmentType
  api_instance.delete_care_case_treatment_type(vbasoftware_database, treatment_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->delete_care_case_treatment_type: #{e}"
end
```

#### Using the delete_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Delete CareCaseTreatmentType
  data, status_code, headers = api_instance.delete_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->delete_care_case_treatment_type_with_http_info: #{e}"
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


## get_care_case_treatment_type

> <CareCaseTreatmentTypeVBAResponse> get_care_case_treatment_type(vbasoftware_database, treatment_type)

Get CareCaseTreatmentType

Gets CareCaseTreatmentType

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type

begin
  # Get CareCaseTreatmentType
  result = api_instance.get_care_case_treatment_type(vbasoftware_database, treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->get_care_case_treatment_type: #{e}"
end
```

#### Using the get_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentTypeVBAResponse>, Integer, Hash)> get_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type)

```ruby
begin
  # Get CareCaseTreatmentType
  data, status_code, headers = api_instance.get_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->get_care_case_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | **String** | Treatment Type |  |

### Return type

[**CareCaseTreatmentTypeVBAResponse**](CareCaseTreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_treatment_type

> <CareCaseTreatmentTypeListVBAResponse> list_care_case_treatment_type(vbasoftware_database, opts)

List CareCaseTreatmentType

Lists all CareCaseTreatmentType

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseTreatmentType
  result = api_instance.list_care_case_treatment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->list_care_case_treatment_type: #{e}"
end
```

#### Using the list_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentTypeListVBAResponse>, Integer, Hash)> list_care_case_treatment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseTreatmentType
  data, status_code, headers = api_instance.list_care_case_treatment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->list_care_case_treatment_type_with_http_info: #{e}"
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

[**CareCaseTreatmentTypeListVBAResponse**](CareCaseTreatmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_treatment_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_treatment_type(vbasoftware_database, care_case_treatment_type)

Create or Update Batch CareCaseTreatmentType

Create or Update multiple CareCaseTreatmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_treatment_type = [Vba::CareCaseTreatmentType.new({treatment_type: 'treatment_type_example'})] # Array<CareCaseTreatmentType> | 

begin
  # Create or Update Batch CareCaseTreatmentType
  result = api_instance.update_batch_care_case_treatment_type(vbasoftware_database, care_case_treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->update_batch_care_case_treatment_type: #{e}"
end
```

#### Using the update_batch_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_treatment_type_with_http_info(vbasoftware_database, care_case_treatment_type)

```ruby
begin
  # Create or Update Batch CareCaseTreatmentType
  data, status_code, headers = api_instance.update_batch_care_case_treatment_type_with_http_info(vbasoftware_database, care_case_treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->update_batch_care_case_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_treatment_type** | [**Array&lt;CareCaseTreatmentType&gt;**](CareCaseTreatmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_treatment_type

> <CareCaseTreatmentTypeVBAResponse> update_care_case_treatment_type(vbasoftware_database, treatment_type, care_case_treatment_type)

Update CareCaseTreatmentType

Updates a specific CareCaseTreatmentType.

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

api_instance = Vba::CareCaseTreatmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
treatment_type = 'treatment_type_example' # String | Treatment Type
care_case_treatment_type = Vba::CareCaseTreatmentType.new({treatment_type: 'treatment_type_example'}) # CareCaseTreatmentType | 

begin
  # Update CareCaseTreatmentType
  result = api_instance.update_care_case_treatment_type(vbasoftware_database, treatment_type, care_case_treatment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->update_care_case_treatment_type: #{e}"
end
```

#### Using the update_care_case_treatment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentTypeVBAResponse>, Integer, Hash)> update_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type, care_case_treatment_type)

```ruby
begin
  # Update CareCaseTreatmentType
  data, status_code, headers = api_instance.update_care_case_treatment_type_with_http_info(vbasoftware_database, treatment_type, care_case_treatment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentTypesApi->update_care_case_treatment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **treatment_type** | **String** | Treatment Type |  |
| **care_case_treatment_type** | [**CareCaseTreatmentType**](CareCaseTreatmentType.md) |  |  |

### Return type

[**CareCaseTreatmentTypeVBAResponse**](CareCaseTreatmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

