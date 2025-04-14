# Vba::CareCaseEmeticRisksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#create_care_case_emetic_risk) | **POST** /emetic-risks | Create CareCaseEmeticRisk |
| [**delete_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#delete_care_case_emetic_risk) | **DELETE** /emetic-risks/{careCaseEmeticRiskKey} | Delete CareCaseEmeticRisk |
| [**get_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#get_care_case_emetic_risk) | **GET** /emetic-risks/{careCaseEmeticRiskKey} | Get CareCaseEmeticRisk |
| [**list_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#list_care_case_emetic_risk) | **GET** /emetic-risks | List CareCaseEmeticRisk |
| [**update_batch_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#update_batch_care_case_emetic_risk) | **PUT** /emetic-risks-batch | Create or Update Batch CareCaseEmeticRisk |
| [**update_care_case_emetic_risk**](CareCaseEmeticRisksApi.md#update_care_case_emetic_risk) | **PUT** /emetic-risks/{careCaseEmeticRiskKey} | Update CareCaseEmeticRisk |


## create_care_case_emetic_risk

> <CareCaseEmeticRiskVBAResponse> create_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk)

Create CareCaseEmeticRisk

Creates a new CareCaseEmeticRisk

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_emetic_risk = Vba::CareCaseEmeticRisk.new({care_case_emetic_risk_key: 37}) # CareCaseEmeticRisk | 

begin
  # Create CareCaseEmeticRisk
  result = api_instance.create_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->create_care_case_emetic_risk: #{e}"
end
```

#### Using the create_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEmeticRiskVBAResponse>, Integer, Hash)> create_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk)

```ruby
begin
  # Create CareCaseEmeticRisk
  data, status_code, headers = api_instance.create_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEmeticRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->create_care_case_emetic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_emetic_risk** | [**CareCaseEmeticRisk**](CareCaseEmeticRisk.md) |  |  |

### Return type

[**CareCaseEmeticRiskVBAResponse**](CareCaseEmeticRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_emetic_risk

> delete_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key)

Delete CareCaseEmeticRisk

Deletes an CareCaseEmeticRisk

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_emetic_risk_key = 56 # Integer | CareCaseEmeticRisk Key

begin
  # Delete CareCaseEmeticRisk
  api_instance.delete_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->delete_care_case_emetic_risk: #{e}"
end
```

#### Using the delete_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key)

```ruby
begin
  # Delete CareCaseEmeticRisk
  data, status_code, headers = api_instance.delete_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->delete_care_case_emetic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_emetic_risk_key** | **Integer** | CareCaseEmeticRisk Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_emetic_risk

> <CareCaseEmeticRiskVBAResponse> get_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key)

Get CareCaseEmeticRisk

Gets CareCaseEmeticRisk

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_emetic_risk_key = 56 # Integer | CareCaseEmeticRisk Key

begin
  # Get CareCaseEmeticRisk
  result = api_instance.get_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->get_care_case_emetic_risk: #{e}"
end
```

#### Using the get_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEmeticRiskVBAResponse>, Integer, Hash)> get_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key)

```ruby
begin
  # Get CareCaseEmeticRisk
  data, status_code, headers = api_instance.get_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEmeticRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->get_care_case_emetic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_emetic_risk_key** | **Integer** | CareCaseEmeticRisk Key |  |

### Return type

[**CareCaseEmeticRiskVBAResponse**](CareCaseEmeticRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_emetic_risk

> <CareCaseEmeticRiskListVBAResponse> list_care_case_emetic_risk(vbasoftware_database, opts)

List CareCaseEmeticRisk

Lists all CareCaseEmeticRisk

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseEmeticRisk
  result = api_instance.list_care_case_emetic_risk(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->list_care_case_emetic_risk: #{e}"
end
```

#### Using the list_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEmeticRiskListVBAResponse>, Integer, Hash)> list_care_case_emetic_risk_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseEmeticRisk
  data, status_code, headers = api_instance.list_care_case_emetic_risk_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEmeticRiskListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->list_care_case_emetic_risk_with_http_info: #{e}"
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

[**CareCaseEmeticRiskListVBAResponse**](CareCaseEmeticRiskListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_emetic_risk

> <MultiCodeResponseListVBAResponse> update_batch_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk)

Create or Update Batch CareCaseEmeticRisk

Create or Update multiple CareCaseEmeticRisk at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_emetic_risk = [Vba::CareCaseEmeticRisk.new({care_case_emetic_risk_key: 37})] # Array<CareCaseEmeticRisk> | 

begin
  # Create or Update Batch CareCaseEmeticRisk
  result = api_instance.update_batch_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->update_batch_care_case_emetic_risk: #{e}"
end
```

#### Using the update_batch_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk)

```ruby
begin
  # Create or Update Batch CareCaseEmeticRisk
  data, status_code, headers = api_instance.update_batch_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->update_batch_care_case_emetic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_emetic_risk** | [**Array&lt;CareCaseEmeticRisk&gt;**](CareCaseEmeticRisk.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_emetic_risk

> <CareCaseEmeticRiskVBAResponse> update_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key, care_case_emetic_risk)

Update CareCaseEmeticRisk

Updates a specific CareCaseEmeticRisk.

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

api_instance = Vba::CareCaseEmeticRisksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_emetic_risk_key = 56 # Integer | CareCaseEmeticRisk Key
care_case_emetic_risk = Vba::CareCaseEmeticRisk.new({care_case_emetic_risk_key: 37}) # CareCaseEmeticRisk | 

begin
  # Update CareCaseEmeticRisk
  result = api_instance.update_care_case_emetic_risk(vbasoftware_database, care_case_emetic_risk_key, care_case_emetic_risk)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->update_care_case_emetic_risk: #{e}"
end
```

#### Using the update_care_case_emetic_risk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseEmeticRiskVBAResponse>, Integer, Hash)> update_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key, care_case_emetic_risk)

```ruby
begin
  # Update CareCaseEmeticRisk
  data, status_code, headers = api_instance.update_care_case_emetic_risk_with_http_info(vbasoftware_database, care_case_emetic_risk_key, care_case_emetic_risk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseEmeticRiskVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseEmeticRisksApi->update_care_case_emetic_risk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_emetic_risk_key** | **Integer** | CareCaseEmeticRisk Key |  |
| **care_case_emetic_risk** | [**CareCaseEmeticRisk**](CareCaseEmeticRisk.md) |  |  |

### Return type

[**CareCaseEmeticRiskVBAResponse**](CareCaseEmeticRiskVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

