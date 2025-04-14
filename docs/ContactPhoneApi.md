# Vba::ContactPhoneApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_phone**](ContactPhoneApi.md#create_contact_phone) | **POST** /contact-phones | Create ContactPhone |
| [**delete_contact_phone**](ContactPhoneApi.md#delete_contact_phone) | **DELETE** /contact-phones/{ContactPhone_Key} | Delete ContactPhone |
| [**get_contact_phone**](ContactPhoneApi.md#get_contact_phone) | **GET** /contact-phones/{ContactPhone_Key} | Get ContactPhone |
| [**list_contact_phone**](ContactPhoneApi.md#list_contact_phone) | **GET** /contact-phones | List ContactPhone |
| [**update_batch_contact_phone**](ContactPhoneApi.md#update_batch_contact_phone) | **PUT** /contact-phones-batch | Create or Update Batch ContactPhone |
| [**update_contact_phone**](ContactPhoneApi.md#update_contact_phone) | **PUT** /contact-phones/{ContactPhone_Key} | Update ContactPhone |


## create_contact_phone

> <ContactPhoneVBAResponse> create_contact_phone(vbasoftware_database, contact_phone)

Create ContactPhone

Creates a new ContactPhone

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_phone = Vba::ContactPhone.new({contact_phone_key: 37, contact_key: 37, phone_type: 'phone_type_example'}) # ContactPhone | 

begin
  # Create ContactPhone
  result = api_instance.create_contact_phone(vbasoftware_database, contact_phone)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->create_contact_phone: #{e}"
end
```

#### Using the create_contact_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactPhoneVBAResponse>, Integer, Hash)> create_contact_phone_with_http_info(vbasoftware_database, contact_phone)

```ruby
begin
  # Create ContactPhone
  data, status_code, headers = api_instance.create_contact_phone_with_http_info(vbasoftware_database, contact_phone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactPhoneVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->create_contact_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_phone** | [**ContactPhone**](ContactPhone.md) |  |  |

### Return type

[**ContactPhoneVBAResponse**](ContactPhoneVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_phone

> delete_contact_phone(vbasoftware_database, contact_phone_key)

Delete ContactPhone

Deletes an ContactPhone

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_phone_key = 56 # Integer | ContactPhone Key

begin
  # Delete ContactPhone
  api_instance.delete_contact_phone(vbasoftware_database, contact_phone_key)
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->delete_contact_phone: #{e}"
end
```

#### Using the delete_contact_phone_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_phone_with_http_info(vbasoftware_database, contact_phone_key)

```ruby
begin
  # Delete ContactPhone
  data, status_code, headers = api_instance.delete_contact_phone_with_http_info(vbasoftware_database, contact_phone_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->delete_contact_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_phone_key** | **Integer** | ContactPhone Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_phone

> <ContactPhoneVBAResponse> get_contact_phone(vbasoftware_database, contact_phone_key)

Get ContactPhone

Gets ContactPhone

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_phone_key = 56 # Integer | ContactPhone Key

begin
  # Get ContactPhone
  result = api_instance.get_contact_phone(vbasoftware_database, contact_phone_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->get_contact_phone: #{e}"
end
```

#### Using the get_contact_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactPhoneVBAResponse>, Integer, Hash)> get_contact_phone_with_http_info(vbasoftware_database, contact_phone_key)

```ruby
begin
  # Get ContactPhone
  data, status_code, headers = api_instance.get_contact_phone_with_http_info(vbasoftware_database, contact_phone_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactPhoneVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->get_contact_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_phone_key** | **Integer** | ContactPhone Key |  |

### Return type

[**ContactPhoneVBAResponse**](ContactPhoneVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_phone

> <ContactPhoneListVBAResponse> list_contact_phone(vbasoftware_database, opts)

List ContactPhone

Lists all ContactPhone

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactPhone
  result = api_instance.list_contact_phone(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->list_contact_phone: #{e}"
end
```

#### Using the list_contact_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactPhoneListVBAResponse>, Integer, Hash)> list_contact_phone_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactPhone
  data, status_code, headers = api_instance.list_contact_phone_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactPhoneListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->list_contact_phone_with_http_info: #{e}"
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

[**ContactPhoneListVBAResponse**](ContactPhoneListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_phone

> <MultiCodeResponseListVBAResponse> update_batch_contact_phone(vbasoftware_database, contact_phone)

Create or Update Batch ContactPhone

Create or Update multiple ContactPhone at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_phone = [Vba::ContactPhone.new({contact_phone_key: 37, contact_key: 37, phone_type: 'phone_type_example'})] # Array<ContactPhone> | 

begin
  # Create or Update Batch ContactPhone
  result = api_instance.update_batch_contact_phone(vbasoftware_database, contact_phone)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->update_batch_contact_phone: #{e}"
end
```

#### Using the update_batch_contact_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_phone_with_http_info(vbasoftware_database, contact_phone)

```ruby
begin
  # Create or Update Batch ContactPhone
  data, status_code, headers = api_instance.update_batch_contact_phone_with_http_info(vbasoftware_database, contact_phone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->update_batch_contact_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_phone** | [**Array&lt;ContactPhone&gt;**](ContactPhone.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact_phone

> <ContactPhoneVBAResponse> update_contact_phone(vbasoftware_database, contact_phone_key, contact_phone)

Update ContactPhone

Updates a specific ContactPhone.

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

api_instance = Vba::ContactPhoneApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_phone_key = 56 # Integer | ContactPhone Key
contact_phone = Vba::ContactPhone.new({contact_phone_key: 37, contact_key: 37, phone_type: 'phone_type_example'}) # ContactPhone | 

begin
  # Update ContactPhone
  result = api_instance.update_contact_phone(vbasoftware_database, contact_phone_key, contact_phone)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->update_contact_phone: #{e}"
end
```

#### Using the update_contact_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactPhoneVBAResponse>, Integer, Hash)> update_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, contact_phone)

```ruby
begin
  # Update ContactPhone
  data, status_code, headers = api_instance.update_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, contact_phone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactPhoneVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactPhoneApi->update_contact_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_phone_key** | **Integer** | ContactPhone Key |  |
| **contact_phone** | [**ContactPhone**](ContactPhone.md) |  |  |

### Return type

[**ContactPhoneVBAResponse**](ContactPhoneVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

