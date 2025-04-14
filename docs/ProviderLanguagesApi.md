# Vba::ProviderLanguagesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_languages**](ProviderLanguagesApi.md#create_provider_languages) | **POST** /providers/{providerID}/languages | Create ProviderLanguages |
| [**delete_provider_languages**](ProviderLanguagesApi.md#delete_provider_languages) | **DELETE** /providers/{providerID}/languages/{languageID} | Delete ProviderLanguages |
| [**get_provider_languages**](ProviderLanguagesApi.md#get_provider_languages) | **GET** /providers/{providerID}/languages/{languageID} | Get ProviderLanguages |
| [**list_provider_languages**](ProviderLanguagesApi.md#list_provider_languages) | **GET** /providers/{providerID}/languages | List ProviderLanguages |
| [**update_batch_provider_languages**](ProviderLanguagesApi.md#update_batch_provider_languages) | **PUT** /providers/{providerID}/languages-batch | Create or Update Batch ProviderLanguages |
| [**update_provider_languages**](ProviderLanguagesApi.md#update_provider_languages) | **PUT** /providers/{providerID}/languages/{languageID} | Update ProviderLanguages |


## create_provider_languages

> <ProviderLanguagesVBAResponse> create_provider_languages(vbasoftware_database, provider_id, provider_languages)

Create ProviderLanguages

Creates a new ProviderLanguages

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_languages = Vba::ProviderLanguages.new({provider_id: 'provider_id_example', language_id: 'language_id_example', primary_language: false, secondary_language: false}) # ProviderLanguages | 

begin
  # Create ProviderLanguages
  result = api_instance.create_provider_languages(vbasoftware_database, provider_id, provider_languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->create_provider_languages: #{e}"
end
```

#### Using the create_provider_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderLanguagesVBAResponse>, Integer, Hash)> create_provider_languages_with_http_info(vbasoftware_database, provider_id, provider_languages)

```ruby
begin
  # Create ProviderLanguages
  data, status_code, headers = api_instance.create_provider_languages_with_http_info(vbasoftware_database, provider_id, provider_languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderLanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->create_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_languages** | [**ProviderLanguages**](ProviderLanguages.md) |  |  |

### Return type

[**ProviderLanguagesVBAResponse**](ProviderLanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_languages

> delete_provider_languages(vbasoftware_database, provider_id, language_id)

Delete ProviderLanguages

Deletes an ProviderLanguages

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
language_id = 'language_id_example' # String | Language ID

begin
  # Delete ProviderLanguages
  api_instance.delete_provider_languages(vbasoftware_database, provider_id, language_id)
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->delete_provider_languages: #{e}"
end
```

#### Using the delete_provider_languages_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id)

```ruby
begin
  # Delete ProviderLanguages
  data, status_code, headers = api_instance.delete_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->delete_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **language_id** | **String** | Language ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_languages

> <ProviderLanguagesVBAResponse> get_provider_languages(vbasoftware_database, provider_id, language_id)

Get ProviderLanguages

Gets ProviderLanguages

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
language_id = 'language_id_example' # String | Language ID

begin
  # Get ProviderLanguages
  result = api_instance.get_provider_languages(vbasoftware_database, provider_id, language_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->get_provider_languages: #{e}"
end
```

#### Using the get_provider_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderLanguagesVBAResponse>, Integer, Hash)> get_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id)

```ruby
begin
  # Get ProviderLanguages
  data, status_code, headers = api_instance.get_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderLanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->get_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **language_id** | **String** | Language ID |  |

### Return type

[**ProviderLanguagesVBAResponse**](ProviderLanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_languages

> <ProviderLanguagesListVBAResponse> list_provider_languages(vbasoftware_database, provider_id, opts)

List ProviderLanguages

Lists all ProviderLanguages for the given providerID

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderLanguages
  result = api_instance.list_provider_languages(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->list_provider_languages: #{e}"
end
```

#### Using the list_provider_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderLanguagesListVBAResponse>, Integer, Hash)> list_provider_languages_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List ProviderLanguages
  data, status_code, headers = api_instance.list_provider_languages_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderLanguagesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->list_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderLanguagesListVBAResponse**](ProviderLanguagesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_languages

> <MultiCodeResponseListVBAResponse> update_batch_provider_languages(vbasoftware_database, provider_id, provider_languages)

Create or Update Batch ProviderLanguages

Create or Update multiple ProviderLanguages at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_languages = [Vba::ProviderLanguages.new({provider_id: 'provider_id_example', language_id: 'language_id_example', primary_language: false, secondary_language: false})] # Array<ProviderLanguages> | 

begin
  # Create or Update Batch ProviderLanguages
  result = api_instance.update_batch_provider_languages(vbasoftware_database, provider_id, provider_languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->update_batch_provider_languages: #{e}"
end
```

#### Using the update_batch_provider_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_languages_with_http_info(vbasoftware_database, provider_id, provider_languages)

```ruby
begin
  # Create or Update Batch ProviderLanguages
  data, status_code, headers = api_instance.update_batch_provider_languages_with_http_info(vbasoftware_database, provider_id, provider_languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->update_batch_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_languages** | [**Array&lt;ProviderLanguages&gt;**](ProviderLanguages.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_languages

> <ProviderLanguagesVBAResponse> update_provider_languages(vbasoftware_database, provider_id, language_id, provider_languages)

Update ProviderLanguages

Updates a specific ProviderLanguages.

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

api_instance = Vba::ProviderLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
language_id = 'language_id_example' # String | Language ID
provider_languages = Vba::ProviderLanguages.new({provider_id: 'provider_id_example', language_id: 'language_id_example', primary_language: false, secondary_language: false}) # ProviderLanguages | 

begin
  # Update ProviderLanguages
  result = api_instance.update_provider_languages(vbasoftware_database, provider_id, language_id, provider_languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->update_provider_languages: #{e}"
end
```

#### Using the update_provider_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderLanguagesVBAResponse>, Integer, Hash)> update_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id, provider_languages)

```ruby
begin
  # Update ProviderLanguages
  data, status_code, headers = api_instance.update_provider_languages_with_http_info(vbasoftware_database, provider_id, language_id, provider_languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderLanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderLanguagesApi->update_provider_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **language_id** | **String** | Language ID |  |
| **provider_languages** | [**ProviderLanguages**](ProviderLanguages.md) |  |  |

### Return type

[**ProviderLanguagesVBAResponse**](ProviderLanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

