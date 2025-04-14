# Vba::ZelisCostContainmentClaimRepricingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#create_cost_contain_zelis_claim_reprice) | **POST** /zelis-claim-repricing | Create CostContainZelisClaimReprice |
| [**delete_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#delete_cost_contain_zelis_claim_reprice) | **DELETE** /zelis-claim-repricing/batches/{batchNumber}/claims/{batchClaim} | Delete CostContainZelisClaimReprice |
| [**get_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#get_cost_contain_zelis_claim_reprice) | **GET** /zelis-claim-repricing/batches/{batchNumber}/claims/{batchClaim} | Get CostContainZelisClaimReprice |
| [**list_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#list_cost_contain_zelis_claim_reprice) | **GET** /zelis-claim-repricing | List CostContainZelisClaimReprice |
| [**update_batch_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#update_batch_cost_contain_zelis_claim_reprice) | **PUT** /zelis-claim-repricing-batch | Create or Update Batch CostContainZelisClaimReprice |
| [**update_cost_contain_zelis_claim_reprice**](ZelisCostContainmentClaimRepricingApi.md#update_cost_contain_zelis_claim_reprice) | **PUT** /zelis-claim-repricing/batches/{batchNumber}/claims/{batchClaim} | Update CostContainZelisClaimReprice |


## create_cost_contain_zelis_claim_reprice

> <CostContainZelisClaimRepriceVBAResponse> create_cost_contain_zelis_claim_reprice(vbasoftware_database, cost_contain_zelis_claim_reprice)

Create CostContainZelisClaimReprice

Creates a new CostContainZelisClaimReprice

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_claim_reprice = Vba::CostContainZelisClaimReprice.new({batch_number: 37, batch_claim: 37, transaction_id: 'transaction_id_example'}) # CostContainZelisClaimReprice | 

begin
  # Create CostContainZelisClaimReprice
  result = api_instance.create_cost_contain_zelis_claim_reprice(vbasoftware_database, cost_contain_zelis_claim_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->create_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the create_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimRepriceVBAResponse>, Integer, Hash)> create_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, cost_contain_zelis_claim_reprice)

```ruby
begin
  # Create CostContainZelisClaimReprice
  data, status_code, headers = api_instance.create_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, cost_contain_zelis_claim_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->create_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_claim_reprice** | [**CostContainZelisClaimReprice**](CostContainZelisClaimReprice.md) |  |  |

### Return type

[**CostContainZelisClaimRepriceVBAResponse**](CostContainZelisClaimRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_claim_reprice

> delete_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim)

Delete CostContainZelisClaimReprice

Deletes an CostContainZelisClaimReprice

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Delete CostContainZelisClaimReprice
  api_instance.delete_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim)
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->delete_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the delete_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Delete CostContainZelisClaimReprice
  data, status_code, headers = api_instance.delete_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->delete_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_zelis_claim_reprice

> <CostContainZelisClaimRepriceVBAResponse> get_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim)

Get CostContainZelisClaimReprice

Gets CostContainZelisClaimReprice

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim

begin
  # Get CostContainZelisClaimReprice
  result = api_instance.get_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->get_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the get_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimRepriceVBAResponse>, Integer, Hash)> get_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim)

```ruby
begin
  # Get CostContainZelisClaimReprice
  data, status_code, headers = api_instance.get_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->get_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |

### Return type

[**CostContainZelisClaimRepriceVBAResponse**](CostContainZelisClaimRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_claim_reprice

> <CostContainZelisClaimRepriceListVBAResponse> list_cost_contain_zelis_claim_reprice(vbasoftware_database, opts)

List CostContainZelisClaimReprice

Lists all CostContainZelisClaimReprice

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisClaimReprice
  result = api_instance.list_cost_contain_zelis_claim_reprice(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->list_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the list_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimRepriceListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainZelisClaimReprice
  data, status_code, headers = api_instance.list_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimRepriceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->list_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
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

[**CostContainZelisClaimRepriceListVBAResponse**](CostContainZelisClaimRepriceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_claim_reprice

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_claim_reprice(vbasoftware_database, cost_contain_zelis_claim_reprice)

Create or Update Batch CostContainZelisClaimReprice

Create or Update multiple CostContainZelisClaimReprice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_claim_reprice = [Vba::CostContainZelisClaimReprice.new({batch_number: 37, batch_claim: 37, transaction_id: 'transaction_id_example'})] # Array<CostContainZelisClaimReprice> | 

begin
  # Create or Update Batch CostContainZelisClaimReprice
  result = api_instance.update_batch_cost_contain_zelis_claim_reprice(vbasoftware_database, cost_contain_zelis_claim_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->update_batch_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, cost_contain_zelis_claim_reprice)

```ruby
begin
  # Create or Update Batch CostContainZelisClaimReprice
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, cost_contain_zelis_claim_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->update_batch_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_claim_reprice** | [**Array&lt;CostContainZelisClaimReprice&gt;**](CostContainZelisClaimReprice.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_claim_reprice

> <CostContainZelisClaimRepriceVBAResponse> update_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_reprice)

Update CostContainZelisClaimReprice

Updates a specific CostContainZelisClaimReprice.

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

api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
cost_contain_zelis_claim_reprice = Vba::CostContainZelisClaimReprice.new({batch_number: 37, batch_claim: 37, transaction_id: 'transaction_id_example'}) # CostContainZelisClaimReprice | 

begin
  # Update CostContainZelisClaimReprice
  result = api_instance.update_cost_contain_zelis_claim_reprice(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_reprice)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->update_cost_contain_zelis_claim_reprice: #{e}"
end
```

#### Using the update_cost_contain_zelis_claim_reprice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisClaimRepriceVBAResponse>, Integer, Hash)> update_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_reprice)

```ruby
begin
  # Update CostContainZelisClaimReprice
  data, status_code, headers = api_instance.update_cost_contain_zelis_claim_reprice_with_http_info(vbasoftware_database, batch_number, batch_claim, cost_contain_zelis_claim_reprice)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisClaimRepriceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentClaimRepricingApi->update_cost_contain_zelis_claim_reprice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **cost_contain_zelis_claim_reprice** | [**CostContainZelisClaimReprice**](CostContainZelisClaimReprice.md) |  |  |

### Return type

[**CostContainZelisClaimRepriceVBAResponse**](CostContainZelisClaimRepriceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

