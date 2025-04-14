# Vba::ProviderCredentialingCountiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_county**](ProviderCredentialingCountiesApi.md#create_provider_cred_county) | **POST** /provider-credentialing/{providerCredKey}/counties | Create ProviderCredCounty |
| [**delete_provider_cred_county**](ProviderCredentialingCountiesApi.md#delete_provider_cred_county) | **DELETE** /provider-credentialing/{providerCredKey}/counties/{countyCode} | Delete ProviderCredCounty |
| [**get_provider_cred_county**](ProviderCredentialingCountiesApi.md#get_provider_cred_county) | **GET** /provider-credentialing/{providerCredKey}/counties/{countyCode} | Get ProviderCredCounty |
| [**list_provider_cred_county**](ProviderCredentialingCountiesApi.md#list_provider_cred_county) | **GET** /provider-credentialing/{providerCredKey}/counties | List ProviderCredCounty |
| [**update_batch_provider_cred_county**](ProviderCredentialingCountiesApi.md#update_batch_provider_cred_county) | **PUT** /provider-credentialing/{providerCredKey}/counties-batch | Create or Update Batch ProviderCredCounty |
| [**update_provider_cred_county**](ProviderCredentialingCountiesApi.md#update_provider_cred_county) | **PUT** /provider-credentialing/{providerCredKey}/counties/{countyCode} | Update ProviderCredCounty |


## create_provider_cred_county

> <ProviderCredCountyVBAResponse> create_provider_cred_county(vbasoftware_database, provider_cred_key, provider_cred_county)

Create ProviderCredCounty

Creates a new ProviderCredCounty

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_county = Vba::ProviderCredCounty.new({provider_cred_key: 37, county_code: 'county_code_example'}) # ProviderCredCounty | 

begin
  # Create ProviderCredCounty
  result = api_instance.create_provider_cred_county(vbasoftware_database, provider_cred_key, provider_cred_county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->create_provider_cred_county: #{e}"
end
```

#### Using the create_provider_cred_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCountyVBAResponse>, Integer, Hash)> create_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_county)

```ruby
begin
  # Create ProviderCredCounty
  data, status_code, headers = api_instance.create_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->create_provider_cred_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_county** | [**ProviderCredCounty**](ProviderCredCounty.md) |  |  |

### Return type

[**ProviderCredCountyVBAResponse**](ProviderCredCountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_county

> delete_provider_cred_county(vbasoftware_database, provider_cred_key, county_code)

Delete ProviderCredCounty

Deletes an ProviderCredCounty

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
county_code = 'county_code_example' # String | County Code

begin
  # Delete ProviderCredCounty
  api_instance.delete_provider_cred_county(vbasoftware_database, provider_cred_key, county_code)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->delete_provider_cred_county: #{e}"
end
```

#### Using the delete_provider_cred_county_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code)

```ruby
begin
  # Delete ProviderCredCounty
  data, status_code, headers = api_instance.delete_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->delete_provider_cred_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **county_code** | **String** | County Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_county

> <ProviderCredCountyVBAResponse> get_provider_cred_county(vbasoftware_database, provider_cred_key, county_code)

Get ProviderCredCounty

Gets ProviderCredCounty

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
county_code = 'county_code_example' # String | County Code

begin
  # Get ProviderCredCounty
  result = api_instance.get_provider_cred_county(vbasoftware_database, provider_cred_key, county_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->get_provider_cred_county: #{e}"
end
```

#### Using the get_provider_cred_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCountyVBAResponse>, Integer, Hash)> get_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code)

```ruby
begin
  # Get ProviderCredCounty
  data, status_code, headers = api_instance.get_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->get_provider_cred_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **county_code** | **String** | County Code |  |

### Return type

[**ProviderCredCountyVBAResponse**](ProviderCredCountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_county

> <ProviderCredCountyListVBAResponse> list_provider_cred_county(vbasoftware_database, provider_cred_key, opts)

List ProviderCredCounty

Lists all ProviderCredCounty for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredCounty
  result = api_instance.list_provider_cred_county(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->list_provider_cred_county: #{e}"
end
```

#### Using the list_provider_cred_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCountyListVBAResponse>, Integer, Hash)> list_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredCounty
  data, status_code, headers = api_instance.list_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCountyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->list_provider_cred_county_with_http_info: #{e}"
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

[**ProviderCredCountyListVBAResponse**](ProviderCredCountyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_county

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_county(vbasoftware_database, provider_cred_key, provider_cred_county)

Create or Update Batch ProviderCredCounty

Create or Update multiple ProviderCredCounty at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_county = [Vba::ProviderCredCounty.new({provider_cred_key: 37, county_code: 'county_code_example'})] # Array<ProviderCredCounty> | 

begin
  # Create or Update Batch ProviderCredCounty
  result = api_instance.update_batch_provider_cred_county(vbasoftware_database, provider_cred_key, provider_cred_county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->update_batch_provider_cred_county: #{e}"
end
```

#### Using the update_batch_provider_cred_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_county)

```ruby
begin
  # Create or Update Batch ProviderCredCounty
  data, status_code, headers = api_instance.update_batch_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->update_batch_provider_cred_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_county** | [**Array&lt;ProviderCredCounty&gt;**](ProviderCredCounty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_county

> <ProviderCredCountyVBAResponse> update_provider_cred_county(vbasoftware_database, provider_cred_key, county_code, provider_cred_county)

Update ProviderCredCounty

Updates a specific ProviderCredCounty.

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

api_instance = Vba::ProviderCredentialingCountiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
county_code = 'county_code_example' # String | County Code
provider_cred_county = Vba::ProviderCredCounty.new({provider_cred_key: 37, county_code: 'county_code_example'}) # ProviderCredCounty | 

begin
  # Update ProviderCredCounty
  result = api_instance.update_provider_cred_county(vbasoftware_database, provider_cred_key, county_code, provider_cred_county)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->update_provider_cred_county: #{e}"
end
```

#### Using the update_provider_cred_county_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredCountyVBAResponse>, Integer, Hash)> update_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code, provider_cred_county)

```ruby
begin
  # Update ProviderCredCounty
  data, status_code, headers = api_instance.update_provider_cred_county_with_http_info(vbasoftware_database, provider_cred_key, county_code, provider_cred_county)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredCountyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingCountiesApi->update_provider_cred_county_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **county_code** | **String** | County Code |  |
| **provider_cred_county** | [**ProviderCredCounty**](ProviderCredCounty.md) |  |  |

### Return type

[**ProviderCredCountyVBAResponse**](ProviderCredCountyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

