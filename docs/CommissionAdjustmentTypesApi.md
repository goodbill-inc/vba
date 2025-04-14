# Vba::CommissionAdjustmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#create_commission_adjustment_type) | **POST** /commission-adjustment-types | Create CommissionAdjustmentType |
| [**delete_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#delete_commission_adjustment_type) | **DELETE** /commission-adjustment-types/{commAdjType} | Delete CommissionAdjustmentType |
| [**get_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#get_commission_adjustment_type) | **GET** /commission-adjustment-types/{commAdjType} | Get CommissionAdjustmentType |
| [**list_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#list_commission_adjustment_type) | **GET** /commission-adjustment-types | List CommissionAdjustmentType |
| [**update_batch_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#update_batch_commission_adjustment_type) | **PUT** /commission-adjustment-types-batch | Create or Update Batch CommissionAdjustmentType |
| [**update_commission_adjustment_type**](CommissionAdjustmentTypesApi.md#update_commission_adjustment_type) | **PUT** /commission-adjustment-types/{commAdjType} | Update CommissionAdjustmentType |


## create_commission_adjustment_type

> <CommissionAdjustmentTypeVBAResponse> create_commission_adjustment_type(vbasoftware_database, commission_adjustment_type)

Create CommissionAdjustmentType

Creates a new CommissionAdjustmentType

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_adjustment_type = Vba::CommissionAdjustmentType.new({commission_adjustment_type: 'commission_adjustment_type_example'}) # CommissionAdjustmentType | 

begin
  # Create CommissionAdjustmentType
  result = api_instance.create_commission_adjustment_type(vbasoftware_database, commission_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->create_commission_adjustment_type: #{e}"
end
```

#### Using the create_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentTypeVBAResponse>, Integer, Hash)> create_commission_adjustment_type_with_http_info(vbasoftware_database, commission_adjustment_type)

```ruby
begin
  # Create CommissionAdjustmentType
  data, status_code, headers = api_instance.create_commission_adjustment_type_with_http_info(vbasoftware_database, commission_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->create_commission_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_adjustment_type** | [**CommissionAdjustmentType**](CommissionAdjustmentType.md) |  |  |

### Return type

[**CommissionAdjustmentTypeVBAResponse**](CommissionAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_adjustment_type

> delete_commission_adjustment_type(vbasoftware_database, comm_adj_type)

Delete CommissionAdjustmentType

Deletes an CommissionAdjustmentType

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_type = 'comm_adj_type_example' # String | Commission Adjustment Type

begin
  # Delete CommissionAdjustmentType
  api_instance.delete_commission_adjustment_type(vbasoftware_database, comm_adj_type)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->delete_commission_adjustment_type: #{e}"
end
```

#### Using the delete_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type)

```ruby
begin
  # Delete CommissionAdjustmentType
  data, status_code, headers = api_instance.delete_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->delete_commission_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_type** | **String** | Commission Adjustment Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_adjustment_type

> <CommissionAdjustmentTypeVBAResponse> get_commission_adjustment_type(vbasoftware_database, comm_adj_type)

Get CommissionAdjustmentType

Gets CommissionAdjustmentType

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_type = 'comm_adj_type_example' # String | Commission Adjustment Type

begin
  # Get CommissionAdjustmentType
  result = api_instance.get_commission_adjustment_type(vbasoftware_database, comm_adj_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->get_commission_adjustment_type: #{e}"
end
```

#### Using the get_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentTypeVBAResponse>, Integer, Hash)> get_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type)

```ruby
begin
  # Get CommissionAdjustmentType
  data, status_code, headers = api_instance.get_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->get_commission_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_type** | **String** | Commission Adjustment Type |  |

### Return type

[**CommissionAdjustmentTypeVBAResponse**](CommissionAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_adjustment_type

> <CommissionAdjustmentTypeListVBAResponse> list_commission_adjustment_type(vbasoftware_database, opts)

List CommissionAdjustmentType

Lists all CommissionAdjustmentType

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAdjustmentType
  result = api_instance.list_commission_adjustment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->list_commission_adjustment_type: #{e}"
end
```

#### Using the list_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentTypeListVBAResponse>, Integer, Hash)> list_commission_adjustment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionAdjustmentType
  data, status_code, headers = api_instance.list_commission_adjustment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->list_commission_adjustment_type_with_http_info: #{e}"
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

[**CommissionAdjustmentTypeListVBAResponse**](CommissionAdjustmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_adjustment_type

> <MultiCodeResponseListVBAResponse> update_batch_commission_adjustment_type(vbasoftware_database, commission_adjustment_type)

Create or Update Batch CommissionAdjustmentType

Create or Update multiple CommissionAdjustmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_adjustment_type = [Vba::CommissionAdjustmentType.new({commission_adjustment_type: 'commission_adjustment_type_example'})] # Array<CommissionAdjustmentType> | 

begin
  # Create or Update Batch CommissionAdjustmentType
  result = api_instance.update_batch_commission_adjustment_type(vbasoftware_database, commission_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->update_batch_commission_adjustment_type: #{e}"
end
```

#### Using the update_batch_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_adjustment_type_with_http_info(vbasoftware_database, commission_adjustment_type)

```ruby
begin
  # Create or Update Batch CommissionAdjustmentType
  data, status_code, headers = api_instance.update_batch_commission_adjustment_type_with_http_info(vbasoftware_database, commission_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->update_batch_commission_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_adjustment_type** | [**Array&lt;CommissionAdjustmentType&gt;**](CommissionAdjustmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_adjustment_type

> <CommissionAdjustmentTypeVBAResponse> update_commission_adjustment_type(vbasoftware_database, comm_adj_type, commission_adjustment_type)

Update CommissionAdjustmentType

Updates a specific CommissionAdjustmentType.

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

api_instance = Vba::CommissionAdjustmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_type = 'comm_adj_type_example' # String | Commission Adjustment Type
commission_adjustment_type = Vba::CommissionAdjustmentType.new({commission_adjustment_type: 'commission_adjustment_type_example'}) # CommissionAdjustmentType | 

begin
  # Update CommissionAdjustmentType
  result = api_instance.update_commission_adjustment_type(vbasoftware_database, comm_adj_type, commission_adjustment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->update_commission_adjustment_type: #{e}"
end
```

#### Using the update_commission_adjustment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentTypeVBAResponse>, Integer, Hash)> update_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type, commission_adjustment_type)

```ruby
begin
  # Update CommissionAdjustmentType
  data, status_code, headers = api_instance.update_commission_adjustment_type_with_http_info(vbasoftware_database, comm_adj_type, commission_adjustment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentTypesApi->update_commission_adjustment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_type** | **String** | Commission Adjustment Type |  |
| **commission_adjustment_type** | [**CommissionAdjustmentType**](CommissionAdjustmentType.md) |  |  |

### Return type

[**CommissionAdjustmentTypeVBAResponse**](CommissionAdjustmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

