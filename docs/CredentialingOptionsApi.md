# Vba::CredentialingOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_option**](CredentialingOptionsApi.md#create_cred_option) | **POST** /credentialing-options | Create CredOption |
| [**delete_cred_option**](CredentialingOptionsApi.md#delete_cred_option) | **DELETE** /credentialing-options/{credOptionKey} | Delete CredOption |
| [**get_cred_option**](CredentialingOptionsApi.md#get_cred_option) | **GET** /credentialing-options/{credOptionKey} | Get CredOption |
| [**list_cred_option**](CredentialingOptionsApi.md#list_cred_option) | **GET** /credentialing-options | List CredOption |
| [**update_batch_cred_option**](CredentialingOptionsApi.md#update_batch_cred_option) | **PUT** /credentialing-options-batch | Create or Update Batch CredOption |
| [**update_cred_option**](CredentialingOptionsApi.md#update_cred_option) | **PUT** /credentialing-options/{credOptionKey} | Update CredOption |


## create_cred_option

> <CredOptionVBAResponse> create_cred_option(vbasoftware_database, cred_option)

Create CredOption

Creates a new CredOption

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_option = Vba::CredOption.new({cred_option_key: 37}) # CredOption | 

begin
  # Create CredOption
  result = api_instance.create_cred_option(vbasoftware_database, cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->create_cred_option: #{e}"
end
```

#### Using the create_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredOptionVBAResponse>, Integer, Hash)> create_cred_option_with_http_info(vbasoftware_database, cred_option)

```ruby
begin
  # Create CredOption
  data, status_code, headers = api_instance.create_cred_option_with_http_info(vbasoftware_database, cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->create_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_option** | [**CredOption**](CredOption.md) |  |  |

### Return type

[**CredOptionVBAResponse**](CredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_option

> delete_cred_option(vbasoftware_database, cred_option_key)

Delete CredOption

Deletes an CredOption

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_option_key = 56 # Integer | CredOption Key

begin
  # Delete CredOption
  api_instance.delete_cred_option(vbasoftware_database, cred_option_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->delete_cred_option: #{e}"
end
```

#### Using the delete_cred_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_option_with_http_info(vbasoftware_database, cred_option_key)

```ruby
begin
  # Delete CredOption
  data, status_code, headers = api_instance.delete_cred_option_with_http_info(vbasoftware_database, cred_option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->delete_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_option_key** | **Integer** | CredOption Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_option

> <CredOptionVBAResponse> get_cred_option(vbasoftware_database, cred_option_key)

Get CredOption

Gets CredOption

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_option_key = 56 # Integer | CredOption Key

begin
  # Get CredOption
  result = api_instance.get_cred_option(vbasoftware_database, cred_option_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->get_cred_option: #{e}"
end
```

#### Using the get_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredOptionVBAResponse>, Integer, Hash)> get_cred_option_with_http_info(vbasoftware_database, cred_option_key)

```ruby
begin
  # Get CredOption
  data, status_code, headers = api_instance.get_cred_option_with_http_info(vbasoftware_database, cred_option_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->get_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_option_key** | **Integer** | CredOption Key |  |

### Return type

[**CredOptionVBAResponse**](CredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_option

> <CredOptionListVBAResponse> list_cred_option(vbasoftware_database, opts)

List CredOption

Lists all CredOption

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredOption
  result = api_instance.list_cred_option(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->list_cred_option: #{e}"
end
```

#### Using the list_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredOptionListVBAResponse>, Integer, Hash)> list_cred_option_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredOption
  data, status_code, headers = api_instance.list_cred_option_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->list_cred_option_with_http_info: #{e}"
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

[**CredOptionListVBAResponse**](CredOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_option

> <MultiCodeResponseListVBAResponse> update_batch_cred_option(vbasoftware_database, cred_option)

Create or Update Batch CredOption

Create or Update multiple CredOption at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_option = [Vba::CredOption.new({cred_option_key: 37})] # Array<CredOption> | 

begin
  # Create or Update Batch CredOption
  result = api_instance.update_batch_cred_option(vbasoftware_database, cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->update_batch_cred_option: #{e}"
end
```

#### Using the update_batch_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_option_with_http_info(vbasoftware_database, cred_option)

```ruby
begin
  # Create or Update Batch CredOption
  data, status_code, headers = api_instance.update_batch_cred_option_with_http_info(vbasoftware_database, cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->update_batch_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_option** | [**Array&lt;CredOption&gt;**](CredOption.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_option

> <CredOptionVBAResponse> update_cred_option(vbasoftware_database, cred_option_key, cred_option)

Update CredOption

Updates a specific CredOption.

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

api_instance = Vba::CredentialingOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_option_key = 56 # Integer | CredOption Key
cred_option = Vba::CredOption.new({cred_option_key: 37}) # CredOption | 

begin
  # Update CredOption
  result = api_instance.update_cred_option(vbasoftware_database, cred_option_key, cred_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->update_cred_option: #{e}"
end
```

#### Using the update_cred_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredOptionVBAResponse>, Integer, Hash)> update_cred_option_with_http_info(vbasoftware_database, cred_option_key, cred_option)

```ruby
begin
  # Update CredOption
  data, status_code, headers = api_instance.update_cred_option_with_http_info(vbasoftware_database, cred_option_key, cred_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingOptionsApi->update_cred_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_option_key** | **Integer** | CredOption Key |  |
| **cred_option** | [**CredOption**](CredOption.md) |  |  |

### Return type

[**CredOptionVBAResponse**](CredOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

