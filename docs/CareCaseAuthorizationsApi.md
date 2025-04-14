# Vba::CareCaseAuthorizationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_auth**](CareCaseAuthorizationsApi.md#create_care_case_auth) | **POST** /cases/{caseKey}/authorizations | Create CareCaseAuth |
| [**delete_care_case_auth**](CareCaseAuthorizationsApi.md#delete_care_case_auth) | **DELETE** /cases/{caseKey}/authorizations/{careCaseAuthKey} | Delete CareCaseAuth |
| [**get_care_case_auth**](CareCaseAuthorizationsApi.md#get_care_case_auth) | **GET** /cases/{caseKey}/authorizations/{careCaseAuthKey} | Get CareCaseAuth |
| [**list_care_case_auth**](CareCaseAuthorizationsApi.md#list_care_case_auth) | **GET** /cases/{caseKey}/authorizations | List CareCaseAuth |
| [**update_batch_care_case_auth**](CareCaseAuthorizationsApi.md#update_batch_care_case_auth) | **PUT** /cases/{caseKey}/authorizations-batch | Create or Update Batch CareCaseAuth |
| [**update_care_case_auth**](CareCaseAuthorizationsApi.md#update_care_case_auth) | **PUT** /cases/{caseKey}/authorizations/{careCaseAuthKey} | Update CareCaseAuth |


## create_care_case_auth

> <CareCaseAuthVBAResponse> create_care_case_auth(vbasoftware_database, case_key, care_case_auth)

Create CareCaseAuth

Creates a new CareCaseAuth

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_auth = Vba::CareCaseAuth.new({care_case_auth_key: 37}) # CareCaseAuth | 

begin
  # Create CareCaseAuth
  result = api_instance.create_care_case_auth(vbasoftware_database, case_key, care_case_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->create_care_case_auth: #{e}"
end
```

#### Using the create_care_case_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseAuthVBAResponse>, Integer, Hash)> create_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth)

```ruby
begin
  # Create CareCaseAuth
  data, status_code, headers = api_instance.create_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->create_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_auth** | [**CareCaseAuth**](CareCaseAuth.md) |  |  |

### Return type

[**CareCaseAuthVBAResponse**](CareCaseAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_auth

> delete_care_case_auth(vbasoftware_database, case_key, care_case_auth_key)

Delete CareCaseAuth

Deletes an CareCaseAuth

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_auth_key = 56 # Integer | CareCaseAuth Key

begin
  # Delete CareCaseAuth
  api_instance.delete_care_case_auth(vbasoftware_database, case_key, care_case_auth_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->delete_care_case_auth: #{e}"
end
```

#### Using the delete_care_case_auth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key)

```ruby
begin
  # Delete CareCaseAuth
  data, status_code, headers = api_instance.delete_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->delete_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_auth_key** | **Integer** | CareCaseAuth Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_auth

> <CareCaseAuthVBAResponse> get_care_case_auth(vbasoftware_database, case_key, care_case_auth_key)

Get CareCaseAuth

Gets CareCaseAuth

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_auth_key = 56 # Integer | CareCaseAuth Key

begin
  # Get CareCaseAuth
  result = api_instance.get_care_case_auth(vbasoftware_database, case_key, care_case_auth_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->get_care_case_auth: #{e}"
end
```

#### Using the get_care_case_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseAuthVBAResponse>, Integer, Hash)> get_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key)

```ruby
begin
  # Get CareCaseAuth
  data, status_code, headers = api_instance.get_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->get_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_auth_key** | **Integer** | CareCaseAuth Key |  |

### Return type

[**CareCaseAuthVBAResponse**](CareCaseAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_auth

> <CareCaseAuthListVBAResponse> list_care_case_auth(vbasoftware_database, case_key, opts)

List CareCaseAuth

Lists all CareCaseAuth for the given caseKey

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseAuth
  result = api_instance.list_care_case_auth(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->list_care_case_auth: #{e}"
end
```

#### Using the list_care_case_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseAuthListVBAResponse>, Integer, Hash)> list_care_case_auth_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseAuth
  data, status_code, headers = api_instance.list_care_case_auth_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseAuthListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->list_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseAuthListVBAResponse**](CareCaseAuthListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_auth

> <MultiCodeResponseListVBAResponse> update_batch_care_case_auth(vbasoftware_database, case_key, care_case_auth)

Create or Update Batch CareCaseAuth

Create or Update multiple CareCaseAuth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_auth = [Vba::CareCaseAuth.new({care_case_auth_key: 37})] # Array<CareCaseAuth> | 

begin
  # Create or Update Batch CareCaseAuth
  result = api_instance.update_batch_care_case_auth(vbasoftware_database, case_key, care_case_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->update_batch_care_case_auth: #{e}"
end
```

#### Using the update_batch_care_case_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth)

```ruby
begin
  # Create or Update Batch CareCaseAuth
  data, status_code, headers = api_instance.update_batch_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->update_batch_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_auth** | [**Array&lt;CareCaseAuth&gt;**](CareCaseAuth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_auth

> <CareCaseAuthVBAResponse> update_care_case_auth(vbasoftware_database, case_key, care_case_auth_key, care_case_auth)

Update CareCaseAuth

Updates a specific CareCaseAuth.

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

api_instance = Vba::CareCaseAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_auth_key = 56 # Integer | CareCaseAuth Key
care_case_auth = Vba::CareCaseAuth.new({care_case_auth_key: 37}) # CareCaseAuth | 

begin
  # Update CareCaseAuth
  result = api_instance.update_care_case_auth(vbasoftware_database, case_key, care_case_auth_key, care_case_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->update_care_case_auth: #{e}"
end
```

#### Using the update_care_case_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseAuthVBAResponse>, Integer, Hash)> update_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key, care_case_auth)

```ruby
begin
  # Update CareCaseAuth
  data, status_code, headers = api_instance.update_care_case_auth_with_http_info(vbasoftware_database, case_key, care_case_auth_key, care_case_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseAuthorizationsApi->update_care_case_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_auth_key** | **Integer** | CareCaseAuth Key |  |
| **care_case_auth** | [**CareCaseAuth**](CareCaseAuth.md) |  |  |

### Return type

[**CareCaseAuthVBAResponse**](CareCaseAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

