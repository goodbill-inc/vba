# Vba::ClaimAnesthesiaModifierUnitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#create_claim_anesthesia_modifier_unit) | **POST** /claim-anesthesia-modifier-units | Create ClaimAnesthesiaModifierUnit |
| [**delete_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#delete_claim_anesthesia_modifier_unit) | **DELETE** /claim-anesthesia-modifier-units/{claimAnesthesiaModifierUnitKey} | Delete ClaimAnesthesiaModifierUnit |
| [**get_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#get_claim_anesthesia_modifier_unit) | **GET** /claim-anesthesia-modifier-units/{claimAnesthesiaModifierUnitKey} | Get ClaimAnesthesiaModifierUnit |
| [**list_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#list_claim_anesthesia_modifier_unit) | **GET** /claim-anesthesia-modifier-units | List ClaimAnesthesiaModifierUnit |
| [**update_batch_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#update_batch_claim_anesthesia_modifier_unit) | **PUT** /claim-anesthesia-modifier-units-batch | Create or Update Batch ClaimAnesthesiaModifierUnit |
| [**update_claim_anesthesia_modifier_unit**](ClaimAnesthesiaModifierUnitsApi.md#update_claim_anesthesia_modifier_unit) | **PUT** /claim-anesthesia-modifier-units/{claimAnesthesiaModifierUnitKey} | Update ClaimAnesthesiaModifierUnit |


## create_claim_anesthesia_modifier_unit

> <ClaimAnesthesiaModifierUnitVBAResponse> create_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit)

Create ClaimAnesthesiaModifierUnit

Creates a new ClaimAnesthesiaModifierUnit

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_modifier_unit = Vba::ClaimAnesthesiaModifierUnit.new({claim_anesthesia_modifier_unit_key: 37, effective_date: Time.now, term_date: Time.now}) # ClaimAnesthesiaModifierUnit | 

begin
  # Create ClaimAnesthesiaModifierUnit
  result = api_instance.create_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->create_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the create_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaModifierUnitVBAResponse>, Integer, Hash)> create_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit)

```ruby
begin
  # Create ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.create_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaModifierUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->create_claim_anesthesia_modifier_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_modifier_unit** | [**ClaimAnesthesiaModifierUnit**](ClaimAnesthesiaModifierUnit.md) |  |  |

### Return type

[**ClaimAnesthesiaModifierUnitVBAResponse**](ClaimAnesthesiaModifierUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_anesthesia_modifier_unit

> delete_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key)

Delete ClaimAnesthesiaModifierUnit

Deletes an ClaimAnesthesiaModifierUnit

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_modifier_unit_key = 56 # Integer | ClaimAnesthesiaModifierUnit Key

begin
  # Delete ClaimAnesthesiaModifierUnit
  api_instance.delete_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->delete_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the delete_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key)

```ruby
begin
  # Delete ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.delete_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->delete_claim_anesthesia_modifier_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_modifier_unit_key** | **Integer** | ClaimAnesthesiaModifierUnit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_anesthesia_modifier_unit

> <ClaimAnesthesiaModifierUnitVBAResponse> get_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key)

Get ClaimAnesthesiaModifierUnit

Gets ClaimAnesthesiaModifierUnit

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_modifier_unit_key = 56 # Integer | ClaimAnesthesiaModifierUnit Key

begin
  # Get ClaimAnesthesiaModifierUnit
  result = api_instance.get_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->get_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the get_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaModifierUnitVBAResponse>, Integer, Hash)> get_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key)

```ruby
begin
  # Get ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.get_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaModifierUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->get_claim_anesthesia_modifier_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_modifier_unit_key** | **Integer** | ClaimAnesthesiaModifierUnit Key |  |

### Return type

[**ClaimAnesthesiaModifierUnitVBAResponse**](ClaimAnesthesiaModifierUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_anesthesia_modifier_unit

> <ClaimAnesthesiaModifierUnitListVBAResponse> list_claim_anesthesia_modifier_unit(vbasoftware_database, opts)

List ClaimAnesthesiaModifierUnit

Lists all ClaimAnesthesiaModifierUnit

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimAnesthesiaModifierUnit
  result = api_instance.list_claim_anesthesia_modifier_unit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->list_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the list_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaModifierUnitListVBAResponse>, Integer, Hash)> list_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.list_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaModifierUnitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->list_claim_anesthesia_modifier_unit_with_http_info: #{e}"
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

[**ClaimAnesthesiaModifierUnitListVBAResponse**](ClaimAnesthesiaModifierUnitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_anesthesia_modifier_unit

> <MultiCodeResponseListVBAResponse> update_batch_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit)

Create or Update Batch ClaimAnesthesiaModifierUnit

Create or Update multiple ClaimAnesthesiaModifierUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_modifier_unit = [Vba::ClaimAnesthesiaModifierUnit.new({claim_anesthesia_modifier_unit_key: 37, effective_date: Time.now, term_date: Time.now})] # Array<ClaimAnesthesiaModifierUnit> | 

begin
  # Create or Update Batch ClaimAnesthesiaModifierUnit
  result = api_instance.update_batch_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->update_batch_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the update_batch_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit)

```ruby
begin
  # Create or Update Batch ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.update_batch_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->update_batch_claim_anesthesia_modifier_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_modifier_unit** | [**Array&lt;ClaimAnesthesiaModifierUnit&gt;**](ClaimAnesthesiaModifierUnit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_anesthesia_modifier_unit

> <ClaimAnesthesiaModifierUnitVBAResponse> update_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key, claim_anesthesia_modifier_unit)

Update ClaimAnesthesiaModifierUnit

Updates a specific ClaimAnesthesiaModifierUnit.

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

api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_anesthesia_modifier_unit_key = 56 # Integer | ClaimAnesthesiaModifierUnit Key
claim_anesthesia_modifier_unit = Vba::ClaimAnesthesiaModifierUnit.new({claim_anesthesia_modifier_unit_key: 37, effective_date: Time.now, term_date: Time.now}) # ClaimAnesthesiaModifierUnit | 

begin
  # Update ClaimAnesthesiaModifierUnit
  result = api_instance.update_claim_anesthesia_modifier_unit(vbasoftware_database, claim_anesthesia_modifier_unit_key, claim_anesthesia_modifier_unit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->update_claim_anesthesia_modifier_unit: #{e}"
end
```

#### Using the update_claim_anesthesia_modifier_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimAnesthesiaModifierUnitVBAResponse>, Integer, Hash)> update_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key, claim_anesthesia_modifier_unit)

```ruby
begin
  # Update ClaimAnesthesiaModifierUnit
  data, status_code, headers = api_instance.update_claim_anesthesia_modifier_unit_with_http_info(vbasoftware_database, claim_anesthesia_modifier_unit_key, claim_anesthesia_modifier_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimAnesthesiaModifierUnitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAnesthesiaModifierUnitsApi->update_claim_anesthesia_modifier_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_anesthesia_modifier_unit_key** | **Integer** | ClaimAnesthesiaModifierUnit Key |  |
| **claim_anesthesia_modifier_unit** | [**ClaimAnesthesiaModifierUnit**](ClaimAnesthesiaModifierUnit.md) |  |  |

### Return type

[**ClaimAnesthesiaModifierUnitVBAResponse**](ClaimAnesthesiaModifierUnitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

