# Vba::CredentialingDatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_date**](CredentialingDatesApi.md#create_cred_date) | **POST** /credentialing-dates | Create CredDate |
| [**delete_cred_date**](CredentialingDatesApi.md#delete_cred_date) | **DELETE** /credentialing-dates/{credDateKey} | Delete CredDate |
| [**get_cred_date**](CredentialingDatesApi.md#get_cred_date) | **GET** /credentialing-dates/{credDateKey} | Get CredDate |
| [**list_cred_date**](CredentialingDatesApi.md#list_cred_date) | **GET** /credentialing-dates | List CredDate |
| [**update_batch_cred_date**](CredentialingDatesApi.md#update_batch_cred_date) | **PUT** /credentialing-dates-batch | Create or Update Batch CredDate |
| [**update_cred_date**](CredentialingDatesApi.md#update_cred_date) | **PUT** /credentialing-dates/{credDateKey} | Update CredDate |


## create_cred_date

> <CredDateVBAResponse> create_cred_date(vbasoftware_database, cred_date)

Create CredDate

Creates a new CredDate

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_date = Vba::CredDate.new({cred_date_key: 37}) # CredDate | 

begin
  # Create CredDate
  result = api_instance.create_cred_date(vbasoftware_database, cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->create_cred_date: #{e}"
end
```

#### Using the create_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredDateVBAResponse>, Integer, Hash)> create_cred_date_with_http_info(vbasoftware_database, cred_date)

```ruby
begin
  # Create CredDate
  data, status_code, headers = api_instance.create_cred_date_with_http_info(vbasoftware_database, cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->create_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_date** | [**CredDate**](CredDate.md) |  |  |

### Return type

[**CredDateVBAResponse**](CredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_date

> delete_cred_date(vbasoftware_database, cred_date_key)

Delete CredDate

Deletes an CredDate

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_date_key = 56 # Integer | CredDate Key

begin
  # Delete CredDate
  api_instance.delete_cred_date(vbasoftware_database, cred_date_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->delete_cred_date: #{e}"
end
```

#### Using the delete_cred_date_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_date_with_http_info(vbasoftware_database, cred_date_key)

```ruby
begin
  # Delete CredDate
  data, status_code, headers = api_instance.delete_cred_date_with_http_info(vbasoftware_database, cred_date_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->delete_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_date_key** | **Integer** | CredDate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_date

> <CredDateVBAResponse> get_cred_date(vbasoftware_database, cred_date_key)

Get CredDate

Gets CredDate

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_date_key = 56 # Integer | CredDate Key

begin
  # Get CredDate
  result = api_instance.get_cred_date(vbasoftware_database, cred_date_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->get_cred_date: #{e}"
end
```

#### Using the get_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredDateVBAResponse>, Integer, Hash)> get_cred_date_with_http_info(vbasoftware_database, cred_date_key)

```ruby
begin
  # Get CredDate
  data, status_code, headers = api_instance.get_cred_date_with_http_info(vbasoftware_database, cred_date_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->get_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_date_key** | **Integer** | CredDate Key |  |

### Return type

[**CredDateVBAResponse**](CredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_date

> <CredDateListVBAResponse> list_cred_date(vbasoftware_database, opts)

List CredDate

Lists all CredDate

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredDate
  result = api_instance.list_cred_date(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->list_cred_date: #{e}"
end
```

#### Using the list_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredDateListVBAResponse>, Integer, Hash)> list_cred_date_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredDate
  data, status_code, headers = api_instance.list_cred_date_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredDateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->list_cred_date_with_http_info: #{e}"
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

[**CredDateListVBAResponse**](CredDateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_date

> <MultiCodeResponseListVBAResponse> update_batch_cred_date(vbasoftware_database, cred_date)

Create or Update Batch CredDate

Create or Update multiple CredDate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_date = [Vba::CredDate.new({cred_date_key: 37})] # Array<CredDate> | 

begin
  # Create or Update Batch CredDate
  result = api_instance.update_batch_cred_date(vbasoftware_database, cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->update_batch_cred_date: #{e}"
end
```

#### Using the update_batch_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_date_with_http_info(vbasoftware_database, cred_date)

```ruby
begin
  # Create or Update Batch CredDate
  data, status_code, headers = api_instance.update_batch_cred_date_with_http_info(vbasoftware_database, cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->update_batch_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_date** | [**Array&lt;CredDate&gt;**](CredDate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_date

> <CredDateVBAResponse> update_cred_date(vbasoftware_database, cred_date_key, cred_date)

Update CredDate

Updates a specific CredDate.

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

api_instance = Vba::CredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_date_key = 56 # Integer | CredDate Key
cred_date = Vba::CredDate.new({cred_date_key: 37}) # CredDate | 

begin
  # Update CredDate
  result = api_instance.update_cred_date(vbasoftware_database, cred_date_key, cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->update_cred_date: #{e}"
end
```

#### Using the update_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredDateVBAResponse>, Integer, Hash)> update_cred_date_with_http_info(vbasoftware_database, cred_date_key, cred_date)

```ruby
begin
  # Update CredDate
  data, status_code, headers = api_instance.update_cred_date_with_http_info(vbasoftware_database, cred_date_key, cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingDatesApi->update_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_date_key** | **Integer** | CredDate Key |  |
| **cred_date** | [**CredDate**](CredDate.md) |  |  |

### Return type

[**CredDateVBAResponse**](CredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

