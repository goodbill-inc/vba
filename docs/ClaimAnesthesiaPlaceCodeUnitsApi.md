# Vba::ClaimAnesthesiaPlaceCodeUnitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#create_claim_anesthesia_place_code_unit) | **POST** /claim-anesthesia-place-code-units | Create ClaimAnesthesiaPlaceCodeUnit |
| [**delete_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#delete_claim_anesthesia_place_code_unit) | **DELETE** /claim-anesthesia-place-code-units/{claimAnesthesiaPlaceCodeUnitKey} | Delete ClaimAnesthesiaPlaceCodeUnit |
| [**get_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#get_claim_anesthesia_place_code_unit) | **GET** /claim-anesthesia-place-code-units/{claimAnesthesiaPlaceCodeUnitKey} | Get ClaimAnesthesiaPlaceCodeUnit |
| [**list_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#list_claim_anesthesia_place_code_unit) | **GET** /claim-anesthesia-place-code-units | List ClaimAnesthesiaPlaceCodeUnit |
| [**update_batch_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#update_batch_claim_anesthesia_place_code_unit) | **PUT** /claim-anesthesia-place-code-units-batch | Create or Update Batch ClaimAnesthesiaPlaceCodeUnit |
| [**update_claim_anesthesia_place_code_unit**](ClaimAnesthesiaPlaceCodeUnitsApi.md#update_claim_anesthesia_place_code_unit) | **PUT** /claim-anesthesia-place-code-units/{claimAnesthesiaPlaceCodeUnitKey} | Update ClaimAnesthesiaPlaceCodeUnit |


## create_claim_anesthesia_place_code_unit

> <ClaimAnesthesiaPlaceCodeUnitVBAResponse> create_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit)

Create ClaimAnesthesiaPlaceCodeUnit

Creates a new ClaimAnesthesiaPlaceCodeUnit

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_place_code_unit = Vba::ClaimAnesthesiaPlaceCodeUnit.new({claim_anesthesia_place_code_unit_key: 37, effective_date: Time.now, term_date: Time.now}) # ClaimAnesthesiaPlaceCodeUnit | 

begin
  # Create ClaimAnesthesiaPlaceCodeUnit
  result = api_instance.create_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->create_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the create_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaPlaceCodeUnitVBAResponse>, Integer, Hash)> create_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit)

```ruby
begin
  # Create ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.create_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaPlaceCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->create_claim_anesthesia_place_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_place_code_unit** | [**ClaimAnesthesiaPlaceCodeUnit**](ClaimAnesthesiaPlaceCodeUnit.md) |  |  |

### Return type

[**ClaimAnesthesiaPlaceCodeUnitVBAResponse**](ClaimAnesthesiaPlaceCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_anesthesia_place_code_unit

> delete_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key)

Delete ClaimAnesthesiaPlaceCodeUnit

Deletes an ClaimAnesthesiaPlaceCodeUnit

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_place_code_unit_key = 56 # Integer | ClaimAnesthesiaPlaceCodeUnit Key

begin
  # Delete ClaimAnesthesiaPlaceCodeUnit
  api_instance.delete_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->delete_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the delete_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key)

```ruby
begin
  # Delete ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.delete_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->delete_claim_anesthesia_place_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_place_code_unit_key** | **Integer** | ClaimAnesthesiaPlaceCodeUnit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_anesthesia_place_code_unit

> <ClaimAnesthesiaPlaceCodeUnitVBAResponse> get_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key)

Get ClaimAnesthesiaPlaceCodeUnit

Gets ClaimAnesthesiaPlaceCodeUnit

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_place_code_unit_key = 56 # Integer | ClaimAnesthesiaPlaceCodeUnit Key

begin
  # Get ClaimAnesthesiaPlaceCodeUnit
  result = api_instance.get_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->get_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the get_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaPlaceCodeUnitVBAResponse>, Integer, Hash)> get_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key)

```ruby
begin
  # Get ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.get_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaPlaceCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->get_claim_anesthesia_place_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_place_code_unit_key** | **Integer** | ClaimAnesthesiaPlaceCodeUnit Key |  |

### Return type

[**ClaimAnesthesiaPlaceCodeUnitVBAResponse**](ClaimAnesthesiaPlaceCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_anesthesia_place_code_unit

> <ClaimAnesthesiaPlaceCodeUnitListVBAResponse> list_claim_anesthesia_place_code_unit(vbasoftware_database, opts)

List ClaimAnesthesiaPlaceCodeUnit

Lists all ClaimAnesthesiaPlaceCodeUnit

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAnesthesiaPlaceCodeUnit
  result = api_instance.list_claim_anesthesia_place_code_unit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->list_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the list_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaPlaceCodeUnitListVBAResponse>, Integer, Hash)> list_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.list_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaPlaceCodeUnitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->list_claim_anesthesia_place_code_unit_with_http_info: #{e}"
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

[**ClaimAnesthesiaPlaceCodeUnitListVBAResponse**](ClaimAnesthesiaPlaceCodeUnitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_anesthesia_place_code_unit

> <MultiCodeResponseListVBAResponse> update_batch_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit)

Create or Update Batch ClaimAnesthesiaPlaceCodeUnit

Create or Update multiple ClaimAnesthesiaPlaceCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_place_code_unit = [Vba::ClaimAnesthesiaPlaceCodeUnit.new({claim_anesthesia_place_code_unit_key: 37, effective_date: Time.now, term_date: Time.now})] # Array<ClaimAnesthesiaPlaceCodeUnit> | 

begin
  # Create or Update Batch ClaimAnesthesiaPlaceCodeUnit
  result = api_instance.update_batch_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->update_batch_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the update_batch_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit)

```ruby
begin
  # Create or Update Batch ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.update_batch_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->update_batch_claim_anesthesia_place_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_place_code_unit** | [**Array&lt;ClaimAnesthesiaPlaceCodeUnit&gt;**](ClaimAnesthesiaPlaceCodeUnit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_anesthesia_place_code_unit

> <ClaimAnesthesiaPlaceCodeUnitVBAResponse> update_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key, claim_anesthesia_place_code_unit)

Update ClaimAnesthesiaPlaceCodeUnit

Updates a specific ClaimAnesthesiaPlaceCodeUnit.

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

api_instance = Vba::ClaimAnesthesiaPlaceCodeUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_place_code_unit_key = 56 # Integer | ClaimAnesthesiaPlaceCodeUnit Key
claim_anesthesia_place_code_unit = Vba::ClaimAnesthesiaPlaceCodeUnit.new({claim_anesthesia_place_code_unit_key: 37, effective_date: Time.now, term_date: Time.now}) # ClaimAnesthesiaPlaceCodeUnit | 

begin
  # Update ClaimAnesthesiaPlaceCodeUnit
  result = api_instance.update_claim_anesthesia_place_code_unit(vbasoftware_database, claim_anesthesia_place_code_unit_key, claim_anesthesia_place_code_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->update_claim_anesthesia_place_code_unit: #{e}"
end
```

#### Using the update_claim_anesthesia_place_code_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaPlaceCodeUnitVBAResponse>, Integer, Hash)> update_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key, claim_anesthesia_place_code_unit)

```ruby
begin
  # Update ClaimAnesthesiaPlaceCodeUnit
  data, status_code, headers = api_instance.update_claim_anesthesia_place_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_place_code_unit_key, claim_anesthesia_place_code_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaPlaceCodeUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaPlaceCodeUnitsApi->update_claim_anesthesia_place_code_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_place_code_unit_key** | **Integer** | ClaimAnesthesiaPlaceCodeUnit Key |  |
| **claim_anesthesia_place_code_unit** | [**ClaimAnesthesiaPlaceCodeUnit**](ClaimAnesthesiaPlaceCodeUnit.md) |  |  |

### Return type

[**ClaimAnesthesiaPlaceCodeUnitVBAResponse**](ClaimAnesthesiaPlaceCodeUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

