# Vba::CareCaseIntakesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_intake**](CareCaseIntakesApi.md#create_care_case_intake) | **POST** /cases/{caseKey}/intakes | Create CareCaseIntake |
| [**delete_care_case_intake**](CareCaseIntakesApi.md#delete_care_case_intake) | **DELETE** /cases/{caseKey}/intakes/{careCaseIntakeKey} | Delete CareCaseIntake |
| [**get_care_case_intake**](CareCaseIntakesApi.md#get_care_case_intake) | **GET** /cases/{caseKey}/intakes/{careCaseIntakeKey} | Get CareCaseIntake |
| [**list_care_case_intake**](CareCaseIntakesApi.md#list_care_case_intake) | **GET** /cases/{caseKey}/intakes | List CareCaseIntake |
| [**update_batch_care_case_intake**](CareCaseIntakesApi.md#update_batch_care_case_intake) | **PUT** /cases/{caseKey}/intakes-batch | Create or Update Batch CareCaseIntake |
| [**update_care_case_intake**](CareCaseIntakesApi.md#update_care_case_intake) | **PUT** /cases/{caseKey}/intakes/{careCaseIntakeKey} | Update CareCaseIntake |


## create_care_case_intake

> <CareCaseIntakeVBAResponse> create_care_case_intake(vbasoftware_database, case_key, care_case_intake)

Create CareCaseIntake

Creates a new CareCaseIntake

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_intake = Vba::CareCaseIntake.new({care_case_intake_key: 37}) # CareCaseIntake | 

begin
  # Create CareCaseIntake
  result = api_instance.create_care_case_intake(vbasoftware_database, case_key, care_case_intake)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->create_care_case_intake: #{e}"
end
```

#### Using the create_care_case_intake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeVBAResponse>, Integer, Hash)> create_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake)

```ruby
begin
  # Create CareCaseIntake
  data, status_code, headers = api_instance.create_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->create_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_intake** | [**CareCaseIntake**](CareCaseIntake.md) |  |  |

### Return type

[**CareCaseIntakeVBAResponse**](CareCaseIntakeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_intake

> delete_care_case_intake(vbasoftware_database, case_key, care_case_intake_key)

Delete CareCaseIntake

Deletes an CareCaseIntake

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_intake_key = 56 # Integer | CareCaseIntake Key

begin
  # Delete CareCaseIntake
  api_instance.delete_care_case_intake(vbasoftware_database, case_key, care_case_intake_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->delete_care_case_intake: #{e}"
end
```

#### Using the delete_care_case_intake_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key)

```ruby
begin
  # Delete CareCaseIntake
  data, status_code, headers = api_instance.delete_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->delete_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_intake_key** | **Integer** | CareCaseIntake Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_intake

> <CareCaseIntakeVBAResponse> get_care_case_intake(vbasoftware_database, case_key, care_case_intake_key)

Get CareCaseIntake

Gets CareCaseIntake

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_intake_key = 56 # Integer | CareCaseIntake Key

begin
  # Get CareCaseIntake
  result = api_instance.get_care_case_intake(vbasoftware_database, case_key, care_case_intake_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->get_care_case_intake: #{e}"
end
```

#### Using the get_care_case_intake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeVBAResponse>, Integer, Hash)> get_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key)

```ruby
begin
  # Get CareCaseIntake
  data, status_code, headers = api_instance.get_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->get_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_intake_key** | **Integer** | CareCaseIntake Key |  |

### Return type

[**CareCaseIntakeVBAResponse**](CareCaseIntakeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_intake

> <CareCaseIntakeListVBAResponse> list_care_case_intake(vbasoftware_database, case_key, opts)

List CareCaseIntake

Lists all CareCaseIntake for the given caseKey

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseIntake
  result = api_instance.list_care_case_intake(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->list_care_case_intake: #{e}"
end
```

#### Using the list_care_case_intake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeListVBAResponse>, Integer, Hash)> list_care_case_intake_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseIntake
  data, status_code, headers = api_instance.list_care_case_intake_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->list_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseIntakeListVBAResponse**](CareCaseIntakeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_intake

> <MultiCodeResponseListVBAResponse> update_batch_care_case_intake(vbasoftware_database, case_key, care_case_intake)

Create or Update Batch CareCaseIntake

Create or Update multiple CareCaseIntake at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_intake = [Vba::CareCaseIntake.new({care_case_intake_key: 37})] # Array<CareCaseIntake> | 

begin
  # Create or Update Batch CareCaseIntake
  result = api_instance.update_batch_care_case_intake(vbasoftware_database, case_key, care_case_intake)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->update_batch_care_case_intake: #{e}"
end
```

#### Using the update_batch_care_case_intake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake)

```ruby
begin
  # Create or Update Batch CareCaseIntake
  data, status_code, headers = api_instance.update_batch_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->update_batch_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_intake** | [**Array&lt;CareCaseIntake&gt;**](CareCaseIntake.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_intake

> <CareCaseIntakeVBAResponse> update_care_case_intake(vbasoftware_database, case_key, care_case_intake_key, care_case_intake)

Update CareCaseIntake

Updates a specific CareCaseIntake.

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

api_instance = Vba::CareCaseIntakesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_intake_key = 56 # Integer | CareCaseIntake Key
care_case_intake = Vba::CareCaseIntake.new({care_case_intake_key: 37}) # CareCaseIntake | 

begin
  # Update CareCaseIntake
  result = api_instance.update_care_case_intake(vbasoftware_database, case_key, care_case_intake_key, care_case_intake)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->update_care_case_intake: #{e}"
end
```

#### Using the update_care_case_intake_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseIntakeVBAResponse>, Integer, Hash)> update_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key, care_case_intake)

```ruby
begin
  # Update CareCaseIntake
  data, status_code, headers = api_instance.update_care_case_intake_with_http_info(vbasoftware_database, case_key, care_case_intake_key, care_case_intake)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseIntakeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseIntakesApi->update_care_case_intake_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_intake_key** | **Integer** | CareCaseIntake Key |  |
| **care_case_intake** | [**CareCaseIntake**](CareCaseIntake.md) |  |  |

### Return type

[**CareCaseIntakeVBAResponse**](CareCaseIntakeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

