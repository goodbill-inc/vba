# Vba::CareCaseTreatmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_treatment**](CareCaseTreatmentsApi.md#create_care_case_treatment) | **POST** /cases/{caseKey}/treatments | Create CareCaseTreatment |
| [**delete_care_case_treatment**](CareCaseTreatmentsApi.md#delete_care_case_treatment) | **DELETE** /cases/{caseKey}/treatments/{careCaseTreatmentKey} | Delete CareCaseTreatment |
| [**get_care_case_treatment**](CareCaseTreatmentsApi.md#get_care_case_treatment) | **GET** /cases/{caseKey}/treatments/{careCaseTreatmentKey} | Get CareCaseTreatment |
| [**list_care_case_treatment**](CareCaseTreatmentsApi.md#list_care_case_treatment) | **GET** /cases/{caseKey}/treatments | List CareCaseTreatment |
| [**update_batch_care_case_treatment**](CareCaseTreatmentsApi.md#update_batch_care_case_treatment) | **PUT** /cases/{caseKey}/treatments-batch | Create or Update Batch CareCaseTreatment |
| [**update_care_case_treatment**](CareCaseTreatmentsApi.md#update_care_case_treatment) | **PUT** /cases/{caseKey}/treatments/{careCaseTreatmentKey} | Update CareCaseTreatment |


## create_care_case_treatment

> <CareCaseTreatmentVBAResponse> create_care_case_treatment(vbasoftware_database, case_key, care_case_treatment)

Create CareCaseTreatment

Creates a new CareCaseTreatment

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_treatment = Vba::CareCaseTreatment.new({care_case_treatment_key: 37, case_key: 37}) # CareCaseTreatment | 

begin
  # Create CareCaseTreatment
  result = api_instance.create_care_case_treatment(vbasoftware_database, case_key, care_case_treatment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->create_care_case_treatment: #{e}"
end
```

#### Using the create_care_case_treatment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentVBAResponse>, Integer, Hash)> create_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment)

```ruby
begin
  # Create CareCaseTreatment
  data, status_code, headers = api_instance.create_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->create_care_case_treatment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_treatment** | [**CareCaseTreatment**](CareCaseTreatment.md) |  |  |

### Return type

[**CareCaseTreatmentVBAResponse**](CareCaseTreatmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_treatment

> delete_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key)

Delete CareCaseTreatment

Deletes an CareCaseTreatment

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_treatment_key = 56 # Integer | CareCaseTreatment Key

begin
  # Delete CareCaseTreatment
  api_instance.delete_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->delete_care_case_treatment: #{e}"
end
```

#### Using the delete_care_case_treatment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key)

```ruby
begin
  # Delete CareCaseTreatment
  data, status_code, headers = api_instance.delete_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->delete_care_case_treatment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_treatment_key** | **Integer** | CareCaseTreatment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_treatment

> <CareCaseTreatmentVBAResponse> get_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key)

Get CareCaseTreatment

Gets CareCaseTreatment

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_treatment_key = 56 # Integer | CareCaseTreatment Key

begin
  # Get CareCaseTreatment
  result = api_instance.get_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->get_care_case_treatment: #{e}"
end
```

#### Using the get_care_case_treatment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentVBAResponse>, Integer, Hash)> get_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key)

```ruby
begin
  # Get CareCaseTreatment
  data, status_code, headers = api_instance.get_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->get_care_case_treatment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_treatment_key** | **Integer** | CareCaseTreatment Key |  |

### Return type

[**CareCaseTreatmentVBAResponse**](CareCaseTreatmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_treatment

> <CareCaseTreatmentListVBAResponse> list_care_case_treatment(vbasoftware_database, case_key, opts)

List CareCaseTreatment

Lists all CareCaseTreatment for the given caseKey

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseTreatment
  result = api_instance.list_care_case_treatment(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->list_care_case_treatment: #{e}"
end
```

#### Using the list_care_case_treatment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentListVBAResponse>, Integer, Hash)> list_care_case_treatment_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseTreatment
  data, status_code, headers = api_instance.list_care_case_treatment_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->list_care_case_treatment_with_http_info: #{e}"
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

[**CareCaseTreatmentListVBAResponse**](CareCaseTreatmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_treatment

> <MultiCodeResponseListVBAResponse> update_batch_care_case_treatment(vbasoftware_database, case_key, care_case_treatment)

Create or Update Batch CareCaseTreatment

Create or Update multiple CareCaseTreatment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_treatment = [Vba::CareCaseTreatment.new({care_case_treatment_key: 37, case_key: 37})] # Array<CareCaseTreatment> | 

begin
  # Create or Update Batch CareCaseTreatment
  result = api_instance.update_batch_care_case_treatment(vbasoftware_database, case_key, care_case_treatment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->update_batch_care_case_treatment: #{e}"
end
```

#### Using the update_batch_care_case_treatment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment)

```ruby
begin
  # Create or Update Batch CareCaseTreatment
  data, status_code, headers = api_instance.update_batch_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->update_batch_care_case_treatment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_treatment** | [**Array&lt;CareCaseTreatment&gt;**](CareCaseTreatment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_treatment

> <CareCaseTreatmentVBAResponse> update_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key, care_case_treatment)

Update CareCaseTreatment

Updates a specific CareCaseTreatment.

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

api_instance = Vba::CareCaseTreatmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_treatment_key = 56 # Integer | CareCaseTreatment Key
care_case_treatment = Vba::CareCaseTreatment.new({care_case_treatment_key: 37, case_key: 37}) # CareCaseTreatment | 

begin
  # Update CareCaseTreatment
  result = api_instance.update_care_case_treatment(vbasoftware_database, case_key, care_case_treatment_key, care_case_treatment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->update_care_case_treatment: #{e}"
end
```

#### Using the update_care_case_treatment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseTreatmentVBAResponse>, Integer, Hash)> update_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key, care_case_treatment)

```ruby
begin
  # Update CareCaseTreatment
  data, status_code, headers = api_instance.update_care_case_treatment_with_http_info(vbasoftware_database, case_key, care_case_treatment_key, care_case_treatment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseTreatmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseTreatmentsApi->update_care_case_treatment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_treatment_key** | **Integer** | CareCaseTreatment Key |  |
| **care_case_treatment** | [**CareCaseTreatment**](CareCaseTreatment.md) |  |  |

### Return type

[**CareCaseTreatmentVBAResponse**](CareCaseTreatmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

