# Vba::ClaimPromptPaysApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_prompt_pay**](ClaimPromptPaysApi.md#create_claim_prompt_pay) | **POST** /claim-prompt-pays | Create ClaimPromptPay |
| [**delete_claim_prompt_pay**](ClaimPromptPaysApi.md#delete_claim_prompt_pay) | **DELETE** /claim-prompt-pays/{ClaimPromptPay_Key} | Delete ClaimPromptPay |
| [**get_claim_prompt_pay**](ClaimPromptPaysApi.md#get_claim_prompt_pay) | **GET** /claim-prompt-pays/{ClaimPromptPay_Key} | Get ClaimPromptPay |
| [**list_claim_prompt_pay**](ClaimPromptPaysApi.md#list_claim_prompt_pay) | **GET** /claim-prompt-pays | List ClaimPromptPay |
| [**update_batch_claim_prompt_pay**](ClaimPromptPaysApi.md#update_batch_claim_prompt_pay) | **PUT** /claim-prompt-pays-batch | Create or Update Batch ClaimPromptPay |
| [**update_claim_prompt_pay**](ClaimPromptPaysApi.md#update_claim_prompt_pay) | **PUT** /claim-prompt-pays/{ClaimPromptPay_Key} | Update ClaimPromptPay |


## create_claim_prompt_pay

> <ClaimPromptPayVBAResponse> create_claim_prompt_pay(vbasoftware_database, claim_prompt_pay)

Create ClaimPromptPay

Creates a new ClaimPromptPay

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_prompt_pay = Vba::ClaimPromptPay.new({claim_prompt_pay_key: 37}) # ClaimPromptPay | 

begin
  # Create ClaimPromptPay
  result = api_instance.create_claim_prompt_pay(vbasoftware_database, claim_prompt_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->create_claim_prompt_pay: #{e}"
end
```

#### Using the create_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPromptPayVBAResponse>, Integer, Hash)> create_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay)

```ruby
begin
  # Create ClaimPromptPay
  data, status_code, headers = api_instance.create_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPromptPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->create_claim_prompt_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_prompt_pay** | [**ClaimPromptPay**](ClaimPromptPay.md) |  |  |

### Return type

[**ClaimPromptPayVBAResponse**](ClaimPromptPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_prompt_pay

> delete_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key)

Delete ClaimPromptPay

Deletes an ClaimPromptPay

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_prompt_pay_key = 56 # Integer | ClaimPromptPay Key

begin
  # Delete ClaimPromptPay
  api_instance.delete_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->delete_claim_prompt_pay: #{e}"
end
```

#### Using the delete_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key)

```ruby
begin
  # Delete ClaimPromptPay
  data, status_code, headers = api_instance.delete_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->delete_claim_prompt_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_prompt_pay_key** | **Integer** | ClaimPromptPay Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_prompt_pay

> <ClaimPromptPayVBAResponse> get_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key)

Get ClaimPromptPay

Gets ClaimPromptPay

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_prompt_pay_key = 56 # Integer | ClaimPromptPay Key

begin
  # Get ClaimPromptPay
  result = api_instance.get_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->get_claim_prompt_pay: #{e}"
end
```

#### Using the get_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPromptPayVBAResponse>, Integer, Hash)> get_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key)

```ruby
begin
  # Get ClaimPromptPay
  data, status_code, headers = api_instance.get_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPromptPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->get_claim_prompt_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_prompt_pay_key** | **Integer** | ClaimPromptPay Key |  |

### Return type

[**ClaimPromptPayVBAResponse**](ClaimPromptPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_prompt_pay

> <ClaimPromptPayListVBAResponse> list_claim_prompt_pay(vbasoftware_database, opts)

List ClaimPromptPay

Lists all ClaimPromptPay

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ClaimPromptPay
  result = api_instance.list_claim_prompt_pay(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->list_claim_prompt_pay: #{e}"
end
```

#### Using the list_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPromptPayListVBAResponse>, Integer, Hash)> list_claim_prompt_pay_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimPromptPay
  data, status_code, headers = api_instance.list_claim_prompt_pay_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPromptPayListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->list_claim_prompt_pay_with_http_info: #{e}"
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

[**ClaimPromptPayListVBAResponse**](ClaimPromptPayListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_prompt_pay

> <MultiCodeResponseListVBAResponse> update_batch_claim_prompt_pay(vbasoftware_database, claim_prompt_pay)

Create or Update Batch ClaimPromptPay

Create or Update multiple ClaimPromptPay at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_prompt_pay = [Vba::ClaimPromptPay.new({claim_prompt_pay_key: 37})] # Array<ClaimPromptPay> | 

begin
  # Create or Update Batch ClaimPromptPay
  result = api_instance.update_batch_claim_prompt_pay(vbasoftware_database, claim_prompt_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->update_batch_claim_prompt_pay: #{e}"
end
```

#### Using the update_batch_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay)

```ruby
begin
  # Create or Update Batch ClaimPromptPay
  data, status_code, headers = api_instance.update_batch_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->update_batch_claim_prompt_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_prompt_pay** | [**Array&lt;ClaimPromptPay&gt;**](ClaimPromptPay.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_prompt_pay

> <ClaimPromptPayVBAResponse> update_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key, claim_prompt_pay)

Update ClaimPromptPay

Updates a specific ClaimPromptPay.

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

api_instance = Vba::ClaimPromptPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_prompt_pay_key = 56 # Integer | ClaimPromptPay Key
claim_prompt_pay = Vba::ClaimPromptPay.new({claim_prompt_pay_key: 37}) # ClaimPromptPay | 

begin
  # Update ClaimPromptPay
  result = api_instance.update_claim_prompt_pay(vbasoftware_database, claim_prompt_pay_key, claim_prompt_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->update_claim_prompt_pay: #{e}"
end
```

#### Using the update_claim_prompt_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimPromptPayVBAResponse>, Integer, Hash)> update_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key, claim_prompt_pay)

```ruby
begin
  # Update ClaimPromptPay
  data, status_code, headers = api_instance.update_claim_prompt_pay_with_http_info(vbasoftware_database, claim_prompt_pay_key, claim_prompt_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimPromptPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimPromptPaysApi->update_claim_prompt_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_prompt_pay_key** | **Integer** | ClaimPromptPay Key |  |
| **claim_prompt_pay** | [**ClaimPromptPay**](ClaimPromptPay.md) |  |  |

### Return type

[**ClaimPromptPayVBAResponse**](ClaimPromptPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

