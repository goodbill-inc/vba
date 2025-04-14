# Vba::CommissionAppointmentTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_appointment_type**](CommissionAppointmentTypesApi.md#create_commission_appointment_type) | **POST** /commission-appointment-types | Create CommissionAppointmentType |
| [**delete_commission_appointment_type**](CommissionAppointmentTypesApi.md#delete_commission_appointment_type) | **DELETE** /commission-appointment-types/{appointmentType} | Delete CommissionAppointmentType |
| [**get_commission_appointment_type**](CommissionAppointmentTypesApi.md#get_commission_appointment_type) | **GET** /commission-appointment-types/{appointmentType} | Get CommissionAppointmentType |
| [**list_commission_appointment_type**](CommissionAppointmentTypesApi.md#list_commission_appointment_type) | **GET** /commission-appointment-types | List CommissionAppointmentType |
| [**update_batch_commission_appointment_type**](CommissionAppointmentTypesApi.md#update_batch_commission_appointment_type) | **PUT** /commission-appointment-types-batch | Create or Update Batch CommissionAppointmentType |
| [**update_commission_appointment_type**](CommissionAppointmentTypesApi.md#update_commission_appointment_type) | **PUT** /commission-appointment-types/{appointmentType} | Update CommissionAppointmentType |


## create_commission_appointment_type

> <CommissionAppointmentTypeVBAResponse> create_commission_appointment_type(vbasoftware_database, commission_appointment_type)

Create CommissionAppointmentType

Creates a new CommissionAppointmentType

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_appointment_type = Vba::CommissionAppointmentType.new({appointment_type: 'appointment_type_example'}) # CommissionAppointmentType | 

begin
  # Create CommissionAppointmentType
  result = api_instance.create_commission_appointment_type(vbasoftware_database, commission_appointment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->create_commission_appointment_type: #{e}"
end
```

#### Using the create_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAppointmentTypeVBAResponse>, Integer, Hash)> create_commission_appointment_type_with_http_info(vbasoftware_database, commission_appointment_type)

```ruby
begin
  # Create CommissionAppointmentType
  data, status_code, headers = api_instance.create_commission_appointment_type_with_http_info(vbasoftware_database, commission_appointment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAppointmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->create_commission_appointment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_appointment_type** | [**CommissionAppointmentType**](CommissionAppointmentType.md) |  |  |

### Return type

[**CommissionAppointmentTypeVBAResponse**](CommissionAppointmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_appointment_type

> delete_commission_appointment_type(vbasoftware_database, appointment_type)

Delete CommissionAppointmentType

Deletes an CommissionAppointmentType

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appointment_type = 'appointment_type_example' # String | Appointment Type

begin
  # Delete CommissionAppointmentType
  api_instance.delete_commission_appointment_type(vbasoftware_database, appointment_type)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->delete_commission_appointment_type: #{e}"
end
```

#### Using the delete_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type)

```ruby
begin
  # Delete CommissionAppointmentType
  data, status_code, headers = api_instance.delete_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->delete_commission_appointment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appointment_type** | **String** | Appointment Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_appointment_type

> <CommissionAppointmentTypeVBAResponse> get_commission_appointment_type(vbasoftware_database, appointment_type)

Get CommissionAppointmentType

Gets CommissionAppointmentType

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appointment_type = 'appointment_type_example' # String | Appointment Type

begin
  # Get CommissionAppointmentType
  result = api_instance.get_commission_appointment_type(vbasoftware_database, appointment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->get_commission_appointment_type: #{e}"
end
```

#### Using the get_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAppointmentTypeVBAResponse>, Integer, Hash)> get_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type)

```ruby
begin
  # Get CommissionAppointmentType
  data, status_code, headers = api_instance.get_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAppointmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->get_commission_appointment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appointment_type** | **String** | Appointment Type |  |

### Return type

[**CommissionAppointmentTypeVBAResponse**](CommissionAppointmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_appointment_type

> <CommissionAppointmentTypeListVBAResponse> list_commission_appointment_type(vbasoftware_database, opts)

List CommissionAppointmentType

Lists all CommissionAppointmentType

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAppointmentType
  result = api_instance.list_commission_appointment_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->list_commission_appointment_type: #{e}"
end
```

#### Using the list_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAppointmentTypeListVBAResponse>, Integer, Hash)> list_commission_appointment_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionAppointmentType
  data, status_code, headers = api_instance.list_commission_appointment_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAppointmentTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->list_commission_appointment_type_with_http_info: #{e}"
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

[**CommissionAppointmentTypeListVBAResponse**](CommissionAppointmentTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_appointment_type

> <MultiCodeResponseListVBAResponse> update_batch_commission_appointment_type(vbasoftware_database, commission_appointment_type)

Create or Update Batch CommissionAppointmentType

Create or Update multiple CommissionAppointmentType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_appointment_type = [Vba::CommissionAppointmentType.new({appointment_type: 'appointment_type_example'})] # Array<CommissionAppointmentType> | 

begin
  # Create or Update Batch CommissionAppointmentType
  result = api_instance.update_batch_commission_appointment_type(vbasoftware_database, commission_appointment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->update_batch_commission_appointment_type: #{e}"
end
```

#### Using the update_batch_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_appointment_type_with_http_info(vbasoftware_database, commission_appointment_type)

```ruby
begin
  # Create or Update Batch CommissionAppointmentType
  data, status_code, headers = api_instance.update_batch_commission_appointment_type_with_http_info(vbasoftware_database, commission_appointment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->update_batch_commission_appointment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_appointment_type** | [**Array&lt;CommissionAppointmentType&gt;**](CommissionAppointmentType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_appointment_type

> <CommissionAppointmentTypeVBAResponse> update_commission_appointment_type(vbasoftware_database, appointment_type, commission_appointment_type)

Update CommissionAppointmentType

Updates a specific CommissionAppointmentType.

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

api_instance = Vba::CommissionAppointmentTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
appointment_type = 'appointment_type_example' # String | Appointment Type
commission_appointment_type = Vba::CommissionAppointmentType.new({appointment_type: 'appointment_type_example'}) # CommissionAppointmentType | 

begin
  # Update CommissionAppointmentType
  result = api_instance.update_commission_appointment_type(vbasoftware_database, appointment_type, commission_appointment_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->update_commission_appointment_type: #{e}"
end
```

#### Using the update_commission_appointment_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAppointmentTypeVBAResponse>, Integer, Hash)> update_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type, commission_appointment_type)

```ruby
begin
  # Update CommissionAppointmentType
  data, status_code, headers = api_instance.update_commission_appointment_type_with_http_info(vbasoftware_database, appointment_type, commission_appointment_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAppointmentTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAppointmentTypesApi->update_commission_appointment_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **appointment_type** | **String** | Appointment Type |  |
| **commission_appointment_type** | [**CommissionAppointmentType**](CommissionAppointmentType.md) |  |  |

### Return type

[**CommissionAppointmentTypeVBAResponse**](CommissionAppointmentTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

