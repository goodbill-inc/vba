# Vba::CareCaseConcordancesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_concordance**](CareCaseConcordancesApi.md#create_care_case_concordance) | **POST** /concordances | Create CareCaseConcordance |
| [**delete_care_case_concordance**](CareCaseConcordancesApi.md#delete_care_case_concordance) | **DELETE** /concordances/{careCaseConcordanceKey} | Delete CareCaseConcordance |
| [**get_care_case_concordance**](CareCaseConcordancesApi.md#get_care_case_concordance) | **GET** /concordances/{careCaseConcordanceKey} | Get CareCaseConcordance |
| [**list_care_case_concordance**](CareCaseConcordancesApi.md#list_care_case_concordance) | **GET** /concordances | List CareCaseConcordance |
| [**update_batch_care_case_concordance**](CareCaseConcordancesApi.md#update_batch_care_case_concordance) | **PUT** /concordances-batch | Create or Update Batch CareCaseConcordance |
| [**update_care_case_concordance**](CareCaseConcordancesApi.md#update_care_case_concordance) | **PUT** /concordances/{careCaseConcordanceKey} | Update CareCaseConcordance |


## create_care_case_concordance

> <CareCaseConcordanceVBAResponse> create_care_case_concordance(vbasoftware_database, care_case_concordance)

Create CareCaseConcordance

Creates a new CareCaseConcordance

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_concordance = Vba::CareCaseConcordance.new({care_case_concordance_key: 37}) # CareCaseConcordance | 

begin
  # Create CareCaseConcordance
  result = api_instance.create_care_case_concordance(vbasoftware_database, care_case_concordance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->create_care_case_concordance: #{e}"
end
```

#### Using the create_care_case_concordance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseConcordanceVBAResponse>, Integer, Hash)> create_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance)

```ruby
begin
  # Create CareCaseConcordance
  data, status_code, headers = api_instance.create_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseConcordanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->create_care_case_concordance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_concordance** | [**CareCaseConcordance**](CareCaseConcordance.md) |  |  |

### Return type

[**CareCaseConcordanceVBAResponse**](CareCaseConcordanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_concordance

> delete_care_case_concordance(vbasoftware_database, care_case_concordance_key)

Delete CareCaseConcordance

Deletes an CareCaseConcordance

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_concordance_key = 56 # Integer | CareCaseConcordance Key

begin
  # Delete CareCaseConcordance
  api_instance.delete_care_case_concordance(vbasoftware_database, care_case_concordance_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->delete_care_case_concordance: #{e}"
end
```

#### Using the delete_care_case_concordance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key)

```ruby
begin
  # Delete CareCaseConcordance
  data, status_code, headers = api_instance.delete_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->delete_care_case_concordance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_concordance_key** | **Integer** | CareCaseConcordance Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_concordance

> <CareCaseConcordanceVBAResponse> get_care_case_concordance(vbasoftware_database, care_case_concordance_key)

Get CareCaseConcordance

Gets CareCaseConcordance

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_concordance_key = 56 # Integer | CareCaseConcordance Key

begin
  # Get CareCaseConcordance
  result = api_instance.get_care_case_concordance(vbasoftware_database, care_case_concordance_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->get_care_case_concordance: #{e}"
end
```

#### Using the get_care_case_concordance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseConcordanceVBAResponse>, Integer, Hash)> get_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key)

```ruby
begin
  # Get CareCaseConcordance
  data, status_code, headers = api_instance.get_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseConcordanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->get_care_case_concordance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_concordance_key** | **Integer** | CareCaseConcordance Key |  |

### Return type

[**CareCaseConcordanceVBAResponse**](CareCaseConcordanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_concordance

> <CareCaseConcordanceListVBAResponse> list_care_case_concordance(vbasoftware_database, opts)

List CareCaseConcordance

Lists all CareCaseConcordance

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseConcordance
  result = api_instance.list_care_case_concordance(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->list_care_case_concordance: #{e}"
end
```

#### Using the list_care_case_concordance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseConcordanceListVBAResponse>, Integer, Hash)> list_care_case_concordance_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseConcordance
  data, status_code, headers = api_instance.list_care_case_concordance_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseConcordanceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->list_care_case_concordance_with_http_info: #{e}"
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

[**CareCaseConcordanceListVBAResponse**](CareCaseConcordanceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_concordance

> <MultiCodeResponseListVBAResponse> update_batch_care_case_concordance(vbasoftware_database, care_case_concordance)

Create or Update Batch CareCaseConcordance

Create or Update multiple CareCaseConcordance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_concordance = [Vba::CareCaseConcordance.new({care_case_concordance_key: 37})] # Array<CareCaseConcordance> | 

begin
  # Create or Update Batch CareCaseConcordance
  result = api_instance.update_batch_care_case_concordance(vbasoftware_database, care_case_concordance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->update_batch_care_case_concordance: #{e}"
end
```

#### Using the update_batch_care_case_concordance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance)

```ruby
begin
  # Create or Update Batch CareCaseConcordance
  data, status_code, headers = api_instance.update_batch_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->update_batch_care_case_concordance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_concordance** | [**Array&lt;CareCaseConcordance&gt;**](CareCaseConcordance.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_concordance

> <CareCaseConcordanceVBAResponse> update_care_case_concordance(vbasoftware_database, care_case_concordance_key, care_case_concordance)

Update CareCaseConcordance

Updates a specific CareCaseConcordance.

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

api_instance = Vba::CareCaseConcordancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_concordance_key = 56 # Integer | CareCaseConcordance Key
care_case_concordance = Vba::CareCaseConcordance.new({care_case_concordance_key: 37}) # CareCaseConcordance | 

begin
  # Update CareCaseConcordance
  result = api_instance.update_care_case_concordance(vbasoftware_database, care_case_concordance_key, care_case_concordance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->update_care_case_concordance: #{e}"
end
```

#### Using the update_care_case_concordance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseConcordanceVBAResponse>, Integer, Hash)> update_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key, care_case_concordance)

```ruby
begin
  # Update CareCaseConcordance
  data, status_code, headers = api_instance.update_care_case_concordance_with_http_info(vbasoftware_database, care_case_concordance_key, care_case_concordance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseConcordanceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseConcordancesApi->update_care_case_concordance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_concordance_key** | **Integer** | CareCaseConcordance Key |  |
| **care_case_concordance** | [**CareCaseConcordance**](CareCaseConcordance.md) |  |  |

### Return type

[**CareCaseConcordanceVBAResponse**](CareCaseConcordanceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

