# Vba::APCWeightsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_apc_weight**](APCWeightsApi.md#create_apc_weight) | **POST** /apc-weights | Create APCWeight |
| [**delete_apc_weight**](APCWeightsApi.md#delete_apc_weight) | **DELETE** /apc-weights/{apcSchedule}/{apcCode}/{effectiveDate} | Delete APCWeight |
| [**get_apc_weight**](APCWeightsApi.md#get_apc_weight) | **GET** /apc-weights/{apcSchedule}/{apcCode}/{effectiveDate} | Get APCWeight |
| [**list_apc_weight**](APCWeightsApi.md#list_apc_weight) | **GET** /apc-weights | List APCWeight |
| [**update_apc_weight**](APCWeightsApi.md#update_apc_weight) | **PUT** /apc-weights/{apcSchedule}/{apcCode}/{effectiveDate} | Update APCWeight |
| [**update_batch_apc_weight**](APCWeightsApi.md#update_batch_apc_weight) | **PUT** /apc-weights-batch | Create or Update Batch APCWeight |


## create_apc_weight

> <APCWeightVBAResponse> create_apc_weight(vbasoftware_database, apc_weight)

Create APCWeight

Creates a new APCWeight

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_weight = Vba::APCWeight.new({ap_c_schedule: 'ap_c_schedule_example', ap_c_code: 'ap_c_code_example', effective_date: Time.now}) # APCWeight | 

begin
  # Create APCWeight
  result = api_instance.create_apc_weight(vbasoftware_database, apc_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->create_apc_weight: #{e}"
end
```

#### Using the create_apc_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCWeightVBAResponse>, Integer, Hash)> create_apc_weight_with_http_info(vbasoftware_database, apc_weight)

```ruby
begin
  # Create APCWeight
  data, status_code, headers = api_instance.create_apc_weight_with_http_info(vbasoftware_database, apc_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->create_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_weight** | [**APCWeight**](APCWeight.md) |  |  |

### Return type

[**APCWeightVBAResponse**](APCWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_apc_weight

> delete_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date)

Delete APCWeight

Deletes an APCWeight

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_schedule = 'apc_schedule_example' # String | APC Schedule
apc_code = 'apc_code_example' # String | APC Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete APCWeight
  api_instance.delete_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->delete_apc_weight: #{e}"
end
```

#### Using the delete_apc_weight_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date)

```ruby
begin
  # Delete APCWeight
  data, status_code, headers = api_instance.delete_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->delete_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | **String** | APC Schedule |  |
| **apc_code** | **String** | APC Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_apc_weight

> <APCWeightVBAResponse> get_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date)

Get APCWeight

Gets APCWeight

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_schedule = 'apc_schedule_example' # String | APC Schedule
apc_code = 'apc_code_example' # String | APC Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get APCWeight
  result = api_instance.get_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->get_apc_weight: #{e}"
end
```

#### Using the get_apc_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCWeightVBAResponse>, Integer, Hash)> get_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date)

```ruby
begin
  # Get APCWeight
  data, status_code, headers = api_instance.get_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->get_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | **String** | APC Schedule |  |
| **apc_code** | **String** | APC Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**APCWeightVBAResponse**](APCWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_apc_weight

> <APCWeightListVBAResponse> list_apc_weight(vbasoftware_database, opts)

List APCWeight

Lists all APCWeight for the given apcSchedule and apcCode

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  apc_schedule: 'apc_schedule_example', # String | APC Schedule
  apc_code: 'apc_code_example', # String | APC Code
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List APCWeight
  result = api_instance.list_apc_weight(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->list_apc_weight: #{e}"
end
```

#### Using the list_apc_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCWeightListVBAResponse>, Integer, Hash)> list_apc_weight_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List APCWeight
  data, status_code, headers = api_instance.list_apc_weight_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCWeightListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->list_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | **String** | APC Schedule | [optional] |
| **apc_code** | **String** | APC Code | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**APCWeightListVBAResponse**](APCWeightListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_apc_weight

> <APCWeightVBAResponse> update_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date, apc_weight)

Update APCWeight

Updates a specific APCWeight.

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_schedule = 'apc_schedule_example' # String | APC Schedule
apc_code = 'apc_code_example' # String | APC Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
apc_weight = Vba::APCWeight.new({ap_c_schedule: 'ap_c_schedule_example', ap_c_code: 'ap_c_code_example', effective_date: Time.now}) # APCWeight | 

begin
  # Update APCWeight
  result = api_instance.update_apc_weight(vbasoftware_database, apc_schedule, apc_code, effective_date, apc_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->update_apc_weight: #{e}"
end
```

#### Using the update_apc_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCWeightVBAResponse>, Integer, Hash)> update_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date, apc_weight)

```ruby
begin
  # Update APCWeight
  data, status_code, headers = api_instance.update_apc_weight_with_http_info(vbasoftware_database, apc_schedule, apc_code, effective_date, apc_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->update_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_schedule** | **String** | APC Schedule |  |
| **apc_code** | **String** | APC Code |  |
| **effective_date** | **Time** | Effective Date |  |
| **apc_weight** | [**APCWeight**](APCWeight.md) |  |  |

### Return type

[**APCWeightVBAResponse**](APCWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_apc_weight

> <MultiCodeResponseListVBAResponse> update_batch_apc_weight(vbasoftware_database, apc_weight)

Create or Update Batch APCWeight

Create or Update multiple APCWeight at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::APCWeightsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_weight = [Vba::APCWeight.new({ap_c_schedule: 'ap_c_schedule_example', ap_c_code: 'ap_c_code_example', effective_date: Time.now})] # Array<APCWeight> | 

begin
  # Create or Update Batch APCWeight
  result = api_instance.update_batch_apc_weight(vbasoftware_database, apc_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->update_batch_apc_weight: #{e}"
end
```

#### Using the update_batch_apc_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_apc_weight_with_http_info(vbasoftware_database, apc_weight)

```ruby
begin
  # Create or Update Batch APCWeight
  data, status_code, headers = api_instance.update_batch_apc_weight_with_http_info(vbasoftware_database, apc_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCWeightsApi->update_batch_apc_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_weight** | [**Array&lt;APCWeight&gt;**](APCWeight.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

