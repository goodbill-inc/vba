# Vba::ToothProceduresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth_procedure**](ToothProceduresApi.md#create_tooth_procedure) | **POST** /tooth-procedures | Create ToothProcedure |
| [**delete_tooth_procedure**](ToothProceduresApi.md#delete_tooth_procedure) | **DELETE** /tooth-procedures/{toothProcedureKey} | Delete ToothProcedure |
| [**get_tooth_procedure**](ToothProceduresApi.md#get_tooth_procedure) | **GET** /tooth-procedures/{toothProcedureKey} | Get ToothProcedure |
| [**list_tooth_procedure**](ToothProceduresApi.md#list_tooth_procedure) | **GET** /tooth-procedures | List ToothProcedure |
| [**update_batch_tooth_procedure**](ToothProceduresApi.md#update_batch_tooth_procedure) | **PUT** /tooth-procedures-batch | Create or Update Batch ToothProcedure |
| [**update_tooth_procedure**](ToothProceduresApi.md#update_tooth_procedure) | **PUT** /tooth-procedures/{toothProcedureKey} | Update ToothProcedure |


## create_tooth_procedure

> <ToothProcedureVBAResponse> create_tooth_procedure(vbasoftware_database, tooth_procedure)

Create ToothProcedure

Creates a new ToothProcedure

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_procedure = Vba::ToothProcedure.new({tooth_procedure_key: 37}) # ToothProcedure | 

begin
  # Create ToothProcedure
  result = api_instance.create_tooth_procedure(vbasoftware_database, tooth_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->create_tooth_procedure: #{e}"
end
```

#### Using the create_tooth_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothProcedureVBAResponse>, Integer, Hash)> create_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure)

```ruby
begin
  # Create ToothProcedure
  data, status_code, headers = api_instance.create_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->create_tooth_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_procedure** | [**ToothProcedure**](ToothProcedure.md) |  |  |

### Return type

[**ToothProcedureVBAResponse**](ToothProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth_procedure

> delete_tooth_procedure(vbasoftware_database, tooth_procedure_key)

Delete ToothProcedure

Deletes an ToothProcedure

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_procedure_key = 56 # Integer | ToothProcedure Key

begin
  # Delete ToothProcedure
  api_instance.delete_tooth_procedure(vbasoftware_database, tooth_procedure_key)
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->delete_tooth_procedure: #{e}"
end
```

#### Using the delete_tooth_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key)

```ruby
begin
  # Delete ToothProcedure
  data, status_code, headers = api_instance.delete_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->delete_tooth_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_procedure_key** | **Integer** | ToothProcedure Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth_procedure

> <ToothProcedureVBAResponse> get_tooth_procedure(vbasoftware_database, tooth_procedure_key)

Get ToothProcedure

Gets ToothProcedure

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_procedure_key = 56 # Integer | ToothProcedure Key

begin
  # Get ToothProcedure
  result = api_instance.get_tooth_procedure(vbasoftware_database, tooth_procedure_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->get_tooth_procedure: #{e}"
end
```

#### Using the get_tooth_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothProcedureVBAResponse>, Integer, Hash)> get_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key)

```ruby
begin
  # Get ToothProcedure
  data, status_code, headers = api_instance.get_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->get_tooth_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_procedure_key** | **Integer** | ToothProcedure Key |  |

### Return type

[**ToothProcedureVBAResponse**](ToothProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth_procedure

> <ToothProcedureListVBAResponse> list_tooth_procedure(vbasoftware_database, opts)

List ToothProcedure

Lists all ToothProcedure

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ToothProcedure
  result = api_instance.list_tooth_procedure(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->list_tooth_procedure: #{e}"
end
```

#### Using the list_tooth_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothProcedureListVBAResponse>, Integer, Hash)> list_tooth_procedure_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ToothProcedure
  data, status_code, headers = api_instance.list_tooth_procedure_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->list_tooth_procedure_with_http_info: #{e}"
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

[**ToothProcedureListVBAResponse**](ToothProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth_procedure

> <MultiCodeResponseListVBAResponse> update_batch_tooth_procedure(vbasoftware_database, tooth_procedure)

Create or Update Batch ToothProcedure

Create or Update multiple ToothProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_procedure = [Vba::ToothProcedure.new({tooth_procedure_key: 37})] # Array<ToothProcedure> | 

begin
  # Create or Update Batch ToothProcedure
  result = api_instance.update_batch_tooth_procedure(vbasoftware_database, tooth_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->update_batch_tooth_procedure: #{e}"
end
```

#### Using the update_batch_tooth_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure)

```ruby
begin
  # Create or Update Batch ToothProcedure
  data, status_code, headers = api_instance.update_batch_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->update_batch_tooth_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_procedure** | [**Array&lt;ToothProcedure&gt;**](ToothProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth_procedure

> <ToothProcedureVBAResponse> update_tooth_procedure(vbasoftware_database, tooth_procedure_key, tooth_procedure)

Update ToothProcedure

Updates a specific ToothProcedure.

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

api_instance = Vba::ToothProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_procedure_key = 56 # Integer | ToothProcedure Key
tooth_procedure = Vba::ToothProcedure.new({tooth_procedure_key: 37}) # ToothProcedure | 

begin
  # Update ToothProcedure
  result = api_instance.update_tooth_procedure(vbasoftware_database, tooth_procedure_key, tooth_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->update_tooth_procedure: #{e}"
end
```

#### Using the update_tooth_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothProcedureVBAResponse>, Integer, Hash)> update_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key, tooth_procedure)

```ruby
begin
  # Update ToothProcedure
  data, status_code, headers = api_instance.update_tooth_procedure_with_http_info(vbasoftware_database, tooth_procedure_key, tooth_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothProceduresApi->update_tooth_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_procedure_key** | **Integer** | ToothProcedure Key |  |
| **tooth_procedure** | [**ToothProcedure**](ToothProcedure.md) |  |  |

### Return type

[**ToothProcedureVBAResponse**](ToothProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

