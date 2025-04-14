# Vba::GenderApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_gender**](GenderApi.md#create_gender) | **POST** /genders | Create Gender |
| [**delete_gender**](GenderApi.md#delete_gender) | **DELETE** /genders/{Gender_Code} | Delete Gender |
| [**get_gender**](GenderApi.md#get_gender) | **GET** /genders/{Gender_Code} | Get Gender |
| [**list_gender**](GenderApi.md#list_gender) | **GET** /genders | List Gender |
| [**update_batch_gender**](GenderApi.md#update_batch_gender) | **PUT** /genders-batch | Create or Update Batch Gender |
| [**update_gender**](GenderApi.md#update_gender) | **PUT** /genders/{Gender_Code} | Update Gender |


## create_gender

> <GenderVBAResponse> create_gender(vbasoftware_database, gender)

Create Gender

Creates a new Gender

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
gender = Vba::Gender.new({gender_code: 'gender_code_example'}) # Gender | 

begin
  # Create Gender
  result = api_instance.create_gender(vbasoftware_database, gender)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->create_gender: #{e}"
end
```

#### Using the create_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenderVBAResponse>, Integer, Hash)> create_gender_with_http_info(vbasoftware_database, gender)

```ruby
begin
  # Create Gender
  data, status_code, headers = api_instance.create_gender_with_http_info(vbasoftware_database, gender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->create_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **gender** | [**Gender**](Gender.md) |  |  |

### Return type

[**GenderVBAResponse**](GenderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_gender

> delete_gender(vbasoftware_database, gender_code)

Delete Gender

Deletes an Gender

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
gender_code = 'gender_code_example' # String | Gender Code

begin
  # Delete Gender
  api_instance.delete_gender(vbasoftware_database, gender_code)
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->delete_gender: #{e}"
end
```

#### Using the delete_gender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_gender_with_http_info(vbasoftware_database, gender_code)

```ruby
begin
  # Delete Gender
  data, status_code, headers = api_instance.delete_gender_with_http_info(vbasoftware_database, gender_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->delete_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **gender_code** | **String** | Gender Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_gender

> <GenderVBAResponse> get_gender(vbasoftware_database, gender_code)

Get Gender

Gets Gender

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
gender_code = 'gender_code_example' # String | Gender Code

begin
  # Get Gender
  result = api_instance.get_gender(vbasoftware_database, gender_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->get_gender: #{e}"
end
```

#### Using the get_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenderVBAResponse>, Integer, Hash)> get_gender_with_http_info(vbasoftware_database, gender_code)

```ruby
begin
  # Get Gender
  data, status_code, headers = api_instance.get_gender_with_http_info(vbasoftware_database, gender_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->get_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **gender_code** | **String** | Gender Code |  |

### Return type

[**GenderVBAResponse**](GenderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_gender

> <GenderListVBAResponse> list_gender(vbasoftware_database, opts)

List Gender

Lists all Gender

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List Gender
  result = api_instance.list_gender(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->list_gender: #{e}"
end
```

#### Using the list_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenderListVBAResponse>, Integer, Hash)> list_gender_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Gender
  data, status_code, headers = api_instance.list_gender_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->list_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**GenderListVBAResponse**](GenderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_gender

> <MultiCodeResponseListVBAResponse> update_batch_gender(vbasoftware_database, gender)

Create or Update Batch Gender

Create or Update multiple Gender at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
gender = [Vba::Gender.new({gender_code: 'gender_code_example'})] # Array<Gender> | 

begin
  # Create or Update Batch Gender
  result = api_instance.update_batch_gender(vbasoftware_database, gender)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->update_batch_gender: #{e}"
end
```

#### Using the update_batch_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_gender_with_http_info(vbasoftware_database, gender)

```ruby
begin
  # Create or Update Batch Gender
  data, status_code, headers = api_instance.update_batch_gender_with_http_info(vbasoftware_database, gender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->update_batch_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **gender** | [**Array&lt;Gender&gt;**](Gender.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_gender

> <GenderVBAResponse> update_gender(vbasoftware_database, gender_code, gender)

Update Gender

Updates a specific Gender.

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

api_instance = Vba::GenderApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
gender_code = 'gender_code_example' # String | Gender Code
gender = Vba::Gender.new({gender_code: 'gender_code_example'}) # Gender | 

begin
  # Update Gender
  result = api_instance.update_gender(vbasoftware_database, gender_code, gender)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->update_gender: #{e}"
end
```

#### Using the update_gender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenderVBAResponse>, Integer, Hash)> update_gender_with_http_info(vbasoftware_database, gender_code, gender)

```ruby
begin
  # Update Gender
  data, status_code, headers = api_instance.update_gender_with_http_info(vbasoftware_database, gender_code, gender)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GenderApi->update_gender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **gender_code** | **String** | Gender Code |  |
| **gender** | [**Gender**](Gender.md) |  |  |

### Return type

[**GenderVBAResponse**](GenderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

