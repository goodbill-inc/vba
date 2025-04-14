# Vba::CapitationAdjustmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#create_capitation_adjustment_type) | **POST** /capitation-adjustment-types | Create CapitationAdjustmentType |
| [**delete_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#delete_capitation_adjustment_type) | **DELETE** /capitation-adjustment-types/{capitationAdjustmentType} | Delete CapitationAdjustmentType |
| [**get_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#get_capitation_adjustment_type) | **GET** /capitation-adjustment-types/{capitationAdjustmentType} | Get CapitationAdjustmentType |
| [**list_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#list_capitation_adjustment_type) | **GET** /capitation-adjustment-types | List CapitationAdjustmentType |
| [**update_batch_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#update_batch_capitation_adjustment_type) | **PUT** /capitation-adjustment-types-batch | Create or Update Batch CapitationAdjustmentType |
| [**update_capitation_adjustment_type**](CapitationAdjustmentTypesApi.md#update_capitation_adjustment_type) | **PUT** /capitation-adjustment-types/{capitationAdjustmentType} | Update CapitationAdjustmentType |


## create_capitation_adjustment_type

> <CapitationAdjustmentTypeVBAResponse> create_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)

Create CapitationAdjustmentType

Creates a new CapitationAdjustmentType

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_type = Vba::CapitationAdjustmentType.new({capitation_adjustment_type: 'capitation_adjustment_type_example'}) # CapitationAdjustmentType | 

begin
  # Create CapitationAdjustmentType
  result = api_instance.create_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->create_capitation_adjustment_type: #{e}"
end
```

#### Using the create_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentTypeVBAResponse>, Integer, Hash)> create_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)

```ruby
begin
  # Create CapitationAdjustmentType
  data, status_code, headers = api_instance.create_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->create_capitation_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_type** | [**CapitationAdjustmentType**](CapitationAdjustmentType.md) |  |  |

### Return type

[**CapitationAdjustmentTypeVBAResponse**](CapitationAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_adjustment_type

> delete_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)

Delete CapitationAdjustmentType

Deletes an CapitationAdjustmentType

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_type = 'capitation_adjustment_type_example' # String | Capitation Adjustment Type

begin
  # Delete CapitationAdjustmentType
  api_instance.delete_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->delete_capitation_adjustment_type: #{e}"
end
```

#### Using the delete_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)

```ruby
begin
  # Delete CapitationAdjustmentType
  data, status_code, headers = api_instance.delete_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->delete_capitation_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_type** | **String** | Capitation Adjustment Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_adjustment_type

> <CapitationAdjustmentTypeVBAResponse> get_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)

Get CapitationAdjustmentType

Gets CapitationAdjustmentType

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_type = 'capitation_adjustment_type_example' # String | Capitation Adjustment Type

begin
  # Get CapitationAdjustmentType
  result = api_instance.get_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->get_capitation_adjustment_type: #{e}"
end
```

#### Using the get_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentTypeVBAResponse>, Integer, Hash)> get_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)

```ruby
begin
  # Get CapitationAdjustmentType
  data, status_code, headers = api_instance.get_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->get_capitation_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_type** | **String** | Capitation Adjustment Type |  |

### Return type

[**CapitationAdjustmentTypeVBAResponse**](CapitationAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_adjustment_type

> <CapitationAdjustmentTypeListVBAResponse> list_capitation_adjustment_type(vbasoftware_database, opts)

List CapitationAdjustmentType

Lists all CapitationAdjustmentType

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationAdjustmentType
  result = api_instance.list_capitation_adjustment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->list_capitation_adjustment_type: #{e}"
end
```

#### Using the list_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentTypeListVBAResponse>, Integer, Hash)> list_capitation_adjustment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationAdjustmentType
  data, status_code, headers = api_instance.list_capitation_adjustment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->list_capitation_adjustment_type_with_http_info: #{e}"
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

[**CapitationAdjustmentTypeListVBAResponse**](CapitationAdjustmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_adjustment_type

> <MultiCodeResponseListVBAResponse> update_batch_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)

Create or Update Batch CapitationAdjustmentType

Create or Update multiple CapitationAdjustmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_type = [Vba::CapitationAdjustmentType.new({capitation_adjustment_type: 'capitation_adjustment_type_example'})] # Array<CapitationAdjustmentType> | 

begin
  # Create or Update Batch CapitationAdjustmentType
  result = api_instance.update_batch_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->update_batch_capitation_adjustment_type: #{e}"
end
```

#### Using the update_batch_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)

```ruby
begin
  # Create or Update Batch CapitationAdjustmentType
  data, status_code, headers = api_instance.update_batch_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->update_batch_capitation_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_type** | [**Array&lt;CapitationAdjustmentType&gt;**](CapitationAdjustmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_adjustment_type

> <CapitationAdjustmentTypeVBAResponse> update_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type, capitation_adjustment_type2)

Update CapitationAdjustmentType

Updates a specific CapitationAdjustmentType.

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

api_instance = Vba::CapitationAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_type = 'capitation_adjustment_type_example' # String | Capitation Adjustment Type
capitation_adjustment_type2 = Vba::CapitationAdjustmentType.new({capitation_adjustment_type: 'capitation_adjustment_type_example'}) # CapitationAdjustmentType | 

begin
  # Update CapitationAdjustmentType
  result = api_instance.update_capitation_adjustment_type(vbasoftware_database, capitation_adjustment_type, capitation_adjustment_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->update_capitation_adjustment_type: #{e}"
end
```

#### Using the update_capitation_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentTypeVBAResponse>, Integer, Hash)> update_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type, capitation_adjustment_type2)

```ruby
begin
  # Update CapitationAdjustmentType
  data, status_code, headers = api_instance.update_capitation_adjustment_type_with_http_info(vbasoftware_database, capitation_adjustment_type, capitation_adjustment_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentTypesApi->update_capitation_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_type** | **String** | Capitation Adjustment Type |  |
| **capitation_adjustment_type2** | [**CapitationAdjustmentType**](CapitationAdjustmentType.md) |  |  |

### Return type

[**CapitationAdjustmentTypeVBAResponse**](CapitationAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

