# Vba::ProviderWithholdsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_withhold**](ProviderWithholdsApi.md#create_provider_withhold) | **POST** /provider-withholds | Create ProviderWithhold |
| [**delete_provider_withhold**](ProviderWithholdsApi.md#delete_provider_withhold) | **DELETE** /provider-withholds/{providerWithholdKey} | Delete ProviderWithhold |
| [**get_provider_withhold**](ProviderWithholdsApi.md#get_provider_withhold) | **GET** /provider-withholds/{providerWithholdKey} | Get ProviderWithhold |
| [**list_provider_withhold**](ProviderWithholdsApi.md#list_provider_withhold) | **GET** /provider-withholds | List ProviderWithhold |
| [**update_batch_provider_withhold**](ProviderWithholdsApi.md#update_batch_provider_withhold) | **PUT** /provider-withholds-batch | Create or Update Batch ProviderWithhold |
| [**update_provider_withhold**](ProviderWithholdsApi.md#update_provider_withhold) | **PUT** /provider-withholds/{providerWithholdKey} | Update ProviderWithhold |


## create_provider_withhold

> <ProviderWithholdVBAResponse> create_provider_withhold(vbasoftware_database, provider_withhold)

Create ProviderWithhold

Creates a new ProviderWithhold

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_withhold = Vba::ProviderWithhold.new({provider_withhold_key: 37, effective_date: Time.now, withhold_pct: false}) # ProviderWithhold | 

begin
  # Create ProviderWithhold
  result = api_instance.create_provider_withhold(vbasoftware_database, provider_withhold)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->create_provider_withhold: #{e}"
end
```

#### Using the create_provider_withhold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderWithholdVBAResponse>, Integer, Hash)> create_provider_withhold_with_http_info(vbasoftware_database, provider_withhold)

```ruby
begin
  # Create ProviderWithhold
  data, status_code, headers = api_instance.create_provider_withhold_with_http_info(vbasoftware_database, provider_withhold)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderWithholdVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->create_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_withhold** | [**ProviderWithhold**](ProviderWithhold.md) |  |  |

### Return type

[**ProviderWithholdVBAResponse**](ProviderWithholdVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_withhold

> delete_provider_withhold(vbasoftware_database, provider_withhold_key)

Delete ProviderWithhold

Deletes an ProviderWithhold

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_withhold_key = 56 # Integer | ProviderWithhold Key

begin
  # Delete ProviderWithhold
  api_instance.delete_provider_withhold(vbasoftware_database, provider_withhold_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->delete_provider_withhold: #{e}"
end
```

#### Using the delete_provider_withhold_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key)

```ruby
begin
  # Delete ProviderWithhold
  data, status_code, headers = api_instance.delete_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->delete_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_withhold_key** | **Integer** | ProviderWithhold Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_withhold

> <ProviderWithholdVBAResponse> get_provider_withhold(vbasoftware_database, provider_withhold_key)

Get ProviderWithhold

Gets ProviderWithhold

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_withhold_key = 56 # Integer | ProviderWithhold Key

begin
  # Get ProviderWithhold
  result = api_instance.get_provider_withhold(vbasoftware_database, provider_withhold_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->get_provider_withhold: #{e}"
end
```

#### Using the get_provider_withhold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderWithholdVBAResponse>, Integer, Hash)> get_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key)

```ruby
begin
  # Get ProviderWithhold
  data, status_code, headers = api_instance.get_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderWithholdVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->get_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_withhold_key** | **Integer** | ProviderWithhold Key |  |

### Return type

[**ProviderWithholdVBAResponse**](ProviderWithholdVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_withhold

> <ProviderWithholdListVBAResponse> list_provider_withhold(vbasoftware_database, opts)

List ProviderWithhold

Lists all ProviderWithhold.  Supply optional ProviderID and/or FederalID parameters to filter results.

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  provider_id: 'provider_id_example', # String | ProviderID
  federal_id: 'federal_id_example', # String | FederalID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderWithhold
  result = api_instance.list_provider_withhold(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->list_provider_withhold: #{e}"
end
```

#### Using the list_provider_withhold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderWithholdListVBAResponse>, Integer, Hash)> list_provider_withhold_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProviderWithhold
  data, status_code, headers = api_instance.list_provider_withhold_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderWithholdListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->list_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | ProviderID | [optional] |
| **federal_id** | **String** | FederalID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderWithholdListVBAResponse**](ProviderWithholdListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_withhold

> <MultiCodeResponseListVBAResponse> update_batch_provider_withhold(vbasoftware_database, provider_withhold)

Create or Update Batch ProviderWithhold

Create or Update multiple ProviderWithhold at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_withhold = [Vba::ProviderWithhold.new({provider_withhold_key: 37, effective_date: Time.now, withhold_pct: false})] # Array<ProviderWithhold> | 

begin
  # Create or Update Batch ProviderWithhold
  result = api_instance.update_batch_provider_withhold(vbasoftware_database, provider_withhold)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->update_batch_provider_withhold: #{e}"
end
```

#### Using the update_batch_provider_withhold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_withhold_with_http_info(vbasoftware_database, provider_withhold)

```ruby
begin
  # Create or Update Batch ProviderWithhold
  data, status_code, headers = api_instance.update_batch_provider_withhold_with_http_info(vbasoftware_database, provider_withhold)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->update_batch_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_withhold** | [**Array&lt;ProviderWithhold&gt;**](ProviderWithhold.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_withhold

> <ProviderWithholdVBAResponse> update_provider_withhold(vbasoftware_database, provider_withhold_key, provider_withhold)

Update ProviderWithhold

Updates a specific ProviderWithhold.

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

api_instance = Vba::ProviderWithholdsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_withhold_key = 56 # Integer | ProviderWithhold Key
provider_withhold = Vba::ProviderWithhold.new({provider_withhold_key: 37, effective_date: Time.now, withhold_pct: false}) # ProviderWithhold | 

begin
  # Update ProviderWithhold
  result = api_instance.update_provider_withhold(vbasoftware_database, provider_withhold_key, provider_withhold)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->update_provider_withhold: #{e}"
end
```

#### Using the update_provider_withhold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderWithholdVBAResponse>, Integer, Hash)> update_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key, provider_withhold)

```ruby
begin
  # Update ProviderWithhold
  data, status_code, headers = api_instance.update_provider_withhold_with_http_info(vbasoftware_database, provider_withhold_key, provider_withhold)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderWithholdVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderWithholdsApi->update_provider_withhold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_withhold_key** | **Integer** | ProviderWithhold Key |  |
| **provider_withhold** | [**ProviderWithhold**](ProviderWithhold.md) |  |  |

### Return type

[**ProviderWithholdVBAResponse**](ProviderWithholdVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

