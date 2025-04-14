# Vba::MemberLanguagesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_language**](MemberLanguagesApi.md#create_member_language) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/languages | Create MemberLanguage |
| [**delete_member_language**](MemberLanguagesApi.md#delete_member_language) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/languages/{languageID} | Delete MemberLanguage |
| [**get_member_language**](MemberLanguagesApi.md#get_member_language) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/languages/{languageID} | Get MemberLanguage |
| [**list_member_language**](MemberLanguagesApi.md#list_member_language) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/languages | List MemberLanguage |
| [**update_batch_member_language**](MemberLanguagesApi.md#update_batch_member_language) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/languages-batch | Create or Update Batch MemberLanguage |
| [**update_member_language**](MemberLanguagesApi.md#update_member_language) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/languages/{languageID} | Update MemberLanguage |


## create_member_language

> <MemberLanguageVBAResponse> create_member_language(vbasoftware_database, subscriber_id, member_seq, member_language)

Create MemberLanguage

Creates a new MemberLanguage

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_language = Vba::MemberLanguage.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', language_id: 'language_id_example', primary_language: false, secondary_language: false, spoken_language: false, written_language: false}) # MemberLanguage | 

begin
  # Create MemberLanguage
  result = api_instance.create_member_language(vbasoftware_database, subscriber_id, member_seq, member_language)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->create_member_language: #{e}"
end
```

#### Using the create_member_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberLanguageVBAResponse>, Integer, Hash)> create_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_language)

```ruby
begin
  # Create MemberLanguage
  data, status_code, headers = api_instance.create_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberLanguageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->create_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_language** | [**MemberLanguage**](MemberLanguage.md) |  |  |

### Return type

[**MemberLanguageVBAResponse**](MemberLanguageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_language

> delete_member_language(vbasoftware_database, subscriber_id, member_seq, language_id)

Delete MemberLanguage

Deletes an MemberLanguage

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
language_id = 'language_id_example' # String | Language ID

begin
  # Delete MemberLanguage
  api_instance.delete_member_language(vbasoftware_database, subscriber_id, member_seq, language_id)
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->delete_member_language: #{e}"
end
```

#### Using the delete_member_language_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id)

```ruby
begin
  # Delete MemberLanguage
  data, status_code, headers = api_instance.delete_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->delete_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **language_id** | **String** | Language ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_language

> <MemberLanguageVBAResponse> get_member_language(vbasoftware_database, subscriber_id, member_seq, language_id)

Get MemberLanguage

Gets MemberLanguage

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
language_id = 'language_id_example' # String | Language ID

begin
  # Get MemberLanguage
  result = api_instance.get_member_language(vbasoftware_database, subscriber_id, member_seq, language_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->get_member_language: #{e}"
end
```

#### Using the get_member_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberLanguageVBAResponse>, Integer, Hash)> get_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id)

```ruby
begin
  # Get MemberLanguage
  data, status_code, headers = api_instance.get_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberLanguageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->get_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **language_id** | **String** | Language ID |  |

### Return type

[**MemberLanguageVBAResponse**](MemberLanguageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_language

> <MemberLanguageListVBAResponse> list_member_language(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberLanguage

Lists all MemberLanguage for the given subscriberID and memberSeq

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberLanguage
  result = api_instance.list_member_language(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->list_member_language: #{e}"
end
```

#### Using the list_member_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberLanguageListVBAResponse>, Integer, Hash)> list_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberLanguage
  data, status_code, headers = api_instance.list_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberLanguageListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->list_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberLanguageListVBAResponse**](MemberLanguageListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_language

> <MultiCodeResponseListVBAResponse> update_batch_member_language(vbasoftware_database, subscriber_id, member_seq, member_language)

Create or Update Batch MemberLanguage

Create or Update multiple MemberLanguage at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_language = [Vba::MemberLanguage.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', language_id: 'language_id_example', primary_language: false, secondary_language: false, spoken_language: false, written_language: false})] # Array<MemberLanguage> | 

begin
  # Create or Update Batch MemberLanguage
  result = api_instance.update_batch_member_language(vbasoftware_database, subscriber_id, member_seq, member_language)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->update_batch_member_language: #{e}"
end
```

#### Using the update_batch_member_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_language)

```ruby
begin
  # Create or Update Batch MemberLanguage
  data, status_code, headers = api_instance.update_batch_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->update_batch_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_language** | [**Array&lt;MemberLanguage&gt;**](MemberLanguage.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_language

> <MemberLanguageVBAResponse> update_member_language(vbasoftware_database, subscriber_id, member_seq, language_id, member_language)

Update MemberLanguage

Updates a specific MemberLanguage.

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

api_instance = Vba::MemberLanguagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
language_id = 'language_id_example' # String | Language ID
member_language = Vba::MemberLanguage.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', language_id: 'language_id_example', primary_language: false, secondary_language: false, spoken_language: false, written_language: false}) # MemberLanguage | 

begin
  # Update MemberLanguage
  result = api_instance.update_member_language(vbasoftware_database, subscriber_id, member_seq, language_id, member_language)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->update_member_language: #{e}"
end
```

#### Using the update_member_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberLanguageVBAResponse>, Integer, Hash)> update_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id, member_language)

```ruby
begin
  # Update MemberLanguage
  data, status_code, headers = api_instance.update_member_language_with_http_info(vbasoftware_database, subscriber_id, member_seq, language_id, member_language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberLanguageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberLanguagesApi->update_member_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **language_id** | **String** | Language ID |  |
| **member_language** | [**MemberLanguage**](MemberLanguage.md) |  |  |

### Return type

[**MemberLanguageVBAResponse**](MemberLanguageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

