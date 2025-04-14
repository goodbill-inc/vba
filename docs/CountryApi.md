# Vba::CountryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_country**](CountryApi.md#create_country) | **POST** /countries | Create Country |
| [**delete_country**](CountryApi.md#delete_country) | **DELETE** /countries/{countryID} | Delete Country |
| [**get_country**](CountryApi.md#get_country) | **GET** /countries/{countryID} | Get Country |
| [**list_countries**](CountryApi.md#list_countries) | **GET** /countries | List Countries |
| [**update_batch_country**](CountryApi.md#update_batch_country) | **PUT** /countries-batch | Create or Update Batch Country |
| [**update_country**](CountryApi.md#update_country) | **PUT** /countries/{countryID} | Update Country |


## create_country

> <CountryVBAResponse> create_country(vbasoftware_database, country)

Create Country

Creates a new Country

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country = Vba::Country.new({country_id: 'country_id_example'}) # Country | 

begin
  # Create Country
  result = api_instance.create_country(vbasoftware_database, country)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->create_country: #{e}"
end
```

#### Using the create_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryVBAResponse>, Integer, Hash)> create_country_with_http_info(vbasoftware_database, country)

```ruby
begin
  # Create Country
  data, status_code, headers = api_instance.create_country_with_http_info(vbasoftware_database, country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->create_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country** | [**Country**](Country.md) |  |  |

### Return type

[**CountryVBAResponse**](CountryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_country

> delete_country(vbasoftware_database, country_id)

Delete Country

Deletes an Country

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID

begin
  # Delete Country
  api_instance.delete_country(vbasoftware_database, country_id)
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->delete_country: #{e}"
end
```

#### Using the delete_country_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_country_with_http_info(vbasoftware_database, country_id)

```ruby
begin
  # Delete Country
  data, status_code, headers = api_instance.delete_country_with_http_info(vbasoftware_database, country_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->delete_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_country

> <CountryVBAResponse> get_country(vbasoftware_database, country_id)

Get Country

Gets Country

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID

begin
  # Get Country
  result = api_instance.get_country(vbasoftware_database, country_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->get_country: #{e}"
end
```

#### Using the get_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryVBAResponse>, Integer, Hash)> get_country_with_http_info(vbasoftware_database, country_id)

```ruby
begin
  # Get Country
  data, status_code, headers = api_instance.get_country_with_http_info(vbasoftware_database, country_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->get_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |

### Return type

[**CountryVBAResponse**](CountryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_countries

> <CountryListVBAResponse> list_countries(vbasoftware_database, opts)

List Countries

List all available countries

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Countries
  result = api_instance.list_countries(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->list_countries: #{e}"
end
```

#### Using the list_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryListVBAResponse>, Integer, Hash)> list_countries_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Countries
  data, status_code, headers = api_instance.list_countries_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->list_countries_with_http_info: #{e}"
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

[**CountryListVBAResponse**](CountryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_country

> <MultiCodeResponseListVBAResponse> update_batch_country(vbasoftware_database, country)

Create or Update Batch Country

Create or Update multiple Country at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country = [Vba::Country.new({country_id: 'country_id_example'})] # Array<Country> | 

begin
  # Create or Update Batch Country
  result = api_instance.update_batch_country(vbasoftware_database, country)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->update_batch_country: #{e}"
end
```

#### Using the update_batch_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_country_with_http_info(vbasoftware_database, country)

```ruby
begin
  # Create or Update Batch Country
  data, status_code, headers = api_instance.update_batch_country_with_http_info(vbasoftware_database, country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->update_batch_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country** | [**Array&lt;Country&gt;**](Country.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_country

> <CountryVBAResponse> update_country(vbasoftware_database, country_id, country)

Update Country

Updates a specific Country.

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

api_instance = Vba::CountryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
country_id = 'country_id_example' # String | Country ID
country = Vba::Country.new({country_id: 'country_id_example'}) # Country | 

begin
  # Update Country
  result = api_instance.update_country(vbasoftware_database, country_id, country)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->update_country: #{e}"
end
```

#### Using the update_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountryVBAResponse>, Integer, Hash)> update_country_with_http_info(vbasoftware_database, country_id, country)

```ruby
begin
  # Update Country
  data, status_code, headers = api_instance.update_country_with_http_info(vbasoftware_database, country_id, country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountryApi->update_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **country_id** | **String** | Country ID |  |
| **country** | [**Country**](Country.md) |  |  |

### Return type

[**CountryVBAResponse**](CountryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

