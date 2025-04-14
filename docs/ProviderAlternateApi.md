# Vba::ProviderAlternateApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_alternate**](ProviderAlternateApi.md#create_provider_alternate) | **POST** /providers/{providerID}/alternates | Create ProviderAlternate |
| [**delete_provider_alternate**](ProviderAlternateApi.md#delete_provider_alternate) | **DELETE** /providers/{providerID}/alternates/{alternateProviderID}/effectiveDate/{effectiveDate} | Delete ProviderAlternate |
| [**get_provider_alternate**](ProviderAlternateApi.md#get_provider_alternate) | **GET** /providers/{providerID}/alternates/{alternateProviderID}/effectiveDate/{effectiveDate} | Get ProviderAlternate |
| [**list_provider_alternates**](ProviderAlternateApi.md#list_provider_alternates) | **GET** /providers/{providerID}/alternates | List ProviderAlternate |
| [**update_batch_provider_alternate**](ProviderAlternateApi.md#update_batch_provider_alternate) | **PUT** /providers/{providerID}/alternates-batch | Create or Update Batch ProviderAlternate |
| [**update_provider_alternate**](ProviderAlternateApi.md#update_provider_alternate) | **PUT** /providers/{providerID}/alternates/{alternateProviderID}/effectiveDate/{effectiveDate} | Update ProviderAlternate |


## create_provider_alternate

> <ProviderAlternateVBAResponse> create_provider_alternate(vbasoftware_database, provider_id, provider_alternate)

Create ProviderAlternate

Creates a new ProviderAlternate

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_alternate = Vba::ProviderAlternate.new({provider_id: 'provider_id_example', alternate_provider_id: 'alternate_provider_id_example', effective_date: Time.now}) # ProviderAlternate | 

begin
  # Create ProviderAlternate
  result = api_instance.create_provider_alternate(vbasoftware_database, provider_id, provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->create_provider_alternate: #{e}"
end
```

#### Using the create_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAlternateVBAResponse>, Integer, Hash)> create_provider_alternate_with_http_info(vbasoftware_database, provider_id, provider_alternate)

```ruby
begin
  # Create ProviderAlternate
  data, status_code, headers = api_instance.create_provider_alternate_with_http_info(vbasoftware_database, provider_id, provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->create_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_alternate** | [**ProviderAlternate**](ProviderAlternate.md) |  |  |

### Return type

[**ProviderAlternateVBAResponse**](ProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_alternate

> delete_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date)

Delete ProviderAlternate

Deletes an ProviderAlternate

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
alternate_provider_id = 'alternate_provider_id_example' # String | Alternate Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete ProviderAlternate
  api_instance.delete_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->delete_provider_alternate: #{e}"
end
```

#### Using the delete_provider_alternate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date)

```ruby
begin
  # Delete ProviderAlternate
  data, status_code, headers = api_instance.delete_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->delete_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **alternate_provider_id** | **String** | Alternate Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_alternate

> <ProviderAlternateVBAResponse> get_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date)

Get ProviderAlternate

Gets ProviderAlternate

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
alternate_provider_id = 'alternate_provider_id_example' # String | Alternate Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get ProviderAlternate
  result = api_instance.get_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->get_provider_alternate: #{e}"
end
```

#### Using the get_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAlternateVBAResponse>, Integer, Hash)> get_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date)

```ruby
begin
  # Get ProviderAlternate
  data, status_code, headers = api_instance.get_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->get_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **alternate_provider_id** | **String** | Alternate Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**ProviderAlternateVBAResponse**](ProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_alternates

> <ProviderAlternateListVBAResponse> list_provider_alternates(vbasoftware_database, provider_id)

List ProviderAlternate

Lists all ProviderAlternate given a specific providerID

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderAlternate
  result = api_instance.list_provider_alternates(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->list_provider_alternates: #{e}"
end
```

#### Using the list_provider_alternates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAlternateListVBAResponse>, Integer, Hash)> list_provider_alternates_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderAlternate
  data, status_code, headers = api_instance.list_provider_alternates_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAlternateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->list_provider_alternates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderAlternateListVBAResponse**](ProviderAlternateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_alternate

> <MultiCodeResponseListVBAResponse> update_batch_provider_alternate(vbasoftware_database, provider_id, provider_alternate)

Create or Update Batch ProviderAlternate

Create or Update multiple ProviderAlternate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_alternate = [Vba::ProviderAlternate.new({provider_id: 'provider_id_example', alternate_provider_id: 'alternate_provider_id_example', effective_date: Time.now})] # Array<ProviderAlternate> | 

begin
  # Create or Update Batch ProviderAlternate
  result = api_instance.update_batch_provider_alternate(vbasoftware_database, provider_id, provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->update_batch_provider_alternate: #{e}"
end
```

#### Using the update_batch_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_alternate_with_http_info(vbasoftware_database, provider_id, provider_alternate)

```ruby
begin
  # Create or Update Batch ProviderAlternate
  data, status_code, headers = api_instance.update_batch_provider_alternate_with_http_info(vbasoftware_database, provider_id, provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->update_batch_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_alternate** | [**Array&lt;ProviderAlternate&gt;**](ProviderAlternate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_alternate

> <ProviderAlternateVBAResponse> update_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date, provider_alternate)

Update ProviderAlternate

Updates a specific ProviderAlternate.

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

api_instance = Vba::ProviderAlternateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
alternate_provider_id = 'alternate_provider_id_example' # String | Alternate Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
provider_alternate = Vba::ProviderAlternate.new({provider_id: 'provider_id_example', alternate_provider_id: 'alternate_provider_id_example', effective_date: Time.now}) # ProviderAlternate | 

begin
  # Update ProviderAlternate
  result = api_instance.update_provider_alternate(vbasoftware_database, provider_id, alternate_provider_id, effective_date, provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->update_provider_alternate: #{e}"
end
```

#### Using the update_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAlternateVBAResponse>, Integer, Hash)> update_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date, provider_alternate)

```ruby
begin
  # Update ProviderAlternate
  data, status_code, headers = api_instance.update_provider_alternate_with_http_info(vbasoftware_database, provider_id, alternate_provider_id, effective_date, provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAlternateApi->update_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **alternate_provider_id** | **String** | Alternate Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **provider_alternate** | [**ProviderAlternate**](ProviderAlternate.md) |  |  |

### Return type

[**ProviderAlternateVBAResponse**](ProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

