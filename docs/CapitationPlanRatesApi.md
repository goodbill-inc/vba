# Vba::CapitationPlanRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_plan_rate**](CapitationPlanRatesApi.md#create_capitation_plan_rate) | **POST** /capitation-plan-rates | Create CapitationPlanRate |
| [**delete_capitation_plan_rate**](CapitationPlanRatesApi.md#delete_capitation_plan_rate) | **DELETE** /capitation-plan-rates/{capitationPlanRateKey} | Delete CapitationPlanRate |
| [**get_capitation_plan_rate**](CapitationPlanRatesApi.md#get_capitation_plan_rate) | **GET** /capitation-plan-rates/{capitationPlanRateKey} | Get CapitationPlanRate |
| [**list_capitation_plan_rate**](CapitationPlanRatesApi.md#list_capitation_plan_rate) | **GET** /capitation-plan-rates | List CapitationPlanRate |
| [**update_batch_capitation_plan_rate**](CapitationPlanRatesApi.md#update_batch_capitation_plan_rate) | **PUT** /capitation-plan-rates-batch | Create or Update Batch CapitationPlanRate |
| [**update_capitation_plan_rate**](CapitationPlanRatesApi.md#update_capitation_plan_rate) | **PUT** /capitation-plan-rates/{capitationPlanRateKey} | Update CapitationPlanRate |


## create_capitation_plan_rate

> <CapitationPlanRateVBAResponse> create_capitation_plan_rate(vbasoftware_database, capitation_plan_rate)

Create CapitationPlanRate

Creates a new CapitationPlanRate

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_plan_rate = Vba::CapitationPlanRate.new({capitation_plan_rate_key: 37, adult: false, child: false}) # CapitationPlanRate | 

begin
  # Create CapitationPlanRate
  result = api_instance.create_capitation_plan_rate(vbasoftware_database, capitation_plan_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->create_capitation_plan_rate: #{e}"
end
```

#### Using the create_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationPlanRateVBAResponse>, Integer, Hash)> create_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate)

```ruby
begin
  # Create CapitationPlanRate
  data, status_code, headers = api_instance.create_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationPlanRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->create_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_plan_rate** | [**CapitationPlanRate**](CapitationPlanRate.md) |  |  |

### Return type

[**CapitationPlanRateVBAResponse**](CapitationPlanRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_plan_rate

> delete_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key)

Delete CapitationPlanRate

Deletes an CapitationPlanRate

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_plan_rate_key = 56 # Integer | CapitationPlanRate Key

begin
  # Delete CapitationPlanRate
  api_instance.delete_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->delete_capitation_plan_rate: #{e}"
end
```

#### Using the delete_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key)

```ruby
begin
  # Delete CapitationPlanRate
  data, status_code, headers = api_instance.delete_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->delete_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_plan_rate_key** | **Integer** | CapitationPlanRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_plan_rate

> <CapitationPlanRateVBAResponse> get_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key)

Get CapitationPlanRate

Gets CapitationPlanRate

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_plan_rate_key = 56 # Integer | CapitationPlanRate Key

begin
  # Get CapitationPlanRate
  result = api_instance.get_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->get_capitation_plan_rate: #{e}"
end
```

#### Using the get_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationPlanRateVBAResponse>, Integer, Hash)> get_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key)

```ruby
begin
  # Get CapitationPlanRate
  data, status_code, headers = api_instance.get_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationPlanRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->get_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_plan_rate_key** | **Integer** | CapitationPlanRate Key |  |

### Return type

[**CapitationPlanRateVBAResponse**](CapitationPlanRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_plan_rate

> <CapitationPlanRateListVBAResponse> list_capitation_plan_rate(vbasoftware_database, opts)

List CapitationPlanRate

Lists all CapitationPlanRate. Supply optinal query parameter planID to filter by a specific plan.

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  plan_id: 'plan_id_example', # String | Plan ID
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationPlanRate
  result = api_instance.list_capitation_plan_rate(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->list_capitation_plan_rate: #{e}"
end
```

#### Using the list_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationPlanRateListVBAResponse>, Integer, Hash)> list_capitation_plan_rate_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationPlanRate
  data, status_code, headers = api_instance.list_capitation_plan_rate_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationPlanRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->list_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationPlanRateListVBAResponse**](CapitationPlanRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_plan_rate

> <MultiCodeResponseListVBAResponse> update_batch_capitation_plan_rate(vbasoftware_database, capitation_plan_rate)

Create or Update Batch CapitationPlanRate

Create or Update multiple CapitationPlanRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_plan_rate = [Vba::CapitationPlanRate.new({capitation_plan_rate_key: 37, adult: false, child: false})] # Array<CapitationPlanRate> | 

begin
  # Create or Update Batch CapitationPlanRate
  result = api_instance.update_batch_capitation_plan_rate(vbasoftware_database, capitation_plan_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->update_batch_capitation_plan_rate: #{e}"
end
```

#### Using the update_batch_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate)

```ruby
begin
  # Create or Update Batch CapitationPlanRate
  data, status_code, headers = api_instance.update_batch_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->update_batch_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_plan_rate** | [**Array&lt;CapitationPlanRate&gt;**](CapitationPlanRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_plan_rate

> <CapitationPlanRateVBAResponse> update_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key, capitation_plan_rate)

Update CapitationPlanRate

Updates a specific CapitationPlanRate.

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

api_instance = Vba::CapitationPlanRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_plan_rate_key = 56 # Integer | CapitationPlanRate Key
capitation_plan_rate = Vba::CapitationPlanRate.new({capitation_plan_rate_key: 37, adult: false, child: false}) # CapitationPlanRate | 

begin
  # Update CapitationPlanRate
  result = api_instance.update_capitation_plan_rate(vbasoftware_database, capitation_plan_rate_key, capitation_plan_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->update_capitation_plan_rate: #{e}"
end
```

#### Using the update_capitation_plan_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationPlanRateVBAResponse>, Integer, Hash)> update_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key, capitation_plan_rate)

```ruby
begin
  # Update CapitationPlanRate
  data, status_code, headers = api_instance.update_capitation_plan_rate_with_http_info(vbasoftware_database, capitation_plan_rate_key, capitation_plan_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationPlanRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationPlanRatesApi->update_capitation_plan_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_plan_rate_key** | **Integer** | CapitationPlanRate Key |  |
| **capitation_plan_rate** | [**CapitationPlanRate**](CapitationPlanRate.md) |  |  |

### Return type

[**CapitationPlanRateVBAResponse**](CapitationPlanRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

