# Vba::ProviderAffiliationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_affiliation**](ProviderAffiliationApi.md#create_provider_affiliation) | **POST** /providers/{providerID}/affiliations | Create ProviderAffiliation |
| [**delete_provider_affiliation**](ProviderAffiliationApi.md#delete_provider_affiliation) | **DELETE** /providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate} | Delete ProviderAffiliation |
| [**get_provider_affiliation**](ProviderAffiliationApi.md#get_provider_affiliation) | **GET** /providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate} | Get ProviderAffiliation |
| [**list_provider_affiliation**](ProviderAffiliationApi.md#list_provider_affiliation) | **GET** /providers/{providerID}/affiliations | List ProviderAffiliation |
| [**update_batch_provider_affiliation**](ProviderAffiliationApi.md#update_batch_provider_affiliation) | **PUT** /providers/{providerID}/affiliations-batch | Create or Update Batch ProviderAffiliation |
| [**update_provider_affiliation**](ProviderAffiliationApi.md#update_provider_affiliation) | **PUT** /providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate} | Update ProviderAffiliation |


## create_provider_affiliation

> <ProviderAffiliationVBAResponse> create_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation)

Create ProviderAffiliation

Creates a new ProviderAffiliation

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_affiliation = Vba::ProviderAffiliation.new({provider_id: 'provider_id_example', affiliation_provider_id: 'affiliation_provider_id_example', effective_date: Time.now}) # ProviderAffiliation | 

begin
  # Create ProviderAffiliation
  result = api_instance.create_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->create_provider_affiliation: #{e}"
end
```

#### Using the create_provider_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAffiliationVBAResponse>, Integer, Hash)> create_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation)

```ruby
begin
  # Create ProviderAffiliation
  data, status_code, headers = api_instance.create_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAffiliationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->create_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_affiliation** | [**ProviderAffiliation**](ProviderAffiliation.md) |  |  |

### Return type

[**ProviderAffiliationVBAResponse**](ProviderAffiliationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_affiliation

> delete_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)

Delete ProviderAffiliation

Deletes an ProviderAffiliation

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
affiliation_provider_id = 'affiliation_provider_id_example' # String | Affiliation Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete ProviderAffiliation
  api_instance.delete_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->delete_provider_affiliation: #{e}"
end
```

#### Using the delete_provider_affiliation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)

```ruby
begin
  # Delete ProviderAffiliation
  data, status_code, headers = api_instance.delete_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->delete_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **affiliation_provider_id** | **String** | Affiliation Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_affiliation

> <ProviderAffiliationVBAResponse> get_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)

Get ProviderAffiliation

Gets ProviderAffiliation

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
affiliation_provider_id = 'affiliation_provider_id_example' # String | Affiliation Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get ProviderAffiliation
  result = api_instance.get_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->get_provider_affiliation: #{e}"
end
```

#### Using the get_provider_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAffiliationVBAResponse>, Integer, Hash)> get_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)

```ruby
begin
  # Get ProviderAffiliation
  data, status_code, headers = api_instance.get_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAffiliationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->get_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **affiliation_provider_id** | **String** | Affiliation Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**ProviderAffiliationVBAResponse**](ProviderAffiliationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_affiliation

> <ProviderAffiliationListVBAResponse> list_provider_affiliation(vbasoftware_database, provider_id)

List ProviderAffiliation

Gets all ProviderAffiliations for a specific Provider

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderAffiliation
  result = api_instance.list_provider_affiliation(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->list_provider_affiliation: #{e}"
end
```

#### Using the list_provider_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAffiliationListVBAResponse>, Integer, Hash)> list_provider_affiliation_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderAffiliation
  data, status_code, headers = api_instance.list_provider_affiliation_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAffiliationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->list_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderAffiliationListVBAResponse**](ProviderAffiliationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_affiliation

> <MultiCodeResponseListVBAResponse> update_batch_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation)

Create or Update Batch ProviderAffiliation

Create or Update multiple ProviderAffiliation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_affiliation = [Vba::ProviderAffiliation.new({provider_id: 'provider_id_example', affiliation_provider_id: 'affiliation_provider_id_example', effective_date: Time.now})] # Array<ProviderAffiliation> | 

begin
  # Create or Update Batch ProviderAffiliation
  result = api_instance.update_batch_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->update_batch_provider_affiliation: #{e}"
end
```

#### Using the update_batch_provider_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation)

```ruby
begin
  # Create or Update Batch ProviderAffiliation
  data, status_code, headers = api_instance.update_batch_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->update_batch_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_affiliation** | [**Array&lt;ProviderAffiliation&gt;**](ProviderAffiliation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_affiliation

> <ProviderAffiliationVBAResponse> update_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation)

Update ProviderAffiliation

Updates a specific ProviderAffiliation.

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

api_instance = Vba::ProviderAffiliationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
affiliation_provider_id = 'affiliation_provider_id_example' # String | Affiliation Provider ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
provider_affiliation = Vba::ProviderAffiliation.new({provider_id: 'provider_id_example', affiliation_provider_id: 'affiliation_provider_id_example', effective_date: Time.now}) # ProviderAffiliation | 

begin
  # Update ProviderAffiliation
  result = api_instance.update_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->update_provider_affiliation: #{e}"
end
```

#### Using the update_provider_affiliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAffiliationVBAResponse>, Integer, Hash)> update_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation)

```ruby
begin
  # Update ProviderAffiliation
  data, status_code, headers = api_instance.update_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAffiliationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAffiliationApi->update_provider_affiliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **affiliation_provider_id** | **String** | Affiliation Provider ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **provider_affiliation** | [**ProviderAffiliation**](ProviderAffiliation.md) |  |  |

### Return type

[**ProviderAffiliationVBAResponse**](ProviderAffiliationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

