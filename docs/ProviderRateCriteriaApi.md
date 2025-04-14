# Vba::ProviderRateCriteriaApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_rate_criteria**](ProviderRateCriteriaApi.md#create_provider_rate_criteria) | **POST** /providers/{providerId}/rates/{providerRateKey}/criterias | Create Provider Rate Criteria |
| [**delete_provider_rate_criteria**](ProviderRateCriteriaApi.md#delete_provider_rate_criteria) | **DELETE** /providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey} | Delete ProviderRateCriteria |
| [**get_provider_rate_criteria**](ProviderRateCriteriaApi.md#get_provider_rate_criteria) | **GET** /providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey} | Get ProviderRateCriteria |
| [**list_provider_rate_criteria**](ProviderRateCriteriaApi.md#list_provider_rate_criteria) | **GET** /providers/{providerId}/rates/{providerRateKey}/criterias | List ProviderRateCriteria |
| [**update_batch_provider_rate_criteria**](ProviderRateCriteriaApi.md#update_batch_provider_rate_criteria) | **PUT** /providers/{providerId}/rates/{providerRateKey}/criterias-batch | Update Batch ProviderRateCriteria |
| [**update_provider_rate_criteria**](ProviderRateCriteriaApi.md#update_provider_rate_criteria) | **PUT** /providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey} | Update ProviderRateCriteria |


## create_provider_rate_criteria

> <ProviderRateCriteriaVBAResponse> create_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)

Create Provider Rate Criteria

Creates a new Provider Rate Criteria

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_criteria = Vba::ProviderRateCriteria.new({provider_rate_criteria_key: 37, provider_rate_column_key: 37, provider_rate_key: 37}) # ProviderRateCriteria | 

begin
  # Create Provider Rate Criteria
  result = api_instance.create_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->create_provider_rate_criteria: #{e}"
end
```

#### Using the create_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateCriteriaVBAResponse>, Integer, Hash)> create_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)

```ruby
begin
  # Create Provider Rate Criteria
  data, status_code, headers = api_instance.create_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->create_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_criteria** | [**ProviderRateCriteria**](ProviderRateCriteria.md) |  |  |

### Return type

[**ProviderRateCriteriaVBAResponse**](ProviderRateCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_rate_criteria

> delete_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)

Delete ProviderRateCriteria

Deletes an ProviderRateCriteria

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_criteria_key = 56 # Integer | ProviderRateCriteria Key

begin
  # Delete ProviderRateCriteria
  api_instance.delete_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->delete_provider_rate_criteria: #{e}"
end
```

#### Using the delete_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)

```ruby
begin
  # Delete ProviderRateCriteria
  data, status_code, headers = api_instance.delete_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->delete_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_criteria_key** | **Integer** | ProviderRateCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_rate_criteria

> <ProviderRateCriteriaVBAResponse> get_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)

Get ProviderRateCriteria

Gets ProviderRateCriteria

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_criteria_key = 56 # Integer | ProviderRateCriteria Key

begin
  # Get ProviderRateCriteria
  result = api_instance.get_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->get_provider_rate_criteria: #{e}"
end
```

#### Using the get_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateCriteriaVBAResponse>, Integer, Hash)> get_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)

```ruby
begin
  # Get ProviderRateCriteria
  data, status_code, headers = api_instance.get_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->get_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_criteria_key** | **Integer** | ProviderRateCriteria Key |  |

### Return type

[**ProviderRateCriteriaVBAResponse**](ProviderRateCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_rate_criteria

> <ProviderRateCriteriaListVBAResponse> list_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, opts)

List ProviderRateCriteria

Lists all ProviderRateCriteria given a ProviderID and ProviderRateKey

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderRateCriteria
  result = api_instance.list_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->list_provider_rate_criteria: #{e}"
end
```

#### Using the list_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateCriteriaListVBAResponse>, Integer, Hash)> list_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts)

```ruby
begin
  # List ProviderRateCriteria
  data, status_code, headers = api_instance.list_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->list_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderRateCriteriaListVBAResponse**](ProviderRateCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_rate_criteria

> <MultiCodeResponseListVBAResponse> update_batch_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)

Update Batch ProviderRateCriteria

Updates a multiple ProviderRateCriteria.

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_criteria = [Vba::ProviderRateCriteria.new({provider_rate_criteria_key: 37, provider_rate_column_key: 37, provider_rate_key: 37})] # Array<ProviderRateCriteria> | 

begin
  # Update Batch ProviderRateCriteria
  result = api_instance.update_batch_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->update_batch_provider_rate_criteria: #{e}"
end
```

#### Using the update_batch_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)

```ruby
begin
  # Update Batch ProviderRateCriteria
  data, status_code, headers = api_instance.update_batch_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->update_batch_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_criteria** | [**Array&lt;ProviderRateCriteria&gt;**](ProviderRateCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_rate_criteria

> <ProviderRateCriteriaVBAResponse> update_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria)

Update ProviderRateCriteria

Updates a specific ProviderRateCriteria.

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

api_instance = Vba::ProviderRateCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_criteria_key = 56 # Integer | ProviderRateCriteria Key
provider_rate_criteria = Vba::ProviderRateCriteria.new({provider_rate_criteria_key: 37, provider_rate_column_key: 37, provider_rate_key: 37}) # ProviderRateCriteria | 

begin
  # Update ProviderRateCriteria
  result = api_instance.update_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->update_provider_rate_criteria: #{e}"
end
```

#### Using the update_provider_rate_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateCriteriaVBAResponse>, Integer, Hash)> update_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria)

```ruby
begin
  # Update ProviderRateCriteria
  data, status_code, headers = api_instance.update_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateCriteriaApi->update_provider_rate_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_criteria_key** | **Integer** | ProviderRateCriteria Key |  |
| **provider_rate_criteria** | [**ProviderRateCriteria**](ProviderRateCriteria.md) |  |  |

### Return type

[**ProviderRateCriteriaVBAResponse**](ProviderRateCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

