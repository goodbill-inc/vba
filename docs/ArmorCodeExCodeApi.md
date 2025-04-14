# Vba::ArmorCodeExCodeApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_armor_code_ex_code**](ArmorCodeExCodeApi.md#create_armor_code_ex_code) | **POST** /armor-code-ex-codes | Create ArmorCodeExCode |
| [**delete_armor_code_ex_code**](ArmorCodeExCodeApi.md#delete_armor_code_ex_code) | **DELETE** /armor-code-ex-codes/{ArmorCodeExCode_Key} | Delete ArmorCodeExCode |
| [**get_armor_code_ex_code**](ArmorCodeExCodeApi.md#get_armor_code_ex_code) | **GET** /armor-code-ex-codes/{ArmorCodeExCode_Key} | Get ArmorCodeExCode |
| [**list_armor_code_ex_code**](ArmorCodeExCodeApi.md#list_armor_code_ex_code) | **GET** /armor-code-ex-codes | List ArmorCodeExCode |
| [**update_armor_code_ex_code**](ArmorCodeExCodeApi.md#update_armor_code_ex_code) | **PUT** /armor-code-ex-codes/{ArmorCodeExCode_Key} | Update ArmorCodeExCode |
| [**update_batch_armor_code_ex_code**](ArmorCodeExCodeApi.md#update_batch_armor_code_ex_code) | **PUT** /armor-code-ex-codes-batch | Create or Update Batch ArmorCodeExCode |


## create_armor_code_ex_code

> <ArmorCodeExCodeVBAResponse> create_armor_code_ex_code(vbasoftware_database, armor_code_ex_code)

Create ArmorCodeExCode

Creates a new ArmorCodeExCode

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
armor_code_ex_code = Vba::ArmorCodeExCode.new({armor_code_ex_code_key: 37, armor_code: 'armor_code_example', ex_code: 'ex_code_example'}) # ArmorCodeExCode | 

begin
  # Create ArmorCodeExCode
  result = api_instance.create_armor_code_ex_code(vbasoftware_database, armor_code_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->create_armor_code_ex_code: #{e}"
end
```

#### Using the create_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArmorCodeExCodeVBAResponse>, Integer, Hash)> create_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code)

```ruby
begin
  # Create ArmorCodeExCode
  data, status_code, headers = api_instance.create_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArmorCodeExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->create_armor_code_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **armor_code_ex_code** | [**ArmorCodeExCode**](ArmorCodeExCode.md) |  |  |

### Return type

[**ArmorCodeExCodeVBAResponse**](ArmorCodeExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_armor_code_ex_code

> delete_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key)

Delete ArmorCodeExCode

Deletes an ArmorCodeExCode

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
armor_code_ex_code_key = 56 # Integer | ArmorCodeExCode Key

begin
  # Delete ArmorCodeExCode
  api_instance.delete_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key)
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->delete_armor_code_ex_code: #{e}"
end
```

#### Using the delete_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key)

```ruby
begin
  # Delete ArmorCodeExCode
  data, status_code, headers = api_instance.delete_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->delete_armor_code_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **armor_code_ex_code_key** | **Integer** | ArmorCodeExCode Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_armor_code_ex_code

> <ArmorCodeExCodeVBAResponse> get_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key)

Get ArmorCodeExCode

Gets ArmorCodeExCode

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
armor_code_ex_code_key = 56 # Integer | ArmorCodeExCode Key

begin
  # Get ArmorCodeExCode
  result = api_instance.get_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->get_armor_code_ex_code: #{e}"
end
```

#### Using the get_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArmorCodeExCodeVBAResponse>, Integer, Hash)> get_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key)

```ruby
begin
  # Get ArmorCodeExCode
  data, status_code, headers = api_instance.get_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArmorCodeExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->get_armor_code_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **armor_code_ex_code_key** | **Integer** | ArmorCodeExCode Key |  |

### Return type

[**ArmorCodeExCodeVBAResponse**](ArmorCodeExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_armor_code_ex_code

> <ArmorCodeExCodeListVBAResponse> list_armor_code_ex_code(vbasoftware_database, opts)

List ArmorCodeExCode

Lists all ArmorCodeExCode

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ArmorCodeExCode
  result = api_instance.list_armor_code_ex_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->list_armor_code_ex_code: #{e}"
end
```

#### Using the list_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArmorCodeExCodeListVBAResponse>, Integer, Hash)> list_armor_code_ex_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ArmorCodeExCode
  data, status_code, headers = api_instance.list_armor_code_ex_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArmorCodeExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->list_armor_code_ex_code_with_http_info: #{e}"
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

[**ArmorCodeExCodeListVBAResponse**](ArmorCodeExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_armor_code_ex_code

> <ArmorCodeExCodeVBAResponse> update_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key, armor_code_ex_code)

Update ArmorCodeExCode

Updates a specific ArmorCodeExCode.

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
armor_code_ex_code_key = 56 # Integer | ArmorCodeExCode Key
armor_code_ex_code = Vba::ArmorCodeExCode.new({armor_code_ex_code_key: 37, armor_code: 'armor_code_example', ex_code: 'ex_code_example'}) # ArmorCodeExCode | 

begin
  # Update ArmorCodeExCode
  result = api_instance.update_armor_code_ex_code(vbasoftware_database, armor_code_ex_code_key, armor_code_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->update_armor_code_ex_code: #{e}"
end
```

#### Using the update_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArmorCodeExCodeVBAResponse>, Integer, Hash)> update_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key, armor_code_ex_code)

```ruby
begin
  # Update ArmorCodeExCode
  data, status_code, headers = api_instance.update_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code_key, armor_code_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArmorCodeExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->update_armor_code_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **armor_code_ex_code_key** | **Integer** | ArmorCodeExCode Key |  |
| **armor_code_ex_code** | [**ArmorCodeExCode**](ArmorCodeExCode.md) |  |  |

### Return type

[**ArmorCodeExCodeVBAResponse**](ArmorCodeExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_armor_code_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_armor_code_ex_code(vbasoftware_database, armor_code_ex_code)

Create or Update Batch ArmorCodeExCode

Create or Update multiple ArmorCodeExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ArmorCodeExCodeApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
armor_code_ex_code = [Vba::ArmorCodeExCode.new({armor_code_ex_code_key: 37, armor_code: 'armor_code_example', ex_code: 'ex_code_example'})] # Array<ArmorCodeExCode> | 

begin
  # Create or Update Batch ArmorCodeExCode
  result = api_instance.update_batch_armor_code_ex_code(vbasoftware_database, armor_code_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->update_batch_armor_code_ex_code: #{e}"
end
```

#### Using the update_batch_armor_code_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code)

```ruby
begin
  # Create or Update Batch ArmorCodeExCode
  data, status_code, headers = api_instance.update_batch_armor_code_ex_code_with_http_info(vbasoftware_database, armor_code_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ArmorCodeExCodeApi->update_batch_armor_code_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **armor_code_ex_code** | [**Array&lt;ArmorCodeExCode&gt;**](ArmorCodeExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

