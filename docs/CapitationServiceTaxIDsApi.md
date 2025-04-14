# Vba::CapitationServiceTaxIDsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_service_tin**](CapitationServiceTaxIDsApi.md#create_capitation_service_tin) | **POST** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids/{federalID} | Create CapitationServiceTIN |
| [**delete_capitation_service_tin**](CapitationServiceTaxIDsApi.md#delete_capitation_service_tin) | **DELETE** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids/{federalID} | Delete CapitationServiceTIN |
| [**get_capitation_service_tin**](CapitationServiceTaxIDsApi.md#get_capitation_service_tin) | **GET** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids/{federalID} | Get CapitationServiceTIN |
| [**list_capitation_service_tin**](CapitationServiceTaxIDsApi.md#list_capitation_service_tin) | **GET** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids | List CapitationServiceTIN |
| [**update_batch_capitation_service_tin**](CapitationServiceTaxIDsApi.md#update_batch_capitation_service_tin) | **PUT** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids-batch | Create or Update Batch CapitationServiceTIN |
| [**update_capitation_service_tin**](CapitationServiceTaxIDsApi.md#update_capitation_service_tin) | **PUT** /capitation-services/{capitationServiceKey}/capitation-service-tax-ids/{federalID} | Update CapitationServiceTIN |


## create_capitation_service_tin

> <CapitationServiceTINVBAResponse> create_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)

Create CapitationServiceTIN

Creates a new CapitationServiceTIN

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
federal_id = 'federal_id_example' # String | Federal ID
capitation_service_tin = Vba::CapitationServiceTIN.new({capitation_service_key: 37, federal_id: 'federal_id_example'}) # CapitationServiceTIN | 

begin
  # Create CapitationServiceTIN
  result = api_instance.create_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->create_capitation_service_tin: #{e}"
end
```

#### Using the create_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceTINVBAResponse>, Integer, Hash)> create_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)

```ruby
begin
  # Create CapitationServiceTIN
  data, status_code, headers = api_instance.create_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceTINVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->create_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **federal_id** | **String** | Federal ID |  |
| **capitation_service_tin** | [**CapitationServiceTIN**](CapitationServiceTIN.md) |  |  |

### Return type

[**CapitationServiceTINVBAResponse**](CapitationServiceTINVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_service_tin

> delete_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id)

Delete CapitationServiceTIN

Deletes an CapitationServiceTIN

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
federal_id = 'federal_id_example' # String | Federal ID

begin
  # Delete CapitationServiceTIN
  api_instance.delete_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id)
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->delete_capitation_service_tin: #{e}"
end
```

#### Using the delete_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id)

```ruby
begin
  # Delete CapitationServiceTIN
  data, status_code, headers = api_instance.delete_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->delete_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **federal_id** | **String** | Federal ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_service_tin

> <CapitationServiceTINVBAResponse> get_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id)

Get CapitationServiceTIN

Gets CapitationServiceTIN

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
federal_id = 'federal_id_example' # String | Federal ID

begin
  # Get CapitationServiceTIN
  result = api_instance.get_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->get_capitation_service_tin: #{e}"
end
```

#### Using the get_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceTINVBAResponse>, Integer, Hash)> get_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id)

```ruby
begin
  # Get CapitationServiceTIN
  data, status_code, headers = api_instance.get_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceTINVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->get_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **federal_id** | **String** | Federal ID |  |

### Return type

[**CapitationServiceTINVBAResponse**](CapitationServiceTINVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_service_tin

> <CapitationServiceTINListVBAResponse> list_capitation_service_tin(vbasoftware_database, capitation_service_key, opts)

List CapitationServiceTIN

Lists all CapitationServiceTIN for the given capitationServiceKey

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationServiceTIN
  result = api_instance.list_capitation_service_tin(vbasoftware_database, capitation_service_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->list_capitation_service_tin: #{e}"
end
```

#### Using the list_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceTINListVBAResponse>, Integer, Hash)> list_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, opts)

```ruby
begin
  # List CapitationServiceTIN
  data, status_code, headers = api_instance.list_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceTINListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->list_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationServiceTINListVBAResponse**](CapitationServiceTINListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_service_tin

> <MultiCodeResponseListVBAResponse> update_batch_capitation_service_tin(vbasoftware_database, capitation_service_key, capitation_service_tin)

Create or Update Batch CapitationServiceTIN

Create or Update multiple CapitationServiceTIN at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
capitation_service_tin = [Vba::CapitationServiceTIN.new({capitation_service_key: 37, federal_id: 'federal_id_example'})] # Array<CapitationServiceTIN> | 

begin
  # Create or Update Batch CapitationServiceTIN
  result = api_instance.update_batch_capitation_service_tin(vbasoftware_database, capitation_service_key, capitation_service_tin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->update_batch_capitation_service_tin: #{e}"
end
```

#### Using the update_batch_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_tin)

```ruby
begin
  # Create or Update Batch CapitationServiceTIN
  data, status_code, headers = api_instance.update_batch_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_tin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->update_batch_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **capitation_service_tin** | [**Array&lt;CapitationServiceTIN&gt;**](CapitationServiceTIN.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_service_tin

> <CapitationServiceTINVBAResponse> update_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)

Update CapitationServiceTIN

Updates a specific CapitationServiceTIN.

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

api_instance = Vba::CapitationServiceTaxIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
federal_id = 'federal_id_example' # String | Federal ID
capitation_service_tin = Vba::CapitationServiceTIN.new({capitation_service_key: 37, federal_id: 'federal_id_example'}) # CapitationServiceTIN | 

begin
  # Update CapitationServiceTIN
  result = api_instance.update_capitation_service_tin(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->update_capitation_service_tin: #{e}"
end
```

#### Using the update_capitation_service_tin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceTINVBAResponse>, Integer, Hash)> update_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)

```ruby
begin
  # Update CapitationServiceTIN
  data, status_code, headers = api_instance.update_capitation_service_tin_with_http_info(vbasoftware_database, capitation_service_key, federal_id, capitation_service_tin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceTINVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServiceTaxIDsApi->update_capitation_service_tin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **federal_id** | **String** | Federal ID |  |
| **capitation_service_tin** | [**CapitationServiceTIN**](CapitationServiceTIN.md) |  |  |

### Return type

[**CapitationServiceTINVBAResponse**](CapitationServiceTINVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

