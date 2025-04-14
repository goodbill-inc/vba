# Vba::BenefitPlacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_place**](BenefitPlacesApi.md#create_benefit_place) | **POST** /benefits/{benefitCode}/places | Create BenefitPlace |
| [**delete_benefit_place**](BenefitPlacesApi.md#delete_benefit_place) | **DELETE** /benefits/{benefitCode}/places/{placeCode} | Delete BenefitPlace |
| [**get_benefit_place**](BenefitPlacesApi.md#get_benefit_place) | **GET** /benefits/{benefitCode}/places/{placeCode} | Get BenefitPlace |
| [**list_benefit_place**](BenefitPlacesApi.md#list_benefit_place) | **GET** /benefits/{benefitCode}/places | List BenefitPlace |
| [**update_batch_benefit_place**](BenefitPlacesApi.md#update_batch_benefit_place) | **PUT** /benefits/{benefitCode}/places-batch | Create or Update Batch BenefitPlace |
| [**update_benefit_place**](BenefitPlacesApi.md#update_benefit_place) | **PUT** /benefits/{benefitCode}/places/{placeCode} | Update BenefitPlace |


## create_benefit_place

> <BenefitPlaceVBAResponse> create_benefit_place(vbasoftware_database, benefit_code, benefit_place)

Create BenefitPlace

Creates a new BenefitPlace

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_place = Vba::BenefitPlace.new({benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false}) # BenefitPlace | 

begin
  # Create BenefitPlace
  result = api_instance.create_benefit_place(vbasoftware_database, benefit_code, benefit_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->create_benefit_place: #{e}"
end
```

#### Using the create_benefit_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitPlaceVBAResponse>, Integer, Hash)> create_benefit_place_with_http_info(vbasoftware_database, benefit_code, benefit_place)

```ruby
begin
  # Create BenefitPlace
  data, status_code, headers = api_instance.create_benefit_place_with_http_info(vbasoftware_database, benefit_code, benefit_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->create_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_place** | [**BenefitPlace**](BenefitPlace.md) |  |  |

### Return type

[**BenefitPlaceVBAResponse**](BenefitPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_place

> delete_benefit_place(vbasoftware_database, benefit_code, place_code)

Delete BenefitPlace

Deletes an BenefitPlace

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete BenefitPlace
  api_instance.delete_benefit_place(vbasoftware_database, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->delete_benefit_place: #{e}"
end
```

#### Using the delete_benefit_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code)

```ruby
begin
  # Delete BenefitPlace
  data, status_code, headers = api_instance.delete_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->delete_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_place

> <BenefitPlaceVBAResponse> get_benefit_place(vbasoftware_database, benefit_code, place_code)

Get BenefitPlace

Gets BenefitPlace

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get BenefitPlace
  result = api_instance.get_benefit_place(vbasoftware_database, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->get_benefit_place: #{e}"
end
```

#### Using the get_benefit_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitPlaceVBAResponse>, Integer, Hash)> get_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code)

```ruby
begin
  # Get BenefitPlace
  data, status_code, headers = api_instance.get_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->get_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

[**BenefitPlaceVBAResponse**](BenefitPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_place

> <BenefitPlaceListVBAResponse> list_benefit_place(vbasoftware_database, benefit_code)

List BenefitPlace

Lists all BenefitPlace benefitCode

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List BenefitPlace
  result = api_instance.list_benefit_place(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->list_benefit_place: #{e}"
end
```

#### Using the list_benefit_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitPlaceListVBAResponse>, Integer, Hash)> list_benefit_place_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # List BenefitPlace
  data, status_code, headers = api_instance.list_benefit_place_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitPlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->list_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitPlaceListVBAResponse**](BenefitPlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_place

> <MultiCodeResponseListVBAResponse> update_batch_benefit_place(vbasoftware_database, benefit_code, benefit_place)

Create or Update Batch BenefitPlace

Create or Update multiple BenefitPlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_place = [Vba::BenefitPlace.new({benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false})] # Array<BenefitPlace> | 

begin
  # Create or Update Batch BenefitPlace
  result = api_instance.update_batch_benefit_place(vbasoftware_database, benefit_code, benefit_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->update_batch_benefit_place: #{e}"
end
```

#### Using the update_batch_benefit_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_place_with_http_info(vbasoftware_database, benefit_code, benefit_place)

```ruby
begin
  # Create or Update Batch BenefitPlace
  data, status_code, headers = api_instance.update_batch_benefit_place_with_http_info(vbasoftware_database, benefit_code, benefit_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->update_batch_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_place** | [**Array&lt;BenefitPlace&gt;**](BenefitPlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_place

> <BenefitPlaceVBAResponse> update_benefit_place(vbasoftware_database, benefit_code, place_code, benefit_place)

Update BenefitPlace

Updates a specific BenefitPlace.

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

api_instance = Vba::BenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
benefit_place = Vba::BenefitPlace.new({benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false}) # BenefitPlace | 

begin
  # Update BenefitPlace
  result = api_instance.update_benefit_place(vbasoftware_database, benefit_code, place_code, benefit_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->update_benefit_place: #{e}"
end
```

#### Using the update_benefit_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitPlaceVBAResponse>, Integer, Hash)> update_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code, benefit_place)

```ruby
begin
  # Update BenefitPlace
  data, status_code, headers = api_instance.update_benefit_place_with_http_info(vbasoftware_database, benefit_code, place_code, benefit_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitPlacesApi->update_benefit_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **benefit_place** | [**BenefitPlace**](BenefitPlace.md) |  |  |

### Return type

[**BenefitPlaceVBAResponse**](BenefitPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

