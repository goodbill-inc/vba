# Vba::CareCaseDiagnosesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_diagnosis**](CareCaseDiagnosesApi.md#create_care_case_diagnosis) | **POST** /cases/{caseKey}/diagnoses | Create CareCaseDiagnosis |
| [**delete_care_case_diagnosis**](CareCaseDiagnosesApi.md#delete_care_case_diagnosis) | **DELETE** /cases/{caseKey}/diagnoses/{careCaseDiagnosisKey} | Delete CareCaseDiagnosis |
| [**get_care_case_diagnosis**](CareCaseDiagnosesApi.md#get_care_case_diagnosis) | **GET** /cases/{caseKey}/diagnoses/{careCaseDiagnosisKey} | Get CareCaseDiagnosis |
| [**list_care_case_diagnosis**](CareCaseDiagnosesApi.md#list_care_case_diagnosis) | **GET** /cases/{caseKey}/diagnoses | List CareCaseDiagnosis |
| [**update_batch_care_case_diagnosis**](CareCaseDiagnosesApi.md#update_batch_care_case_diagnosis) | **PUT** /cases/{caseKey}/diagnoses-batch | Create or Update Batch CareCaseDiagnosis |
| [**update_care_case_diagnosis**](CareCaseDiagnosesApi.md#update_care_case_diagnosis) | **PUT** /cases/{caseKey}/diagnoses/{careCaseDiagnosisKey} | Update CareCaseDiagnosis |


## create_care_case_diagnosis

> <CareCaseDiagnosisVBAResponse> create_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis)

Create CareCaseDiagnosis

Creates a new CareCaseDiagnosis

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_diagnosis = Vba::CareCaseDiagnosis.new({care_case_diagnosis_key: 37, case_key: 37}) # CareCaseDiagnosis | 

begin
  # Create CareCaseDiagnosis
  result = api_instance.create_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->create_care_case_diagnosis: #{e}"
end
```

#### Using the create_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDiagnosisVBAResponse>, Integer, Hash)> create_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis)

```ruby
begin
  # Create CareCaseDiagnosis
  data, status_code, headers = api_instance.create_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->create_care_case_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_diagnosis** | [**CareCaseDiagnosis**](CareCaseDiagnosis.md) |  |  |

### Return type

[**CareCaseDiagnosisVBAResponse**](CareCaseDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_diagnosis

> delete_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key)

Delete CareCaseDiagnosis

Deletes an CareCaseDiagnosis

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_diagnosis_key = 56 # Integer | CareCaseDiagnosis Key

begin
  # Delete CareCaseDiagnosis
  api_instance.delete_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->delete_care_case_diagnosis: #{e}"
end
```

#### Using the delete_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key)

```ruby
begin
  # Delete CareCaseDiagnosis
  data, status_code, headers = api_instance.delete_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->delete_care_case_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_diagnosis_key** | **Integer** | CareCaseDiagnosis Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_diagnosis

> <CareCaseDiagnosisVBAResponse> get_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key)

Get CareCaseDiagnosis

Gets CareCaseDiagnosis

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_diagnosis_key = 56 # Integer | CareCaseDiagnosis Key

begin
  # Get CareCaseDiagnosis
  result = api_instance.get_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->get_care_case_diagnosis: #{e}"
end
```

#### Using the get_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDiagnosisVBAResponse>, Integer, Hash)> get_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key)

```ruby
begin
  # Get CareCaseDiagnosis
  data, status_code, headers = api_instance.get_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->get_care_case_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_diagnosis_key** | **Integer** | CareCaseDiagnosis Key |  |

### Return type

[**CareCaseDiagnosisVBAResponse**](CareCaseDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_diagnosis

> <CareCaseDiagnosisListVBAResponse> list_care_case_diagnosis(vbasoftware_database, case_key, opts)

List CareCaseDiagnosis

Lists all CareCaseDiagnosis for the given caseKey

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseDiagnosis
  result = api_instance.list_care_case_diagnosis(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->list_care_case_diagnosis: #{e}"
end
```

#### Using the list_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDiagnosisListVBAResponse>, Integer, Hash)> list_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseDiagnosis
  data, status_code, headers = api_instance.list_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDiagnosisListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->list_care_case_diagnosis_with_http_info: #{e}"
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

[**CareCaseDiagnosisListVBAResponse**](CareCaseDiagnosisListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_diagnosis

> <MultiCodeResponseListVBAResponse> update_batch_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis)

Create or Update Batch CareCaseDiagnosis

Create or Update multiple CareCaseDiagnosis at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_diagnosis = [Vba::CareCaseDiagnosis.new({care_case_diagnosis_key: 37, case_key: 37})] # Array<CareCaseDiagnosis> | 

begin
  # Create or Update Batch CareCaseDiagnosis
  result = api_instance.update_batch_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->update_batch_care_case_diagnosis: #{e}"
end
```

#### Using the update_batch_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis)

```ruby
begin
  # Create or Update Batch CareCaseDiagnosis
  data, status_code, headers = api_instance.update_batch_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->update_batch_care_case_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_diagnosis** | [**Array&lt;CareCaseDiagnosis&gt;**](CareCaseDiagnosis.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_diagnosis

> <CareCaseDiagnosisVBAResponse> update_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key, care_case_diagnosis)

Update CareCaseDiagnosis

Updates a specific CareCaseDiagnosis.

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

api_instance = Vba::CareCaseDiagnosesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_diagnosis_key = 56 # Integer | CareCaseDiagnosis Key
care_case_diagnosis = Vba::CareCaseDiagnosis.new({care_case_diagnosis_key: 37, case_key: 37}) # CareCaseDiagnosis | 

begin
  # Update CareCaseDiagnosis
  result = api_instance.update_care_case_diagnosis(vbasoftware_database, case_key, care_case_diagnosis_key, care_case_diagnosis)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->update_care_case_diagnosis: #{e}"
end
```

#### Using the update_care_case_diagnosis_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseDiagnosisVBAResponse>, Integer, Hash)> update_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key, care_case_diagnosis)

```ruby
begin
  # Update CareCaseDiagnosis
  data, status_code, headers = api_instance.update_care_case_diagnosis_with_http_info(vbasoftware_database, case_key, care_case_diagnosis_key, care_case_diagnosis)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseDiagnosisVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseDiagnosesApi->update_care_case_diagnosis_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_diagnosis_key** | **Integer** | CareCaseDiagnosis Key |  |
| **care_case_diagnosis** | [**CareCaseDiagnosis**](CareCaseDiagnosis.md) |  |  |

### Return type

[**CareCaseDiagnosisVBAResponse**](CareCaseDiagnosisVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

