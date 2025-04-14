# Vba::AdmissionTypePlacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_admission_type_place**](AdmissionTypePlacesApi.md#create_admission_type_place) | **POST** /admission-type-places | Create AdmissionTypePlace |
| [**delete_admission_type_place**](AdmissionTypePlacesApi.md#delete_admission_type_place) | **DELETE** /admission-type-places/{admissionType}/{placeOfService} | Delete AdmissionTypePlace |
| [**get_admission_type_place**](AdmissionTypePlacesApi.md#get_admission_type_place) | **GET** /admission-type-places/{admissionType}/{placeOfService} | Get AdmissionTypePlace |
| [**list_admission_type_place**](AdmissionTypePlacesApi.md#list_admission_type_place) | **GET** /admission-type-places | List AdmissionTypePlace |
| [**update_admission_type_place**](AdmissionTypePlacesApi.md#update_admission_type_place) | **PUT** /admission-type-places/{admissionType}/{placeOfService} | Update AdmissionTypePlace |
| [**update_batch_admission_type_place**](AdmissionTypePlacesApi.md#update_batch_admission_type_place) | **PUT** /admission-type-places-batch | Create or Update Batch AdmissionTypePlace |


## create_admission_type_place

> <AdmissionTypePlaceVBAResponse> create_admission_type_place(vbasoftware_database, admission_type_place)

Create AdmissionTypePlace

Creates a new AdmissionTypePlace

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
admission_type_place = Vba::AdmissionTypePlace.new({admission_type: 'admission_type_example', place_of_service: 'place_of_service_example'}) # AdmissionTypePlace | 

begin
  # Create AdmissionTypePlace
  result = api_instance.create_admission_type_place(vbasoftware_database, admission_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->create_admission_type_place: #{e}"
end
```

#### Using the create_admission_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdmissionTypePlaceVBAResponse>, Integer, Hash)> create_admission_type_place_with_http_info(vbasoftware_database, admission_type_place)

```ruby
begin
  # Create AdmissionTypePlace
  data, status_code, headers = api_instance.create_admission_type_place_with_http_info(vbasoftware_database, admission_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdmissionTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->create_admission_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **admission_type_place** | [**AdmissionTypePlace**](AdmissionTypePlace.md) |  |  |

### Return type

[**AdmissionTypePlaceVBAResponse**](AdmissionTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_admission_type_place

> delete_admission_type_place(vbasoftware_database, admission_type, place_of_service)

Delete AdmissionTypePlace

Deletes an AdmissionTypePlace

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
admission_type = 'admission_type_example' # String | Admission Type
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Delete AdmissionTypePlace
  api_instance.delete_admission_type_place(vbasoftware_database, admission_type, place_of_service)
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->delete_admission_type_place: #{e}"
end
```

#### Using the delete_admission_type_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service)

```ruby
begin
  # Delete AdmissionTypePlace
  data, status_code, headers = api_instance.delete_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->delete_admission_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **admission_type** | **String** | Admission Type |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_admission_type_place

> <AdmissionTypePlaceVBAResponse> get_admission_type_place(vbasoftware_database, admission_type, place_of_service)

Get AdmissionTypePlace

Gets AdmissionTypePlace

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
admission_type = 'admission_type_example' # String | Admission Type
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Get AdmissionTypePlace
  result = api_instance.get_admission_type_place(vbasoftware_database, admission_type, place_of_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->get_admission_type_place: #{e}"
end
```

#### Using the get_admission_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdmissionTypePlaceVBAResponse>, Integer, Hash)> get_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service)

```ruby
begin
  # Get AdmissionTypePlace
  data, status_code, headers = api_instance.get_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdmissionTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->get_admission_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **admission_type** | **String** | Admission Type |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

[**AdmissionTypePlaceVBAResponse**](AdmissionTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_admission_type_place

> <AdmissionTypePlaceListVBAResponse> list_admission_type_place(vbasoftware_database, opts)

List AdmissionTypePlace

Lists all AdmissionTypePlace

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List AdmissionTypePlace
  result = api_instance.list_admission_type_place(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->list_admission_type_place: #{e}"
end
```

#### Using the list_admission_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdmissionTypePlaceListVBAResponse>, Integer, Hash)> list_admission_type_place_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List AdmissionTypePlace
  data, status_code, headers = api_instance.list_admission_type_place_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdmissionTypePlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->list_admission_type_place_with_http_info: #{e}"
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

[**AdmissionTypePlaceListVBAResponse**](AdmissionTypePlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_admission_type_place

> <AdmissionTypePlaceVBAResponse> update_admission_type_place(vbasoftware_database, admission_type, place_of_service, admission_type_place)

Update AdmissionTypePlace

Updates a specific AdmissionTypePlace.

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
admission_type = 'admission_type_example' # String | Admission Type
place_of_service = 'place_of_service_example' # String | Place Of Service
admission_type_place = Vba::AdmissionTypePlace.new({admission_type: 'admission_type_example', place_of_service: 'place_of_service_example'}) # AdmissionTypePlace | 

begin
  # Update AdmissionTypePlace
  result = api_instance.update_admission_type_place(vbasoftware_database, admission_type, place_of_service, admission_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->update_admission_type_place: #{e}"
end
```

#### Using the update_admission_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdmissionTypePlaceVBAResponse>, Integer, Hash)> update_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service, admission_type_place)

```ruby
begin
  # Update AdmissionTypePlace
  data, status_code, headers = api_instance.update_admission_type_place_with_http_info(vbasoftware_database, admission_type, place_of_service, admission_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdmissionTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->update_admission_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **admission_type** | **String** | Admission Type |  |
| **place_of_service** | **String** | Place Of Service |  |
| **admission_type_place** | [**AdmissionTypePlace**](AdmissionTypePlace.md) |  |  |

### Return type

[**AdmissionTypePlaceVBAResponse**](AdmissionTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_admission_type_place

> <MultiCodeResponseListVBAResponse> update_batch_admission_type_place(vbasoftware_database, admission_type_place)

Create or Update Batch AdmissionTypePlace

Create or Update multiple AdmissionTypePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::AdmissionTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
admission_type_place = [Vba::AdmissionTypePlace.new({admission_type: 'admission_type_example', place_of_service: 'place_of_service_example'})] # Array<AdmissionTypePlace> | 

begin
  # Create or Update Batch AdmissionTypePlace
  result = api_instance.update_batch_admission_type_place(vbasoftware_database, admission_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->update_batch_admission_type_place: #{e}"
end
```

#### Using the update_batch_admission_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_admission_type_place_with_http_info(vbasoftware_database, admission_type_place)

```ruby
begin
  # Create or Update Batch AdmissionTypePlace
  data, status_code, headers = api_instance.update_batch_admission_type_place_with_http_info(vbasoftware_database, admission_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdmissionTypePlacesApi->update_batch_admission_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **admission_type_place** | [**Array&lt;AdmissionTypePlace&gt;**](AdmissionTypePlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

