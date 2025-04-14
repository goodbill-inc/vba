# Vba::AuthTypePlacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_type_place**](AuthTypePlacesApi.md#create_auth_type_place) | **POST** /auth-types/{authType}/places | Create AuthTypePlace |
| [**delete_auth_type_place**](AuthTypePlacesApi.md#delete_auth_type_place) | **DELETE** /auth-types/{authType}/places/{placeOfService} | Delete AuthTypePlace |
| [**get_auth_type_place**](AuthTypePlacesApi.md#get_auth_type_place) | **GET** /auth-types/{authType}/places/{placeOfService} | Get AuthTypePlace |
| [**list_auth_type_place**](AuthTypePlacesApi.md#list_auth_type_place) | **GET** /auth-types/{authType}/places | List AuthTypePlace |
| [**update_auth_type_place**](AuthTypePlacesApi.md#update_auth_type_place) | **PUT** /auth-types/{authType}/places/{placeOfService} | Update AuthTypePlace |
| [**update_batch_auth_type_place**](AuthTypePlacesApi.md#update_batch_auth_type_place) | **PUT** /auth-types/{authType}/places-batch | Create or Update Batch AuthTypePlace |


## create_auth_type_place

> <AuthTypePlaceVBAResponse> create_auth_type_place(vbasoftware_database, auth_type, auth_type_place)

Create AuthTypePlace

Creates a new AuthTypePlace

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
auth_type_place = Vba::AuthTypePlace.new({auth_type: 'auth_type_example', place_of_service: 'place_of_service_example'}) # AuthTypePlace | 

begin
  # Create AuthTypePlace
  result = api_instance.create_auth_type_place(vbasoftware_database, auth_type, auth_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->create_auth_type_place: #{e}"
end
```

#### Using the create_auth_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypePlaceVBAResponse>, Integer, Hash)> create_auth_type_place_with_http_info(vbasoftware_database, auth_type, auth_type_place)

```ruby
begin
  # Create AuthTypePlace
  data, status_code, headers = api_instance.create_auth_type_place_with_http_info(vbasoftware_database, auth_type, auth_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->create_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **auth_type_place** | [**AuthTypePlace**](AuthTypePlace.md) |  |  |

### Return type

[**AuthTypePlaceVBAResponse**](AuthTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_type_place

> delete_auth_type_place(vbasoftware_database, auth_type, place_of_service)

Delete AuthTypePlace

Deletes an AuthTypePlace

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Delete AuthTypePlace
  api_instance.delete_auth_type_place(vbasoftware_database, auth_type, place_of_service)
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->delete_auth_type_place: #{e}"
end
```

#### Using the delete_auth_type_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service)

```ruby
begin
  # Delete AuthTypePlace
  data, status_code, headers = api_instance.delete_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->delete_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_type_place

> <AuthTypePlaceVBAResponse> get_auth_type_place(vbasoftware_database, auth_type, place_of_service)

Get AuthTypePlace

Gets AuthTypePlace

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Get AuthTypePlace
  result = api_instance.get_auth_type_place(vbasoftware_database, auth_type, place_of_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->get_auth_type_place: #{e}"
end
```

#### Using the get_auth_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypePlaceVBAResponse>, Integer, Hash)> get_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service)

```ruby
begin
  # Get AuthTypePlace
  data, status_code, headers = api_instance.get_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->get_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

[**AuthTypePlaceVBAResponse**](AuthTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_type_place

> <AuthTypePlaceListVBAResponse> list_auth_type_place(vbasoftware_database, auth_type, opts)

List AuthTypePlace

Lists all AuthTypePlace for the given authType

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AuthTypePlace
  result = api_instance.list_auth_type_place(vbasoftware_database, auth_type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->list_auth_type_place: #{e}"
end
```

#### Using the list_auth_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypePlaceListVBAResponse>, Integer, Hash)> list_auth_type_place_with_http_info(vbasoftware_database, auth_type, opts)

```ruby
begin
  # List AuthTypePlace
  data, status_code, headers = api_instance.list_auth_type_place_with_http_info(vbasoftware_database, auth_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypePlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->list_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**AuthTypePlaceListVBAResponse**](AuthTypePlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_type_place

> <AuthTypePlaceVBAResponse> update_auth_type_place(vbasoftware_database, auth_type, place_of_service, auth_type_place)

Update AuthTypePlace

Updates a specific AuthTypePlace.

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
place_of_service = 'place_of_service_example' # String | Place Of Service
auth_type_place = Vba::AuthTypePlace.new({auth_type: 'auth_type_example', place_of_service: 'place_of_service_example'}) # AuthTypePlace | 

begin
  # Update AuthTypePlace
  result = api_instance.update_auth_type_place(vbasoftware_database, auth_type, place_of_service, auth_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->update_auth_type_place: #{e}"
end
```

#### Using the update_auth_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTypePlaceVBAResponse>, Integer, Hash)> update_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service, auth_type_place)

```ruby
begin
  # Update AuthTypePlace
  data, status_code, headers = api_instance.update_auth_type_place_with_http_info(vbasoftware_database, auth_type, place_of_service, auth_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->update_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **place_of_service** | **String** | Place Of Service |  |
| **auth_type_place** | [**AuthTypePlace**](AuthTypePlace.md) |  |  |

### Return type

[**AuthTypePlaceVBAResponse**](AuthTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_type_place

> <MultiCodeResponseListVBAResponse> update_batch_auth_type_place(vbasoftware_database, auth_type, auth_type_place)

Create or Update Batch AuthTypePlace

Create or Update multiple AuthTypePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::AuthTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
auth_type = 'auth_type_example' # String | Auth Type
auth_type_place = [Vba::AuthTypePlace.new({auth_type: 'auth_type_example', place_of_service: 'place_of_service_example'})] # Array<AuthTypePlace> | 

begin
  # Create or Update Batch AuthTypePlace
  result = api_instance.update_batch_auth_type_place(vbasoftware_database, auth_type, auth_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->update_batch_auth_type_place: #{e}"
end
```

#### Using the update_batch_auth_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_type_place_with_http_info(vbasoftware_database, auth_type, auth_type_place)

```ruby
begin
  # Create or Update Batch AuthTypePlace
  data, status_code, headers = api_instance.update_batch_auth_type_place_with_http_info(vbasoftware_database, auth_type, auth_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthTypePlacesApi->update_batch_auth_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **auth_type** | **String** | Auth Type |  |
| **auth_type_place** | [**Array&lt;AuthTypePlace&gt;**](AuthTypePlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

