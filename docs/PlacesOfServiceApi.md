# Vba::PlacesOfServiceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_place_codes**](PlacesOfServiceApi.md#create_place_codes) | **POST** /place-codes | Create PlaceCodes |
| [**delete_place_codes**](PlacesOfServiceApi.md#delete_place_codes) | **DELETE** /place-codes/{placeCode} | Delete PlaceCodes |
| [**get_place_codes**](PlacesOfServiceApi.md#get_place_codes) | **GET** /place-codes/{placeCode} | Get PlaceCodes |
| [**list_place_codes**](PlacesOfServiceApi.md#list_place_codes) | **GET** /place-codes | List PlaceCodes |
| [**update_batch_place_codes**](PlacesOfServiceApi.md#update_batch_place_codes) | **PUT** /place-codes-batch | Create or Update Batch PlaceCodes |
| [**update_place_codes**](PlacesOfServiceApi.md#update_place_codes) | **PUT** /place-codes/{placeCode} | Update PlaceCodes |


## create_place_codes

> <PlaceCodesVBAResponse> create_place_codes(vbasoftware_database, place_codes)

Create PlaceCodes

Creates a new PlaceCodes

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
place_codes = Vba::PlaceCodes.new({place_code: 'place_code_example', all_places: 'all_places_example', exclude_proc_auth: false}) # PlaceCodes | 

begin
  # Create PlaceCodes
  result = api_instance.create_place_codes(vbasoftware_database, place_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->create_place_codes: #{e}"
end
```

#### Using the create_place_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceCodesVBAResponse>, Integer, Hash)> create_place_codes_with_http_info(vbasoftware_database, place_codes)

```ruby
begin
  # Create PlaceCodes
  data, status_code, headers = api_instance.create_place_codes_with_http_info(vbasoftware_database, place_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->create_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **place_codes** | [**PlaceCodes**](PlaceCodes.md) |  |  |

### Return type

[**PlaceCodesVBAResponse**](PlaceCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_place_codes

> delete_place_codes(vbasoftware_database, place_code)

Delete PlaceCodes

Deletes an PlaceCodes

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlaceCodes
  api_instance.delete_place_codes(vbasoftware_database, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->delete_place_codes: #{e}"
end
```

#### Using the delete_place_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_place_codes_with_http_info(vbasoftware_database, place_code)

```ruby
begin
  # Delete PlaceCodes
  data, status_code, headers = api_instance.delete_place_codes_with_http_info(vbasoftware_database, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->delete_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **place_code** | **String** | Place Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_place_codes

> <PlaceCodesVBAResponse> get_place_codes(vbasoftware_database, place_code)

Get PlaceCodes

Gets PlaceCodes

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlaceCodes
  result = api_instance.get_place_codes(vbasoftware_database, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->get_place_codes: #{e}"
end
```

#### Using the get_place_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceCodesVBAResponse>, Integer, Hash)> get_place_codes_with_http_info(vbasoftware_database, place_code)

```ruby
begin
  # Get PlaceCodes
  data, status_code, headers = api_instance.get_place_codes_with_http_info(vbasoftware_database, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->get_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **place_code** | **String** | Place Code |  |

### Return type

[**PlaceCodesVBAResponse**](PlaceCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_place_codes

> <PlaceCodesListVBAResponse> list_place_codes(vbasoftware_database)

List PlaceCodes

Lists all PlaceCodes 

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List PlaceCodes
  result = api_instance.list_place_codes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->list_place_codes: #{e}"
end
```

#### Using the list_place_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceCodesListVBAResponse>, Integer, Hash)> list_place_codes_with_http_info(vbasoftware_database)

```ruby
begin
  # List PlaceCodes
  data, status_code, headers = api_instance.list_place_codes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->list_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PlaceCodesListVBAResponse**](PlaceCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_place_codes

> <MultiCodeResponseListVBAResponse> update_batch_place_codes(vbasoftware_database, place_codes)

Create or Update Batch PlaceCodes

Create or Update multiple PlaceCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
place_codes = [Vba::PlaceCodes.new({place_code: 'place_code_example', all_places: 'all_places_example', exclude_proc_auth: false})] # Array<PlaceCodes> | 

begin
  # Create or Update Batch PlaceCodes
  result = api_instance.update_batch_place_codes(vbasoftware_database, place_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->update_batch_place_codes: #{e}"
end
```

#### Using the update_batch_place_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_place_codes_with_http_info(vbasoftware_database, place_codes)

```ruby
begin
  # Create or Update Batch PlaceCodes
  data, status_code, headers = api_instance.update_batch_place_codes_with_http_info(vbasoftware_database, place_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->update_batch_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **place_codes** | [**Array&lt;PlaceCodes&gt;**](PlaceCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_place_codes

> <PlaceCodesVBAResponse> update_place_codes(vbasoftware_database, place_code, place_codes)

Update PlaceCodes

Updates a specific PlaceCodes.

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

api_instance = Vba::PlacesOfServiceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
place_code = 'place_code_example' # String | Place Code
place_codes = Vba::PlaceCodes.new({place_code: 'place_code_example', all_places: 'all_places_example', exclude_proc_auth: false}) # PlaceCodes | 

begin
  # Update PlaceCodes
  result = api_instance.update_place_codes(vbasoftware_database, place_code, place_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->update_place_codes: #{e}"
end
```

#### Using the update_place_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceCodesVBAResponse>, Integer, Hash)> update_place_codes_with_http_info(vbasoftware_database, place_code, place_codes)

```ruby
begin
  # Update PlaceCodes
  data, status_code, headers = api_instance.update_place_codes_with_http_info(vbasoftware_database, place_code, place_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlacesOfServiceApi->update_place_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **place_code** | **String** | Place Code |  |
| **place_codes** | [**PlaceCodes**](PlaceCodes.md) |  |  |

### Return type

[**PlaceCodesVBAResponse**](PlaceCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

