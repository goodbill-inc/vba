# Vba::CommissionAgencyTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_agency_type**](CommissionAgencyTypesApi.md#create_commission_agency_type) | **POST** /commission-agency-types | Create CommissionAgencyType |
| [**delete_commission_agency_type**](CommissionAgencyTypesApi.md#delete_commission_agency_type) | **DELETE** /commission-agency-types/{agencyType} | Delete CommissionAgencyType |
| [**get_commission_agency_type**](CommissionAgencyTypesApi.md#get_commission_agency_type) | **GET** /commission-agency-types/{agencyType} | Get CommissionAgencyType |
| [**list_commission_agency_type**](CommissionAgencyTypesApi.md#list_commission_agency_type) | **GET** /commission-agency-types | List CommissionAgencyType |
| [**update_batch_commission_agency_type**](CommissionAgencyTypesApi.md#update_batch_commission_agency_type) | **PUT** /commission-agency-types-batch | Create or Update Batch CommissionAgencyType |
| [**update_commission_agency_type**](CommissionAgencyTypesApi.md#update_commission_agency_type) | **PUT** /commission-agency-types/{agencyType} | Update CommissionAgencyType |


## create_commission_agency_type

> <CommissionAgencyTypeVBAResponse> create_commission_agency_type(vbasoftware_database, commission_agency_type)

Create CommissionAgencyType

Creates a new CommissionAgencyType

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_type = Vba::CommissionAgencyType.new({agency_type: 'agency_type_example'}) # CommissionAgencyType | 

begin
  # Create CommissionAgencyType
  result = api_instance.create_commission_agency_type(vbasoftware_database, commission_agency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->create_commission_agency_type: #{e}"
end
```

#### Using the create_commission_agency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyTypeVBAResponse>, Integer, Hash)> create_commission_agency_type_with_http_info(vbasoftware_database, commission_agency_type)

```ruby
begin
  # Create CommissionAgencyType
  data, status_code, headers = api_instance.create_commission_agency_type_with_http_info(vbasoftware_database, commission_agency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->create_commission_agency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_type** | [**CommissionAgencyType**](CommissionAgencyType.md) |  |  |

### Return type

[**CommissionAgencyTypeVBAResponse**](CommissionAgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_agency_type

> delete_commission_agency_type(vbasoftware_database, agency_type)

Delete CommissionAgencyType

Deletes an CommissionAgencyType

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
agency_type = 'agency_type_example' # String | Agency Type

begin
  # Delete CommissionAgencyType
  api_instance.delete_commission_agency_type(vbasoftware_database, agency_type)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->delete_commission_agency_type: #{e}"
end
```

#### Using the delete_commission_agency_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_agency_type_with_http_info(vbasoftware_database, agency_type)

```ruby
begin
  # Delete CommissionAgencyType
  data, status_code, headers = api_instance.delete_commission_agency_type_with_http_info(vbasoftware_database, agency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->delete_commission_agency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **agency_type** | **String** | Agency Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_agency_type

> <CommissionAgencyTypeVBAResponse> get_commission_agency_type(vbasoftware_database, agency_type)

Get CommissionAgencyType

Gets CommissionAgencyType

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
agency_type = 'agency_type_example' # String | Agency Type

begin
  # Get CommissionAgencyType
  result = api_instance.get_commission_agency_type(vbasoftware_database, agency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->get_commission_agency_type: #{e}"
end
```

#### Using the get_commission_agency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyTypeVBAResponse>, Integer, Hash)> get_commission_agency_type_with_http_info(vbasoftware_database, agency_type)

```ruby
begin
  # Get CommissionAgencyType
  data, status_code, headers = api_instance.get_commission_agency_type_with_http_info(vbasoftware_database, agency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->get_commission_agency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **agency_type** | **String** | Agency Type |  |

### Return type

[**CommissionAgencyTypeVBAResponse**](CommissionAgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_agency_type

> <CommissionAgencyTypeListVBAResponse> list_commission_agency_type(vbasoftware_database, opts)

List CommissionAgencyType

Lists all CommissionAgencyType

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAgencyType
  result = api_instance.list_commission_agency_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->list_commission_agency_type: #{e}"
end
```

#### Using the list_commission_agency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyTypeListVBAResponse>, Integer, Hash)> list_commission_agency_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionAgencyType
  data, status_code, headers = api_instance.list_commission_agency_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->list_commission_agency_type_with_http_info: #{e}"
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

[**CommissionAgencyTypeListVBAResponse**](CommissionAgencyTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_agency_type

> <MultiCodeResponseListVBAResponse> update_batch_commission_agency_type(vbasoftware_database, commission_agency_type)

Create or Update Batch CommissionAgencyType

Create or Update multiple CommissionAgencyType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_agency_type = [Vba::CommissionAgencyType.new({agency_type: 'agency_type_example'})] # Array<CommissionAgencyType> | 

begin
  # Create or Update Batch CommissionAgencyType
  result = api_instance.update_batch_commission_agency_type(vbasoftware_database, commission_agency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->update_batch_commission_agency_type: #{e}"
end
```

#### Using the update_batch_commission_agency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_agency_type_with_http_info(vbasoftware_database, commission_agency_type)

```ruby
begin
  # Create or Update Batch CommissionAgencyType
  data, status_code, headers = api_instance.update_batch_commission_agency_type_with_http_info(vbasoftware_database, commission_agency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->update_batch_commission_agency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_agency_type** | [**Array&lt;CommissionAgencyType&gt;**](CommissionAgencyType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_agency_type

> <CommissionAgencyTypeVBAResponse> update_commission_agency_type(vbasoftware_database, agency_type, commission_agency_type)

Update CommissionAgencyType

Updates a specific CommissionAgencyType.

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

api_instance = Vba::CommissionAgencyTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
agency_type = 'agency_type_example' # String | Agency Type
commission_agency_type = Vba::CommissionAgencyType.new({agency_type: 'agency_type_example'}) # CommissionAgencyType | 

begin
  # Update CommissionAgencyType
  result = api_instance.update_commission_agency_type(vbasoftware_database, agency_type, commission_agency_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->update_commission_agency_type: #{e}"
end
```

#### Using the update_commission_agency_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAgencyTypeVBAResponse>, Integer, Hash)> update_commission_agency_type_with_http_info(vbasoftware_database, agency_type, commission_agency_type)

```ruby
begin
  # Update CommissionAgencyType
  data, status_code, headers = api_instance.update_commission_agency_type_with_http_info(vbasoftware_database, agency_type, commission_agency_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAgencyTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAgencyTypesApi->update_commission_agency_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **agency_type** | **String** | Agency Type |  |
| **commission_agency_type** | [**CommissionAgencyType**](CommissionAgencyType.md) |  |  |

### Return type

[**CommissionAgencyTypeVBAResponse**](CommissionAgencyTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

