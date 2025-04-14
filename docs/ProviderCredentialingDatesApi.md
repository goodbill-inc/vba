# Vba::ProviderCredentialingDatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_date**](ProviderCredentialingDatesApi.md#create_provider_cred_date) | **POST** /provider-credentialing/{providerCredKey}/dates | Create ProviderCredDate |
| [**delete_provider_cred_date**](ProviderCredentialingDatesApi.md#delete_provider_cred_date) | **DELETE** /provider-credentialing/{providerCredKey}/dates/{credDateKey} | Delete ProviderCredDate |
| [**get_provider_cred_date**](ProviderCredentialingDatesApi.md#get_provider_cred_date) | **GET** /provider-credentialing/{providerCredKey}/dates/{credDateKey} | Get ProviderCredDate |
| [**list_provider_cred_date**](ProviderCredentialingDatesApi.md#list_provider_cred_date) | **GET** /provider-credentialing/{providerCredKey}/dates | List ProviderCredDate |
| [**update_batch_provider_cred_date**](ProviderCredentialingDatesApi.md#update_batch_provider_cred_date) | **PUT** /provider-credentialing/{providerCredKey}/dates-batch | Create or Update Batch ProviderCredDate |
| [**update_provider_cred_date**](ProviderCredentialingDatesApi.md#update_provider_cred_date) | **PUT** /provider-credentialing/{providerCredKey}/dates/{credDateKey} | Update ProviderCredDate |


## create_provider_cred_date

> <ProviderCredDateVBAResponse> create_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date)

Create ProviderCredDate

Creates a new ProviderCredDate

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_date = Vba::ProviderCredDate.new({provider_cred_key: 37, cred_date_key: 37, effective_date: Time.now}) # ProviderCredDate | 

begin
  # Create ProviderCredDate
  result = api_instance.create_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->create_provider_cred_date: #{e}"
end
```

#### Using the create_provider_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredDateVBAResponse>, Integer, Hash)> create_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date)

```ruby
begin
  # Create ProviderCredDate
  data, status_code, headers = api_instance.create_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->create_provider_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_date** | [**ProviderCredDate**](ProviderCredDate.md) |  |  |

### Return type

[**ProviderCredDateVBAResponse**](ProviderCredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_date

> delete_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key)

Delete ProviderCredDate

Deletes an ProviderCredDate

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_date_key = 56 # Integer | CredDate Key

begin
  # Delete ProviderCredDate
  api_instance.delete_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->delete_provider_cred_date: #{e}"
end
```

#### Using the delete_provider_cred_date_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key)

```ruby
begin
  # Delete ProviderCredDate
  data, status_code, headers = api_instance.delete_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->delete_provider_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_date_key** | **Integer** | CredDate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_date

> <ProviderCredDateVBAResponse> get_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key)

Get ProviderCredDate

Gets ProviderCredDate

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_date_key = 56 # Integer | CredDate Key

begin
  # Get ProviderCredDate
  result = api_instance.get_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->get_provider_cred_date: #{e}"
end
```

#### Using the get_provider_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredDateVBAResponse>, Integer, Hash)> get_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key)

```ruby
begin
  # Get ProviderCredDate
  data, status_code, headers = api_instance.get_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->get_provider_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_date_key** | **Integer** | CredDate Key |  |

### Return type

[**ProviderCredDateVBAResponse**](ProviderCredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_date

> <ProviderCredDateListVBAResponse> list_provider_cred_date(vbasoftware_database, provider_cred_key, opts)

List ProviderCredDate

Lists all ProviderCredDate for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredDate
  result = api_instance.list_provider_cred_date(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->list_provider_cred_date: #{e}"
end
```

#### Using the list_provider_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredDateListVBAResponse>, Integer, Hash)> list_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredDate
  data, status_code, headers = api_instance.list_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredDateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->list_provider_cred_date_with_http_info: #{e}"
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

[**ProviderCredDateListVBAResponse**](ProviderCredDateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_date

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date)

Create or Update Batch ProviderCredDate

Create or Update multiple ProviderCredDate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_date = [Vba::ProviderCredDate.new({provider_cred_key: 37, cred_date_key: 37, effective_date: Time.now})] # Array<ProviderCredDate> | 

begin
  # Create or Update Batch ProviderCredDate
  result = api_instance.update_batch_provider_cred_date(vbasoftware_database, provider_cred_key, provider_cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->update_batch_provider_cred_date: #{e}"
end
```

#### Using the update_batch_provider_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date)

```ruby
begin
  # Create or Update Batch ProviderCredDate
  data, status_code, headers = api_instance.update_batch_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->update_batch_provider_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_date** | [**Array&lt;ProviderCredDate&gt;**](ProviderCredDate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_date

> <ProviderCredDateVBAResponse> update_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date)

Update ProviderCredDate

Updates a specific ProviderCredDate.

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

api_instance = Vba::ProviderCredentialingDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_date_key = 56 # Integer | CredDate Key
provider_cred_date = Vba::ProviderCredDate.new({provider_cred_key: 37, cred_date_key: 37, effective_date: Time.now}) # ProviderCredDate | 

begin
  # Update ProviderCredDate
  result = api_instance.update_provider_cred_date(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->update_provider_cred_date: #{e}"
end
```

#### Using the update_provider_cred_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredDateVBAResponse>, Integer, Hash)> update_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date)

```ruby
begin
  # Update ProviderCredDate
  data, status_code, headers = api_instance.update_provider_cred_date_with_http_info(vbasoftware_database, provider_cred_key, cred_date_key, provider_cred_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingDatesApi->update_provider_cred_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_date_key** | **Integer** | CredDate Key |  |
| **provider_cred_date** | [**ProviderCredDate**](ProviderCredDate.md) |  |  |

### Return type

[**ProviderCredDateVBAResponse**](ProviderCredDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

