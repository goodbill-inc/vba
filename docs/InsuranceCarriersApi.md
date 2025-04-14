# Vba::InsuranceCarriersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_insurance_carrier**](InsuranceCarriersApi.md#create_insurance_carrier) | **POST** /insurance-carriers | Create InsuranceCarrier |
| [**delete_insurance_carrier**](InsuranceCarriersApi.md#delete_insurance_carrier) | **DELETE** /insurance-carriers/{carrierKey} | Delete InsuranceCarrier |
| [**get_insurance_carrier**](InsuranceCarriersApi.md#get_insurance_carrier) | **GET** /insurance-carriers/{carrierKey} | Get InsuranceCarrier |
| [**list_insurance_carrier**](InsuranceCarriersApi.md#list_insurance_carrier) | **GET** /insurance-carriers | List InsuranceCarrier |
| [**update_batch_insurance_carrier**](InsuranceCarriersApi.md#update_batch_insurance_carrier) | **PUT** /insurance-carriers-batch | Create or Update Batch InsuranceCarrier |
| [**update_insurance_carrier**](InsuranceCarriersApi.md#update_insurance_carrier) | **PUT** /insurance-carriers/{carrierKey} | Update InsuranceCarrier |


## create_insurance_carrier

> <InsuranceCarrierVBAResponse> create_insurance_carrier(vbasoftware_database, insurance_carrier)

Create InsuranceCarrier

Creates a new InsuranceCarrier

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_carrier = Vba::InsuranceCarrier.new({carrier_key: 37, carrier_id: 'carrier_id_example'}) # InsuranceCarrier | 

begin
  # Create InsuranceCarrier
  result = api_instance.create_insurance_carrier(vbasoftware_database, insurance_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->create_insurance_carrier: #{e}"
end
```

#### Using the create_insurance_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierVBAResponse>, Integer, Hash)> create_insurance_carrier_with_http_info(vbasoftware_database, insurance_carrier)

```ruby
begin
  # Create InsuranceCarrier
  data, status_code, headers = api_instance.create_insurance_carrier_with_http_info(vbasoftware_database, insurance_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->create_insurance_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_carrier** | [**InsuranceCarrier**](InsuranceCarrier.md) |  |  |

### Return type

[**InsuranceCarrierVBAResponse**](InsuranceCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_insurance_carrier

> delete_insurance_carrier(vbasoftware_database, carrier_key)

Delete InsuranceCarrier

Deletes an InsuranceCarrier

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_key = 56 # Integer | Carrier Key

begin
  # Delete InsuranceCarrier
  api_instance.delete_insurance_carrier(vbasoftware_database, carrier_key)
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->delete_insurance_carrier: #{e}"
end
```

#### Using the delete_insurance_carrier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_insurance_carrier_with_http_info(vbasoftware_database, carrier_key)

```ruby
begin
  # Delete InsuranceCarrier
  data, status_code, headers = api_instance.delete_insurance_carrier_with_http_info(vbasoftware_database, carrier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->delete_insurance_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_key** | **Integer** | Carrier Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_insurance_carrier

> <InsuranceCarrierVBAResponse> get_insurance_carrier(vbasoftware_database, carrier_key)

Get InsuranceCarrier

Gets InsuranceCarrier

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_key = 56 # Integer | Carrier Key

begin
  # Get InsuranceCarrier
  result = api_instance.get_insurance_carrier(vbasoftware_database, carrier_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->get_insurance_carrier: #{e}"
end
```

#### Using the get_insurance_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierVBAResponse>, Integer, Hash)> get_insurance_carrier_with_http_info(vbasoftware_database, carrier_key)

```ruby
begin
  # Get InsuranceCarrier
  data, status_code, headers = api_instance.get_insurance_carrier_with_http_info(vbasoftware_database, carrier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->get_insurance_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_key** | **Integer** | Carrier Key |  |

### Return type

[**InsuranceCarrierVBAResponse**](InsuranceCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_insurance_carrier

> <InsuranceCarrierListVBAResponse> list_insurance_carrier(vbasoftware_database, opts)

List InsuranceCarrier

Lists all InsuranceCarrier

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List InsuranceCarrier
  result = api_instance.list_insurance_carrier(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->list_insurance_carrier: #{e}"
end
```

#### Using the list_insurance_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierListVBAResponse>, Integer, Hash)> list_insurance_carrier_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List InsuranceCarrier
  data, status_code, headers = api_instance.list_insurance_carrier_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->list_insurance_carrier_with_http_info: #{e}"
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

[**InsuranceCarrierListVBAResponse**](InsuranceCarrierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_insurance_carrier

> <MultiCodeResponseListVBAResponse> update_batch_insurance_carrier(vbasoftware_database, insurance_carrier)

Create or Update Batch InsuranceCarrier

Create or Update multiple InsuranceCarrier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
insurance_carrier = [Vba::InsuranceCarrier.new({carrier_key: 37, carrier_id: 'carrier_id_example'})] # Array<InsuranceCarrier> | 

begin
  # Create or Update Batch InsuranceCarrier
  result = api_instance.update_batch_insurance_carrier(vbasoftware_database, insurance_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->update_batch_insurance_carrier: #{e}"
end
```

#### Using the update_batch_insurance_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_insurance_carrier_with_http_info(vbasoftware_database, insurance_carrier)

```ruby
begin
  # Create or Update Batch InsuranceCarrier
  data, status_code, headers = api_instance.update_batch_insurance_carrier_with_http_info(vbasoftware_database, insurance_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->update_batch_insurance_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **insurance_carrier** | [**Array&lt;InsuranceCarrier&gt;**](InsuranceCarrier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_insurance_carrier

> <InsuranceCarrierVBAResponse> update_insurance_carrier(vbasoftware_database, carrier_key, insurance_carrier)

Update InsuranceCarrier

Updates a specific InsuranceCarrier.

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

api_instance = Vba::InsuranceCarriersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
carrier_key = 56 # Integer | Carrier Key
insurance_carrier = Vba::InsuranceCarrier.new({carrier_key: 37, carrier_id: 'carrier_id_example'}) # InsuranceCarrier | 

begin
  # Update InsuranceCarrier
  result = api_instance.update_insurance_carrier(vbasoftware_database, carrier_key, insurance_carrier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->update_insurance_carrier: #{e}"
end
```

#### Using the update_insurance_carrier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InsuranceCarrierVBAResponse>, Integer, Hash)> update_insurance_carrier_with_http_info(vbasoftware_database, carrier_key, insurance_carrier)

```ruby
begin
  # Update InsuranceCarrier
  data, status_code, headers = api_instance.update_insurance_carrier_with_http_info(vbasoftware_database, carrier_key, insurance_carrier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InsuranceCarrierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsuranceCarriersApi->update_insurance_carrier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **carrier_key** | **Integer** | Carrier Key |  |
| **insurance_carrier** | [**InsuranceCarrier**](InsuranceCarrier.md) |  |  |

### Return type

[**InsuranceCarrierVBAResponse**](InsuranceCarrierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

