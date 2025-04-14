# Vba::CaseMedicalConcordanceLevelsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#create_case_medical_concordance_level) | **POST** /case-medical-concordance-levels | Create CaseMedicalConcordanceLevel |
| [**delete_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#delete_case_medical_concordance_level) | **DELETE** /case-medical-concordance-levels/{medicalConcordanceLevel} | Delete CaseMedicalConcordanceLevel |
| [**get_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#get_case_medical_concordance_level) | **GET** /case-medical-concordance-levels/{medicalConcordanceLevel} | Get CaseMedicalConcordanceLevel |
| [**list_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#list_case_medical_concordance_level) | **GET** /case-medical-concordance-levels | List CaseMedicalConcordanceLevel |
| [**update_batch_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#update_batch_case_medical_concordance_level) | **PUT** /case-medical-concordance-levels-batch | Create or Update Batch CaseMedicalConcordanceLevel |
| [**update_case_medical_concordance_level**](CaseMedicalConcordanceLevelsApi.md#update_case_medical_concordance_level) | **PUT** /case-medical-concordance-levels/{medicalConcordanceLevel} | Update CaseMedicalConcordanceLevel |


## create_case_medical_concordance_level

> <CaseMedicalConcordanceLevelVBAResponse> create_case_medical_concordance_level(vbasoftware_database, case_medical_concordance_level)

Create CaseMedicalConcordanceLevel

Creates a new CaseMedicalConcordanceLevel

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_medical_concordance_level = Vba::CaseMedicalConcordanceLevel.new({medical_concordance_level: 'medical_concordance_level_example'}) # CaseMedicalConcordanceLevel | 

begin
  # Create CaseMedicalConcordanceLevel
  result = api_instance.create_case_medical_concordance_level(vbasoftware_database, case_medical_concordance_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->create_case_medical_concordance_level: #{e}"
end
```

#### Using the create_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseMedicalConcordanceLevelVBAResponse>, Integer, Hash)> create_case_medical_concordance_level_with_http_info(vbasoftware_database, case_medical_concordance_level)

```ruby
begin
  # Create CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.create_case_medical_concordance_level_with_http_info(vbasoftware_database, case_medical_concordance_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseMedicalConcordanceLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->create_case_medical_concordance_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_medical_concordance_level** | [**CaseMedicalConcordanceLevel**](CaseMedicalConcordanceLevel.md) |  |  |

### Return type

[**CaseMedicalConcordanceLevelVBAResponse**](CaseMedicalConcordanceLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_case_medical_concordance_level

> delete_case_medical_concordance_level(vbasoftware_database, medical_concordance_level)

Delete CaseMedicalConcordanceLevel

Deletes an CaseMedicalConcordanceLevel

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
medical_concordance_level = 'medical_concordance_level_example' # String | Medical Concordance Level

begin
  # Delete CaseMedicalConcordanceLevel
  api_instance.delete_case_medical_concordance_level(vbasoftware_database, medical_concordance_level)
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->delete_case_medical_concordance_level: #{e}"
end
```

#### Using the delete_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level)

```ruby
begin
  # Delete CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.delete_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->delete_case_medical_concordance_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **medical_concordance_level** | **String** | Medical Concordance Level |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_case_medical_concordance_level

> <CaseMedicalConcordanceLevelVBAResponse> get_case_medical_concordance_level(vbasoftware_database, medical_concordance_level)

Get CaseMedicalConcordanceLevel

Gets CaseMedicalConcordanceLevel

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
medical_concordance_level = 'medical_concordance_level_example' # String | Medical Concordance Level

begin
  # Get CaseMedicalConcordanceLevel
  result = api_instance.get_case_medical_concordance_level(vbasoftware_database, medical_concordance_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->get_case_medical_concordance_level: #{e}"
end
```

#### Using the get_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseMedicalConcordanceLevelVBAResponse>, Integer, Hash)> get_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level)

```ruby
begin
  # Get CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.get_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseMedicalConcordanceLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->get_case_medical_concordance_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **medical_concordance_level** | **String** | Medical Concordance Level |  |

### Return type

[**CaseMedicalConcordanceLevelVBAResponse**](CaseMedicalConcordanceLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_case_medical_concordance_level

> <CaseMedicalConcordanceLevelListVBAResponse> list_case_medical_concordance_level(vbasoftware_database, opts)

List CaseMedicalConcordanceLevel

Lists all CaseMedicalConcordanceLevel

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CaseMedicalConcordanceLevel
  result = api_instance.list_case_medical_concordance_level(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->list_case_medical_concordance_level: #{e}"
end
```

#### Using the list_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseMedicalConcordanceLevelListVBAResponse>, Integer, Hash)> list_case_medical_concordance_level_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.list_case_medical_concordance_level_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseMedicalConcordanceLevelListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->list_case_medical_concordance_level_with_http_info: #{e}"
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

[**CaseMedicalConcordanceLevelListVBAResponse**](CaseMedicalConcordanceLevelListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_case_medical_concordance_level

> <MultiCodeResponseListVBAResponse> update_batch_case_medical_concordance_level(vbasoftware_database, case_medical_concordance_level)

Create or Update Batch CaseMedicalConcordanceLevel

Create or Update multiple CaseMedicalConcordanceLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_medical_concordance_level = [Vba::CaseMedicalConcordanceLevel.new({medical_concordance_level: 'medical_concordance_level_example'})] # Array<CaseMedicalConcordanceLevel> | 

begin
  # Create or Update Batch CaseMedicalConcordanceLevel
  result = api_instance.update_batch_case_medical_concordance_level(vbasoftware_database, case_medical_concordance_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->update_batch_case_medical_concordance_level: #{e}"
end
```

#### Using the update_batch_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_case_medical_concordance_level_with_http_info(vbasoftware_database, case_medical_concordance_level)

```ruby
begin
  # Create or Update Batch CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.update_batch_case_medical_concordance_level_with_http_info(vbasoftware_database, case_medical_concordance_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->update_batch_case_medical_concordance_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_medical_concordance_level** | [**Array&lt;CaseMedicalConcordanceLevel&gt;**](CaseMedicalConcordanceLevel.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_case_medical_concordance_level

> <CaseMedicalConcordanceLevelVBAResponse> update_case_medical_concordance_level(vbasoftware_database, medical_concordance_level, case_medical_concordance_level)

Update CaseMedicalConcordanceLevel

Updates a specific CaseMedicalConcordanceLevel.

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

api_instance = Vba::CaseMedicalConcordanceLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
medical_concordance_level = 'medical_concordance_level_example' # String | Medical Concordance Level
case_medical_concordance_level = Vba::CaseMedicalConcordanceLevel.new({medical_concordance_level: 'medical_concordance_level_example'}) # CaseMedicalConcordanceLevel | 

begin
  # Update CaseMedicalConcordanceLevel
  result = api_instance.update_case_medical_concordance_level(vbasoftware_database, medical_concordance_level, case_medical_concordance_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->update_case_medical_concordance_level: #{e}"
end
```

#### Using the update_case_medical_concordance_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaseMedicalConcordanceLevelVBAResponse>, Integer, Hash)> update_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level, case_medical_concordance_level)

```ruby
begin
  # Update CaseMedicalConcordanceLevel
  data, status_code, headers = api_instance.update_case_medical_concordance_level_with_http_info(vbasoftware_database, medical_concordance_level, case_medical_concordance_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaseMedicalConcordanceLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CaseMedicalConcordanceLevelsApi->update_case_medical_concordance_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **medical_concordance_level** | **String** | Medical Concordance Level |  |
| **case_medical_concordance_level** | [**CaseMedicalConcordanceLevel**](CaseMedicalConcordanceLevel.md) |  |  |

### Return type

[**CaseMedicalConcordanceLevelVBAResponse**](CaseMedicalConcordanceLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

