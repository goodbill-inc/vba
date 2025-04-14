# Vba::BillTypePlacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bill_type_place**](BillTypePlacesApi.md#create_bill_type_place) | **POST** /bill-types/{typeOfBill}/places | Create BillTypePlace |
| [**delete_bill_type_place**](BillTypePlacesApi.md#delete_bill_type_place) | **DELETE** /bill-types/{typeOfBill}/places/{placeOfService} | Delete BillTypePlace |
| [**get_bill_type_place**](BillTypePlacesApi.md#get_bill_type_place) | **GET** /bill-types/{typeOfBill}/places/{placeOfService} | Get BillTypePlace |
| [**list_bill_type_place**](BillTypePlacesApi.md#list_bill_type_place) | **GET** /bill-types/{typeOfBill}/places | List BillTypePlace |
| [**update_batch_bill_type_place**](BillTypePlacesApi.md#update_batch_bill_type_place) | **PUT** /bill-types/{typeOfBill}/places-batch | Create or Update Batch BillTypePlace |
| [**update_bill_type_place**](BillTypePlacesApi.md#update_bill_type_place) | **PUT** /bill-types/{typeOfBill}/places/{placeOfService} | Update BillTypePlace |


## create_bill_type_place

> <BillTypePlaceVBAResponse> create_bill_type_place(vbasoftware_database, type_of_bill, bill_type_place)

Create BillTypePlace

Creates a new BillTypePlace

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
bill_type_place = Vba::BillTypePlace.new({type_of_bill: 'type_of_bill_example', place_of_service: 'place_of_service_example'}) # BillTypePlace | 

begin
  # Create BillTypePlace
  result = api_instance.create_bill_type_place(vbasoftware_database, type_of_bill, bill_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->create_bill_type_place: #{e}"
end
```

#### Using the create_bill_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypePlaceVBAResponse>, Integer, Hash)> create_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, bill_type_place)

```ruby
begin
  # Create BillTypePlace
  data, status_code, headers = api_instance.create_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, bill_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->create_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **bill_type_place** | [**BillTypePlace**](BillTypePlace.md) |  |  |

### Return type

[**BillTypePlaceVBAResponse**](BillTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_bill_type_place

> delete_bill_type_place(vbasoftware_database, type_of_bill, place_of_service)

Delete BillTypePlace

Deletes an BillTypePlace

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Delete BillTypePlace
  api_instance.delete_bill_type_place(vbasoftware_database, type_of_bill, place_of_service)
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->delete_bill_type_place: #{e}"
end
```

#### Using the delete_bill_type_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service)

```ruby
begin
  # Delete BillTypePlace
  data, status_code, headers = api_instance.delete_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->delete_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_bill_type_place

> <BillTypePlaceVBAResponse> get_bill_type_place(vbasoftware_database, type_of_bill, place_of_service)

Get BillTypePlace

Gets BillTypePlace

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
place_of_service = 'place_of_service_example' # String | Place Of Service

begin
  # Get BillTypePlace
  result = api_instance.get_bill_type_place(vbasoftware_database, type_of_bill, place_of_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->get_bill_type_place: #{e}"
end
```

#### Using the get_bill_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypePlaceVBAResponse>, Integer, Hash)> get_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service)

```ruby
begin
  # Get BillTypePlace
  data, status_code, headers = api_instance.get_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->get_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **place_of_service** | **String** | Place Of Service |  |

### Return type

[**BillTypePlaceVBAResponse**](BillTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_bill_type_place

> <BillTypePlaceListVBAResponse> list_bill_type_place(vbasoftware_database, type_of_bill, opts)

List BillTypePlace

Lists all BillTypePlace for the given typeOfBill

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List BillTypePlace
  result = api_instance.list_bill_type_place(vbasoftware_database, type_of_bill, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->list_bill_type_place: #{e}"
end
```

#### Using the list_bill_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypePlaceListVBAResponse>, Integer, Hash)> list_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, opts)

```ruby
begin
  # List BillTypePlace
  data, status_code, headers = api_instance.list_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypePlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->list_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**BillTypePlaceListVBAResponse**](BillTypePlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_bill_type_place

> <MultiCodeResponseListVBAResponse> update_batch_bill_type_place(vbasoftware_database, type_of_bill, bill_type_place)

Create or Update Batch BillTypePlace

Create or Update multiple BillTypePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
bill_type_place = [Vba::BillTypePlace.new({type_of_bill: 'type_of_bill_example', place_of_service: 'place_of_service_example'})] # Array<BillTypePlace> | 

begin
  # Create or Update Batch BillTypePlace
  result = api_instance.update_batch_bill_type_place(vbasoftware_database, type_of_bill, bill_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->update_batch_bill_type_place: #{e}"
end
```

#### Using the update_batch_bill_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, bill_type_place)

```ruby
begin
  # Create or Update Batch BillTypePlace
  data, status_code, headers = api_instance.update_batch_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, bill_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->update_batch_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **bill_type_place** | [**Array&lt;BillTypePlace&gt;**](BillTypePlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_bill_type_place

> <BillTypePlaceVBAResponse> update_bill_type_place(vbasoftware_database, type_of_bill, place_of_service, bill_type_place)

Update BillTypePlace

Updates a specific BillTypePlace.

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

api_instance = Vba::BillTypePlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
type_of_bill = 'type_of_bill_example' # String | Type Of Bill
place_of_service = 'place_of_service_example' # String | Place Of Service
bill_type_place = Vba::BillTypePlace.new({type_of_bill: 'type_of_bill_example', place_of_service: 'place_of_service_example'}) # BillTypePlace | 

begin
  # Update BillTypePlace
  result = api_instance.update_bill_type_place(vbasoftware_database, type_of_bill, place_of_service, bill_type_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->update_bill_type_place: #{e}"
end
```

#### Using the update_bill_type_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillTypePlaceVBAResponse>, Integer, Hash)> update_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service, bill_type_place)

```ruby
begin
  # Update BillTypePlace
  data, status_code, headers = api_instance.update_bill_type_place_with_http_info(vbasoftware_database, type_of_bill, place_of_service, bill_type_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillTypePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BillTypePlacesApi->update_bill_type_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_of_bill** | **String** | Type Of Bill |  |
| **place_of_service** | **String** | Place Of Service |  |
| **bill_type_place** | [**BillTypePlace**](BillTypePlace.md) |  |  |

### Return type

[**BillTypePlaceVBAResponse**](BillTypePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

