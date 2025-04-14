# Vba::CareCaseMedicationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_medication**](CareCaseMedicationsApi.md#create_care_case_medication) | **POST** /cases/{caseKey}/medications | Create CareCaseMedication |
| [**delete_care_case_medication**](CareCaseMedicationsApi.md#delete_care_case_medication) | **DELETE** /cases/{caseKey}/medications/{careCaseMedicationKey} | Delete CareCaseMedication |
| [**get_care_case_medication**](CareCaseMedicationsApi.md#get_care_case_medication) | **GET** /cases/{caseKey}/medications/{careCaseMedicationKey} | Get CareCaseMedication |
| [**list_care_case_medication**](CareCaseMedicationsApi.md#list_care_case_medication) | **GET** /cases/{caseKey}/medications | List CareCaseMedication |
| [**update_batch_care_case_medication**](CareCaseMedicationsApi.md#update_batch_care_case_medication) | **PUT** /cases/{caseKey}/medications-batch | Create or Update Batch CareCaseMedication |
| [**update_care_case_medication**](CareCaseMedicationsApi.md#update_care_case_medication) | **PUT** /cases/{caseKey}/medications/{careCaseMedicationKey} | Update CareCaseMedication |


## create_care_case_medication

> <CareCaseMedicationVBAResponse> create_care_case_medication(vbasoftware_database, case_key, care_case_medication)

Create CareCaseMedication

Creates a new CareCaseMedication

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_medication = Vba::CareCaseMedication.new({care_case_medication_key: 37, case_key: 37}) # CareCaseMedication | 

begin
  # Create CareCaseMedication
  result = api_instance.create_care_case_medication(vbasoftware_database, case_key, care_case_medication)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->create_care_case_medication: #{e}"
end
```

#### Using the create_care_case_medication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMedicationVBAResponse>, Integer, Hash)> create_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication)

```ruby
begin
  # Create CareCaseMedication
  data, status_code, headers = api_instance.create_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMedicationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->create_care_case_medication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_medication** | [**CareCaseMedication**](CareCaseMedication.md) |  |  |

### Return type

[**CareCaseMedicationVBAResponse**](CareCaseMedicationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_medication

> delete_care_case_medication(vbasoftware_database, case_key, care_case_medication_key)

Delete CareCaseMedication

Deletes an CareCaseMedication

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_medication_key = 56 # Integer | CareCaseMedication Key

begin
  # Delete CareCaseMedication
  api_instance.delete_care_case_medication(vbasoftware_database, case_key, care_case_medication_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->delete_care_case_medication: #{e}"
end
```

#### Using the delete_care_case_medication_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key)

```ruby
begin
  # Delete CareCaseMedication
  data, status_code, headers = api_instance.delete_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->delete_care_case_medication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_medication_key** | **Integer** | CareCaseMedication Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_medication

> <CareCaseMedicationVBAResponse> get_care_case_medication(vbasoftware_database, case_key, care_case_medication_key)

Get CareCaseMedication

Gets CareCaseMedication

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_medication_key = 56 # Integer | CareCaseMedication Key

begin
  # Get CareCaseMedication
  result = api_instance.get_care_case_medication(vbasoftware_database, case_key, care_case_medication_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->get_care_case_medication: #{e}"
end
```

#### Using the get_care_case_medication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMedicationVBAResponse>, Integer, Hash)> get_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key)

```ruby
begin
  # Get CareCaseMedication
  data, status_code, headers = api_instance.get_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMedicationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->get_care_case_medication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_medication_key** | **Integer** | CareCaseMedication Key |  |

### Return type

[**CareCaseMedicationVBAResponse**](CareCaseMedicationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_medication

> <CareCaseMedicationListVBAResponse> list_care_case_medication(vbasoftware_database, case_key, opts)

List CareCaseMedication

Lists all CareCaseMedication for the given caseKey

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseMedication
  result = api_instance.list_care_case_medication(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->list_care_case_medication: #{e}"
end
```

#### Using the list_care_case_medication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMedicationListVBAResponse>, Integer, Hash)> list_care_case_medication_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseMedication
  data, status_code, headers = api_instance.list_care_case_medication_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMedicationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->list_care_case_medication_with_http_info: #{e}"
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

[**CareCaseMedicationListVBAResponse**](CareCaseMedicationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_medication

> <MultiCodeResponseListVBAResponse> update_batch_care_case_medication(vbasoftware_database, case_key, care_case_medication)

Create or Update Batch CareCaseMedication

Create or Update multiple CareCaseMedication at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_medication = [Vba::CareCaseMedication.new({care_case_medication_key: 37, case_key: 37})] # Array<CareCaseMedication> | 

begin
  # Create or Update Batch CareCaseMedication
  result = api_instance.update_batch_care_case_medication(vbasoftware_database, case_key, care_case_medication)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->update_batch_care_case_medication: #{e}"
end
```

#### Using the update_batch_care_case_medication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication)

```ruby
begin
  # Create or Update Batch CareCaseMedication
  data, status_code, headers = api_instance.update_batch_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->update_batch_care_case_medication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_medication** | [**Array&lt;CareCaseMedication&gt;**](CareCaseMedication.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_medication

> <CareCaseMedicationVBAResponse> update_care_case_medication(vbasoftware_database, case_key, care_case_medication_key, care_case_medication)

Update CareCaseMedication

Updates a specific CareCaseMedication.

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

api_instance = Vba::CareCaseMedicationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_medication_key = 56 # Integer | CareCaseMedication Key
care_case_medication = Vba::CareCaseMedication.new({care_case_medication_key: 37, case_key: 37}) # CareCaseMedication | 

begin
  # Update CareCaseMedication
  result = api_instance.update_care_case_medication(vbasoftware_database, case_key, care_case_medication_key, care_case_medication)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->update_care_case_medication: #{e}"
end
```

#### Using the update_care_case_medication_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMedicationVBAResponse>, Integer, Hash)> update_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key, care_case_medication)

```ruby
begin
  # Update CareCaseMedication
  data, status_code, headers = api_instance.update_care_case_medication_with_http_info(vbasoftware_database, case_key, care_case_medication_key, care_case_medication)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMedicationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMedicationsApi->update_care_case_medication_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_medication_key** | **Integer** | CareCaseMedication Key |  |
| **care_case_medication** | [**CareCaseMedication**](CareCaseMedication.md) |  |  |

### Return type

[**CareCaseMedicationVBAResponse**](CareCaseMedicationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

