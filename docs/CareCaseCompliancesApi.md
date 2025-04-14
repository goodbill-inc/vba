# Vba::CareCaseCompliancesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_compliance**](CareCaseCompliancesApi.md#create_care_case_compliance) | **POST** /cases/{caseKey}/compliances | Create CareCaseCompliance |
| [**delete_care_case_compliance**](CareCaseCompliancesApi.md#delete_care_case_compliance) | **DELETE** /cases/{caseKey}/compliances/{careCaseComplianceKey} | Delete CareCaseCompliance |
| [**get_care_case_compliance**](CareCaseCompliancesApi.md#get_care_case_compliance) | **GET** /cases/{caseKey}/compliances/{careCaseComplianceKey} | Get CareCaseCompliance |
| [**list_care_case_compliance**](CareCaseCompliancesApi.md#list_care_case_compliance) | **GET** /cases/{caseKey}/compliances | List CareCaseCompliance |
| [**update_batch_care_case_compliance**](CareCaseCompliancesApi.md#update_batch_care_case_compliance) | **PUT** /cases/{caseKey}/compliances-batch | Create or Update Batch CareCaseCompliance |
| [**update_care_case_compliance**](CareCaseCompliancesApi.md#update_care_case_compliance) | **PUT** /cases/{caseKey}/compliances/{careCaseComplianceKey} | Update CareCaseCompliance |


## create_care_case_compliance

> <CareCaseComplianceVBAResponse> create_care_case_compliance(vbasoftware_database, case_key, care_case_compliance)

Create CareCaseCompliance

Creates a new CareCaseCompliance

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_compliance = Vba::CareCaseCompliance.new({care_case_compliance_key: 37, case_key: 37}) # CareCaseCompliance | 

begin
  # Create CareCaseCompliance
  result = api_instance.create_care_case_compliance(vbasoftware_database, case_key, care_case_compliance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->create_care_case_compliance: #{e}"
end
```

#### Using the create_care_case_compliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseComplianceVBAResponse>, Integer, Hash)> create_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance)

```ruby
begin
  # Create CareCaseCompliance
  data, status_code, headers = api_instance.create_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseComplianceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->create_care_case_compliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_compliance** | [**CareCaseCompliance**](CareCaseCompliance.md) |  |  |

### Return type

[**CareCaseComplianceVBAResponse**](CareCaseComplianceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_compliance

> delete_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key)

Delete CareCaseCompliance

Deletes an CareCaseCompliance

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_compliance_key = 56 # Integer | CareCaseCompliance Key

begin
  # Delete CareCaseCompliance
  api_instance.delete_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->delete_care_case_compliance: #{e}"
end
```

#### Using the delete_care_case_compliance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key)

```ruby
begin
  # Delete CareCaseCompliance
  data, status_code, headers = api_instance.delete_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->delete_care_case_compliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_compliance_key** | **Integer** | CareCaseCompliance Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_compliance

> <CareCaseComplianceVBAResponse> get_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key)

Get CareCaseCompliance

Gets CareCaseCompliance

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_compliance_key = 56 # Integer | CareCaseCompliance Key

begin
  # Get CareCaseCompliance
  result = api_instance.get_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->get_care_case_compliance: #{e}"
end
```

#### Using the get_care_case_compliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseComplianceVBAResponse>, Integer, Hash)> get_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key)

```ruby
begin
  # Get CareCaseCompliance
  data, status_code, headers = api_instance.get_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseComplianceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->get_care_case_compliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_compliance_key** | **Integer** | CareCaseCompliance Key |  |

### Return type

[**CareCaseComplianceVBAResponse**](CareCaseComplianceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_compliance

> <CareCaseComplianceListVBAResponse> list_care_case_compliance(vbasoftware_database, case_key, opts)

List CareCaseCompliance

Lists all CareCaseCompliance for the given caseKey

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseCompliance
  result = api_instance.list_care_case_compliance(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->list_care_case_compliance: #{e}"
end
```

#### Using the list_care_case_compliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseComplianceListVBAResponse>, Integer, Hash)> list_care_case_compliance_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseCompliance
  data, status_code, headers = api_instance.list_care_case_compliance_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseComplianceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->list_care_case_compliance_with_http_info: #{e}"
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

[**CareCaseComplianceListVBAResponse**](CareCaseComplianceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_compliance

> <MultiCodeResponseListVBAResponse> update_batch_care_case_compliance(vbasoftware_database, case_key, care_case_compliance)

Create or Update Batch CareCaseCompliance

Create or Update multiple CareCaseCompliance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_compliance = [Vba::CareCaseCompliance.new({care_case_compliance_key: 37, case_key: 37})] # Array<CareCaseCompliance> | 

begin
  # Create or Update Batch CareCaseCompliance
  result = api_instance.update_batch_care_case_compliance(vbasoftware_database, case_key, care_case_compliance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->update_batch_care_case_compliance: #{e}"
end
```

#### Using the update_batch_care_case_compliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance)

```ruby
begin
  # Create or Update Batch CareCaseCompliance
  data, status_code, headers = api_instance.update_batch_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->update_batch_care_case_compliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_compliance** | [**Array&lt;CareCaseCompliance&gt;**](CareCaseCompliance.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_compliance

> <CareCaseComplianceVBAResponse> update_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key, care_case_compliance)

Update CareCaseCompliance

Updates a specific CareCaseCompliance.

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

api_instance = Vba::CareCaseCompliancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_compliance_key = 56 # Integer | CareCaseCompliance Key
care_case_compliance = Vba::CareCaseCompliance.new({care_case_compliance_key: 37, case_key: 37}) # CareCaseCompliance | 

begin
  # Update CareCaseCompliance
  result = api_instance.update_care_case_compliance(vbasoftware_database, case_key, care_case_compliance_key, care_case_compliance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->update_care_case_compliance: #{e}"
end
```

#### Using the update_care_case_compliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseComplianceVBAResponse>, Integer, Hash)> update_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key, care_case_compliance)

```ruby
begin
  # Update CareCaseCompliance
  data, status_code, headers = api_instance.update_care_case_compliance_with_http_info(vbasoftware_database, case_key, care_case_compliance_key, care_case_compliance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseComplianceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseCompliancesApi->update_care_case_compliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_compliance_key** | **Integer** | CareCaseCompliance Key |  |
| **care_case_compliance** | [**CareCaseCompliance**](CareCaseCompliance.md) |  |  |

### Return type

[**CareCaseComplianceVBAResponse**](CareCaseComplianceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

