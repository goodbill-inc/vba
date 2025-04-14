# Vba::ToothApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth**](ToothApi.md#create_tooth) | **POST** /teeth | Create Tooth |
| [**delete_tooth**](ToothApi.md#delete_tooth) | **DELETE** /teeth/{toothNumber} | Delete Tooth |
| [**get_tooth**](ToothApi.md#get_tooth) | **GET** /teeth/{toothNumber} | Get Tooth |
| [**list_tooth**](ToothApi.md#list_tooth) | **GET** /teeth | List Tooth |
| [**update_batch_tooth**](ToothApi.md#update_batch_tooth) | **PUT** /teeth-batch | Create or Update Batch Tooth |
| [**update_tooth**](ToothApi.md#update_tooth) | **PUT** /teeth/{toothNumber} | Update Tooth |


## create_tooth

> <ToothVBAResponse> create_tooth(vbasoftware_database, tooth)

Create Tooth

Creates a new Tooth

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth = Vba::Tooth.new({tooth_number: 37, tooth_id: 37, tooth_type: 'tooth_type_example'}) # Tooth | 

begin
  # Create Tooth
  result = api_instance.create_tooth(vbasoftware_database, tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->create_tooth: #{e}"
end
```

#### Using the create_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothVBAResponse>, Integer, Hash)> create_tooth_with_http_info(vbasoftware_database, tooth)

```ruby
begin
  # Create Tooth
  data, status_code, headers = api_instance.create_tooth_with_http_info(vbasoftware_database, tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->create_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth** | [**Tooth**](Tooth.md) |  |  |

### Return type

[**ToothVBAResponse**](ToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth

> delete_tooth(vbasoftware_database, tooth_number)

Delete Tooth

Deletes an Tooth

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_number = 56 # Integer | Tooth Number

begin
  # Delete Tooth
  api_instance.delete_tooth(vbasoftware_database, tooth_number)
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->delete_tooth: #{e}"
end
```

#### Using the delete_tooth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_with_http_info(vbasoftware_database, tooth_number)

```ruby
begin
  # Delete Tooth
  data, status_code, headers = api_instance.delete_tooth_with_http_info(vbasoftware_database, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->delete_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth

> <ToothVBAResponse> get_tooth(vbasoftware_database, tooth_number)

Get Tooth

Gets Tooth

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_number = 56 # Integer | Tooth Number

begin
  # Get Tooth
  result = api_instance.get_tooth(vbasoftware_database, tooth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->get_tooth: #{e}"
end
```

#### Using the get_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothVBAResponse>, Integer, Hash)> get_tooth_with_http_info(vbasoftware_database, tooth_number)

```ruby
begin
  # Get Tooth
  data, status_code, headers = api_instance.get_tooth_with_http_info(vbasoftware_database, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->get_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

[**ToothVBAResponse**](ToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth

> <ToothListVBAResponse> list_tooth(vbasoftware_database, opts)

List Tooth

Lists all Tooth

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Tooth
  result = api_instance.list_tooth(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->list_tooth: #{e}"
end
```

#### Using the list_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothListVBAResponse>, Integer, Hash)> list_tooth_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Tooth
  data, status_code, headers = api_instance.list_tooth_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->list_tooth_with_http_info: #{e}"
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

[**ToothListVBAResponse**](ToothListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth

> <MultiCodeResponseListVBAResponse> update_batch_tooth(vbasoftware_database, tooth)

Create or Update Batch Tooth

Create or Update multiple Tooth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth = [Vba::Tooth.new({tooth_number: 37, tooth_id: 37, tooth_type: 'tooth_type_example'})] # Array<Tooth> | 

begin
  # Create or Update Batch Tooth
  result = api_instance.update_batch_tooth(vbasoftware_database, tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->update_batch_tooth: #{e}"
end
```

#### Using the update_batch_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_with_http_info(vbasoftware_database, tooth)

```ruby
begin
  # Create or Update Batch Tooth
  data, status_code, headers = api_instance.update_batch_tooth_with_http_info(vbasoftware_database, tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->update_batch_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth** | [**Array&lt;Tooth&gt;**](Tooth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth

> <ToothVBAResponse> update_tooth(vbasoftware_database, tooth_number, tooth)

Update Tooth

Updates a specific Tooth.

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

api_instance = Vba::ToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_number = 56 # Integer | Tooth Number
tooth = Vba::Tooth.new({tooth_number: 37, tooth_id: 37, tooth_type: 'tooth_type_example'}) # Tooth | 

begin
  # Update Tooth
  result = api_instance.update_tooth(vbasoftware_database, tooth_number, tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->update_tooth: #{e}"
end
```

#### Using the update_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothVBAResponse>, Integer, Hash)> update_tooth_with_http_info(vbasoftware_database, tooth_number, tooth)

```ruby
begin
  # Update Tooth
  data, status_code, headers = api_instance.update_tooth_with_http_info(vbasoftware_database, tooth_number, tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothApi->update_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_number** | **Integer** | Tooth Number |  |
| **tooth** | [**Tooth**](Tooth.md) |  |  |

### Return type

[**ToothVBAResponse**](ToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

