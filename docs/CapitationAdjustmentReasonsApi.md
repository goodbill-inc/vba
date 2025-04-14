# Vba::CapitationAdjustmentReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#create_capitation_adjustment_reason) | **POST** /capitation-adjustment-reasons | Create CapitationAdjustmentReason |
| [**delete_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#delete_capitation_adjustment_reason) | **DELETE** /capitation-adjustment-reasons/{capitationAdjustmentReason} | Delete CapitationAdjustmentReason |
| [**get_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#get_capitation_adjustment_reason) | **GET** /capitation-adjustment-reasons/{capitationAdjustmentReason} | Get CapitationAdjustmentReason |
| [**list_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#list_capitation_adjustment_reason) | **GET** /capitation-adjustment-reasons | List CapitationAdjustmentReason |
| [**update_batch_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#update_batch_capitation_adjustment_reason) | **PUT** /capitation-adjustment-reasons-batch | Create or Update Batch CapitationAdjustmentReason |
| [**update_capitation_adjustment_reason**](CapitationAdjustmentReasonsApi.md#update_capitation_adjustment_reason) | **PUT** /capitation-adjustment-reasons/{capitationAdjustmentReason} | Update CapitationAdjustmentReason |


## create_capitation_adjustment_reason

> <CapitationAdjustmentReasonVBAResponse> create_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)

Create CapitationAdjustmentReason

Creates a new CapitationAdjustmentReason

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_reason = Vba::CapitationAdjustmentReason.new({capitation_adjustment_reason: 'capitation_adjustment_reason_example'}) # CapitationAdjustmentReason | 

begin
  # Create CapitationAdjustmentReason
  result = api_instance.create_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->create_capitation_adjustment_reason: #{e}"
end
```

#### Using the create_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentReasonVBAResponse>, Integer, Hash)> create_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)

```ruby
begin
  # Create CapitationAdjustmentReason
  data, status_code, headers = api_instance.create_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->create_capitation_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_reason** | [**CapitationAdjustmentReason**](CapitationAdjustmentReason.md) |  |  |

### Return type

[**CapitationAdjustmentReasonVBAResponse**](CapitationAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_adjustment_reason

> delete_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)

Delete CapitationAdjustmentReason

Deletes an CapitationAdjustmentReason

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_reason = 'capitation_adjustment_reason_example' # String | Capitation Adjustment Reason

begin
  # Delete CapitationAdjustmentReason
  api_instance.delete_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->delete_capitation_adjustment_reason: #{e}"
end
```

#### Using the delete_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)

```ruby
begin
  # Delete CapitationAdjustmentReason
  data, status_code, headers = api_instance.delete_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->delete_capitation_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_reason** | **String** | Capitation Adjustment Reason |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_adjustment_reason

> <CapitationAdjustmentReasonVBAResponse> get_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)

Get CapitationAdjustmentReason

Gets CapitationAdjustmentReason

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_reason = 'capitation_adjustment_reason_example' # String | Capitation Adjustment Reason

begin
  # Get CapitationAdjustmentReason
  result = api_instance.get_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->get_capitation_adjustment_reason: #{e}"
end
```

#### Using the get_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentReasonVBAResponse>, Integer, Hash)> get_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)

```ruby
begin
  # Get CapitationAdjustmentReason
  data, status_code, headers = api_instance.get_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->get_capitation_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_reason** | **String** | Capitation Adjustment Reason |  |

### Return type

[**CapitationAdjustmentReasonVBAResponse**](CapitationAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_adjustment_reason

> <CapitationAdjustmentReasonListVBAResponse> list_capitation_adjustment_reason(vbasoftware_database, opts)

List CapitationAdjustmentReason

Lists all CapitationAdjustmentReason

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationAdjustmentReason
  result = api_instance.list_capitation_adjustment_reason(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->list_capitation_adjustment_reason: #{e}"
end
```

#### Using the list_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentReasonListVBAResponse>, Integer, Hash)> list_capitation_adjustment_reason_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationAdjustmentReason
  data, status_code, headers = api_instance.list_capitation_adjustment_reason_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->list_capitation_adjustment_reason_with_http_info: #{e}"
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

[**CapitationAdjustmentReasonListVBAResponse**](CapitationAdjustmentReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_adjustment_reason

> <MultiCodeResponseListVBAResponse> update_batch_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)

Create or Update Batch CapitationAdjustmentReason

Create or Update multiple CapitationAdjustmentReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_reason = [Vba::CapitationAdjustmentReason.new({capitation_adjustment_reason: 'capitation_adjustment_reason_example'})] # Array<CapitationAdjustmentReason> | 

begin
  # Create or Update Batch CapitationAdjustmentReason
  result = api_instance.update_batch_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->update_batch_capitation_adjustment_reason: #{e}"
end
```

#### Using the update_batch_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)

```ruby
begin
  # Create or Update Batch CapitationAdjustmentReason
  data, status_code, headers = api_instance.update_batch_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->update_batch_capitation_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_reason** | [**Array&lt;CapitationAdjustmentReason&gt;**](CapitationAdjustmentReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_adjustment_reason

> <CapitationAdjustmentReasonVBAResponse> update_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason, capitation_adjustment_reason2)

Update CapitationAdjustmentReason

Updates a specific CapitationAdjustmentReason.

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

api_instance = Vba::CapitationAdjustmentReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_reason = 'capitation_adjustment_reason_example' # String | Capitation Adjustment Reason
capitation_adjustment_reason2 = Vba::CapitationAdjustmentReason.new({capitation_adjustment_reason: 'capitation_adjustment_reason_example'}) # CapitationAdjustmentReason | 

begin
  # Update CapitationAdjustmentReason
  result = api_instance.update_capitation_adjustment_reason(vbasoftware_database, capitation_adjustment_reason, capitation_adjustment_reason2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->update_capitation_adjustment_reason: #{e}"
end
```

#### Using the update_capitation_adjustment_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentReasonVBAResponse>, Integer, Hash)> update_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason, capitation_adjustment_reason2)

```ruby
begin
  # Update CapitationAdjustmentReason
  data, status_code, headers = api_instance.update_capitation_adjustment_reason_with_http_info(vbasoftware_database, capitation_adjustment_reason, capitation_adjustment_reason2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentReasonsApi->update_capitation_adjustment_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_reason** | **String** | Capitation Adjustment Reason |  |
| **capitation_adjustment_reason2** | [**CapitationAdjustmentReason**](CapitationAdjustmentReason.md) |  |  |

### Return type

[**CapitationAdjustmentReasonVBAResponse**](CapitationAdjustmentReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

