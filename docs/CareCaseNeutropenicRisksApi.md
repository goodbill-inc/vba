# Vba::CareCaseNeutropenicRisksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#create_care_case_neutropenic_risk) | **POST** /care-case-neutropenic-risks | Create CareCaseNeutropenicRisk |
| [**delete_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#delete_care_case_neutropenic_risk) | **DELETE** /care-case-neutropenic-risks/{careCaseNeutropenicRiskKey} | Delete CareCaseNeutropenicRisk |
| [**get_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#get_care_case_neutropenic_risk) | **GET** /care-case-neutropenic-risks/{careCaseNeutropenicRiskKey} | Get CareCaseNeutropenicRisk |
| [**list_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#list_care_case_neutropenic_risk) | **GET** /care-case-neutropenic-risks | List CareCaseNeutropenicRisk |
| [**update_batch_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#update_batch_care_case_neutropenic_risk) | **PUT** /care-case-neutropenic-risks-batch | Create or Update Batch CareCaseNeutropenicRisk |
| [**update_care_case_neutropenic_risk**](CareCaseNeutropenicRisksApi.md#update_care_case_neutropenic_risk) | **PUT** /care-case-neutropenic-risks/{careCaseNeutropenicRiskKey} | Update CareCaseNeutropenicRisk |


## create_care_case_neutropenic_risk

> <CareCaseNeutropenicRiskVBAResponse> create_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk)

Create CareCaseNeutropenicRisk

Creates a new CareCaseNeutropenicRisk

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_neutropenic_risk = Vba::CareCaseNeutropenicRisk.new({care_case_neutropenic_risk_key: 37}) # CareCaseNeutropenicRisk | 

begin
  # Create CareCaseNeutropenicRisk
  result = api_instance.create_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->create_care_case_neutropenic_risk: #{e}"
end
```

#### Using the create_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseNeutropenicRiskVBAResponse>, Integer, Hash)> create_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk)

```ruby
begin
  # Create CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.create_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseNeutropenicRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->create_care_case_neutropenic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_neutropenic_risk** | [**CareCaseNeutropenicRisk**](CareCaseNeutropenicRisk.md) |  |  |

### Return type

[**CareCaseNeutropenicRiskVBAResponse**](CareCaseNeutropenicRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_neutropenic_risk

> delete_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key)

Delete CareCaseNeutropenicRisk

Deletes an CareCaseNeutropenicRisk

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_neutropenic_risk_key = 56 # Integer | CareCaseNeutropenicRisk Key

begin
  # Delete CareCaseNeutropenicRisk
  api_instance.delete_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->delete_care_case_neutropenic_risk: #{e}"
end
```

#### Using the delete_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key)

```ruby
begin
  # Delete CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.delete_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->delete_care_case_neutropenic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_neutropenic_risk_key** | **Integer** | CareCaseNeutropenicRisk Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_neutropenic_risk

> <CareCaseNeutropenicRiskVBAResponse> get_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key)

Get CareCaseNeutropenicRisk

Gets CareCaseNeutropenicRisk

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_neutropenic_risk_key = 56 # Integer | CareCaseNeutropenicRisk Key

begin
  # Get CareCaseNeutropenicRisk
  result = api_instance.get_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->get_care_case_neutropenic_risk: #{e}"
end
```

#### Using the get_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseNeutropenicRiskVBAResponse>, Integer, Hash)> get_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key)

```ruby
begin
  # Get CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.get_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseNeutropenicRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->get_care_case_neutropenic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_neutropenic_risk_key** | **Integer** | CareCaseNeutropenicRisk Key |  |

### Return type

[**CareCaseNeutropenicRiskVBAResponse**](CareCaseNeutropenicRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_neutropenic_risk

> <CareCaseNeutropenicRiskListVBAResponse> list_care_case_neutropenic_risk(vbasoftware_database, opts)

List CareCaseNeutropenicRisk

Lists all CareCaseNeutropenicRisk

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseNeutropenicRisk
  result = api_instance.list_care_case_neutropenic_risk(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->list_care_case_neutropenic_risk: #{e}"
end
```

#### Using the list_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseNeutropenicRiskListVBAResponse>, Integer, Hash)> list_care_case_neutropenic_risk_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.list_care_case_neutropenic_risk_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseNeutropenicRiskListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->list_care_case_neutropenic_risk_with_http_info: #{e}"
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

[**CareCaseNeutropenicRiskListVBAResponse**](CareCaseNeutropenicRiskListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_neutropenic_risk

> <MultiCodeResponseListVBAResponse> update_batch_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk)

Create or Update Batch CareCaseNeutropenicRisk

Create or Update multiple CareCaseNeutropenicRisk at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_neutropenic_risk = [Vba::CareCaseNeutropenicRisk.new({care_case_neutropenic_risk_key: 37})] # Array<CareCaseNeutropenicRisk> | 

begin
  # Create or Update Batch CareCaseNeutropenicRisk
  result = api_instance.update_batch_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->update_batch_care_case_neutropenic_risk: #{e}"
end
```

#### Using the update_batch_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk)

```ruby
begin
  # Create or Update Batch CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.update_batch_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->update_batch_care_case_neutropenic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_neutropenic_risk** | [**Array&lt;CareCaseNeutropenicRisk&gt;**](CareCaseNeutropenicRisk.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_neutropenic_risk

> <CareCaseNeutropenicRiskVBAResponse> update_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key, care_case_neutropenic_risk)

Update CareCaseNeutropenicRisk

Updates a specific CareCaseNeutropenicRisk.

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

api_instance = Vba::CareCaseNeutropenicRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_neutropenic_risk_key = 56 # Integer | CareCaseNeutropenicRisk Key
care_case_neutropenic_risk = Vba::CareCaseNeutropenicRisk.new({care_case_neutropenic_risk_key: 37}) # CareCaseNeutropenicRisk | 

begin
  # Update CareCaseNeutropenicRisk
  result = api_instance.update_care_case_neutropenic_risk(vbasoftware_database, care_case_neutropenic_risk_key, care_case_neutropenic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->update_care_case_neutropenic_risk: #{e}"
end
```

#### Using the update_care_case_neutropenic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseNeutropenicRiskVBAResponse>, Integer, Hash)> update_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key, care_case_neutropenic_risk)

```ruby
begin
  # Update CareCaseNeutropenicRisk
  data, status_code, headers = api_instance.update_care_case_neutropenic_risk_with_http_info(vbasoftware_database, care_case_neutropenic_risk_key, care_case_neutropenic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseNeutropenicRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseNeutropenicRisksApi->update_care_case_neutropenic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_neutropenic_risk_key** | **Integer** | CareCaseNeutropenicRisk Key |  |
| **care_case_neutropenic_risk** | [**CareCaseNeutropenicRisk**](CareCaseNeutropenicRisk.md) |  |  |

### Return type

[**CareCaseNeutropenicRiskVBAResponse**](CareCaseNeutropenicRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

