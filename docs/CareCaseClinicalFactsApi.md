# Vba::CareCaseClinicalFactsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#create_care_case_clinical_fact) | **POST** /care-case-clinical-facts | Create CareCaseClinicalFact |
| [**delete_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#delete_care_case_clinical_fact) | **DELETE** /care-case-clinical-facts/{CareCaseClinicalFact_Key} | Delete CareCaseClinicalFact |
| [**get_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#get_care_case_clinical_fact) | **GET** /care-case-clinical-facts/{CareCaseClinicalFact_Key} | Get CareCaseClinicalFact |
| [**list_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#list_care_case_clinical_fact) | **GET** /care-case-clinical-facts | List CareCaseClinicalFact |
| [**update_batch_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#update_batch_care_case_clinical_fact) | **PUT** /care-case-clinical-facts-batch | Create or Update Batch CareCaseClinicalFact |
| [**update_care_case_clinical_fact**](CareCaseClinicalFactsApi.md#update_care_case_clinical_fact) | **PUT** /care-case-clinical-facts/{CareCaseClinicalFact_Key} | Update CareCaseClinicalFact |


## create_care_case_clinical_fact

> <CareCaseClinicalFactVBAResponse> create_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact)

Create CareCaseClinicalFact

Creates a new CareCaseClinicalFact

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact = Vba::CareCaseClinicalFact.new({care_case_clinical_fact_key: 37}) # CareCaseClinicalFact | 

begin
  # Create CareCaseClinicalFact
  result = api_instance.create_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->create_care_case_clinical_fact: #{e}"
end
```

#### Using the create_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactVBAResponse>, Integer, Hash)> create_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact)

```ruby
begin
  # Create CareCaseClinicalFact
  data, status_code, headers = api_instance.create_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->create_care_case_clinical_fact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact** | [**CareCaseClinicalFact**](CareCaseClinicalFact.md) |  |  |

### Return type

[**CareCaseClinicalFactVBAResponse**](CareCaseClinicalFactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_clinical_fact

> delete_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key)

Delete CareCaseClinicalFact

Deletes an CareCaseClinicalFact

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_key = 56 # Integer | CareCaseClinicalFact Key

begin
  # Delete CareCaseClinicalFact
  api_instance.delete_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->delete_care_case_clinical_fact: #{e}"
end
```

#### Using the delete_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key)

```ruby
begin
  # Delete CareCaseClinicalFact
  data, status_code, headers = api_instance.delete_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->delete_care_case_clinical_fact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_key** | **Integer** | CareCaseClinicalFact Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_clinical_fact

> <CareCaseClinicalFactVBAResponse> get_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key)

Get CareCaseClinicalFact

Gets CareCaseClinicalFact

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_key = 56 # Integer | CareCaseClinicalFact Key

begin
  # Get CareCaseClinicalFact
  result = api_instance.get_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->get_care_case_clinical_fact: #{e}"
end
```

#### Using the get_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactVBAResponse>, Integer, Hash)> get_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key)

```ruby
begin
  # Get CareCaseClinicalFact
  data, status_code, headers = api_instance.get_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->get_care_case_clinical_fact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_key** | **Integer** | CareCaseClinicalFact Key |  |

### Return type

[**CareCaseClinicalFactVBAResponse**](CareCaseClinicalFactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_clinical_fact

> <CareCaseClinicalFactListVBAResponse> list_care_case_clinical_fact(vbasoftware_database, opts)

List CareCaseClinicalFact

Lists all CareCaseClinicalFact

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List CareCaseClinicalFact
  result = api_instance.list_care_case_clinical_fact(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->list_care_case_clinical_fact: #{e}"
end
```

#### Using the list_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactListVBAResponse>, Integer, Hash)> list_care_case_clinical_fact_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseClinicalFact
  data, status_code, headers = api_instance.list_care_case_clinical_fact_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->list_care_case_clinical_fact_with_http_info: #{e}"
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

[**CareCaseClinicalFactListVBAResponse**](CareCaseClinicalFactListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_clinical_fact

> <MultiCodeResponseListVBAResponse> update_batch_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact)

Create or Update Batch CareCaseClinicalFact

Create or Update multiple CareCaseClinicalFact at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact = [Vba::CareCaseClinicalFact.new({care_case_clinical_fact_key: 37})] # Array<CareCaseClinicalFact> | 

begin
  # Create or Update Batch CareCaseClinicalFact
  result = api_instance.update_batch_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->update_batch_care_case_clinical_fact: #{e}"
end
```

#### Using the update_batch_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact)

```ruby
begin
  # Create or Update Batch CareCaseClinicalFact
  data, status_code, headers = api_instance.update_batch_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->update_batch_care_case_clinical_fact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact** | [**Array&lt;CareCaseClinicalFact&gt;**](CareCaseClinicalFact.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_clinical_fact

> <CareCaseClinicalFactVBAResponse> update_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key, care_case_clinical_fact)

Update CareCaseClinicalFact

Updates a specific CareCaseClinicalFact.

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

api_instance = Vba::CareCaseClinicalFactsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_fact_key = 56 # Integer | CareCaseClinicalFact Key
care_case_clinical_fact = Vba::CareCaseClinicalFact.new({care_case_clinical_fact_key: 37}) # CareCaseClinicalFact | 

begin
  # Update CareCaseClinicalFact
  result = api_instance.update_care_case_clinical_fact(vbasoftware_database, care_case_clinical_fact_key, care_case_clinical_fact)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->update_care_case_clinical_fact: #{e}"
end
```

#### Using the update_care_case_clinical_fact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalFactVBAResponse>, Integer, Hash)> update_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key, care_case_clinical_fact)

```ruby
begin
  # Update CareCaseClinicalFact
  data, status_code, headers = api_instance.update_care_case_clinical_fact_with_http_info(vbasoftware_database, care_case_clinical_fact_key, care_case_clinical_fact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalFactVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalFactsApi->update_care_case_clinical_fact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_fact_key** | **Integer** | CareCaseClinicalFact Key |  |
| **care_case_clinical_fact** | [**CareCaseClinicalFact**](CareCaseClinicalFact.md) |  |  |

### Return type

[**CareCaseClinicalFactVBAResponse**](CareCaseClinicalFactVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

