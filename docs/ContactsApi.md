# Vba::ContactsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create Contact |
| [**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /contacts/{contactKey} | Delete Contact |
| [**get_contact**](ContactsApi.md#get_contact) | **GET** /contacts/{contactKey} | Get Contact |
| [**list_contact**](ContactsApi.md#list_contact) | **GET** /contacts | List Contact |
| [**update_batch_contact**](ContactsApi.md#update_batch_contact) | **PUT** /contacts-batch | Create or Update Batch Contact |
| [**update_contact**](ContactsApi.md#update_contact) | **PUT** /contacts/{contactKey} | Update Contact |


## create_contact

> <ContactVBAResponse> create_contact(vbasoftware_database, contact)

Create Contact

Creates a new Contact

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact = Vba::Contact.new({contact_key: 37}) # Contact | 

begin
  # Create Contact
  result = api_instance.create_contact(vbasoftware_database, contact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactVBAResponse>, Integer, Hash)> create_contact_with_http_info(vbasoftware_database, contact)

```ruby
begin
  # Create Contact
  data, status_code, headers = api_instance.create_contact_with_http_info(vbasoftware_database, contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact** | [**Contact**](Contact.md) |  |  |

### Return type

[**ContactVBAResponse**](ContactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact

> delete_contact(vbasoftware_database, contact_key)

Delete Contact

Deletes an Contact

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_key = 56 # Integer | Contact Key

begin
  # Delete Contact
  api_instance.delete_contact(vbasoftware_database, contact_key)
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_with_http_info(vbasoftware_database, contact_key)

```ruby
begin
  # Delete Contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(vbasoftware_database, contact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_key** | **Integer** | Contact Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact

> <ContactVBAResponse> get_contact(vbasoftware_database, contact_key)

Get Contact

Gets Contact

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_key = 56 # Integer | Contact Key

begin
  # Get Contact
  result = api_instance.get_contact(vbasoftware_database, contact_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->get_contact: #{e}"
end
```

#### Using the get_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactVBAResponse>, Integer, Hash)> get_contact_with_http_info(vbasoftware_database, contact_key)

```ruby
begin
  # Get Contact
  data, status_code, headers = api_instance.get_contact_with_http_info(vbasoftware_database, contact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->get_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_key** | **Integer** | Contact Key |  |

### Return type

[**ContactVBAResponse**](ContactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact

> <ContactListVBAResponse> list_contact(vbasoftware_database, opts)

List Contact

Lists all Contact

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Contact
  result = api_instance.list_contact(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->list_contact: #{e}"
end
```

#### Using the list_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactListVBAResponse>, Integer, Hash)> list_contact_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Contact
  data, status_code, headers = api_instance.list_contact_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->list_contact_with_http_info: #{e}"
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

[**ContactListVBAResponse**](ContactListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact

> <MultiCodeResponseListVBAResponse> update_batch_contact(vbasoftware_database, contact)

Create or Update Batch Contact

Create or Update multiple Contact at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact = [Vba::Contact.new({contact_key: 37})] # Array<Contact> | 

begin
  # Create or Update Batch Contact
  result = api_instance.update_batch_contact(vbasoftware_database, contact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->update_batch_contact: #{e}"
end
```

#### Using the update_batch_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_with_http_info(vbasoftware_database, contact)

```ruby
begin
  # Create or Update Batch Contact
  data, status_code, headers = api_instance.update_batch_contact_with_http_info(vbasoftware_database, contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->update_batch_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact** | [**Array&lt;Contact&gt;**](Contact.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact

> <ContactVBAResponse> update_contact(vbasoftware_database, contact_key, contact)

Update Contact

Updates a specific Contact.

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

api_instance = Vba::ContactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_key = 56 # Integer | Contact Key
contact = Vba::Contact.new({contact_key: 37}) # Contact | 

begin
  # Update Contact
  result = api_instance.update_contact(vbasoftware_database, contact_key, contact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactVBAResponse>, Integer, Hash)> update_contact_with_http_info(vbasoftware_database, contact_key, contact)

```ruby
begin
  # Update Contact
  data, status_code, headers = api_instance.update_contact_with_http_info(vbasoftware_database, contact_key, contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactsApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_key** | **Integer** | Contact Key |  |
| **contact** | [**Contact**](Contact.md) |  |  |

### Return type

[**ContactVBAResponse**](ContactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

