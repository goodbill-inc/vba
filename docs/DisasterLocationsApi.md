# Vba::DisasterLocationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disaster_location**](DisasterLocationsApi.md#create_disaster_location) | **POST** /disaster-locations | Create DisasterLocation |
| [**delete_disaster_location**](DisasterLocationsApi.md#delete_disaster_location) | **DELETE** /disaster-locations/{DisasterLocation_Key} | Delete DisasterLocation |
| [**get_disaster_location**](DisasterLocationsApi.md#get_disaster_location) | **GET** /disaster-locations/{DisasterLocation_Key} | Get DisasterLocation |
| [**list_disaster_location**](DisasterLocationsApi.md#list_disaster_location) | **GET** /disaster-locations | List DisasterLocation |
| [**update_batch_disaster_location**](DisasterLocationsApi.md#update_batch_disaster_location) | **PUT** /disaster-locations-batch | Create or Update Batch DisasterLocation |
| [**update_disaster_location**](DisasterLocationsApi.md#update_disaster_location) | **PUT** /disaster-locations/{DisasterLocation_Key} | Update DisasterLocation |


## create_disaster_location

> <DisasterLocationVBAResponse> create_disaster_location(vbasoftware_database, disaster_location)

Create DisasterLocation

Creates a new DisasterLocation

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_location = Vba::DisasterLocation.new({disaster_location_key: 37}) # DisasterLocation | 

begin
  # Create DisasterLocation
  result = api_instance.create_disaster_location(vbasoftware_database, disaster_location)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->create_disaster_location: #{e}"
end
```

#### Using the create_disaster_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterLocationVBAResponse>, Integer, Hash)> create_disaster_location_with_http_info(vbasoftware_database, disaster_location)

```ruby
begin
  # Create DisasterLocation
  data, status_code, headers = api_instance.create_disaster_location_with_http_info(vbasoftware_database, disaster_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterLocationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->create_disaster_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_location** | [**DisasterLocation**](DisasterLocation.md) |  |  |

### Return type

[**DisasterLocationVBAResponse**](DisasterLocationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disaster_location

> delete_disaster_location(vbasoftware_database, disaster_location_key)

Delete DisasterLocation

Deletes an DisasterLocation

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_location_key = 56 # Integer | DisasterLocation Key

begin
  # Delete DisasterLocation
  api_instance.delete_disaster_location(vbasoftware_database, disaster_location_key)
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->delete_disaster_location: #{e}"
end
```

#### Using the delete_disaster_location_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disaster_location_with_http_info(vbasoftware_database, disaster_location_key)

```ruby
begin
  # Delete DisasterLocation
  data, status_code, headers = api_instance.delete_disaster_location_with_http_info(vbasoftware_database, disaster_location_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->delete_disaster_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_location_key** | **Integer** | DisasterLocation Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disaster_location

> <DisasterLocationVBAResponse> get_disaster_location(vbasoftware_database, disaster_location_key)

Get DisasterLocation

Gets DisasterLocation

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_location_key = 56 # Integer | DisasterLocation Key

begin
  # Get DisasterLocation
  result = api_instance.get_disaster_location(vbasoftware_database, disaster_location_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->get_disaster_location: #{e}"
end
```

#### Using the get_disaster_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterLocationVBAResponse>, Integer, Hash)> get_disaster_location_with_http_info(vbasoftware_database, disaster_location_key)

```ruby
begin
  # Get DisasterLocation
  data, status_code, headers = api_instance.get_disaster_location_with_http_info(vbasoftware_database, disaster_location_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterLocationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->get_disaster_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_location_key** | **Integer** | DisasterLocation Key |  |

### Return type

[**DisasterLocationVBAResponse**](DisasterLocationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disaster_location

> <DisasterLocationListVBAResponse> list_disaster_location(vbasoftware_database, opts)

List DisasterLocation

Lists all DisasterLocation

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisasterLocation
  result = api_instance.list_disaster_location(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->list_disaster_location: #{e}"
end
```

#### Using the list_disaster_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterLocationListVBAResponse>, Integer, Hash)> list_disaster_location_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisasterLocation
  data, status_code, headers = api_instance.list_disaster_location_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterLocationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->list_disaster_location_with_http_info: #{e}"
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

[**DisasterLocationListVBAResponse**](DisasterLocationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disaster_location

> <MultiCodeResponseListVBAResponse> update_batch_disaster_location(vbasoftware_database, disaster_location)

Create or Update Batch DisasterLocation

Create or Update multiple DisasterLocation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_location = [Vba::DisasterLocation.new({disaster_location_key: 37})] # Array<DisasterLocation> | 

begin
  # Create or Update Batch DisasterLocation
  result = api_instance.update_batch_disaster_location(vbasoftware_database, disaster_location)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->update_batch_disaster_location: #{e}"
end
```

#### Using the update_batch_disaster_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disaster_location_with_http_info(vbasoftware_database, disaster_location)

```ruby
begin
  # Create or Update Batch DisasterLocation
  data, status_code, headers = api_instance.update_batch_disaster_location_with_http_info(vbasoftware_database, disaster_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->update_batch_disaster_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_location** | [**Array&lt;DisasterLocation&gt;**](DisasterLocation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disaster_location

> <DisasterLocationVBAResponse> update_disaster_location(vbasoftware_database, disaster_location_key, disaster_location)

Update DisasterLocation

Updates a specific DisasterLocation.

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

api_instance = Vba::DisasterLocationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_location_key = 56 # Integer | DisasterLocation Key
disaster_location = Vba::DisasterLocation.new({disaster_location_key: 37}) # DisasterLocation | 

begin
  # Update DisasterLocation
  result = api_instance.update_disaster_location(vbasoftware_database, disaster_location_key, disaster_location)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->update_disaster_location: #{e}"
end
```

#### Using the update_disaster_location_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterLocationVBAResponse>, Integer, Hash)> update_disaster_location_with_http_info(vbasoftware_database, disaster_location_key, disaster_location)

```ruby
begin
  # Update DisasterLocation
  data, status_code, headers = api_instance.update_disaster_location_with_http_info(vbasoftware_database, disaster_location_key, disaster_location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterLocationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisasterLocationsApi->update_disaster_location_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_location_key** | **Integer** | DisasterLocation Key |  |
| **disaster_location** | [**DisasterLocation**](DisasterLocation.md) |  |  |

### Return type

[**DisasterLocationVBAResponse**](DisasterLocationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

