# Vba::CommissionRepLicensesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_rep_license**](CommissionRepLicensesApi.md#create_commission_rep_license) | **POST** /commission-reps/{commRepKey}/commission-rep-licenses | Create CommissionRepLicense |
| [**delete_commission_rep_license**](CommissionRepLicensesApi.md#delete_commission_rep_license) | **DELETE** /commission-reps/{commRepKey}/commission-rep-licenses/{commRepLicenseKey} | Delete CommissionRepLicense |
| [**get_commission_rep_license**](CommissionRepLicensesApi.md#get_commission_rep_license) | **GET** /commission-reps/{commRepKey}/commission-rep-licenses/{commRepLicenseKey} | Get CommissionRepLicense |
| [**list_commission_rep_license**](CommissionRepLicensesApi.md#list_commission_rep_license) | **GET** /commission-reps/{commRepKey}/commission-rep-licenses | List CommissionRepLicense |
| [**update_batch_commission_rep_license**](CommissionRepLicensesApi.md#update_batch_commission_rep_license) | **PUT** /commission-reps/{commRepKey}/commission-rep-licenses-batch | Create or Update Batch CommissionRepLicense |
| [**update_commission_rep_license**](CommissionRepLicensesApi.md#update_commission_rep_license) | **PUT** /commission-reps/{commRepKey}/commission-rep-licenses/{commRepLicenseKey} | Update CommissionRepLicense |


## create_commission_rep_license

> <CommissionRepLicenseVBAResponse> create_commission_rep_license(vbasoftware_database, comm_rep_key, commission_rep_license)

Create CommissionRepLicense

Creates a new CommissionRepLicense

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_license = Vba::CommissionRepLicense.new({commission_rep_license_key: 37, commission_rep_key: 37}) # CommissionRepLicense | 

begin
  # Create CommissionRepLicense
  result = api_instance.create_commission_rep_license(vbasoftware_database, comm_rep_key, commission_rep_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->create_commission_rep_license: #{e}"
end
```

#### Using the create_commission_rep_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepLicenseVBAResponse>, Integer, Hash)> create_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_license)

```ruby
begin
  # Create CommissionRepLicense
  data, status_code, headers = api_instance.create_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->create_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_license** | [**CommissionRepLicense**](CommissionRepLicense.md) |  |  |

### Return type

[**CommissionRepLicenseVBAResponse**](CommissionRepLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_rep_license

> delete_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key)

Delete CommissionRepLicense

Deletes an CommissionRepLicense

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_license_key = 56 # Integer | CommissionRepLicense Key

begin
  # Delete CommissionRepLicense
  api_instance.delete_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->delete_commission_rep_license: #{e}"
end
```

#### Using the delete_commission_rep_license_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key)

```ruby
begin
  # Delete CommissionRepLicense
  data, status_code, headers = api_instance.delete_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->delete_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_license_key** | **Integer** | CommissionRepLicense Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_rep_license

> <CommissionRepLicenseVBAResponse> get_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key)

Get CommissionRepLicense

Gets CommissionRepLicense

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_license_key = 56 # Integer | CommissionRepLicense Key

begin
  # Get CommissionRepLicense
  result = api_instance.get_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->get_commission_rep_license: #{e}"
end
```

#### Using the get_commission_rep_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepLicenseVBAResponse>, Integer, Hash)> get_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key)

```ruby
begin
  # Get CommissionRepLicense
  data, status_code, headers = api_instance.get_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->get_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_license_key** | **Integer** | CommissionRepLicense Key |  |

### Return type

[**CommissionRepLicenseVBAResponse**](CommissionRepLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_rep_license

> <CommissionRepLicenseListVBAResponse> list_commission_rep_license(vbasoftware_database, comm_rep_key, opts)

List CommissionRepLicense

Lists all CommissionRepLicense for the given commRepKey

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionRepLicense
  result = api_instance.list_commission_rep_license(vbasoftware_database, comm_rep_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->list_commission_rep_license: #{e}"
end
```

#### Using the list_commission_rep_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepLicenseListVBAResponse>, Integer, Hash)> list_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, opts)

```ruby
begin
  # List CommissionRepLicense
  data, status_code, headers = api_instance.list_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepLicenseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->list_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CommissionRepLicenseListVBAResponse**](CommissionRepLicenseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_rep_license

> <MultiCodeResponseListVBAResponse> update_batch_commission_rep_license(vbasoftware_database, comm_rep_key, commission_rep_license)

Create or Update Batch CommissionRepLicense

Create or Update multiple CommissionRepLicense at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
commission_rep_license = [Vba::CommissionRepLicense.new({commission_rep_license_key: 37, commission_rep_key: 37})] # Array<CommissionRepLicense> | 

begin
  # Create or Update Batch CommissionRepLicense
  result = api_instance.update_batch_commission_rep_license(vbasoftware_database, comm_rep_key, commission_rep_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->update_batch_commission_rep_license: #{e}"
end
```

#### Using the update_batch_commission_rep_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_license)

```ruby
begin
  # Create or Update Batch CommissionRepLicense
  data, status_code, headers = api_instance.update_batch_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, commission_rep_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->update_batch_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **commission_rep_license** | [**Array&lt;CommissionRepLicense&gt;**](CommissionRepLicense.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_rep_license

> <CommissionRepLicenseVBAResponse> update_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key, commission_rep_license)

Update CommissionRepLicense

Updates a specific CommissionRepLicense.

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

api_instance = Vba::CommissionRepLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_rep_key = 56 # Integer | CommissionRep Key
comm_rep_license_key = 56 # Integer | CommissionRepLicense Key
commission_rep_license = Vba::CommissionRepLicense.new({commission_rep_license_key: 37, commission_rep_key: 37}) # CommissionRepLicense | 

begin
  # Update CommissionRepLicense
  result = api_instance.update_commission_rep_license(vbasoftware_database, comm_rep_key, comm_rep_license_key, commission_rep_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->update_commission_rep_license: #{e}"
end
```

#### Using the update_commission_rep_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionRepLicenseVBAResponse>, Integer, Hash)> update_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key, commission_rep_license)

```ruby
begin
  # Update CommissionRepLicense
  data, status_code, headers = api_instance.update_commission_rep_license_with_http_info(vbasoftware_database, comm_rep_key, comm_rep_license_key, commission_rep_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionRepLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionRepLicensesApi->update_commission_rep_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_rep_key** | **Integer** | CommissionRep Key |  |
| **comm_rep_license_key** | **Integer** | CommissionRepLicense Key |  |
| **commission_rep_license** | [**CommissionRepLicense**](CommissionRepLicense.md) |  |  |

### Return type

[**CommissionRepLicenseVBAResponse**](CommissionRepLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

