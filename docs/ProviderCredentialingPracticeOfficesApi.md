# Vba::ProviderCredentialingPracticeOfficesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#create_provider_cred_practice_office) | **POST** /provider-credentialing/{providerCredKey}/practice-offices | Create ProviderCredPracticeOffice |
| [**delete_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#delete_provider_cred_practice_office) | **DELETE** /provider-credentialing/{providerCredKey}/practice-offices/{payeeID} | Delete ProviderCredPracticeOffice |
| [**get_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#get_provider_cred_practice_office) | **GET** /provider-credentialing/{providerCredKey}/practice-offices/{payeeID} | Get ProviderCredPracticeOffice |
| [**list_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#list_provider_cred_practice_office) | **GET** /provider-credentialing/{providerCredKey}/practice-offices | List ProviderCredPracticeOffice |
| [**update_batch_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#update_batch_provider_cred_practice_office) | **PUT** /provider-credentialing/{providerCredKey}/practice-offices-batch | Create or Update Batch ProviderCredPracticeOffice |
| [**update_provider_cred_practice_office**](ProviderCredentialingPracticeOfficesApi.md#update_provider_cred_practice_office) | **PUT** /provider-credentialing/{providerCredKey}/practice-offices/{payeeID} | Update ProviderCredPracticeOffice |


## create_provider_cred_practice_office

> <ProviderCredPracticeOfficeVBAResponse> create_provider_cred_practice_office(vbasoftware_database, provider_cred_key, provider_cred_practice_office)

Create ProviderCredPracticeOffice

Creates a new ProviderCredPracticeOffice

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_practice_office = Vba::ProviderCredPracticeOffice.new({provider_cred_key: 37, payee_id: 'payee_id_example'}) # ProviderCredPracticeOffice | 

begin
  # Create ProviderCredPracticeOffice
  result = api_instance.create_provider_cred_practice_office(vbasoftware_database, provider_cred_key, provider_cred_practice_office)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->create_provider_cred_practice_office: #{e}"
end
```

#### Using the create_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeOfficeVBAResponse>, Integer, Hash)> create_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_office)

```ruby
begin
  # Create ProviderCredPracticeOffice
  data, status_code, headers = api_instance.create_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_office)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeOfficeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->create_provider_cred_practice_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_practice_office** | [**ProviderCredPracticeOffice**](ProviderCredPracticeOffice.md) |  |  |

### Return type

[**ProviderCredPracticeOfficeVBAResponse**](ProviderCredPracticeOfficeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_practice_office

> delete_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id)

Delete ProviderCredPracticeOffice

Deletes an ProviderCredPracticeOffice

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Delete ProviderCredPracticeOffice
  api_instance.delete_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->delete_provider_cred_practice_office: #{e}"
end
```

#### Using the delete_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id)

```ruby
begin
  # Delete ProviderCredPracticeOffice
  data, status_code, headers = api_instance.delete_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->delete_provider_cred_practice_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_practice_office

> <ProviderCredPracticeOfficeVBAResponse> get_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id)

Get ProviderCredPracticeOffice

Gets ProviderCredPracticeOffice

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
payee_id = 'payee_id_example' # String | Payee ID

begin
  # Get ProviderCredPracticeOffice
  result = api_instance.get_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->get_provider_cred_practice_office: #{e}"
end
```

#### Using the get_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeOfficeVBAResponse>, Integer, Hash)> get_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id)

```ruby
begin
  # Get ProviderCredPracticeOffice
  data, status_code, headers = api_instance.get_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeOfficeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->get_provider_cred_practice_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **payee_id** | **String** | Payee ID |  |

### Return type

[**ProviderCredPracticeOfficeVBAResponse**](ProviderCredPracticeOfficeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_practice_office

> <ProviderCredPracticeOfficeListVBAResponse> list_provider_cred_practice_office(vbasoftware_database, provider_cred_key, opts)

List ProviderCredPracticeOffice

Lists all ProviderCredPracticeOffice for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredPracticeOffice
  result = api_instance.list_provider_cred_practice_office(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->list_provider_cred_practice_office: #{e}"
end
```

#### Using the list_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeOfficeListVBAResponse>, Integer, Hash)> list_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredPracticeOffice
  data, status_code, headers = api_instance.list_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeOfficeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->list_provider_cred_practice_office_with_http_info: #{e}"
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

[**ProviderCredPracticeOfficeListVBAResponse**](ProviderCredPracticeOfficeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_practice_office

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_practice_office(vbasoftware_database, provider_cred_key, provider_cred_practice_office)

Create or Update Batch ProviderCredPracticeOffice

Create or Update multiple ProviderCredPracticeOffice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_practice_office = [Vba::ProviderCredPracticeOffice.new({provider_cred_key: 37, payee_id: 'payee_id_example'})] # Array<ProviderCredPracticeOffice> | 

begin
  # Create or Update Batch ProviderCredPracticeOffice
  result = api_instance.update_batch_provider_cred_practice_office(vbasoftware_database, provider_cred_key, provider_cred_practice_office)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->update_batch_provider_cred_practice_office: #{e}"
end
```

#### Using the update_batch_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_office)

```ruby
begin
  # Create or Update Batch ProviderCredPracticeOffice
  data, status_code, headers = api_instance.update_batch_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_office)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->update_batch_provider_cred_practice_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_practice_office** | [**Array&lt;ProviderCredPracticeOffice&gt;**](ProviderCredPracticeOffice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_practice_office

> <ProviderCredPracticeOfficeVBAResponse> update_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id, provider_cred_practice_office)

Update ProviderCredPracticeOffice

Updates a specific ProviderCredPracticeOffice.

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

api_instance = Vba::ProviderCredentialingPracticeOfficesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
payee_id = 'payee_id_example' # String | Payee ID
provider_cred_practice_office = Vba::ProviderCredPracticeOffice.new({provider_cred_key: 37, payee_id: 'payee_id_example'}) # ProviderCredPracticeOffice | 

begin
  # Update ProviderCredPracticeOffice
  result = api_instance.update_provider_cred_practice_office(vbasoftware_database, provider_cred_key, payee_id, provider_cred_practice_office)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->update_provider_cred_practice_office: #{e}"
end
```

#### Using the update_provider_cred_practice_office_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeOfficeVBAResponse>, Integer, Hash)> update_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id, provider_cred_practice_office)

```ruby
begin
  # Update ProviderCredPracticeOffice
  data, status_code, headers = api_instance.update_provider_cred_practice_office_with_http_info(vbasoftware_database, provider_cred_key, payee_id, provider_cred_practice_office)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeOfficeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticeOfficesApi->update_provider_cred_practice_office_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **payee_id** | **String** | Payee ID |  |
| **provider_cred_practice_office** | [**ProviderCredPracticeOffice**](ProviderCredPracticeOffice.md) |  |  |

### Return type

[**ProviderCredPracticeOfficeVBAResponse**](ProviderCredPracticeOfficeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

