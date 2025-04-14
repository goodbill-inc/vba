# Vba::CareCaseIntentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_intent**](CareCaseIntentsApi.md#create_care_case_intent) | **POST** /care-case-intents | Create CareCaseIntent |
| [**delete_care_case_intent**](CareCaseIntentsApi.md#delete_care_case_intent) | **DELETE** /care-case-intents/{careCaseIntentKey} | Delete CareCaseIntent |
| [**get_care_case_intent**](CareCaseIntentsApi.md#get_care_case_intent) | **GET** /care-case-intents/{careCaseIntentKey} | Get CareCaseIntent |
| [**list_care_case_intent**](CareCaseIntentsApi.md#list_care_case_intent) | **GET** /care-case-intents | List CareCaseIntent |
| [**update_batch_care_case_intent**](CareCaseIntentsApi.md#update_batch_care_case_intent) | **PUT** /care-case-intents-batch | Create or Update Batch CareCaseIntent |
| [**update_care_case_intent**](CareCaseIntentsApi.md#update_care_case_intent) | **PUT** /care-case-intents/{careCaseIntentKey} | Update CareCaseIntent |


## create_care_case_intent

> <CareCaseIntentVBAResponse> create_care_case_intent(vbasoftware_database, care_case_intent)

Create CareCaseIntent

Creates a new CareCaseIntent

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intent = Vba::CareCaseIntent.new({care_case_intent_key: 37}) # CareCaseIntent | 

begin
  # Create CareCaseIntent
  result = api_instance.create_care_case_intent(vbasoftware_database, care_case_intent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->create_care_case_intent: #{e}"
end
```

#### Using the create_care_case_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntentVBAResponse>, Integer, Hash)> create_care_case_intent_with_http_info(vbasoftware_database, care_case_intent)

```ruby
begin
  # Create CareCaseIntent
  data, status_code, headers = api_instance.create_care_case_intent_with_http_info(vbasoftware_database, care_case_intent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->create_care_case_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intent** | [**CareCaseIntent**](CareCaseIntent.md) |  |  |

### Return type

[**CareCaseIntentVBAResponse**](CareCaseIntentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_intent

> delete_care_case_intent(vbasoftware_database, care_case_intent_key)

Delete CareCaseIntent

Deletes an CareCaseIntent

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intent_key = 56 # Integer | CareCaseIntent Key

begin
  # Delete CareCaseIntent
  api_instance.delete_care_case_intent(vbasoftware_database, care_case_intent_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->delete_care_case_intent: #{e}"
end
```

#### Using the delete_care_case_intent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key)

```ruby
begin
  # Delete CareCaseIntent
  data, status_code, headers = api_instance.delete_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->delete_care_case_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intent_key** | **Integer** | CareCaseIntent Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_intent

> <CareCaseIntentVBAResponse> get_care_case_intent(vbasoftware_database, care_case_intent_key)

Get CareCaseIntent

Gets CareCaseIntent

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intent_key = 56 # Integer | CareCaseIntent Key

begin
  # Get CareCaseIntent
  result = api_instance.get_care_case_intent(vbasoftware_database, care_case_intent_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->get_care_case_intent: #{e}"
end
```

#### Using the get_care_case_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntentVBAResponse>, Integer, Hash)> get_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key)

```ruby
begin
  # Get CareCaseIntent
  data, status_code, headers = api_instance.get_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->get_care_case_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intent_key** | **Integer** | CareCaseIntent Key |  |

### Return type

[**CareCaseIntentVBAResponse**](CareCaseIntentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_intent

> <CareCaseIntentListVBAResponse> list_care_case_intent(vbasoftware_database, opts)

List CareCaseIntent

Lists all CareCaseIntent

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseIntent
  result = api_instance.list_care_case_intent(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->list_care_case_intent: #{e}"
end
```

#### Using the list_care_case_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntentListVBAResponse>, Integer, Hash)> list_care_case_intent_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseIntent
  data, status_code, headers = api_instance.list_care_case_intent_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->list_care_case_intent_with_http_info: #{e}"
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

[**CareCaseIntentListVBAResponse**](CareCaseIntentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_intent

> <MultiCodeResponseListVBAResponse> update_batch_care_case_intent(vbasoftware_database, care_case_intent)

Create or Update Batch CareCaseIntent

Create or Update multiple CareCaseIntent at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intent = [Vba::CareCaseIntent.new({care_case_intent_key: 37})] # Array<CareCaseIntent> | 

begin
  # Create or Update Batch CareCaseIntent
  result = api_instance.update_batch_care_case_intent(vbasoftware_database, care_case_intent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->update_batch_care_case_intent: #{e}"
end
```

#### Using the update_batch_care_case_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_intent_with_http_info(vbasoftware_database, care_case_intent)

```ruby
begin
  # Create or Update Batch CareCaseIntent
  data, status_code, headers = api_instance.update_batch_care_case_intent_with_http_info(vbasoftware_database, care_case_intent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->update_batch_care_case_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intent** | [**Array&lt;CareCaseIntent&gt;**](CareCaseIntent.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_intent

> <CareCaseIntentVBAResponse> update_care_case_intent(vbasoftware_database, care_case_intent_key, care_case_intent)

Update CareCaseIntent

Updates a specific CareCaseIntent.

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

api_instance = Vba::CareCaseIntentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_intent_key = 56 # Integer | CareCaseIntent Key
care_case_intent = Vba::CareCaseIntent.new({care_case_intent_key: 37}) # CareCaseIntent | 

begin
  # Update CareCaseIntent
  result = api_instance.update_care_case_intent(vbasoftware_database, care_case_intent_key, care_case_intent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->update_care_case_intent: #{e}"
end
```

#### Using the update_care_case_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntentVBAResponse>, Integer, Hash)> update_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key, care_case_intent)

```ruby
begin
  # Update CareCaseIntent
  data, status_code, headers = api_instance.update_care_case_intent_with_http_info(vbasoftware_database, care_case_intent_key, care_case_intent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntentsApi->update_care_case_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_intent_key** | **Integer** | CareCaseIntent Key |  |
| **care_case_intent** | [**CareCaseIntent**](CareCaseIntent.md) |  |  |

### Return type

[**CareCaseIntentVBAResponse**](CareCaseIntentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

