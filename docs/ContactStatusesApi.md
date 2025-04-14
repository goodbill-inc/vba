# Vba::ContactStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_status**](ContactStatusesApi.md#create_contact_status) | **POST** /contact-statuses | Create ContactStatus |
| [**delete_contact_status**](ContactStatusesApi.md#delete_contact_status) | **DELETE** /contact-statuses/{contactStatus} | Delete ContactStatus |
| [**get_contact_status**](ContactStatusesApi.md#get_contact_status) | **GET** /contact-statuses/{contactStatus} | Get ContactStatus |
| [**list_contact_status**](ContactStatusesApi.md#list_contact_status) | **GET** /contact-statuses | List ContactStatus |
| [**update_batch_contact_status**](ContactStatusesApi.md#update_batch_contact_status) | **PUT** /contact-statuses-batch | Create or Update Batch ContactStatus |
| [**update_contact_status**](ContactStatusesApi.md#update_contact_status) | **PUT** /contact-statuses/{contactStatus} | Update ContactStatus |


## create_contact_status

> <ContactStatusVBAResponse> create_contact_status(vbasoftware_database, contact_status)

Create ContactStatus

Creates a new ContactStatus

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_status = Vba::ContactStatus.new({contact_status: 'contact_status_example'}) # ContactStatus | 

begin
  # Create ContactStatus
  result = api_instance.create_contact_status(vbasoftware_database, contact_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->create_contact_status: #{e}"
end
```

#### Using the create_contact_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactStatusVBAResponse>, Integer, Hash)> create_contact_status_with_http_info(vbasoftware_database, contact_status)

```ruby
begin
  # Create ContactStatus
  data, status_code, headers = api_instance.create_contact_status_with_http_info(vbasoftware_database, contact_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->create_contact_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_status** | [**ContactStatus**](ContactStatus.md) |  |  |

### Return type

[**ContactStatusVBAResponse**](ContactStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_status

> delete_contact_status(vbasoftware_database, contact_status)

Delete ContactStatus

Deletes an ContactStatus

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_status = 'contact_status_example' # String | Contact Status

begin
  # Delete ContactStatus
  api_instance.delete_contact_status(vbasoftware_database, contact_status)
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->delete_contact_status: #{e}"
end
```

#### Using the delete_contact_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_status_with_http_info(vbasoftware_database, contact_status)

```ruby
begin
  # Delete ContactStatus
  data, status_code, headers = api_instance.delete_contact_status_with_http_info(vbasoftware_database, contact_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->delete_contact_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_status** | **String** | Contact Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_status

> <ContactStatusVBAResponse> get_contact_status(vbasoftware_database, contact_status)

Get ContactStatus

Gets ContactStatus

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_status = 'contact_status_example' # String | Contact Status

begin
  # Get ContactStatus
  result = api_instance.get_contact_status(vbasoftware_database, contact_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->get_contact_status: #{e}"
end
```

#### Using the get_contact_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactStatusVBAResponse>, Integer, Hash)> get_contact_status_with_http_info(vbasoftware_database, contact_status)

```ruby
begin
  # Get ContactStatus
  data, status_code, headers = api_instance.get_contact_status_with_http_info(vbasoftware_database, contact_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->get_contact_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_status** | **String** | Contact Status |  |

### Return type

[**ContactStatusVBAResponse**](ContactStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_status

> <ContactStatusListVBAResponse> list_contact_status(vbasoftware_database, opts)

List ContactStatus

Lists all ContactStatus

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactStatus
  result = api_instance.list_contact_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->list_contact_status: #{e}"
end
```

#### Using the list_contact_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactStatusListVBAResponse>, Integer, Hash)> list_contact_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactStatus
  data, status_code, headers = api_instance.list_contact_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->list_contact_status_with_http_info: #{e}"
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

[**ContactStatusListVBAResponse**](ContactStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_status

> <MultiCodeResponseListVBAResponse> update_batch_contact_status(vbasoftware_database, contact_status)

Create or Update Batch ContactStatus

Create or Update multiple ContactStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_status = [Vba::ContactStatus.new({contact_status: 'contact_status_example'})] # Array<ContactStatus> | 

begin
  # Create or Update Batch ContactStatus
  result = api_instance.update_batch_contact_status(vbasoftware_database, contact_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->update_batch_contact_status: #{e}"
end
```

#### Using the update_batch_contact_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_status_with_http_info(vbasoftware_database, contact_status)

```ruby
begin
  # Create or Update Batch ContactStatus
  data, status_code, headers = api_instance.update_batch_contact_status_with_http_info(vbasoftware_database, contact_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->update_batch_contact_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_status** | [**Array&lt;ContactStatus&gt;**](ContactStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact_status

> <ContactStatusVBAResponse> update_contact_status(vbasoftware_database, contact_status, contact_status2)

Update ContactStatus

Updates a specific ContactStatus.

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

api_instance = Vba::ContactStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_status = 'contact_status_example' # String | Contact Status
contact_status2 = Vba::ContactStatus.new({contact_status: 'contact_status_example'}) # ContactStatus | 

begin
  # Update ContactStatus
  result = api_instance.update_contact_status(vbasoftware_database, contact_status, contact_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->update_contact_status: #{e}"
end
```

#### Using the update_contact_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactStatusVBAResponse>, Integer, Hash)> update_contact_status_with_http_info(vbasoftware_database, contact_status, contact_status2)

```ruby
begin
  # Update ContactStatus
  data, status_code, headers = api_instance.update_contact_status_with_http_info(vbasoftware_database, contact_status, contact_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactStatusesApi->update_contact_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_status** | **String** | Contact Status |  |
| **contact_status2** | [**ContactStatus**](ContactStatus.md) |  |  |

### Return type

[**ContactStatusVBAResponse**](ContactStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

