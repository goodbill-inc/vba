# Vba::ProviderCredentialingHoursApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_hours**](ProviderCredentialingHoursApi.md#create_provider_cred_hours) | **POST** /provider-credentialing/{providerCredKey}/hours | Create ProviderCredHours |
| [**delete_provider_cred_hours**](ProviderCredentialingHoursApi.md#delete_provider_cred_hours) | **DELETE** /provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey} | Delete ProviderCredHours |
| [**get_provider_cred_hours**](ProviderCredentialingHoursApi.md#get_provider_cred_hours) | **GET** /provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey} | Get ProviderCredHours |
| [**list_provider_cred_hours**](ProviderCredentialingHoursApi.md#list_provider_cred_hours) | **GET** /provider-credentialing/{providerCredKey}/hours | List ProviderCredHours |
| [**update_batch_provider_cred_hours**](ProviderCredentialingHoursApi.md#update_batch_provider_cred_hours) | **PUT** /provider-credentialing/{providerCredKey}/hours-batch | Create or Update Batch ProviderCredHours |
| [**update_provider_cred_hours**](ProviderCredentialingHoursApi.md#update_provider_cred_hours) | **PUT** /provider-credentialing/{providerCredKey}/hours/{providerCredHoursKey} | Update ProviderCredHours |


## create_provider_cred_hours

> <ProviderCredHoursVBAResponse> create_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours)

Create ProviderCredHours

Creates a new ProviderCredHours

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_hours = Vba::ProviderCredHours.new({provider_cred_hours_key: 37, provider_cred_key: 37}) # ProviderCredHours | 

begin
  # Create ProviderCredHours
  result = api_instance.create_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->create_provider_cred_hours: #{e}"
end
```

#### Using the create_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredHoursVBAResponse>, Integer, Hash)> create_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours)

```ruby
begin
  # Create ProviderCredHours
  data, status_code, headers = api_instance.create_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredHoursVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->create_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_hours** | [**ProviderCredHours**](ProviderCredHours.md) |  |  |

### Return type

[**ProviderCredHoursVBAResponse**](ProviderCredHoursVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_hours

> delete_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key)

Delete ProviderCredHours

Deletes an ProviderCredHours

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_hours_key = 56 # Integer | ProviderCredHours Key

begin
  # Delete ProviderCredHours
  api_instance.delete_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->delete_provider_cred_hours: #{e}"
end
```

#### Using the delete_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key)

```ruby
begin
  # Delete ProviderCredHours
  data, status_code, headers = api_instance.delete_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->delete_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_hours_key** | **Integer** | ProviderCredHours Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_hours

> <ProviderCredHoursVBAResponse> get_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key)

Get ProviderCredHours

Gets ProviderCredHours

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_hours_key = 56 # Integer | ProviderCredHours Key

begin
  # Get ProviderCredHours
  result = api_instance.get_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->get_provider_cred_hours: #{e}"
end
```

#### Using the get_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredHoursVBAResponse>, Integer, Hash)> get_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key)

```ruby
begin
  # Get ProviderCredHours
  data, status_code, headers = api_instance.get_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredHoursVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->get_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_hours_key** | **Integer** | ProviderCredHours Key |  |

### Return type

[**ProviderCredHoursVBAResponse**](ProviderCredHoursVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_hours

> <ProviderCredHoursListVBAResponse> list_provider_cred_hours(vbasoftware_database, provider_cred_key, opts)

List ProviderCredHours

Lists all ProviderCredHours for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredHours
  result = api_instance.list_provider_cred_hours(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->list_provider_cred_hours: #{e}"
end
```

#### Using the list_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredHoursListVBAResponse>, Integer, Hash)> list_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredHours
  data, status_code, headers = api_instance.list_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredHoursListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->list_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderCredHoursListVBAResponse**](ProviderCredHoursListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_hours

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours)

Create or Update Batch ProviderCredHours

Create or Update multiple ProviderCredHours at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_hours = [Vba::ProviderCredHours.new({provider_cred_hours_key: 37, provider_cred_key: 37})] # Array<ProviderCredHours> | 

begin
  # Create or Update Batch ProviderCredHours
  result = api_instance.update_batch_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->update_batch_provider_cred_hours: #{e}"
end
```

#### Using the update_batch_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours)

```ruby
begin
  # Create or Update Batch ProviderCredHours
  data, status_code, headers = api_instance.update_batch_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->update_batch_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_hours** | [**Array&lt;ProviderCredHours&gt;**](ProviderCredHours.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_hours

> <ProviderCredHoursVBAResponse> update_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours)

Update ProviderCredHours

Updates a specific ProviderCredHours.

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

api_instance = Vba::ProviderCredentialingHoursApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_hours_key = 56 # Integer | ProviderCredHours Key
provider_cred_hours = Vba::ProviderCredHours.new({provider_cred_hours_key: 37, provider_cred_key: 37}) # ProviderCredHours | 

begin
  # Update ProviderCredHours
  result = api_instance.update_provider_cred_hours(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->update_provider_cred_hours: #{e}"
end
```

#### Using the update_provider_cred_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredHoursVBAResponse>, Integer, Hash)> update_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours)

```ruby
begin
  # Update ProviderCredHours
  data, status_code, headers = api_instance.update_provider_cred_hours_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_hours_key, provider_cred_hours)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredHoursVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingHoursApi->update_provider_cred_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_hours_key** | **Integer** | ProviderCredHours Key |  |
| **provider_cred_hours** | [**ProviderCredHours**](ProviderCredHours.md) |  |  |

### Return type

[**ProviderCredHoursVBAResponse**](ProviderCredHoursVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

