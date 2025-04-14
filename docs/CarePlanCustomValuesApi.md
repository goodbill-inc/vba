# Vba::CarePlanCustomValuesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan_custom_value**](CarePlanCustomValuesApi.md#create_care_plan_custom_value) | **POST** /care-plans/{carePlanKey}/custom-values | Create CarePlanCustomValue |
| [**delete_care_plan_custom_value**](CarePlanCustomValuesApi.md#delete_care_plan_custom_value) | **DELETE** /care-plans/{carePlanKey}/custom-values/{carePlanCustomValueKey} | Delete CarePlanCustomValue |
| [**get_care_plan_custom_value**](CarePlanCustomValuesApi.md#get_care_plan_custom_value) | **GET** /care-plans/{carePlanKey}/custom-values/{carePlanCustomValueKey} | Get CarePlanCustomValue |
| [**list_care_plan_custom_value**](CarePlanCustomValuesApi.md#list_care_plan_custom_value) | **GET** /care-plans/{carePlanKey}/custom-values | List CarePlanCustomValue |
| [**update_batch_care_plan_custom_value**](CarePlanCustomValuesApi.md#update_batch_care_plan_custom_value) | **PUT** /care-plans/{carePlanKey}/custom-values-batch | Create or Update Batch CarePlanCustomValue |
| [**update_care_plan_custom_value**](CarePlanCustomValuesApi.md#update_care_plan_custom_value) | **PUT** /care-plans/{carePlanKey}/custom-values/{carePlanCustomValueKey} | Update CarePlanCustomValue |


## create_care_plan_custom_value

> <CarePlanCustomValueVBAResponse> create_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value)

Create CarePlanCustomValue

Creates a new CarePlanCustomValue

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_custom_value = Vba::CarePlanCustomValue.new({care_plan_custom_value_key: 37, care_plan_key: 37, i_d_code: 'i_d_code_example', required: false}) # CarePlanCustomValue | 

begin
  # Create CarePlanCustomValue
  result = api_instance.create_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->create_care_plan_custom_value: #{e}"
end
```

#### Using the create_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCustomValueVBAResponse>, Integer, Hash)> create_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value)

```ruby
begin
  # Create CarePlanCustomValue
  data, status_code, headers = api_instance.create_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCustomValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->create_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_custom_value** | [**CarePlanCustomValue**](CarePlanCustomValue.md) |  |  |

### Return type

[**CarePlanCustomValueVBAResponse**](CarePlanCustomValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan_custom_value

> delete_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key)

Delete CarePlanCustomValue

Deletes an CarePlanCustomValue

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_custom_value_key = 56 # Integer | CarePlanCustomValue Key

begin
  # Delete CarePlanCustomValue
  api_instance.delete_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->delete_care_plan_custom_value: #{e}"
end
```

#### Using the delete_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key)

```ruby
begin
  # Delete CarePlanCustomValue
  data, status_code, headers = api_instance.delete_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->delete_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_custom_value_key** | **Integer** | CarePlanCustomValue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan_custom_value

> <CarePlanCustomValueVBAResponse> get_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key)

Get CarePlanCustomValue

Gets CarePlanCustomValue

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_custom_value_key = 56 # Integer | CarePlanCustomValue Key

begin
  # Get CarePlanCustomValue
  result = api_instance.get_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->get_care_plan_custom_value: #{e}"
end
```

#### Using the get_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCustomValueVBAResponse>, Integer, Hash)> get_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key)

```ruby
begin
  # Get CarePlanCustomValue
  data, status_code, headers = api_instance.get_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCustomValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->get_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_custom_value_key** | **Integer** | CarePlanCustomValue Key |  |

### Return type

[**CarePlanCustomValueVBAResponse**](CarePlanCustomValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan_custom_value

> <CarePlanCustomValueListVBAResponse> list_care_plan_custom_value(vbasoftware_database, care_plan_key, opts)

List CarePlanCustomValue

Lists all CarePlanCustomValue for the given carePlanKey

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlanCustomValue
  result = api_instance.list_care_plan_custom_value(vbasoftware_database, care_plan_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->list_care_plan_custom_value: #{e}"
end
```

#### Using the list_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCustomValueListVBAResponse>, Integer, Hash)> list_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, opts)

```ruby
begin
  # List CarePlanCustomValue
  data, status_code, headers = api_instance.list_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCustomValueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->list_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanCustomValueListVBAResponse**](CarePlanCustomValueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan_custom_value

> <MultiCodeResponseListVBAResponse> update_batch_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value)

Create or Update Batch CarePlanCustomValue

Create or Update multiple CarePlanCustomValue at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_custom_value = [Vba::CarePlanCustomValue.new({care_plan_custom_value_key: 37, care_plan_key: 37, i_d_code: 'i_d_code_example', required: false})] # Array<CarePlanCustomValue> | 

begin
  # Create or Update Batch CarePlanCustomValue
  result = api_instance.update_batch_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->update_batch_care_plan_custom_value: #{e}"
end
```

#### Using the update_batch_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value)

```ruby
begin
  # Create or Update Batch CarePlanCustomValue
  data, status_code, headers = api_instance.update_batch_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->update_batch_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_custom_value** | [**Array&lt;CarePlanCustomValue&gt;**](CarePlanCustomValue.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan_custom_value

> <CarePlanCustomValueVBAResponse> update_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key, care_plan_custom_value)

Update CarePlanCustomValue

Updates a specific CarePlanCustomValue.

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

api_instance = Vba::CarePlanCustomValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan_custom_value_key = 56 # Integer | CarePlanCustomValue Key
care_plan_custom_value = Vba::CarePlanCustomValue.new({care_plan_custom_value_key: 37, care_plan_key: 37, i_d_code: 'i_d_code_example', required: false}) # CarePlanCustomValue | 

begin
  # Update CarePlanCustomValue
  result = api_instance.update_care_plan_custom_value(vbasoftware_database, care_plan_key, care_plan_custom_value_key, care_plan_custom_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->update_care_plan_custom_value: #{e}"
end
```

#### Using the update_care_plan_custom_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanCustomValueVBAResponse>, Integer, Hash)> update_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key, care_plan_custom_value)

```ruby
begin
  # Update CarePlanCustomValue
  data, status_code, headers = api_instance.update_care_plan_custom_value_with_http_info(vbasoftware_database, care_plan_key, care_plan_custom_value_key, care_plan_custom_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanCustomValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlanCustomValuesApi->update_care_plan_custom_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan_custom_value_key** | **Integer** | CarePlanCustomValue Key |  |
| **care_plan_custom_value** | [**CarePlanCustomValue**](CarePlanCustomValue.md) |  |  |

### Return type

[**CarePlanCustomValueVBAResponse**](CarePlanCustomValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

