# Vba::LanguagesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_languages**](LanguagesApi.md#create_languages) | **POST** /languages | Create Languages |
| [**delete_languages**](LanguagesApi.md#delete_languages) | **DELETE** /languages/{languageID} | Delete Languages |
| [**get_languages**](LanguagesApi.md#get_languages) | **GET** /languages/{languageID} | Get Languages |
| [**list_languages**](LanguagesApi.md#list_languages) | **GET** /languages | List Languages |
| [**update_batch_languages**](LanguagesApi.md#update_batch_languages) | **PUT** /languages-batch | Create or Update Batch Languages |
| [**update_languages**](LanguagesApi.md#update_languages) | **PUT** /languages/{languageID} | Update Languages |


## create_languages

> <LanguagesVBAResponse> create_languages(vbasoftware_database, languages)

Create Languages

Creates a new Languages

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
languages = Vba::Languages.new({language_id: 'language_id_example'}) # Languages | 

begin
  # Create Languages
  result = api_instance.create_languages(vbasoftware_database, languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->create_languages: #{e}"
end
```

#### Using the create_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanguagesVBAResponse>, Integer, Hash)> create_languages_with_http_info(vbasoftware_database, languages)

```ruby
begin
  # Create Languages
  data, status_code, headers = api_instance.create_languages_with_http_info(vbasoftware_database, languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->create_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **languages** | [**Languages**](Languages.md) |  |  |

### Return type

[**LanguagesVBAResponse**](LanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_languages

> delete_languages(vbasoftware_database, language_id)

Delete Languages

Deletes an Languages

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
language_id = 'language_id_example' # String | Language ID

begin
  # Delete Languages
  api_instance.delete_languages(vbasoftware_database, language_id)
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->delete_languages: #{e}"
end
```

#### Using the delete_languages_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_languages_with_http_info(vbasoftware_database, language_id)

```ruby
begin
  # Delete Languages
  data, status_code, headers = api_instance.delete_languages_with_http_info(vbasoftware_database, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->delete_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **language_id** | **String** | Language ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_languages

> <LanguagesVBAResponse> get_languages(vbasoftware_database, language_id)

Get Languages

Gets Languages

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
language_id = 'language_id_example' # String | Language ID

begin
  # Get Languages
  result = api_instance.get_languages(vbasoftware_database, language_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->get_languages: #{e}"
end
```

#### Using the get_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanguagesVBAResponse>, Integer, Hash)> get_languages_with_http_info(vbasoftware_database, language_id)

```ruby
begin
  # Get Languages
  data, status_code, headers = api_instance.get_languages_with_http_info(vbasoftware_database, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->get_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **language_id** | **String** | Language ID |  |

### Return type

[**LanguagesVBAResponse**](LanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_languages

> <LanguagesListVBAResponse> list_languages(vbasoftware_database, opts)

List Languages

Lists all Languages

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Languages
  result = api_instance.list_languages(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->list_languages: #{e}"
end
```

#### Using the list_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanguagesListVBAResponse>, Integer, Hash)> list_languages_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Languages
  data, status_code, headers = api_instance.list_languages_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanguagesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->list_languages_with_http_info: #{e}"
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

[**LanguagesListVBAResponse**](LanguagesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_languages

> <MultiCodeResponseListVBAResponse> update_batch_languages(vbasoftware_database, languages)

Create or Update Batch Languages

Create or Update multiple Languages at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
languages = [Vba::Languages.new({language_id: 'language_id_example'})] # Array<Languages> | 

begin
  # Create or Update Batch Languages
  result = api_instance.update_batch_languages(vbasoftware_database, languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->update_batch_languages: #{e}"
end
```

#### Using the update_batch_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_languages_with_http_info(vbasoftware_database, languages)

```ruby
begin
  # Create or Update Batch Languages
  data, status_code, headers = api_instance.update_batch_languages_with_http_info(vbasoftware_database, languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->update_batch_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **languages** | [**Array&lt;Languages&gt;**](Languages.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_languages

> <LanguagesVBAResponse> update_languages(vbasoftware_database, language_id, languages)

Update Languages

Updates a specific Languages.

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

api_instance = Vba::LanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
language_id = 'language_id_example' # String | Language ID
languages = Vba::Languages.new({language_id: 'language_id_example'}) # Languages | 

begin
  # Update Languages
  result = api_instance.update_languages(vbasoftware_database, language_id, languages)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->update_languages: #{e}"
end
```

#### Using the update_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanguagesVBAResponse>, Integer, Hash)> update_languages_with_http_info(vbasoftware_database, language_id, languages)

```ruby
begin
  # Update Languages
  data, status_code, headers = api_instance.update_languages_with_http_info(vbasoftware_database, language_id, languages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanguagesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LanguagesApi->update_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **language_id** | **String** | Language ID |  |
| **languages** | [**Languages**](Languages.md) |  |  |

### Return type

[**LanguagesVBAResponse**](LanguagesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

