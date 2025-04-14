# Vba::CareCaseClinicalFactCategoryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#create_care_case_clinical_fact_category_type) | **POST** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types | Create CareCaseClinicalFactCategoryType |
| [**delete_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#delete_care_case_clinical_fact_category_type) | **DELETE** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types/{careCaseClinicalFactCategoryType} | Delete CareCaseClinicalFactCategoryType |
| [**get_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#get_care_case_clinical_fact_category_type) | **GET** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types/{careCaseClinicalFactCategoryType} | Get CareCaseClinicalFactCategoryType |
| [**list_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#list_care_case_clinical_fact_category_type) | **GET** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types | List CareCaseClinicalFactCategoryType |
| [**update_batch_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#update_batch_care_case_clinical_fact_category_type) | **PUT** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types-batch | Create or Update Batch CareCaseClinicalFactCategoryType |
| [**update_care_case_clinical_fact_category_type**](CareCaseClinicalFactCategoryTypesApi.md#update_care_case_clinical_fact_category_type) | **PUT** /care-case-clinical-fact-categories/{careCaseClinicalFactCategory}/types/{careCaseClinicalFactCategoryType} | Update CareCaseClinicalFactCategoryType |


## create_care_case_clinical_fact_category_type

> <CareCaseClinicalFactCategoryTypeVBAResponse> create_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

Create CareCaseClinicalFactCategoryType

Creates a new CareCaseClinicalFactCategoryType

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
care_case_clinical_fact_category_type = Vba::CareCaseClinicalFactCategoryType.new({care_case_clinical_fact_category_type1: 'care_case_clinical_fact_category_type1_example'}) # CareCaseClinicalFactCategoryType | 

begin
  # Create CareCaseClinicalFactCategoryType
  result = api_instance.create_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->create_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the create_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryTypeVBAResponse>, Integer, Hash)> create_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

```ruby
begin
  # Create CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.create_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->create_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **care_case_clinical_fact_category_type** | [**CareCaseClinicalFactCategoryType**](CareCaseClinicalFactCategoryType.md) |  |  |

### Return type

[**CareCaseClinicalFactCategoryTypeVBAResponse**](CareCaseClinicalFactCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_clinical_fact_category_type

> delete_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

Delete CareCaseClinicalFactCategoryType

Deletes an CareCaseClinicalFactCategoryType

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
care_case_clinical_fact_category_type = 'care_case_clinical_fact_category_type_example' # String | CareCaseClinicalFactCategoryType1

begin
  # Delete CareCaseClinicalFactCategoryType
  api_instance.delete_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->delete_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the delete_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

```ruby
begin
  # Delete CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.delete_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->delete_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **care_case_clinical_fact_category_type** | **String** | CareCaseClinicalFactCategoryType1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_clinical_fact_category_type

> <CareCaseClinicalFactCategoryTypeVBAResponse> get_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

Get CareCaseClinicalFactCategoryType

Gets CareCaseClinicalFactCategoryType

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
care_case_clinical_fact_category_type = 'care_case_clinical_fact_category_type_example' # String | CareCaseClinicalFactCategoryType1

begin
  # Get CareCaseClinicalFactCategoryType
  result = api_instance.get_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->get_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the get_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryTypeVBAResponse>, Integer, Hash)> get_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

```ruby
begin
  # Get CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.get_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->get_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **care_case_clinical_fact_category_type** | **String** | CareCaseClinicalFactCategoryType1 |  |

### Return type

[**CareCaseClinicalFactCategoryTypeVBAResponse**](CareCaseClinicalFactCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_clinical_fact_category_type

> <CareCaseClinicalFactCategoryTypeListVBAResponse> list_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, opts)

List CareCaseClinicalFactCategoryType

Lists all CareCaseClinicalFactCategoryType for the given careCaseClinicalFactCategory

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseClinicalFactCategoryType
  result = api_instance.list_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->list_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the list_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryTypeListVBAResponse>, Integer, Hash)> list_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, opts)

```ruby
begin
  # List CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.list_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->list_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseClinicalFactCategoryTypeListVBAResponse**](CareCaseClinicalFactCategoryTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_clinical_fact_category_type

> <MultiCodeResponseListVBAResponse> update_batch_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

Create or Update Batch CareCaseClinicalFactCategoryType

Create or Update multiple CareCaseClinicalFactCategoryType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
care_case_clinical_fact_category_type = [Vba::CareCaseClinicalFactCategoryType.new({care_case_clinical_fact_category_type1: 'care_case_clinical_fact_category_type1_example'})] # Array<CareCaseClinicalFactCategoryType> | 

begin
  # Create or Update Batch CareCaseClinicalFactCategoryType
  result = api_instance.update_batch_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->update_batch_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the update_batch_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)

```ruby
begin
  # Create or Update Batch CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.update_batch_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->update_batch_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **care_case_clinical_fact_category_type** | [**Array&lt;CareCaseClinicalFactCategoryType&gt;**](CareCaseClinicalFactCategoryType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_clinical_fact_category_type

> <CareCaseClinicalFactCategoryTypeVBAResponse> update_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type, care_case_clinical_fact_category_type2)

Update CareCaseClinicalFactCategoryType

Updates a specific CareCaseClinicalFactCategoryType.

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

api_instance = Vba::CareCaseClinicalFactCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_category = 'care_case_clinical_fact_category_example' # String | CareCaseClinicalFactCategory
care_case_clinical_fact_category_type = 'care_case_clinical_fact_category_type_example' # String | CareCaseClinicalFactCategoryType1
care_case_clinical_fact_category_type2 = Vba::CareCaseClinicalFactCategoryType.new({care_case_clinical_fact_category_type1: 'care_case_clinical_fact_category_type1_example'}) # CareCaseClinicalFactCategoryType | 

begin
  # Update CareCaseClinicalFactCategoryType
  result = api_instance.update_care_case_clinical_fact_category_type(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type, care_case_clinical_fact_category_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->update_care_case_clinical_fact_category_type: #{e}"
end
```

#### Using the update_care_case_clinical_fact_category_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactCategoryTypeVBAResponse>, Integer, Hash)> update_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type, care_case_clinical_fact_category_type2)

```ruby
begin
  # Update CareCaseClinicalFactCategoryType
  data, status_code, headers = api_instance.update_care_case_clinical_fact_category_type_with_http_info(vbasoftware_database, care_case_clinical_fact_category, care_case_clinical_fact_category_type, care_case_clinical_fact_category_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactCategoryTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactCategoryTypesApi->update_care_case_clinical_fact_category_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_category** | **String** | CareCaseClinicalFactCategory |  |
| **care_case_clinical_fact_category_type** | **String** | CareCaseClinicalFactCategoryType1 |  |
| **care_case_clinical_fact_category_type2** | [**CareCaseClinicalFactCategoryType**](CareCaseClinicalFactCategoryType.md) |  |  |

### Return type

[**CareCaseClinicalFactCategoryTypeVBAResponse**](CareCaseClinicalFactCategoryTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

