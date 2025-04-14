# Vba::DrugCodeUnitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drug_code_unit**](DrugCodeUnitsApi.md#create_drug_code_unit) | **POST** /drug-code-units | Create DrugCodeUnit |
| [**delete_drug_code_unit**](DrugCodeUnitsApi.md#delete_drug_code_unit) | **DELETE** /drug-code-units/{drugCodeUnit} | Delete DrugCodeUnit |
| [**get_drug_code_unit**](DrugCodeUnitsApi.md#get_drug_code_unit) | **GET** /drug-code-units/{drugCodeUnit} | Get DrugCodeUnit |
| [**list_drug_code_unit**](DrugCodeUnitsApi.md#list_drug_code_unit) | **GET** /drug-code-units | List DrugCodeUnit |
| [**update_batch_drug_code_unit**](DrugCodeUnitsApi.md#update_batch_drug_code_unit) | **PUT** /drug-code-units-batch | Create or Update Batch DrugCodeUnit |
| [**update_drug_code_unit**](DrugCodeUnitsApi.md#update_drug_code_unit) | **PUT** /drug-code-units/{drugCodeUnit} | Update DrugCodeUnit |


## create_drug_code_unit

> <DrugCodeUnitVBAResponse> create_drug_code_unit(vbasoftware_database, drug_code_unit)

Create DrugCodeUnit

Creates a new DrugCodeUnit

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_unit = Vba::DrugCodeUnit.new({drug_code_unit: 'drug_code_unit_example'}) # DrugCodeUnit | 

begin
  # Create DrugCodeUnit
  result = api_instance.create_drug_code_unit(vbasoftware_database, drug_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->create_drug_code_unit: #{e}"
end
```

#### Using the create_drug_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeUnitVBAResponse>, Integer, Hash)> create_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)

```ruby
begin
  # Create DrugCodeUnit
  data, status_code, headers = api_instance.create_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->create_drug_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_unit** | [**DrugCodeUnit**](DrugCodeUnit.md) |  |  |

### Return type

[**DrugCodeUnitVBAResponse**](DrugCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drug_code_unit

> delete_drug_code_unit(vbasoftware_database, drug_code_unit)

Delete DrugCodeUnit

Deletes an DrugCodeUnit

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_unit = 'drug_code_unit_example' # String | DrugCode Unit

begin
  # Delete DrugCodeUnit
  api_instance.delete_drug_code_unit(vbasoftware_database, drug_code_unit)
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->delete_drug_code_unit: #{e}"
end
```

#### Using the delete_drug_code_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)

```ruby
begin
  # Delete DrugCodeUnit
  data, status_code, headers = api_instance.delete_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->delete_drug_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_unit** | **String** | DrugCode Unit |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drug_code_unit

> <DrugCodeUnitVBAResponse> get_drug_code_unit(vbasoftware_database, drug_code_unit)

Get DrugCodeUnit

Gets DrugCodeUnit

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_unit = 'drug_code_unit_example' # String | DrugCode Unit

begin
  # Get DrugCodeUnit
  result = api_instance.get_drug_code_unit(vbasoftware_database, drug_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->get_drug_code_unit: #{e}"
end
```

#### Using the get_drug_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeUnitVBAResponse>, Integer, Hash)> get_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)

```ruby
begin
  # Get DrugCodeUnit
  data, status_code, headers = api_instance.get_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->get_drug_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_unit** | **String** | DrugCode Unit |  |

### Return type

[**DrugCodeUnitVBAResponse**](DrugCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drug_code_unit

> <DrugCodeUnitListVBAResponse> list_drug_code_unit(vbasoftware_database, opts)

List DrugCodeUnit

Lists all DrugCodeUnit

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DrugCodeUnit
  result = api_instance.list_drug_code_unit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->list_drug_code_unit: #{e}"
end
```

#### Using the list_drug_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeUnitListVBAResponse>, Integer, Hash)> list_drug_code_unit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DrugCodeUnit
  data, status_code, headers = api_instance.list_drug_code_unit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeUnitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->list_drug_code_unit_with_http_info: #{e}"
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

[**DrugCodeUnitListVBAResponse**](DrugCodeUnitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drug_code_unit

> <MultiCodeResponseListVBAResponse> update_batch_drug_code_unit(vbasoftware_database, drug_code_unit)

Create or Update Batch DrugCodeUnit

Create or Update multiple DrugCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_unit = [Vba::DrugCodeUnit.new({drug_code_unit: 'drug_code_unit_example'})] # Array<DrugCodeUnit> | 

begin
  # Create or Update Batch DrugCodeUnit
  result = api_instance.update_batch_drug_code_unit(vbasoftware_database, drug_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->update_batch_drug_code_unit: #{e}"
end
```

#### Using the update_batch_drug_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)

```ruby
begin
  # Create or Update Batch DrugCodeUnit
  data, status_code, headers = api_instance.update_batch_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->update_batch_drug_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_unit** | [**Array&lt;DrugCodeUnit&gt;**](DrugCodeUnit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drug_code_unit

> <DrugCodeUnitVBAResponse> update_drug_code_unit(vbasoftware_database, drug_code_unit, drug_code_unit2)

Update DrugCodeUnit

Updates a specific DrugCodeUnit.

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

api_instance = Vba::DrugCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_unit = 'drug_code_unit_example' # String | DrugCode Unit
drug_code_unit2 = Vba::DrugCodeUnit.new({drug_code_unit: 'drug_code_unit_example'}) # DrugCodeUnit | 

begin
  # Update DrugCodeUnit
  result = api_instance.update_drug_code_unit(vbasoftware_database, drug_code_unit, drug_code_unit2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->update_drug_code_unit: #{e}"
end
```

#### Using the update_drug_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeUnitVBAResponse>, Integer, Hash)> update_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit, drug_code_unit2)

```ruby
begin
  # Update DrugCodeUnit
  data, status_code, headers = api_instance.update_drug_code_unit_with_http_info(vbasoftware_database, drug_code_unit, drug_code_unit2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodeUnitsApi->update_drug_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_unit** | **String** | DrugCode Unit |  |
| **drug_code_unit2** | [**DrugCodeUnit**](DrugCodeUnit.md) |  |  |

### Return type

[**DrugCodeUnitVBAResponse**](DrugCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

