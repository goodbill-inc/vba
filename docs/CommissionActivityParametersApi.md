# Vba::CommissionActivityParametersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_parameter**](CommissionActivityParametersApi.md#create_commission_parameter) | **POST** /commission-activities/{commActivityKey}/commission-parameters | Create CommissionParameter |
| [**delete_commission_parameter**](CommissionActivityParametersApi.md#delete_commission_parameter) | **DELETE** /commission-activities/{commActivityKey}/commission-parameters/{commParameterKey} | Delete CommissionParameter |
| [**get_commission_parameter**](CommissionActivityParametersApi.md#get_commission_parameter) | **GET** /commission-activities/{commActivityKey}/commission-parameters/{commParameterKey} | Get CommissionParameter |
| [**list_commission_parameter**](CommissionActivityParametersApi.md#list_commission_parameter) | **GET** /commission-activities/{commActivityKey}/commission-parameters | List CommissionParameter |
| [**update_batch_commission_parameter**](CommissionActivityParametersApi.md#update_batch_commission_parameter) | **PUT** /commission-activities/{commActivityKey}/commission-parameters-batch | Create or Update Batch CommissionParameter |
| [**update_commission_parameter**](CommissionActivityParametersApi.md#update_commission_parameter) | **PUT** /commission-activities/{commActivityKey}/commission-parameters/{commParameterKey} | Update CommissionParameter |


## create_commission_parameter

> <CommissionParameterVBAResponse> create_commission_parameter(vbasoftware_database, comm_activity_key, commission_parameter)

Create CommissionParameter

Creates a new CommissionParameter

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
commission_parameter = Vba::CommissionParameter.new({commission_parameter_key: 37, commission_activity_key: 37}) # CommissionParameter | 

begin
  # Create CommissionParameter
  result = api_instance.create_commission_parameter(vbasoftware_database, comm_activity_key, commission_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->create_commission_parameter: #{e}"
end
```

#### Using the create_commission_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionParameterVBAResponse>, Integer, Hash)> create_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, commission_parameter)

```ruby
begin
  # Create CommissionParameter
  data, status_code, headers = api_instance.create_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, commission_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->create_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **commission_parameter** | [**CommissionParameter**](CommissionParameter.md) |  |  |

### Return type

[**CommissionParameterVBAResponse**](CommissionParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_parameter

> delete_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key)

Delete CommissionParameter

Deletes an CommissionParameter

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
comm_parameter_key = 56 # Integer | CommissionParameter Key

begin
  # Delete CommissionParameter
  api_instance.delete_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->delete_commission_parameter: #{e}"
end
```

#### Using the delete_commission_parameter_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key)

```ruby
begin
  # Delete CommissionParameter
  data, status_code, headers = api_instance.delete_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->delete_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **comm_parameter_key** | **Integer** | CommissionParameter Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_parameter

> <CommissionParameterVBAResponse> get_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key)

Get CommissionParameter

Gets CommissionParameter

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
comm_parameter_key = 56 # Integer | CommissionParameter Key

begin
  # Get CommissionParameter
  result = api_instance.get_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->get_commission_parameter: #{e}"
end
```

#### Using the get_commission_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionParameterVBAResponse>, Integer, Hash)> get_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key)

```ruby
begin
  # Get CommissionParameter
  data, status_code, headers = api_instance.get_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->get_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **comm_parameter_key** | **Integer** | CommissionParameter Key |  |

### Return type

[**CommissionParameterVBAResponse**](CommissionParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_parameter

> <CommissionParameterListVBAResponse> list_commission_parameter(vbasoftware_database, comm_activity_key, opts)

List CommissionParameter

Lists all CommissionParameter for the given commActivityKey

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionParameter
  result = api_instance.list_commission_parameter(vbasoftware_database, comm_activity_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->list_commission_parameter: #{e}"
end
```

#### Using the list_commission_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionParameterListVBAResponse>, Integer, Hash)> list_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, opts)

```ruby
begin
  # List CommissionParameter
  data, status_code, headers = api_instance.list_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionParameterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->list_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionParameterListVBAResponse**](CommissionParameterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_parameter

> <MultiCodeResponseListVBAResponse> update_batch_commission_parameter(vbasoftware_database, comm_activity_key, commission_parameter)

Create or Update Batch CommissionParameter

Create or Update multiple CommissionParameter at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
commission_parameter = [Vba::CommissionParameter.new({commission_parameter_key: 37, commission_activity_key: 37})] # Array<CommissionParameter> | 

begin
  # Create or Update Batch CommissionParameter
  result = api_instance.update_batch_commission_parameter(vbasoftware_database, comm_activity_key, commission_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->update_batch_commission_parameter: #{e}"
end
```

#### Using the update_batch_commission_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, commission_parameter)

```ruby
begin
  # Create or Update Batch CommissionParameter
  data, status_code, headers = api_instance.update_batch_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, commission_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->update_batch_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **commission_parameter** | [**Array&lt;CommissionParameter&gt;**](CommissionParameter.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_parameter

> <CommissionParameterVBAResponse> update_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key, commission_parameter)

Update CommissionParameter

Updates a specific CommissionParameter.

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

api_instance = Vba::CommissionActivityParametersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
comm_parameter_key = 56 # Integer | CommissionParameter Key
commission_parameter = Vba::CommissionParameter.new({commission_parameter_key: 37, commission_activity_key: 37}) # CommissionParameter | 

begin
  # Update CommissionParameter
  result = api_instance.update_commission_parameter(vbasoftware_database, comm_activity_key, comm_parameter_key, commission_parameter)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->update_commission_parameter: #{e}"
end
```

#### Using the update_commission_parameter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionParameterVBAResponse>, Integer, Hash)> update_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key, commission_parameter)

```ruby
begin
  # Update CommissionParameter
  data, status_code, headers = api_instance.update_commission_parameter_with_http_info(vbasoftware_database, comm_activity_key, comm_parameter_key, commission_parameter)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionParameterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityParametersApi->update_commission_parameter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **comm_parameter_key** | **Integer** | CommissionParameter Key |  |
| **commission_parameter** | [**CommissionParameter**](CommissionParameter.md) |  |  |

### Return type

[**CommissionParameterVBAResponse**](CommissionParameterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

