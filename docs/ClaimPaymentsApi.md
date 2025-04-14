# Vba::ClaimPaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_payment**](ClaimPaymentsApi.md#create_claim_payment) | **POST** /claim-payments | Create ClaimPayment |
| [**delete_claim_payment**](ClaimPaymentsApi.md#delete_claim_payment) | **DELETE** /claim-payments/{claimPaymentKey} | Delete ClaimPayment |
| [**get_claim_payment**](ClaimPaymentsApi.md#get_claim_payment) | **GET** /claim-payments/{claimPaymentKey} | Get ClaimPayment |
| [**list_claim_payment**](ClaimPaymentsApi.md#list_claim_payment) | **GET** /claim-payments | List ClaimPayment |
| [**update_batch_claim_payment**](ClaimPaymentsApi.md#update_batch_claim_payment) | **PUT** /claim-payments-batch | Create or Update Batch ClaimPayment |
| [**update_claim_payment**](ClaimPaymentsApi.md#update_claim_payment) | **PUT** /claim-payments/{claimPaymentKey} | Update ClaimPayment |


## create_claim_payment

> <ClaimPaymentVBAResponse> create_claim_payment(vbasoftware_database, claim_payment)

Create ClaimPayment

Creates a new ClaimPayment

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_payment = Vba::ClaimPayment.new({claim_payment_key: 37}) # ClaimPayment | 

begin
  # Create ClaimPayment
  result = api_instance.create_claim_payment(vbasoftware_database, claim_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->create_claim_payment: #{e}"
end
```

#### Using the create_claim_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPaymentVBAResponse>, Integer, Hash)> create_claim_payment_with_http_info(vbasoftware_database, claim_payment)

```ruby
begin
  # Create ClaimPayment
  data, status_code, headers = api_instance.create_claim_payment_with_http_info(vbasoftware_database, claim_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->create_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_payment** | [**ClaimPayment**](ClaimPayment.md) |  |  |

### Return type

[**ClaimPaymentVBAResponse**](ClaimPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_payment

> delete_claim_payment(vbasoftware_database, claim_payment_key)

Delete ClaimPayment

Deletes an ClaimPayment

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_payment_key = 56 # Integer | ClaimPayment Key

begin
  # Delete ClaimPayment
  api_instance.delete_claim_payment(vbasoftware_database, claim_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->delete_claim_payment: #{e}"
end
```

#### Using the delete_claim_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_payment_with_http_info(vbasoftware_database, claim_payment_key)

```ruby
begin
  # Delete ClaimPayment
  data, status_code, headers = api_instance.delete_claim_payment_with_http_info(vbasoftware_database, claim_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->delete_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_payment

> <ClaimPaymentVBAResponse> get_claim_payment(vbasoftware_database, claim_payment_key)

Get ClaimPayment

Gets ClaimPayment

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_payment_key = 56 # Integer | ClaimPayment Key

begin
  # Get ClaimPayment
  result = api_instance.get_claim_payment(vbasoftware_database, claim_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->get_claim_payment: #{e}"
end
```

#### Using the get_claim_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPaymentVBAResponse>, Integer, Hash)> get_claim_payment_with_http_info(vbasoftware_database, claim_payment_key)

```ruby
begin
  # Get ClaimPayment
  data, status_code, headers = api_instance.get_claim_payment_with_http_info(vbasoftware_database, claim_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->get_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |

### Return type

[**ClaimPaymentVBAResponse**](ClaimPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_payment

> <ClaimPaymentListVBAResponse> list_claim_payment(vbasoftware_database, opts)

List ClaimPayment

Lists all ClaimPayment

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimPayment
  result = api_instance.list_claim_payment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->list_claim_payment: #{e}"
end
```

#### Using the list_claim_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPaymentListVBAResponse>, Integer, Hash)> list_claim_payment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimPayment
  data, status_code, headers = api_instance.list_claim_payment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->list_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ClaimPaymentListVBAResponse**](ClaimPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_payment

> <MultiCodeResponseListVBAResponse> update_batch_claim_payment(vbasoftware_database, claim_payment)

Create or Update Batch ClaimPayment

Create or Update multiple ClaimPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_payment = [Vba::ClaimPayment.new({claim_payment_key: 37})] # Array<ClaimPayment> | 

begin
  # Create or Update Batch ClaimPayment
  result = api_instance.update_batch_claim_payment(vbasoftware_database, claim_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->update_batch_claim_payment: #{e}"
end
```

#### Using the update_batch_claim_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_payment_with_http_info(vbasoftware_database, claim_payment)

```ruby
begin
  # Create or Update Batch ClaimPayment
  data, status_code, headers = api_instance.update_batch_claim_payment_with_http_info(vbasoftware_database, claim_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->update_batch_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_payment** | [**Array&lt;ClaimPayment&gt;**](ClaimPayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_payment

> <ClaimPaymentVBAResponse> update_claim_payment(vbasoftware_database, claim_payment_key, claim_payment)

Update ClaimPayment

Updates a specific ClaimPayment.

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

api_instance = Vba::ClaimPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_payment_key = 56 # Integer | ClaimPayment Key
claim_payment = Vba::ClaimPayment.new({claim_payment_key: 37}) # ClaimPayment | 

begin
  # Update ClaimPayment
  result = api_instance.update_claim_payment(vbasoftware_database, claim_payment_key, claim_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->update_claim_payment: #{e}"
end
```

#### Using the update_claim_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPaymentVBAResponse>, Integer, Hash)> update_claim_payment_with_http_info(vbasoftware_database, claim_payment_key, claim_payment)

```ruby
begin
  # Update ClaimPayment
  data, status_code, headers = api_instance.update_claim_payment_with_http_info(vbasoftware_database, claim_payment_key, claim_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPaymentsApi->update_claim_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_payment_key** | **Integer** | ClaimPayment Key |  |
| **claim_payment** | [**ClaimPayment**](ClaimPayment.md) |  |  |

### Return type

[**ClaimPaymentVBAResponse**](ClaimPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

