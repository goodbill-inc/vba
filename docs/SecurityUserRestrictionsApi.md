# Vba::SecurityUserRestrictionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_user_restriction**](SecurityUserRestrictionsApi.md#create_security_user_restriction) | **POST** /security-user-restrictions | Create SecurityUserRestriction |
| [**delete_security_user_restriction**](SecurityUserRestrictionsApi.md#delete_security_user_restriction) | **DELETE** /security-user-restrictions/{securityUserRestrictionKey} | Delete SecurityUserRestriction |
| [**get_security_user_restriction**](SecurityUserRestrictionsApi.md#get_security_user_restriction) | **GET** /security-user-restrictions/{securityUserRestrictionKey} | Get SecurityUserRestriction |
| [**list_security_user_restriction**](SecurityUserRestrictionsApi.md#list_security_user_restriction) | **GET** /security-user-restrictions | List SecurityUserRestriction |
| [**update_batch_security_user_restriction**](SecurityUserRestrictionsApi.md#update_batch_security_user_restriction) | **PUT** /security-user-restrictions-batch | Create or Update Batch SecurityUserRestriction |
| [**update_security_user_restriction**](SecurityUserRestrictionsApi.md#update_security_user_restriction) | **PUT** /security-user-restrictions/{securityUserRestrictionKey} | Update SecurityUserRestriction |


## create_security_user_restriction

> <SecurityUserRestrictionVBAResponse> create_security_user_restriction(vbasoftware_database, security_user_restriction)

Create SecurityUserRestriction

Creates a new SecurityUserRestriction

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_restriction = Vba::SecurityUserRestriction.new({security_user_restriction_key: 37, restriction_all: false, restriction_exclude: false}) # SecurityUserRestriction | 

begin
  # Create SecurityUserRestriction
  result = api_instance.create_security_user_restriction(vbasoftware_database, security_user_restriction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->create_security_user_restriction: #{e}"
end
```

#### Using the create_security_user_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserRestrictionVBAResponse>, Integer, Hash)> create_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction)

```ruby
begin
  # Create SecurityUserRestriction
  data, status_code, headers = api_instance.create_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserRestrictionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->create_security_user_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_restriction** | [**SecurityUserRestriction**](SecurityUserRestriction.md) |  |  |

### Return type

[**SecurityUserRestrictionVBAResponse**](SecurityUserRestrictionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_user_restriction

> delete_security_user_restriction(vbasoftware_database, security_user_restriction_key)

Delete SecurityUserRestriction

Deletes an SecurityUserRestriction

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_restriction_key = 56 # Integer | SecurityUserRestriction Key

begin
  # Delete SecurityUserRestriction
  api_instance.delete_security_user_restriction(vbasoftware_database, security_user_restriction_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->delete_security_user_restriction: #{e}"
end
```

#### Using the delete_security_user_restriction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key)

```ruby
begin
  # Delete SecurityUserRestriction
  data, status_code, headers = api_instance.delete_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->delete_security_user_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_restriction_key** | **Integer** | SecurityUserRestriction Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_user_restriction

> <SecurityUserRestrictionVBAResponse> get_security_user_restriction(vbasoftware_database, security_user_restriction_key)

Get SecurityUserRestriction

Gets SecurityUserRestriction

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_restriction_key = 56 # Integer | SecurityUserRestriction Key

begin
  # Get SecurityUserRestriction
  result = api_instance.get_security_user_restriction(vbasoftware_database, security_user_restriction_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->get_security_user_restriction: #{e}"
end
```

#### Using the get_security_user_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserRestrictionVBAResponse>, Integer, Hash)> get_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key)

```ruby
begin
  # Get SecurityUserRestriction
  data, status_code, headers = api_instance.get_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserRestrictionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->get_security_user_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_restriction_key** | **Integer** | SecurityUserRestriction Key |  |

### Return type

[**SecurityUserRestrictionVBAResponse**](SecurityUserRestrictionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_user_restriction

> <SecurityUserRestrictionListVBAResponse> list_security_user_restriction(vbasoftware_database, opts)

List SecurityUserRestriction

Lists all SecurityUserRestriction

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SecurityUserRestriction
  result = api_instance.list_security_user_restriction(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->list_security_user_restriction: #{e}"
end
```

#### Using the list_security_user_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserRestrictionListVBAResponse>, Integer, Hash)> list_security_user_restriction_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityUserRestriction
  data, status_code, headers = api_instance.list_security_user_restriction_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserRestrictionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->list_security_user_restriction_with_http_info: #{e}"
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

[**SecurityUserRestrictionListVBAResponse**](SecurityUserRestrictionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_user_restriction

> <MultiCodeResponseListVBAResponse> update_batch_security_user_restriction(vbasoftware_database, security_user_restriction)

Create or Update Batch SecurityUserRestriction

Create or Update multiple SecurityUserRestriction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_restriction = [Vba::SecurityUserRestriction.new({security_user_restriction_key: 37, restriction_all: false, restriction_exclude: false})] # Array<SecurityUserRestriction> | 

begin
  # Create or Update Batch SecurityUserRestriction
  result = api_instance.update_batch_security_user_restriction(vbasoftware_database, security_user_restriction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->update_batch_security_user_restriction: #{e}"
end
```

#### Using the update_batch_security_user_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction)

```ruby
begin
  # Create or Update Batch SecurityUserRestriction
  data, status_code, headers = api_instance.update_batch_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->update_batch_security_user_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_restriction** | [**Array&lt;SecurityUserRestriction&gt;**](SecurityUserRestriction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_user_restriction

> <SecurityUserRestrictionVBAResponse> update_security_user_restriction(vbasoftware_database, security_user_restriction_key, security_user_restriction)

Update SecurityUserRestriction

Updates a specific SecurityUserRestriction.

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

api_instance = Vba::SecurityUserRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_user_restriction_key = 56 # Integer | SecurityUserRestriction Key
security_user_restriction = Vba::SecurityUserRestriction.new({security_user_restriction_key: 37, restriction_all: false, restriction_exclude: false}) # SecurityUserRestriction | 

begin
  # Update SecurityUserRestriction
  result = api_instance.update_security_user_restriction(vbasoftware_database, security_user_restriction_key, security_user_restriction)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->update_security_user_restriction: #{e}"
end
```

#### Using the update_security_user_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityUserRestrictionVBAResponse>, Integer, Hash)> update_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key, security_user_restriction)

```ruby
begin
  # Update SecurityUserRestriction
  data, status_code, headers = api_instance.update_security_user_restriction_with_http_info(vbasoftware_database, security_user_restriction_key, security_user_restriction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityUserRestrictionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityUserRestrictionsApi->update_security_user_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_user_restriction_key** | **Integer** | SecurityUserRestriction Key |  |
| **security_user_restriction** | [**SecurityUserRestriction**](SecurityUserRestriction.md) |  |  |

### Return type

[**SecurityUserRestrictionVBAResponse**](SecurityUserRestrictionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

