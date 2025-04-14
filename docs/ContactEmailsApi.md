# Vba::ContactEmailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_email**](ContactEmailsApi.md#create_contact_email) | **POST** /contact-emails | Create ContactEmail |
| [**delete_contact_email**](ContactEmailsApi.md#delete_contact_email) | **DELETE** /contact-emails/{contactEmailKey} | Delete ContactEmail |
| [**get_contact_email**](ContactEmailsApi.md#get_contact_email) | **GET** /contact-emails/{contactEmailKey} | Get ContactEmail |
| [**list_contact_email**](ContactEmailsApi.md#list_contact_email) | **GET** /contact-emails | List ContactEmail |
| [**update_batch_contact_email**](ContactEmailsApi.md#update_batch_contact_email) | **PUT** /contact-emails-batch | Create or Update Batch ContactEmail |
| [**update_contact_email**](ContactEmailsApi.md#update_contact_email) | **PUT** /contact-emails/{contactEmailKey} | Update ContactEmail |


## create_contact_email

> <ContactEmailVBAResponse> create_contact_email(vbasoftware_database, contact_email)

Create ContactEmail

Creates a new ContactEmail

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_email = Vba::ContactEmail.new({contact_email_key: 37, contact_key: 37, email_type: 'email_type_example'}) # ContactEmail | 

begin
  # Create ContactEmail
  result = api_instance.create_contact_email(vbasoftware_database, contact_email)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->create_contact_email: #{e}"
end
```

#### Using the create_contact_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactEmailVBAResponse>, Integer, Hash)> create_contact_email_with_http_info(vbasoftware_database, contact_email)

```ruby
begin
  # Create ContactEmail
  data, status_code, headers = api_instance.create_contact_email_with_http_info(vbasoftware_database, contact_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactEmailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->create_contact_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_email** | [**ContactEmail**](ContactEmail.md) |  |  |

### Return type

[**ContactEmailVBAResponse**](ContactEmailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_email

> delete_contact_email(vbasoftware_database, contact_email_key)

Delete ContactEmail

Deletes an ContactEmail

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_email_key = 56 # Integer | ContactEmail Key

begin
  # Delete ContactEmail
  api_instance.delete_contact_email(vbasoftware_database, contact_email_key)
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->delete_contact_email: #{e}"
end
```

#### Using the delete_contact_email_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_email_with_http_info(vbasoftware_database, contact_email_key)

```ruby
begin
  # Delete ContactEmail
  data, status_code, headers = api_instance.delete_contact_email_with_http_info(vbasoftware_database, contact_email_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->delete_contact_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_email_key** | **Integer** | ContactEmail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_email

> <ContactEmailVBAResponse> get_contact_email(vbasoftware_database, contact_email_key)

Get ContactEmail

Gets ContactEmail

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_email_key = 56 # Integer | ContactEmail Key

begin
  # Get ContactEmail
  result = api_instance.get_contact_email(vbasoftware_database, contact_email_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->get_contact_email: #{e}"
end
```

#### Using the get_contact_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactEmailVBAResponse>, Integer, Hash)> get_contact_email_with_http_info(vbasoftware_database, contact_email_key)

```ruby
begin
  # Get ContactEmail
  data, status_code, headers = api_instance.get_contact_email_with_http_info(vbasoftware_database, contact_email_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactEmailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->get_contact_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_email_key** | **Integer** | ContactEmail Key |  |

### Return type

[**ContactEmailVBAResponse**](ContactEmailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_email

> <ContactEmailListVBAResponse> list_contact_email(vbasoftware_database, opts)

List ContactEmail

Lists all ContactEmail

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactEmail
  result = api_instance.list_contact_email(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->list_contact_email: #{e}"
end
```

#### Using the list_contact_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactEmailListVBAResponse>, Integer, Hash)> list_contact_email_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactEmail
  data, status_code, headers = api_instance.list_contact_email_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactEmailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->list_contact_email_with_http_info: #{e}"
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

[**ContactEmailListVBAResponse**](ContactEmailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_email

> <MultiCodeResponseListVBAResponse> update_batch_contact_email(vbasoftware_database, contact_email)

Create or Update Batch ContactEmail

Create or Update multiple ContactEmail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_email = [Vba::ContactEmail.new({contact_email_key: 37, contact_key: 37, email_type: 'email_type_example'})] # Array<ContactEmail> | 

begin
  # Create or Update Batch ContactEmail
  result = api_instance.update_batch_contact_email(vbasoftware_database, contact_email)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->update_batch_contact_email: #{e}"
end
```

#### Using the update_batch_contact_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_email_with_http_info(vbasoftware_database, contact_email)

```ruby
begin
  # Create or Update Batch ContactEmail
  data, status_code, headers = api_instance.update_batch_contact_email_with_http_info(vbasoftware_database, contact_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->update_batch_contact_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_email** | [**Array&lt;ContactEmail&gt;**](ContactEmail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact_email

> <ContactEmailVBAResponse> update_contact_email(vbasoftware_database, contact_email_key, contact_email)

Update ContactEmail

Updates a specific ContactEmail.

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

api_instance = Vba::ContactEmailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_email_key = 56 # Integer | ContactEmail Key
contact_email = Vba::ContactEmail.new({contact_email_key: 37, contact_key: 37, email_type: 'email_type_example'}) # ContactEmail | 

begin
  # Update ContactEmail
  result = api_instance.update_contact_email(vbasoftware_database, contact_email_key, contact_email)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->update_contact_email: #{e}"
end
```

#### Using the update_contact_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactEmailVBAResponse>, Integer, Hash)> update_contact_email_with_http_info(vbasoftware_database, contact_email_key, contact_email)

```ruby
begin
  # Update ContactEmail
  data, status_code, headers = api_instance.update_contact_email_with_http_info(vbasoftware_database, contact_email_key, contact_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactEmailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactEmailsApi->update_contact_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_email_key** | **Integer** | ContactEmail Key |  |
| **contact_email** | [**ContactEmail**](ContactEmail.md) |  |  |

### Return type

[**ContactEmailVBAResponse**](ContactEmailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

