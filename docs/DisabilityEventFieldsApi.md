# Vba::DisabilityEventFieldsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_event_field**](DisabilityEventFieldsApi.md#create_disability_event_field) | **POST** /disability-event-fields | Create DisabilityEventField |
| [**delete_disability_event_field**](DisabilityEventFieldsApi.md#delete_disability_event_field) | **DELETE** /disability-event-fields/{Field_Name} | Delete DisabilityEventField |
| [**get_disability_event_field**](DisabilityEventFieldsApi.md#get_disability_event_field) | **GET** /disability-event-fields/{Field_Name} | Get DisabilityEventField |
| [**list_disability_event_field**](DisabilityEventFieldsApi.md#list_disability_event_field) | **GET** /disability-event-fields | List DisabilityEventField |
| [**update_batch_disability_event_field**](DisabilityEventFieldsApi.md#update_batch_disability_event_field) | **PUT** /disability-event-fields-batch | Create or Update Batch DisabilityEventField |
| [**update_disability_event_field**](DisabilityEventFieldsApi.md#update_disability_event_field) | **PUT** /disability-event-fields/{Field_Name} | Update DisabilityEventField |


## create_disability_event_field

> <DisabilityEventFieldVBAResponse> create_disability_event_field(vbasoftware_database, disability_event_field)

Create DisabilityEventField

Creates a new DisabilityEventField

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field = Vba::DisabilityEventField.new({field_name: 'field_name_example'}) # DisabilityEventField | 

begin
  # Create DisabilityEventField
  result = api_instance.create_disability_event_field(vbasoftware_database, disability_event_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->create_disability_event_field: #{e}"
end
```

#### Using the create_disability_event_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldVBAResponse>, Integer, Hash)> create_disability_event_field_with_http_info(vbasoftware_database, disability_event_field)

```ruby
begin
  # Create DisabilityEventField
  data, status_code, headers = api_instance.create_disability_event_field_with_http_info(vbasoftware_database, disability_event_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->create_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field** | [**DisabilityEventField**](DisabilityEventField.md) |  |  |

### Return type

[**DisabilityEventFieldVBAResponse**](DisabilityEventFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_event_field

> delete_disability_event_field(vbasoftware_database, field_name)

Delete DisabilityEventField

Deletes an DisabilityEventField

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
field_name = 'field_name_example' # String | Field Name

begin
  # Delete DisabilityEventField
  api_instance.delete_disability_event_field(vbasoftware_database, field_name)
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->delete_disability_event_field: #{e}"
end
```

#### Using the delete_disability_event_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_event_field_with_http_info(vbasoftware_database, field_name)

```ruby
begin
  # Delete DisabilityEventField
  data, status_code, headers = api_instance.delete_disability_event_field_with_http_info(vbasoftware_database, field_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->delete_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **field_name** | **String** | Field Name |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_event_field

> <DisabilityEventFieldVBAResponse> get_disability_event_field(vbasoftware_database, field_name)

Get DisabilityEventField

Gets DisabilityEventField

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
field_name = 'field_name_example' # String | Field Name

begin
  # Get DisabilityEventField
  result = api_instance.get_disability_event_field(vbasoftware_database, field_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->get_disability_event_field: #{e}"
end
```

#### Using the get_disability_event_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldVBAResponse>, Integer, Hash)> get_disability_event_field_with_http_info(vbasoftware_database, field_name)

```ruby
begin
  # Get DisabilityEventField
  data, status_code, headers = api_instance.get_disability_event_field_with_http_info(vbasoftware_database, field_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->get_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **field_name** | **String** | Field Name |  |

### Return type

[**DisabilityEventFieldVBAResponse**](DisabilityEventFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_event_field

> <DisabilityEventFieldListVBAResponse> list_disability_event_field(vbasoftware_database, opts)

List DisabilityEventField

Lists all DisabilityEventField

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisabilityEventField
  result = api_instance.list_disability_event_field(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->list_disability_event_field: #{e}"
end
```

#### Using the list_disability_event_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldListVBAResponse>, Integer, Hash)> list_disability_event_field_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisabilityEventField
  data, status_code, headers = api_instance.list_disability_event_field_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->list_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**DisabilityEventFieldListVBAResponse**](DisabilityEventFieldListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_event_field

> <MultiCodeResponseListVBAResponse> update_batch_disability_event_field(vbasoftware_database, disability_event_field)

Create or Update Batch DisabilityEventField

Create or Update multiple DisabilityEventField at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_field = [Vba::DisabilityEventField.new({field_name: 'field_name_example'})] # Array<DisabilityEventField> | 

begin
  # Create or Update Batch DisabilityEventField
  result = api_instance.update_batch_disability_event_field(vbasoftware_database, disability_event_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->update_batch_disability_event_field: #{e}"
end
```

#### Using the update_batch_disability_event_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_event_field_with_http_info(vbasoftware_database, disability_event_field)

```ruby
begin
  # Create or Update Batch DisabilityEventField
  data, status_code, headers = api_instance.update_batch_disability_event_field_with_http_info(vbasoftware_database, disability_event_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->update_batch_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_field** | [**Array&lt;DisabilityEventField&gt;**](DisabilityEventField.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_event_field

> <DisabilityEventFieldVBAResponse> update_disability_event_field(vbasoftware_database, field_name, disability_event_field)

Update DisabilityEventField

Updates a specific DisabilityEventField.

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

api_instance = Vba::DisabilityEventFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
field_name = 'field_name_example' # String | Field Name
disability_event_field = Vba::DisabilityEventField.new({field_name: 'field_name_example'}) # DisabilityEventField | 

begin
  # Update DisabilityEventField
  result = api_instance.update_disability_event_field(vbasoftware_database, field_name, disability_event_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->update_disability_event_field: #{e}"
end
```

#### Using the update_disability_event_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventFieldVBAResponse>, Integer, Hash)> update_disability_event_field_with_http_info(vbasoftware_database, field_name, disability_event_field)

```ruby
begin
  # Update DisabilityEventField
  data, status_code, headers = api_instance.update_disability_event_field_with_http_info(vbasoftware_database, field_name, disability_event_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventFieldsApi->update_disability_event_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **field_name** | **String** | Field Name |  |
| **disability_event_field** | [**DisabilityEventField**](DisabilityEventField.md) |  |  |

### Return type

[**DisabilityEventFieldVBAResponse**](DisabilityEventFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

