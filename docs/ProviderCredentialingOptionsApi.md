# Vba::ProviderCredentialingOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_option**](ProviderCredentialingOptionsApi.md#create_provider_cred_option) | **POST** /provider-credentialing/{providerCredKey}/options | Create ProviderCredOption |
| [**delete_provider_cred_option**](ProviderCredentialingOptionsApi.md#delete_provider_cred_option) | **DELETE** /provider-credentialing/{providerCredKey}/options/{credOptionKey} | Delete ProviderCredOption |
| [**get_provider_cred_option**](ProviderCredentialingOptionsApi.md#get_provider_cred_option) | **GET** /provider-credentialing/{providerCredKey}/options/{credOptionKey} | Get ProviderCredOption |
| [**list_provider_cred_option**](ProviderCredentialingOptionsApi.md#list_provider_cred_option) | **GET** /provider-credentialing/{providerCredKey}/options | List ProviderCredOption |
| [**update_batch_provider_cred_option**](ProviderCredentialingOptionsApi.md#update_batch_provider_cred_option) | **PUT** /provider-credentialing/{providerCredKey}/options-batch | Create or Update Batch ProviderCredOption |
| [**update_provider_cred_option**](ProviderCredentialingOptionsApi.md#update_provider_cred_option) | **PUT** /provider-credentialing/{providerCredKey}/options/{credOptionKey} | Update ProviderCredOption |


## create_provider_cred_option

> <ProviderCredOptionVBAResponse> create_provider_cred_option(vbasoftware_database, provider_cred_key, provider_cred_option)

Create ProviderCredOption

Creates a new ProviderCredOption

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_option = Vba::ProviderCredOption.new({provider_cred_key: 37, cred_option_key: 37}) # ProviderCredOption | 

begin
  # Create ProviderCredOption
  result = api_instance.create_provider_cred_option(vbasoftware_database, provider_cred_key, provider_cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->create_provider_cred_option: #{e}"
end
```

#### Using the create_provider_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredOptionVBAResponse>, Integer, Hash)> create_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_option)

```ruby
begin
  # Create ProviderCredOption
  data, status_code, headers = api_instance.create_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->create_provider_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_option** | [**ProviderCredOption**](ProviderCredOption.md) |  |  |

### Return type

[**ProviderCredOptionVBAResponse**](ProviderCredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_option

> delete_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key)

Delete ProviderCredOption

Deletes an ProviderCredOption

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_option_key = 56 # Integer | CredOption Key

begin
  # Delete ProviderCredOption
  api_instance.delete_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->delete_provider_cred_option: #{e}"
end
```

#### Using the delete_provider_cred_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key)

```ruby
begin
  # Delete ProviderCredOption
  data, status_code, headers = api_instance.delete_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->delete_provider_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_option_key** | **Integer** | CredOption Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_option

> <ProviderCredOptionVBAResponse> get_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key)

Get ProviderCredOption

Gets ProviderCredOption

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_option_key = 56 # Integer | CredOption Key

begin
  # Get ProviderCredOption
  result = api_instance.get_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->get_provider_cred_option: #{e}"
end
```

#### Using the get_provider_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredOptionVBAResponse>, Integer, Hash)> get_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key)

```ruby
begin
  # Get ProviderCredOption
  data, status_code, headers = api_instance.get_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->get_provider_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_option_key** | **Integer** | CredOption Key |  |

### Return type

[**ProviderCredOptionVBAResponse**](ProviderCredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_option

> <ProviderCredOptionListVBAResponse> list_provider_cred_option(vbasoftware_database, provider_cred_key, opts)

List ProviderCredOption

Lists all ProviderCredOption for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredOption
  result = api_instance.list_provider_cred_option(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->list_provider_cred_option: #{e}"
end
```

#### Using the list_provider_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredOptionListVBAResponse>, Integer, Hash)> list_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredOption
  data, status_code, headers = api_instance.list_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->list_provider_cred_option_with_http_info: #{e}"
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

[**ProviderCredOptionListVBAResponse**](ProviderCredOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_option

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_option(vbasoftware_database, provider_cred_key, provider_cred_option)

Create or Update Batch ProviderCredOption

Create or Update multiple ProviderCredOption at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_option = [Vba::ProviderCredOption.new({provider_cred_key: 37, cred_option_key: 37})] # Array<ProviderCredOption> | 

begin
  # Create or Update Batch ProviderCredOption
  result = api_instance.update_batch_provider_cred_option(vbasoftware_database, provider_cred_key, provider_cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->update_batch_provider_cred_option: #{e}"
end
```

#### Using the update_batch_provider_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_option)

```ruby
begin
  # Create or Update Batch ProviderCredOption
  data, status_code, headers = api_instance.update_batch_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->update_batch_provider_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_option** | [**Array&lt;ProviderCredOption&gt;**](ProviderCredOption.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_option

> <ProviderCredOptionVBAResponse> update_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key, provider_cred_option)

Update ProviderCredOption

Updates a specific ProviderCredOption.

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

api_instance = Vba::ProviderCredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_option_key = 56 # Integer | CredOption Key
provider_cred_option = Vba::ProviderCredOption.new({provider_cred_key: 37, cred_option_key: 37}) # ProviderCredOption | 

begin
  # Update ProviderCredOption
  result = api_instance.update_provider_cred_option(vbasoftware_database, provider_cred_key, cred_option_key, provider_cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->update_provider_cred_option: #{e}"
end
```

#### Using the update_provider_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredOptionVBAResponse>, Integer, Hash)> update_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key, provider_cred_option)

```ruby
begin
  # Update ProviderCredOption
  data, status_code, headers = api_instance.update_provider_cred_option_with_http_info(vbasoftware_database, provider_cred_key, cred_option_key, provider_cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingOptionsApi->update_provider_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_option_key** | **Integer** | CredOption Key |  |
| **provider_cred_option** | [**ProviderCredOption**](ProviderCredOption.md) |  |  |

### Return type

[**ProviderCredOptionVBAResponse**](ProviderCredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

