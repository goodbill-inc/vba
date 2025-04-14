# Vba::CountyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_county**](CountyApi.md#create_county) | **POST** /counties | Create County |
| [**delete_county**](CountyApi.md#delete_county) | **DELETE** /counties/{countyCode} | Delete County |
| [**get_county**](CountyApi.md#get_county) | **GET** /counties/{countyCode} | Get County |
| [**list_counties**](CountyApi.md#list_counties) | **GET** /counties | List Counties |
| [**update_batch_county**](CountyApi.md#update_batch_county) | **PUT** /counties-batch | Create or Update Batch County |
| [**update_county**](CountyApi.md#update_county) | **PUT** /counties/{countyCode} | Update County |


## create_county

> <CountyVBAResponse> create_county(vbasoftware_database, county)

Create County

Creates a new County

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
county = Vba::County.new({county_code: 'county_code_example'}) # County | 

begin
  # Create County
  result = api_instance.create_county(vbasoftware_database, county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->create_county: #{e}"
end
```

#### Using the create_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountyVBAResponse>, Integer, Hash)> create_county_with_http_info(vbasoftware_database, county)

```ruby
begin
  # Create County
  data, status_code, headers = api_instance.create_county_with_http_info(vbasoftware_database, county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->create_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **county** | [**County**](County.md) |  |  |

### Return type

[**CountyVBAResponse**](CountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_county

> delete_county(vbasoftware_database, county_code)

Delete County

Deletes an County

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
county_code = 'county_code_example' # String | County Code

begin
  # Delete County
  api_instance.delete_county(vbasoftware_database, county_code)
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->delete_county: #{e}"
end
```

#### Using the delete_county_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_county_with_http_info(vbasoftware_database, county_code)

```ruby
begin
  # Delete County
  data, status_code, headers = api_instance.delete_county_with_http_info(vbasoftware_database, county_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->delete_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **county_code** | **String** | County Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_county

> <CountyVBAResponse> get_county(vbasoftware_database, county_code)

Get County

Gets County

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
county_code = 'county_code_example' # String | County Code

begin
  # Get County
  result = api_instance.get_county(vbasoftware_database, county_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->get_county: #{e}"
end
```

#### Using the get_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountyVBAResponse>, Integer, Hash)> get_county_with_http_info(vbasoftware_database, county_code)

```ruby
begin
  # Get County
  data, status_code, headers = api_instance.get_county_with_http_info(vbasoftware_database, county_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->get_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **county_code** | **String** | County Code |  |

### Return type

[**CountyVBAResponse**](CountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_counties

> <CountyListVBAResponse> list_counties(vbasoftware_database, opts)

List Counties

List all available counties

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Counties
  result = api_instance.list_counties(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->list_counties: #{e}"
end
```

#### Using the list_counties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountyListVBAResponse>, Integer, Hash)> list_counties_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Counties
  data, status_code, headers = api_instance.list_counties_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->list_counties_with_http_info: #{e}"
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

[**CountyListVBAResponse**](CountyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_county

> <MultiCodeResponseListVBAResponse> update_batch_county(vbasoftware_database, county)

Create or Update Batch County

Create or Update multiple County at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
county = [Vba::County.new({county_code: 'county_code_example'})] # Array<County> | 

begin
  # Create or Update Batch County
  result = api_instance.update_batch_county(vbasoftware_database, county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->update_batch_county: #{e}"
end
```

#### Using the update_batch_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_county_with_http_info(vbasoftware_database, county)

```ruby
begin
  # Create or Update Batch County
  data, status_code, headers = api_instance.update_batch_county_with_http_info(vbasoftware_database, county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->update_batch_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **county** | [**Array&lt;County&gt;**](County.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_county

> <CountyVBAResponse> update_county(vbasoftware_database, county_code, county)

Update County

Updates a specific County.

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

api_instance = Vba::CountyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
county_code = 'county_code_example' # String | County Code
county = Vba::County.new({county_code: 'county_code_example'}) # County | 

begin
  # Update County
  result = api_instance.update_county(vbasoftware_database, county_code, county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->update_county: #{e}"
end
```

#### Using the update_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountyVBAResponse>, Integer, Hash)> update_county_with_http_info(vbasoftware_database, county_code, county)

```ruby
begin
  # Update County
  data, status_code, headers = api_instance.update_county_with_http_info(vbasoftware_database, county_code, county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CountyApi->update_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **county_code** | **String** | County Code |  |
| **county** | [**County**](County.md) |  |  |

### Return type

[**CountyVBAResponse**](CountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

