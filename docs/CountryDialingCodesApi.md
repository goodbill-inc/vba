# Vba::CountryDialingCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_country_dialing_code**](CountryDialingCodesApi.md#create_country_dialing_code) | **POST** /country-dialing-codes | Create CountryDialingCode |
| [**delete_country_dialing_code**](CountryDialingCodesApi.md#delete_country_dialing_code) | **DELETE** /country-dialing-codes/{countryID}/{countryCode} | Delete CountryDialingCode |
| [**get_country_dialing_code**](CountryDialingCodesApi.md#get_country_dialing_code) | **GET** /country-dialing-codes/{countryID}/{countryCode} | Get CountryDialingCode |
| [**list_country_dialing_code**](CountryDialingCodesApi.md#list_country_dialing_code) | **GET** /country-dialing-codes | List CountryDialingCode |
| [**update_batch_country_dialing_code**](CountryDialingCodesApi.md#update_batch_country_dialing_code) | **PUT** /country-dialing-codes-batch | Create or Update Batch CountryDialingCode |
| [**update_country_dialing_code**](CountryDialingCodesApi.md#update_country_dialing_code) | **PUT** /country-dialing-codes/{countryID}/{countryCode} | Update CountryDialingCode |


## create_country_dialing_code

> <CountryDialingCodeVBAResponse> create_country_dialing_code(vbasoftware_database, country_dialing_code)

Create CountryDialingCode

Creates a new CountryDialingCode

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_dialing_code = Vba::CountryDialingCode.new({country_id: 'country_id_example', country_code: 'country_code_example'}) # CountryDialingCode | 

begin
  # Create CountryDialingCode
  result = api_instance.create_country_dialing_code(vbasoftware_database, country_dialing_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->create_country_dialing_code: #{e}"
end
```

#### Using the create_country_dialing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryDialingCodeVBAResponse>, Integer, Hash)> create_country_dialing_code_with_http_info(vbasoftware_database, country_dialing_code)

```ruby
begin
  # Create CountryDialingCode
  data, status_code, headers = api_instance.create_country_dialing_code_with_http_info(vbasoftware_database, country_dialing_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryDialingCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->create_country_dialing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_dialing_code** | [**CountryDialingCode**](CountryDialingCode.md) |  |  |

### Return type

[**CountryDialingCodeVBAResponse**](CountryDialingCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_country_dialing_code

> delete_country_dialing_code(vbasoftware_database, country_id, country_code)

Delete CountryDialingCode

Deletes an CountryDialingCode

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID
country_code = 'country_code_example' # String | Country Code

begin
  # Delete CountryDialingCode
  api_instance.delete_country_dialing_code(vbasoftware_database, country_id, country_code)
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->delete_country_dialing_code: #{e}"
end
```

#### Using the delete_country_dialing_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code)

```ruby
begin
  # Delete CountryDialingCode
  data, status_code, headers = api_instance.delete_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->delete_country_dialing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |
| **country_code** | **String** | Country Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_country_dialing_code

> <CountryDialingCodeVBAResponse> get_country_dialing_code(vbasoftware_database, country_id, country_code)

Get CountryDialingCode

Gets CountryDialingCode

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID
country_code = 'country_code_example' # String | Country Code

begin
  # Get CountryDialingCode
  result = api_instance.get_country_dialing_code(vbasoftware_database, country_id, country_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->get_country_dialing_code: #{e}"
end
```

#### Using the get_country_dialing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryDialingCodeVBAResponse>, Integer, Hash)> get_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code)

```ruby
begin
  # Get CountryDialingCode
  data, status_code, headers = api_instance.get_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryDialingCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->get_country_dialing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |
| **country_code** | **String** | Country Code |  |

### Return type

[**CountryDialingCodeVBAResponse**](CountryDialingCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_country_dialing_code

> <CountryDialingCodeListVBAResponse> list_country_dialing_code(vbasoftware_database, opts)

List CountryDialingCode

Lists all CountryDialingCode

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CountryDialingCode
  result = api_instance.list_country_dialing_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->list_country_dialing_code: #{e}"
end
```

#### Using the list_country_dialing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryDialingCodeListVBAResponse>, Integer, Hash)> list_country_dialing_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CountryDialingCode
  data, status_code, headers = api_instance.list_country_dialing_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryDialingCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->list_country_dialing_code_with_http_info: #{e}"
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

[**CountryDialingCodeListVBAResponse**](CountryDialingCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_country_dialing_code

> <MultiCodeResponseListVBAResponse> update_batch_country_dialing_code(vbasoftware_database, country_dialing_code)

Create or Update Batch CountryDialingCode

Create or Update multiple CountryDialingCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_dialing_code = [Vba::CountryDialingCode.new({country_id: 'country_id_example', country_code: 'country_code_example'})] # Array<CountryDialingCode> | 

begin
  # Create or Update Batch CountryDialingCode
  result = api_instance.update_batch_country_dialing_code(vbasoftware_database, country_dialing_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->update_batch_country_dialing_code: #{e}"
end
```

#### Using the update_batch_country_dialing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_country_dialing_code_with_http_info(vbasoftware_database, country_dialing_code)

```ruby
begin
  # Create or Update Batch CountryDialingCode
  data, status_code, headers = api_instance.update_batch_country_dialing_code_with_http_info(vbasoftware_database, country_dialing_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->update_batch_country_dialing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_dialing_code** | [**Array&lt;CountryDialingCode&gt;**](CountryDialingCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_country_dialing_code

> <CountryDialingCodeVBAResponse> update_country_dialing_code(vbasoftware_database, country_id, country_code, country_dialing_code)

Update CountryDialingCode

Updates a specific CountryDialingCode.

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

api_instance = Vba::CountryDialingCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID
country_code = 'country_code_example' # String | Country Code
country_dialing_code = Vba::CountryDialingCode.new({country_id: 'country_id_example', country_code: 'country_code_example'}) # CountryDialingCode | 

begin
  # Update CountryDialingCode
  result = api_instance.update_country_dialing_code(vbasoftware_database, country_id, country_code, country_dialing_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->update_country_dialing_code: #{e}"
end
```

#### Using the update_country_dialing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryDialingCodeVBAResponse>, Integer, Hash)> update_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code, country_dialing_code)

```ruby
begin
  # Update CountryDialingCode
  data, status_code, headers = api_instance.update_country_dialing_code_with_http_info(vbasoftware_database, country_id, country_code, country_dialing_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryDialingCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryDialingCodesApi->update_country_dialing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |
| **country_code** | **String** | Country Code |  |
| **country_dialing_code** | [**CountryDialingCode**](CountryDialingCode.md) |  |  |

### Return type

[**CountryDialingCodeVBAResponse**](CountryDialingCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

